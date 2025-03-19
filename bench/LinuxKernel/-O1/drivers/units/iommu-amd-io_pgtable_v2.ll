; ModuleID = 'drivers/iommu/amd/io_pgtable_v2.c'
source_filename = "drivers/iommu/amd/io_pgtable_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable_init_fns = type { ptr, ptr }
%struct.iommu_flush_ops = type { ptr, ptr, ptr }
%struct.nodemask_t = type { [1 x i64] }
%struct.protection_domain = type { %struct.list_head, %struct.iommu_domain, %struct.amd_io_pgtable, %struct.spinlock, i16, i32, i32, ptr, i64, i32, [32 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.iommu_domain = type { i32, ptr, i64, %struct.iommu_domain_geometry, ptr, ptr, ptr, %union.anon.19 }
%struct.iommu_domain_geometry = type { i64, i64, i8 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, ptr }
%struct.amd_io_pgtable = type { %struct.io_pgtable_cfg, %struct.io_pgtable, i32, ptr, %struct.atomic64_t, ptr }
%struct.io_pgtable_cfg = type { i64, i64, i32, i32, i8, ptr, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.27 }
%struct.anon.27 = type { [4 x i64], i32 }
%struct.io_pgtable = type { i32, ptr, %struct.io_pgtable_cfg, %struct.io_pgtable_ops }
%struct.io_pgtable_ops = type { ptr, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@io_pgtable_amd_iommu_v2_init_fns = hidden global %struct.io_pgtable_init_fns { ptr @v2_alloc_pgtable, ptr @v2_free_pgtable }, align 8, !dbg !0
@v2_flush_ops = internal constant %struct.iommu_flush_ops { ptr @v2_tlb_flush_all, ptr @v2_tlb_flush_walk, ptr @v2_tlb_add_page }, align 8, !dbg !5614
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@.str = private unnamed_addr constant [48 x i8] c"\014AMD-Vi: %pGg allocation from offline node %d\0A\00", align 1, !dbg !5603
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@amd_iommu_gpt_level = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"drivers/iommu/amd/io_pgtable_v2.c\00", align 1, !dbg !5609

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v2_alloc_pgtable(ptr noundef %cfg, ptr noundef %cookie) #0 align 16 !dbg !5636 {
entry:
  %retval = alloca ptr, align 8
  %cfg.addr = alloca ptr, align 8
  %cookie.addr = alloca ptr, align 8
  %pgtable = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %pdom = alloca ptr, align 8
  %ret = alloca i32, align 4
  %ias = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cfg, ptr %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cfg.addr, metadata !5638, metadata !DIExpression()), !dbg !5647
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !5639, metadata !DIExpression()), !dbg !5648
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgtable) #10, !dbg !5649
  call void @llvm.dbg.declare(metadata ptr %pgtable, metadata !5640, metadata !DIExpression()), !dbg !5650
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5651
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5641, metadata !DIExpression()), !dbg !5651
  %0 = load ptr, ptr %cfg.addr, align 8, !dbg !5651
  store ptr %0, ptr %__mptr, align 8, !dbg !5651
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5651
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5651
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5651
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5652
  %2 = load ptr, ptr %tmp, align 8, !dbg !5651
  store ptr %2, ptr %pgtable, align 8, !dbg !5650
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdom) #10, !dbg !5653
  call void @llvm.dbg.declare(metadata ptr %pdom, metadata !5643, metadata !DIExpression()), !dbg !5654
  %3 = load ptr, ptr %cookie.addr, align 8, !dbg !5655
  store ptr %3, ptr %pdom, align 8, !dbg !5654
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5656
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5644, metadata !DIExpression()), !dbg !5657
  call void @llvm.lifetime.start.p0(i64 4, ptr %ias) #10, !dbg !5658
  call void @llvm.dbg.declare(metadata ptr %ias, metadata !5645, metadata !DIExpression()), !dbg !5659
  store i32 52, ptr %ias, align 4, !dbg !5659
  %4 = load ptr, ptr %pdom, align 8, !dbg !5660
  %nid = getelementptr inbounds %struct.protection_domain, ptr %4, i32 0, i32 6, !dbg !5661
  %5 = load i32, ptr %nid, align 4, !dbg !5661
  %call = call ptr @alloc_pgtable_page(i32 noundef %5, i32 noundef 2080) #11, !dbg !5662
  %6 = load ptr, ptr %pgtable, align 8, !dbg !5663
  %pgd = getelementptr inbounds %struct.amd_io_pgtable, ptr %6, i32 0, i32 5, !dbg !5664
  store ptr %call, ptr %pgd, align 8, !dbg !5665
  %7 = load ptr, ptr %pgtable, align 8, !dbg !5666
  %pgd1 = getelementptr inbounds %struct.amd_io_pgtable, ptr %7, i32 0, i32 5, !dbg !5668
  %8 = load ptr, ptr %pgd1, align 8, !dbg !5668
  %tobool = icmp ne ptr %8, null, !dbg !5666
  br i1 %tobool, label %if.end, label %if.then, !dbg !5669

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5670
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5670

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %pdom, align 8, !dbg !5671
  %domain = getelementptr inbounds %struct.protection_domain, ptr %9, i32 0, i32 1, !dbg !5672
  %10 = load ptr, ptr %pgtable, align 8, !dbg !5673
  %pgd2 = getelementptr inbounds %struct.amd_io_pgtable, ptr %10, i32 0, i32 5, !dbg !5674
  %11 = load ptr, ptr %pgd2, align 8, !dbg !5674
  %call3 = call i64 @iommu_virt_to_phys(ptr noundef %11) #11, !dbg !5675
  %call4 = call i32 @amd_iommu_domain_set_gcr3(ptr noundef %domain, i32 noundef 0, i64 noundef %call3) #11, !dbg !5676
  store i32 %call4, ptr %ret, align 4, !dbg !5677
  %12 = load i32, ptr %ret, align 4, !dbg !5678
  %tobool5 = icmp ne i32 %12, 0, !dbg !5678
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5680

if.then6:                                         ; preds = %if.end
  br label %err_free_pgd, !dbg !5681

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @get_pgtable_level() #11, !dbg !5682
  %cmp = icmp eq i32 %call8, 5, !dbg !5684
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !5685

if.then9:                                         ; preds = %if.end7
  store i32 57, ptr %ias, align 4, !dbg !5686
  br label %if.end10, !dbg !5687

if.end10:                                         ; preds = %if.then9, %if.end7
  %13 = load ptr, ptr %pgtable, align 8, !dbg !5688
  %iop = getelementptr inbounds %struct.amd_io_pgtable, ptr %13, i32 0, i32 1, !dbg !5689
  %ops = getelementptr inbounds %struct.io_pgtable, ptr %iop, i32 0, i32 3, !dbg !5690
  %map_pages = getelementptr inbounds %struct.io_pgtable_ops, ptr %ops, i32 0, i32 0, !dbg !5691
  store ptr @iommu_v2_map_pages, ptr %map_pages, align 8, !dbg !5692
  %14 = load ptr, ptr %pgtable, align 8, !dbg !5693
  %iop11 = getelementptr inbounds %struct.amd_io_pgtable, ptr %14, i32 0, i32 1, !dbg !5694
  %ops12 = getelementptr inbounds %struct.io_pgtable, ptr %iop11, i32 0, i32 3, !dbg !5695
  %unmap_pages = getelementptr inbounds %struct.io_pgtable_ops, ptr %ops12, i32 0, i32 1, !dbg !5696
  store ptr @iommu_v2_unmap_pages, ptr %unmap_pages, align 8, !dbg !5697
  %15 = load ptr, ptr %pgtable, align 8, !dbg !5698
  %iop13 = getelementptr inbounds %struct.amd_io_pgtable, ptr %15, i32 0, i32 1, !dbg !5699
  %ops14 = getelementptr inbounds %struct.io_pgtable, ptr %iop13, i32 0, i32 3, !dbg !5700
  %iova_to_phys = getelementptr inbounds %struct.io_pgtable_ops, ptr %ops14, i32 0, i32 2, !dbg !5701
  store ptr @iommu_v2_iova_to_phys, ptr %iova_to_phys, align 8, !dbg !5702
  %16 = load ptr, ptr %cfg.addr, align 8, !dbg !5703
  %pgsize_bitmap = getelementptr inbounds %struct.io_pgtable_cfg, ptr %16, i32 0, i32 1, !dbg !5704
  store i64 1075843072, ptr %pgsize_bitmap, align 8, !dbg !5705
  %17 = load i32, ptr %ias, align 4, !dbg !5706
  %18 = load ptr, ptr %cfg.addr, align 8, !dbg !5707
  %ias15 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %18, i32 0, i32 2, !dbg !5708
  store i32 %17, ptr %ias15, align 8, !dbg !5709
  %19 = load ptr, ptr %cfg.addr, align 8, !dbg !5710
  %oas = getelementptr inbounds %struct.io_pgtable_cfg, ptr %19, i32 0, i32 3, !dbg !5711
  store i32 52, ptr %oas, align 4, !dbg !5712
  %20 = load ptr, ptr %cfg.addr, align 8, !dbg !5713
  %tlb = getelementptr inbounds %struct.io_pgtable_cfg, ptr %20, i32 0, i32 5, !dbg !5714
  store ptr @v2_flush_ops, ptr %tlb, align 8, !dbg !5715
  %21 = load ptr, ptr %pgtable, align 8, !dbg !5716
  %iop16 = getelementptr inbounds %struct.amd_io_pgtable, ptr %21, i32 0, i32 1, !dbg !5717
  store ptr %iop16, ptr %retval, align 8, !dbg !5718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5718

err_free_pgd:                                     ; preds = %if.then6
  call void @llvm.dbg.label(metadata !5646), !dbg !5719
  %22 = load ptr, ptr %pgtable, align 8, !dbg !5720
  %pgd17 = getelementptr inbounds %struct.amd_io_pgtable, ptr %22, i32 0, i32 5, !dbg !5721
  %23 = load ptr, ptr %pgd17, align 8, !dbg !5721
  call void @free_pgtable_page(ptr noundef %23) #11, !dbg !5722
  store ptr null, ptr %retval, align 8, !dbg !5723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5723

cleanup:                                          ; preds = %err_free_pgd, %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ias) #10, !dbg !5724
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5724
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdom) #10, !dbg !5724
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgtable) #10, !dbg !5724
  %24 = load ptr, ptr %retval, align 8, !dbg !5724
  ret ptr %24, !dbg !5724
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v2_free_pgtable(ptr noundef %iop) #0 align 16 !dbg !5725 {
entry:
  %iop.addr = alloca ptr, align 8
  %pdom = alloca ptr, align 8
  %pgtable = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iop, ptr %iop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iop.addr, metadata !5727, metadata !DIExpression()), !dbg !5734
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdom) #10, !dbg !5735
  call void @llvm.dbg.declare(metadata ptr %pdom, metadata !5728, metadata !DIExpression()), !dbg !5736
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgtable) #10, !dbg !5737
  call void @llvm.dbg.declare(metadata ptr %pgtable, metadata !5729, metadata !DIExpression()), !dbg !5738
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5739
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5730, metadata !DIExpression()), !dbg !5739
  %0 = load ptr, ptr %iop.addr, align 8, !dbg !5739
  store ptr %0, ptr %__mptr, align 8, !dbg !5739
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5739
  %add.ptr = getelementptr i8, ptr %1, i64 -88, !dbg !5739
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5739
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5740
  %2 = load ptr, ptr %tmp, align 8, !dbg !5739
  store ptr %2, ptr %pgtable, align 8, !dbg !5738
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #10, !dbg !5741
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5732, metadata !DIExpression()), !dbg !5741
  %3 = load ptr, ptr %pgtable, align 8, !dbg !5741
  store ptr %3, ptr %__mptr1, align 8, !dbg !5741
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !5741
  %add.ptr3 = getelementptr i8, ptr %4, i64 -104, !dbg !5741
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !5741
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #10, !dbg !5742
  %5 = load ptr, ptr %tmp2, align 8, !dbg !5741
  store ptr %5, ptr %pdom, align 8, !dbg !5743
  %6 = load ptr, ptr %pdom, align 8, !dbg !5744
  %flags = getelementptr inbounds %struct.protection_domain, ptr %6, i32 0, i32 8, !dbg !5746
  %7 = load i64, ptr %flags, align 8, !dbg !5746
  %and = and i64 %7, 8, !dbg !5747
  %tobool = icmp ne i64 %and, 0, !dbg !5747
  br i1 %tobool, label %if.end, label %if.then, !dbg !5748

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5749

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %pdom, align 8, !dbg !5750
  call void @amd_iommu_domain_update(ptr noundef %8) #11, !dbg !5751
  %9 = load ptr, ptr %pgtable, align 8, !dbg !5752
  %pgd = getelementptr inbounds %struct.amd_io_pgtable, ptr %9, i32 0, i32 5, !dbg !5753
  %10 = load ptr, ptr %pgd, align 8, !dbg !5753
  %call = call i32 @get_pgtable_level() #11, !dbg !5754
  call void @free_pgtable(ptr noundef %10, i32 noundef %call) #11, !dbg !5755
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5756
  br label %cleanup, !dbg !5756

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgtable) #10, !dbg !5756
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdom) #10, !dbg !5756
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5756

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_pgtable_page(i32 noundef %nid, i32 noundef %gfp) #3 align 16 !dbg !5757 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5762, metadata !DIExpression()), !dbg !5765
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5763, metadata !DIExpression()), !dbg !5766
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #10, !dbg !5767
  call void @llvm.dbg.declare(metadata ptr %page, metadata !5764, metadata !DIExpression()), !dbg !5768
  %0 = load i32, ptr %nid.addr, align 4, !dbg !5769
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !5770
  %or = or i32 %1, 256, !dbg !5771
  %call = call ptr @alloc_pages_node(i32 noundef %0, i32 noundef %or, i32 noundef 0) #11, !dbg !5772
  store ptr %call, ptr %page, align 8, !dbg !5773
  %2 = load ptr, ptr %page, align 8, !dbg !5774
  %tobool = icmp ne ptr %2, null, !dbg !5774
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5774

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %page, align 8, !dbg !5775
  %call1 = call ptr @lowmem_page_address(ptr noundef %3) #11, !dbg !5775
  br label %cond.end, !dbg !5774

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5774

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call1, %cond.true ], [ null, %cond.false ], !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #10, !dbg !5776
  ret ptr %cond, !dbg !5777
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5778 dso_local i32 @amd_iommu_domain_set_gcr3(ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @iommu_virt_to_phys(ptr noundef %vaddr) #3 align 16 !dbg !5781 {
entry:
  %vaddr.addr = alloca ptr, align 8
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !5785, metadata !DIExpression()), !dbg !5786
  %0 = load ptr, ptr %vaddr.addr, align 8, !dbg !5787
  %call = call i64 @virt_to_phys(ptr noundef %0) #11, !dbg !5787
  ret i64 %call, !dbg !5788
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_pgtable_level() #3 align 16 !dbg !5789 {
entry:
  %0 = load i32, ptr @amd_iommu_gpt_level, align 4, !dbg !5790
  ret i32 %0, !dbg !5791
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iommu_v2_map_pages(ptr noundef %ops, i64 noundef %iova, i64 noundef %paddr, i64 noundef %pgsize, i64 noundef %pgcount, i32 noundef %prot, i32 noundef %gfp, ptr noundef %mapped) #0 align 16 !dbg !5792 {
entry:
  %retval = alloca i32, align 4
  %ops.addr = alloca ptr, align 8
  %iova.addr = alloca i64, align 8
  %paddr.addr = alloca i64, align 8
  %pgsize.addr = alloca i64, align 8
  %pgcount.addr = alloca i64, align 8
  %prot.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  %mapped.addr = alloca ptr, align 8
  %pdom = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %cfg = alloca ptr, align 8
  %pte = alloca ptr, align 8
  %map_size = alloca i64, align 8
  %mapped_size = alloca i64, align 8
  %o_iova = alloca i64, align 8
  %size = alloca i64, align 8
  %count = alloca i32, align 4
  %ret = alloca i32, align 4
  %updated = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp27 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5794, metadata !DIExpression()), !dbg !5825
  store i64 %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !5795, metadata !DIExpression()), !dbg !5826
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !5796, metadata !DIExpression()), !dbg !5827
  store i64 %pgsize, ptr %pgsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgsize.addr, metadata !5797, metadata !DIExpression()), !dbg !5828
  store i64 %pgcount, ptr %pgcount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgcount.addr, metadata !5798, metadata !DIExpression()), !dbg !5829
  store i32 %prot, ptr %prot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prot.addr, metadata !5799, metadata !DIExpression()), !dbg !5830
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5800, metadata !DIExpression()), !dbg !5831
  store ptr %mapped, ptr %mapped.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapped.addr, metadata !5801, metadata !DIExpression()), !dbg !5832
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdom) #10, !dbg !5833
  call void @llvm.dbg.declare(metadata ptr %pdom, metadata !5802, metadata !DIExpression()), !dbg !5834
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5835
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5803, metadata !DIExpression()), !dbg !5835
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #10, !dbg !5836
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5805, metadata !DIExpression()), !dbg !5836
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #10, !dbg !5837
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5807, metadata !DIExpression()), !dbg !5837
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !5837
  store ptr %0, ptr %__mptr2, align 8, !dbg !5837
  %1 = load ptr, ptr %__mptr2, align 8, !dbg !5837
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !5837
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5837
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #10, !dbg !5836
  %2 = load ptr, ptr %tmp, align 8, !dbg !5837
  store ptr %2, ptr %__mptr1, align 8, !dbg !5836
  %3 = load ptr, ptr %__mptr1, align 8, !dbg !5836
  %add.ptr4 = getelementptr i8, ptr %3, i64 -88, !dbg !5836
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !5836
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #10, !dbg !5835
  %4 = load ptr, ptr %tmp3, align 8, !dbg !5836
  store ptr %4, ptr %__mptr, align 8, !dbg !5835
  %5 = load ptr, ptr %__mptr, align 8, !dbg !5835
  %add.ptr6 = getelementptr i8, ptr %5, i64 -104, !dbg !5835
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !5835
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5838
  %6 = load ptr, ptr %tmp5, align 8, !dbg !5835
  store ptr %6, ptr %pdom, align 8, !dbg !5834
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #10, !dbg !5839
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !5809, metadata !DIExpression()), !dbg !5840
  %7 = load ptr, ptr %pdom, align 8, !dbg !5841
  %iop = getelementptr inbounds %struct.protection_domain, ptr %7, i32 0, i32 2, !dbg !5842
  %iop7 = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop, i32 0, i32 1, !dbg !5843
  %cfg8 = getelementptr inbounds %struct.io_pgtable, ptr %iop7, i32 0, i32 2, !dbg !5844
  store ptr %cfg8, ptr %cfg, align 8, !dbg !5840
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #10, !dbg !5845
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !5810, metadata !DIExpression()), !dbg !5846
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_size) #10, !dbg !5847
  call void @llvm.dbg.declare(metadata ptr %map_size, metadata !5811, metadata !DIExpression()), !dbg !5848
  call void @llvm.lifetime.start.p0(i64 8, ptr %mapped_size) #10, !dbg !5849
  call void @llvm.dbg.declare(metadata ptr %mapped_size, metadata !5812, metadata !DIExpression()), !dbg !5850
  store i64 0, ptr %mapped_size, align 8, !dbg !5850
  call void @llvm.lifetime.start.p0(i64 8, ptr %o_iova) #10, !dbg !5851
  call void @llvm.dbg.declare(metadata ptr %o_iova, metadata !5813, metadata !DIExpression()), !dbg !5852
  %8 = load i64, ptr %iova.addr, align 8, !dbg !5853
  store i64 %8, ptr %o_iova, align 8, !dbg !5852
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #10, !dbg !5854
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5814, metadata !DIExpression()), !dbg !5855
  %9 = load i64, ptr %pgcount.addr, align 8, !dbg !5856
  %10 = load i64, ptr %pgsize.addr, align 8, !dbg !5857
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5857
  br i1 %11, label %cond.true, label %cond.false, !dbg !5857

cond.true:                                        ; preds = %entry
  %12 = load i64, ptr %pgsize.addr, align 8, !dbg !5857
  %13 = call i64 @llvm.cttz.i64(i64 %12, i1 true), !dbg !5857
  %cast = trunc i64 %13 to i32, !dbg !5857
  %conv = sext i32 %cast to i64, !dbg !5857
  br label %cond.end, !dbg !5857

cond.false:                                       ; preds = %entry
  %14 = load i64, ptr %pgsize.addr, align 8, !dbg !5857
  %call = call i64 @variable__ffs(i64 noundef %14) #11, !dbg !5857
  br label %cond.end, !dbg !5857

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !5857
  %shl = shl i64 %9, %cond, !dbg !5858
  store i64 %shl, ptr %size, align 8, !dbg !5855
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #10, !dbg !5859
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5815, metadata !DIExpression()), !dbg !5860
  store i32 0, ptr %count, align 4, !dbg !5860
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5861
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5816, metadata !DIExpression()), !dbg !5862
  store i32 0, ptr %ret, align 4, !dbg !5862
  call void @llvm.lifetime.start.p0(i64 1, ptr %updated) #10, !dbg !5863
  call void @llvm.dbg.declare(metadata ptr %updated, metadata !5817, metadata !DIExpression()), !dbg !5864
  store i8 0, ptr %updated, align 1, !dbg !5864
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5865
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5818, metadata !DIExpression()), !dbg !5865
  %15 = load i64, ptr %pgsize.addr, align 8, !dbg !5865
  %tobool = icmp ne i64 %15, 0, !dbg !5865
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5865

lor.rhs:                                          ; preds = %cond.end
  %16 = load i64, ptr %pgsize.addr, align 8, !dbg !5865
  %17 = load ptr, ptr %cfg, align 8, !dbg !5865
  %pgsize_bitmap = getelementptr inbounds %struct.io_pgtable_cfg, ptr %17, i32 0, i32 1, !dbg !5865
  %18 = load i64, ptr %pgsize_bitmap, align 8, !dbg !5865
  %and = and i64 %16, %18, !dbg !5865
  %19 = load i64, ptr %pgsize.addr, align 8, !dbg !5865
  %cmp = icmp ne i64 %and, %19, !dbg !5865
  br label %lor.end, !dbg !5865

lor.end:                                          ; preds = %lor.rhs, %cond.end
  %20 = phi i1 [ true, %cond.end ], [ %cmp, %lor.rhs ]
  %lnot = xor i1 %20, true, !dbg !5865
  %lnot10 = xor i1 %lnot, true, !dbg !5865
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !5865
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5865
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !5866
  %tobool11 = icmp ne i32 %21, 0, !dbg !5866
  %lnot12 = xor i1 %tobool11, true, !dbg !5866
  %lnot14 = xor i1 %lnot12, true, !dbg !5866
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !5866
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !5866
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !5866
  %tobool17 = icmp ne i64 %expval, 0, !dbg !5866
  br i1 %tobool17, label %if.then, label %if.end, !dbg !5865

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !5866

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5867
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5821, metadata !DIExpression()), !dbg !5867
  store i32 2305, ptr %__flags, align 4, !dbg !5867
  br label %do.body18, !dbg !5867

do.body18:                                        ; preds = %do.body
  br label %do.cond, !dbg !5868

do.cond:                                          ; preds = %do.body18
  br label %do.end, !dbg !5868

do.end:                                           ; preds = %do.cond
  br label %do.body19, !dbg !5867

do.body19:                                        ; preds = %do.end
  %22 = load i32, ptr %__flags, align 4, !dbg !5870
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 251, i32 %22, i64 12) #10, !dbg !5870, !srcloc !5872
  br label %do.cond20, !dbg !5870

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5870

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !5867

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !5873

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !5873

do.end24:                                         ; preds = %do.cond23
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5866
  br label %do.cond25, !dbg !5867

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !5867

do.end26:                                         ; preds = %do.cond25
  br label %if.end, !dbg !5867

if.end:                                           ; preds = %do.end26, %lor.end
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !5865
  %tobool28 = icmp ne i32 %23, 0, !dbg !5865
  %lnot29 = xor i1 %tobool28, true, !dbg !5865
  %lnot31 = xor i1 %lnot29, true, !dbg !5865
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !5865
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !5865
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !5865
  store i64 %expval34, ptr %tmp27, align 8, !dbg !5866
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5875
  %24 = load i64, ptr %tmp27, align 8, !dbg !5865
  %tobool35 = icmp ne i64 %24, 0, !dbg !5875
  br i1 %tobool35, label %if.then37, label %lor.lhs.false, !dbg !5876

lor.lhs.false:                                    ; preds = %if.end
  %25 = load i64, ptr %pgcount.addr, align 8, !dbg !5877
  %tobool36 = icmp ne i64 %25, 0, !dbg !5877
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !5878

if.then37:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5879

if.end38:                                         ; preds = %lor.lhs.false
  %26 = load i32, ptr %prot.addr, align 4, !dbg !5880
  %and39 = and i32 %26, 3, !dbg !5882
  %tobool40 = icmp ne i32 %and39, 0, !dbg !5882
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !5883

if.then41:                                        ; preds = %if.end38
  store i32 -22, ptr %retval, align 4, !dbg !5884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5884

if.end42:                                         ; preds = %if.end38
  br label %while.cond, !dbg !5885

while.cond:                                       ; preds = %if.end50, %if.end42
  %27 = load i64, ptr %mapped_size, align 8, !dbg !5886
  %28 = load i64, ptr %size, align 8, !dbg !5887
  %cmp43 = icmp ult i64 %27, %28, !dbg !5888
  br i1 %cmp43, label %while.body, label %while.end, !dbg !5885

while.body:                                       ; preds = %while.cond
  %29 = load i64, ptr %pgsize.addr, align 8, !dbg !5889
  %call45 = call i64 @get_alloc_page_size(i64 noundef %29) #11, !dbg !5891
  store i64 %call45, ptr %map_size, align 8, !dbg !5892
  %30 = load ptr, ptr %pdom, align 8, !dbg !5893
  %nid = getelementptr inbounds %struct.protection_domain, ptr %30, i32 0, i32 6, !dbg !5894
  %31 = load i32, ptr %nid, align 4, !dbg !5894
  %32 = load ptr, ptr %pdom, align 8, !dbg !5895
  %iop46 = getelementptr inbounds %struct.protection_domain, ptr %32, i32 0, i32 2, !dbg !5896
  %pgd = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop46, i32 0, i32 5, !dbg !5897
  %33 = load ptr, ptr %pgd, align 8, !dbg !5897
  %34 = load i64, ptr %iova.addr, align 8, !dbg !5898
  %35 = load i64, ptr %map_size, align 8, !dbg !5899
  %36 = load i32, ptr %gfp.addr, align 4, !dbg !5900
  %call47 = call ptr @v2_alloc_pte(i32 noundef %31, ptr noundef %33, i64 noundef %34, i64 noundef %35, i32 noundef %36, ptr noundef %updated) #11, !dbg !5901
  store ptr %call47, ptr %pte, align 8, !dbg !5902
  %37 = load ptr, ptr %pte, align 8, !dbg !5903
  %tobool48 = icmp ne ptr %37, null, !dbg !5903
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !5905

if.then49:                                        ; preds = %while.body
  store i32 -22, ptr %ret, align 4, !dbg !5906
  br label %out, !dbg !5908

if.end50:                                         ; preds = %while.body
  %38 = load i64, ptr %paddr.addr, align 8, !dbg !5909
  %39 = load i64, ptr %map_size, align 8, !dbg !5910
  %40 = load i32, ptr %prot.addr, align 4, !dbg !5911
  %call51 = call i64 @set_pte_attr(i64 noundef %38, i64 noundef %39, i32 noundef %40) #11, !dbg !5912
  %41 = load ptr, ptr %pte, align 8, !dbg !5913
  store i64 %call51, ptr %41, align 8, !dbg !5914
  %42 = load i32, ptr %count, align 4, !dbg !5915
  %inc = add i32 %42, 1, !dbg !5915
  store i32 %inc, ptr %count, align 4, !dbg !5915
  %43 = load i64, ptr %map_size, align 8, !dbg !5916
  %44 = load i64, ptr %iova.addr, align 8, !dbg !5917
  %add = add i64 %44, %43, !dbg !5917
  store i64 %add, ptr %iova.addr, align 8, !dbg !5917
  %45 = load i64, ptr %map_size, align 8, !dbg !5918
  %46 = load i64, ptr %paddr.addr, align 8, !dbg !5919
  %add52 = add i64 %46, %45, !dbg !5919
  store i64 %add52, ptr %paddr.addr, align 8, !dbg !5919
  %47 = load i64, ptr %map_size, align 8, !dbg !5920
  %48 = load i64, ptr %mapped_size, align 8, !dbg !5921
  %add53 = add i64 %48, %47, !dbg !5921
  store i64 %add53, ptr %mapped_size, align 8, !dbg !5921
  br label %while.cond, !dbg !5885, !llvm.loop !5922

while.end:                                        ; preds = %while.cond
  br label %out, !dbg !5885

out:                                              ; preds = %while.end, %if.then49
  call void @llvm.dbg.label(metadata !5824), !dbg !5926
  %49 = load i8, ptr %updated, align 1, !dbg !5927, !range !5929, !noundef !1007
  %tobool54 = trunc i8 %49 to i1, !dbg !5927
  br i1 %tobool54, label %if.then55, label %if.end63, !dbg !5930

if.then55:                                        ; preds = %out
  %50 = load i32, ptr %count, align 4, !dbg !5931
  %cmp56 = icmp sgt i32 %50, 1, !dbg !5934
  br i1 %cmp56, label %if.then58, label %if.else, !dbg !5935

if.then58:                                        ; preds = %if.then55
  %51 = load ptr, ptr %pdom, align 8, !dbg !5936
  %domain = getelementptr inbounds %struct.protection_domain, ptr %51, i32 0, i32 1, !dbg !5937
  %call59 = call i32 @amd_iommu_flush_tlb(ptr noundef %domain, i32 noundef 0) #11, !dbg !5938
  br label %if.end62, !dbg !5938

if.else:                                          ; preds = %if.then55
  %52 = load ptr, ptr %pdom, align 8, !dbg !5939
  %domain60 = getelementptr inbounds %struct.protection_domain, ptr %52, i32 0, i32 1, !dbg !5940
  %53 = load i64, ptr %o_iova, align 8, !dbg !5941
  %call61 = call i32 @amd_iommu_flush_page(ptr noundef %domain60, i32 noundef 0, i64 noundef %53) #11, !dbg !5942
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then58
  br label %if.end63, !dbg !5943

if.end63:                                         ; preds = %if.end62, %out
  %54 = load ptr, ptr %mapped.addr, align 8, !dbg !5944
  %tobool64 = icmp ne ptr %54, null, !dbg !5944
  br i1 %tobool64, label %if.then65, label %if.end67, !dbg !5946

if.then65:                                        ; preds = %if.end63
  %55 = load i64, ptr %mapped_size, align 8, !dbg !5947
  %56 = load ptr, ptr %mapped.addr, align 8, !dbg !5948
  %57 = load i64, ptr %56, align 8, !dbg !5949
  %add66 = add i64 %57, %55, !dbg !5949
  store i64 %add66, ptr %56, align 8, !dbg !5949
  br label %if.end67, !dbg !5950

if.end67:                                         ; preds = %if.then65, %if.end63
  %58 = load i32, ptr %ret, align 4, !dbg !5951
  store i32 %58, ptr %retval, align 4, !dbg !5952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5952

cleanup:                                          ; preds = %if.end67, %if.then41, %if.then37
  call void @llvm.lifetime.end.p0(i64 1, ptr %updated) #10, !dbg !5953
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5953
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #10, !dbg !5953
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #10, !dbg !5953
  call void @llvm.lifetime.end.p0(i64 8, ptr %o_iova) #10, !dbg !5953
  call void @llvm.lifetime.end.p0(i64 8, ptr %mapped_size) #10, !dbg !5953
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_size) #10, !dbg !5953
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #10, !dbg !5953
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #10, !dbg !5953
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdom) #10, !dbg !5953
  %59 = load i32, ptr %retval, align 4, !dbg !5953
  ret i32 %59, !dbg !5953
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @iommu_v2_unmap_pages(ptr noundef %ops, i64 noundef %iova, i64 noundef %pgsize, i64 noundef %pgcount, ptr noundef %gather) #0 align 16 !dbg !5954 {
entry:
  %retval = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  %iova.addr = alloca i64, align 8
  %pgsize.addr = alloca i64, align 8
  %pgcount.addr = alloca i64, align 8
  %gather.addr = alloca ptr, align 8
  %pgtable = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cfg = alloca ptr, align 8
  %unmap_size = alloca i64, align 8
  %unmapped = alloca i64, align 8
  %size = alloca i64, align 8
  %pte = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp25 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5958, metadata !DIExpression()), !dbg !5979
  store i64 %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !5959, metadata !DIExpression()), !dbg !5980
  store i64 %pgsize, ptr %pgsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgsize.addr, metadata !5960, metadata !DIExpression()), !dbg !5981
  store i64 %pgcount, ptr %pgcount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgcount.addr, metadata !5961, metadata !DIExpression()), !dbg !5982
  store ptr %gather, ptr %gather.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gather.addr, metadata !5962, metadata !DIExpression()), !dbg !5983
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgtable) #10, !dbg !5984
  call void @llvm.dbg.declare(metadata ptr %pgtable, metadata !5963, metadata !DIExpression()), !dbg !5985
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5986
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5964, metadata !DIExpression()), !dbg !5986
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #10, !dbg !5987
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5966, metadata !DIExpression()), !dbg !5987
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !5987
  store ptr %0, ptr %__mptr1, align 8, !dbg !5987
  %1 = load ptr, ptr %__mptr1, align 8, !dbg !5987
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !5987
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5987
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #10, !dbg !5986
  %2 = load ptr, ptr %tmp, align 8, !dbg !5987
  store ptr %2, ptr %__mptr, align 8, !dbg !5986
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5986
  %add.ptr3 = getelementptr i8, ptr %3, i64 -88, !dbg !5986
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !5986
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5988
  %4 = load ptr, ptr %tmp2, align 8, !dbg !5986
  store ptr %4, ptr %pgtable, align 8, !dbg !5985
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #10, !dbg !5989
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !5968, metadata !DIExpression()), !dbg !5990
  %5 = load ptr, ptr %pgtable, align 8, !dbg !5991
  %iop = getelementptr inbounds %struct.amd_io_pgtable, ptr %5, i32 0, i32 1, !dbg !5992
  %cfg4 = getelementptr inbounds %struct.io_pgtable, ptr %iop, i32 0, i32 2, !dbg !5993
  store ptr %cfg4, ptr %cfg, align 8, !dbg !5990
  call void @llvm.lifetime.start.p0(i64 8, ptr %unmap_size) #10, !dbg !5994
  call void @llvm.dbg.declare(metadata ptr %unmap_size, metadata !5969, metadata !DIExpression()), !dbg !5995
  call void @llvm.lifetime.start.p0(i64 8, ptr %unmapped) #10, !dbg !5996
  call void @llvm.dbg.declare(metadata ptr %unmapped, metadata !5970, metadata !DIExpression()), !dbg !5997
  store i64 0, ptr %unmapped, align 8, !dbg !5997
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #10, !dbg !5998
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5971, metadata !DIExpression()), !dbg !5999
  %6 = load i64, ptr %pgcount.addr, align 8, !dbg !6000
  %7 = load i64, ptr %pgsize.addr, align 8, !dbg !6001
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6001
  br i1 %8, label %cond.true, label %cond.false, !dbg !6001

cond.true:                                        ; preds = %entry
  %9 = load i64, ptr %pgsize.addr, align 8, !dbg !6001
  %10 = call i64 @llvm.cttz.i64(i64 %9, i1 true), !dbg !6001
  %cast = trunc i64 %10 to i32, !dbg !6001
  %conv = sext i32 %cast to i64, !dbg !6001
  br label %cond.end, !dbg !6001

cond.false:                                       ; preds = %entry
  %11 = load i64, ptr %pgsize.addr, align 8, !dbg !6001
  %call = call i64 @variable__ffs(i64 noundef %11) #11, !dbg !6001
  br label %cond.end, !dbg !6001

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !6001
  %shl = shl i64 %6, %cond, !dbg !6002
  store i64 %shl, ptr %size, align 8, !dbg !5999
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #10, !dbg !6003
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !5972, metadata !DIExpression()), !dbg !6004
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6005
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5973, metadata !DIExpression()), !dbg !6005
  %12 = load i64, ptr %pgsize.addr, align 8, !dbg !6005
  %tobool = icmp ne i64 %12, 0, !dbg !6005
  br i1 %tobool, label %lor.lhs.false, label %lor.end, !dbg !6005

lor.lhs.false:                                    ; preds = %cond.end
  %13 = load i64, ptr %pgsize.addr, align 8, !dbg !6005
  %14 = load ptr, ptr %cfg, align 8, !dbg !6005
  %pgsize_bitmap = getelementptr inbounds %struct.io_pgtable_cfg, ptr %14, i32 0, i32 1, !dbg !6005
  %15 = load i64, ptr %pgsize_bitmap, align 8, !dbg !6005
  %and = and i64 %13, %15, !dbg !6005
  %16 = load i64, ptr %pgsize.addr, align 8, !dbg !6005
  %cmp = icmp ne i64 %and, %16, !dbg !6005
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6005

lor.rhs:                                          ; preds = %lor.lhs.false
  %17 = load i64, ptr %pgcount.addr, align 8, !dbg !6005
  %tobool6 = icmp ne i64 %17, 0, !dbg !6005
  %lnot = xor i1 %tobool6, true, !dbg !6005
  br label %lor.end, !dbg !6005

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %cond.end
  %18 = phi i1 [ true, %lor.lhs.false ], [ true, %cond.end ], [ %lnot, %lor.rhs ]
  %lnot7 = xor i1 %18, true, !dbg !6005
  %lnot8 = xor i1 %lnot7, true, !dbg !6005
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !6005
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6005
  %19 = load i32, ptr %__ret_warn_on, align 4, !dbg !6006
  %tobool9 = icmp ne i32 %19, 0, !dbg !6006
  %lnot10 = xor i1 %tobool9, true, !dbg !6006
  %lnot12 = xor i1 %lnot10, true, !dbg !6006
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !6006
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !6006
  %expval = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !6006
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6006
  br i1 %tobool15, label %if.then, label %if.end, !dbg !6005

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !6006

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !6007
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5976, metadata !DIExpression()), !dbg !6007
  store i32 2305, ptr %__flags, align 4, !dbg !6007
  br label %do.body16, !dbg !6007

do.body16:                                        ; preds = %do.body
  br label %do.cond, !dbg !6008

do.cond:                                          ; preds = %do.body16
  br label %do.end, !dbg !6008

do.end:                                           ; preds = %do.cond
  br label %do.body17, !dbg !6007

do.body17:                                        ; preds = %do.end
  %20 = load i32, ptr %__flags, align 4, !dbg !6010
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 300, i32 %20, i64 12) #10, !dbg !6010, !srcloc !6012
  br label %do.cond18, !dbg !6010

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6010

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !6007

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !6013

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6013

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !6006
  br label %do.cond23, !dbg !6007

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !6007

do.end24:                                         ; preds = %do.cond23
  br label %if.end, !dbg !6007

if.end:                                           ; preds = %do.end24, %lor.end
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !6005
  %tobool26 = icmp ne i32 %21, 0, !dbg !6005
  %lnot27 = xor i1 %tobool26, true, !dbg !6005
  %lnot29 = xor i1 %lnot27, true, !dbg !6005
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !6005
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !6005
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !6005
  store i64 %expval32, ptr %tmp25, align 8, !dbg !6006
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6015
  %22 = load i64, ptr %tmp25, align 8, !dbg !6005
  %tobool33 = icmp ne i64 %22, 0, !dbg !6015
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !6016

if.then34:                                        ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !6017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6017

if.end35:                                         ; preds = %if.end
  br label %while.cond, !dbg !6018

while.cond:                                       ; preds = %if.end41, %if.end35
  %23 = load i64, ptr %unmapped, align 8, !dbg !6019
  %24 = load i64, ptr %size, align 8, !dbg !6020
  %cmp36 = icmp ult i64 %23, %24, !dbg !6021
  br i1 %cmp36, label %while.body, label %while.end, !dbg !6018

while.body:                                       ; preds = %while.cond
  %25 = load ptr, ptr %pgtable, align 8, !dbg !6022
  %26 = load i64, ptr %iova.addr, align 8, !dbg !6024
  %call38 = call ptr @fetch_pte(ptr noundef %25, i64 noundef %26, ptr noundef %unmap_size) #11, !dbg !6025
  store ptr %call38, ptr %pte, align 8, !dbg !6026
  %27 = load ptr, ptr %pte, align 8, !dbg !6027
  %tobool39 = icmp ne ptr %27, null, !dbg !6027
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !6029

if.then40:                                        ; preds = %while.body
  %28 = load i64, ptr %unmapped, align 8, !dbg !6030
  store i64 %28, ptr %retval, align 8, !dbg !6031
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6031

if.end41:                                         ; preds = %while.body
  %29 = load ptr, ptr %pte, align 8, !dbg !6032
  store i64 0, ptr %29, align 8, !dbg !6033
  %30 = load i64, ptr %iova.addr, align 8, !dbg !6034
  %31 = load i64, ptr %unmap_size, align 8, !dbg !6035
  %sub = sub i64 %31, 1, !dbg !6036
  %not = xor i64 %sub, -1, !dbg !6037
  %and42 = and i64 %30, %not, !dbg !6038
  %32 = load i64, ptr %unmap_size, align 8, !dbg !6039
  %add = add i64 %and42, %32, !dbg !6040
  store i64 %add, ptr %iova.addr, align 8, !dbg !6041
  %33 = load i64, ptr %unmap_size, align 8, !dbg !6042
  %34 = load i64, ptr %unmapped, align 8, !dbg !6043
  %add43 = add i64 %34, %33, !dbg !6043
  store i64 %add43, ptr %unmapped, align 8, !dbg !6043
  br label %while.cond, !dbg !6018, !llvm.loop !6044

while.end:                                        ; preds = %while.cond
  %35 = load i64, ptr %unmapped, align 8, !dbg !6046
  store i64 %35, ptr %retval, align 8, !dbg !6047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6047

cleanup:                                          ; preds = %while.end, %if.then40, %if.then34
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #10, !dbg !6048
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #10, !dbg !6048
  call void @llvm.lifetime.end.p0(i64 8, ptr %unmapped) #10, !dbg !6048
  call void @llvm.lifetime.end.p0(i64 8, ptr %unmap_size) #10, !dbg !6048
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #10, !dbg !6048
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgtable) #10, !dbg !6048
  %36 = load i64, ptr %retval, align 8, !dbg !6048
  ret i64 %36, !dbg !6048
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @iommu_v2_iova_to_phys(ptr noundef %ops, i64 noundef %iova) #0 align 16 !dbg !6049 {
entry:
  %retval = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  %iova.addr = alloca i64, align 8
  %pgtable = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %offset_mask = alloca i64, align 8
  %pte_pgsize = alloca i64, align 8
  %pte = alloca ptr, align 8
  %__pte = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !6051, metadata !DIExpression()), !dbg !6062
  store i64 %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !6052, metadata !DIExpression()), !dbg !6063
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgtable) #10, !dbg !6064
  call void @llvm.dbg.declare(metadata ptr %pgtable, metadata !6053, metadata !DIExpression()), !dbg !6065
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6066
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6054, metadata !DIExpression()), !dbg !6066
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #10, !dbg !6067
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6056, metadata !DIExpression()), !dbg !6067
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !6067
  store ptr %0, ptr %__mptr1, align 8, !dbg !6067
  %1 = load ptr, ptr %__mptr1, align 8, !dbg !6067
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !6067
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6067
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #10, !dbg !6066
  %2 = load ptr, ptr %tmp, align 8, !dbg !6067
  store ptr %2, ptr %__mptr, align 8, !dbg !6066
  %3 = load ptr, ptr %__mptr, align 8, !dbg !6066
  %add.ptr3 = getelementptr i8, ptr %3, i64 -88, !dbg !6066
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6066
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6068
  %4 = load ptr, ptr %tmp2, align 8, !dbg !6066
  store ptr %4, ptr %pgtable, align 8, !dbg !6065
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset_mask) #10, !dbg !6069
  call void @llvm.dbg.declare(metadata ptr %offset_mask, metadata !6058, metadata !DIExpression()), !dbg !6070
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte_pgsize) #10, !dbg !6069
  call void @llvm.dbg.declare(metadata ptr %pte_pgsize, metadata !6059, metadata !DIExpression()), !dbg !6071
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #10, !dbg !6072
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6060, metadata !DIExpression()), !dbg !6073
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pte) #10, !dbg !6072
  call void @llvm.dbg.declare(metadata ptr %__pte, metadata !6061, metadata !DIExpression()), !dbg !6074
  %5 = load ptr, ptr %pgtable, align 8, !dbg !6075
  %6 = load i64, ptr %iova.addr, align 8, !dbg !6076
  %call = call ptr @fetch_pte(ptr noundef %5, i64 noundef %6, ptr noundef %pte_pgsize) #11, !dbg !6077
  store ptr %call, ptr %pte, align 8, !dbg !6078
  %7 = load ptr, ptr %pte, align 8, !dbg !6079
  %tobool = icmp ne ptr %7, null, !dbg !6079
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6081

lor.lhs.false:                                    ; preds = %entry
  %8 = load ptr, ptr %pte, align 8, !dbg !6082
  %9 = load i64, ptr %8, align 8, !dbg !6082
  %and = and i64 %9, 1, !dbg !6082
  %tobool4 = icmp ne i64 %and, 0, !dbg !6082
  br i1 %tobool4, label %if.end, label %if.then, !dbg !6083

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, ptr %retval, align 8, !dbg !6084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6084

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i64, ptr %pte_pgsize, align 8, !dbg !6085
  %sub = sub i64 %10, 1, !dbg !6086
  store i64 %sub, ptr %offset_mask, align 8, !dbg !6087
  %11 = load ptr, ptr %pte, align 8, !dbg !6088
  %12 = load i64, ptr %11, align 8, !dbg !6088
  %and5 = and i64 %12, 4503599627366400, !dbg !6088
  store i64 %and5, ptr %__pte, align 8, !dbg !6089
  %13 = load i64, ptr %__pte, align 8, !dbg !6090
  %14 = load i64, ptr %offset_mask, align 8, !dbg !6091
  %not = xor i64 %14, -1, !dbg !6092
  %and6 = and i64 %13, %not, !dbg !6093
  %15 = load i64, ptr %iova.addr, align 8, !dbg !6094
  %16 = load i64, ptr %offset_mask, align 8, !dbg !6095
  %and7 = and i64 %15, %16, !dbg !6096
  %or = or i64 %and6, %and7, !dbg !6097
  store i64 %or, ptr %retval, align 8, !dbg !6098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6098

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pte) #10, !dbg !6099
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #10, !dbg !6099
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte_pgsize) #10, !dbg !6099
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset_mask) #10, !dbg !6099
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgtable) #10, !dbg !6099
  %17 = load i64, ptr %retval, align 8, !dbg !6099
  ret i64 %17, !dbg !6099
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_pgtable_page(ptr noundef %pt) #3 align 16 !dbg !6100 {
entry:
  %pt.addr = alloca ptr, align 8
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !6104, metadata !DIExpression()), !dbg !6105
  %0 = load ptr, ptr %pt.addr, align 8, !dbg !6106
  %1 = ptrtoint ptr %0 to i64, !dbg !6106
  call void @free_pages(i64 noundef %1, i32 noundef 0) #11, !dbg !6106
  ret void, !dbg !6107
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) #3 align 16 !dbg !6108 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6112, metadata !DIExpression()), !dbg !6115
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6113, metadata !DIExpression()), !dbg !6116
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !6114, metadata !DIExpression()), !dbg !6117
  %0 = load i32, ptr %nid.addr, align 4, !dbg !6118
  %cmp = icmp eq i32 %0, -1, !dbg !6120
  br i1 %cmp, label %if.then, label %if.end, !dbg !6121

if.then:                                          ; preds = %entry
  %call = call i32 @numa_mem_id() #11, !dbg !6122
  store i32 %call, ptr %nid.addr, align 4, !dbg !6123
  br label %if.end, !dbg !6124

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %nid.addr, align 4, !dbg !6125
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6126
  %3 = load i32, ptr %order.addr, align 4, !dbg !6127
  %call1 = call ptr @__alloc_pages_node(i32 noundef %1, i32 noundef %2, i32 noundef %3) #11, !dbg !6128
  ret ptr %call1, !dbg !6129
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #5 align 16 !dbg !6130 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6136, metadata !DIExpression()), !dbg !6137
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6138
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !6138
  %2 = inttoptr i64 %1 to ptr, !dbg !6138
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !6138
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !6138
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6138
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6138
  %shl = shl i64 %sub.ptr.div, 12, !dbg !6138
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !6138
  %add = add i64 %shl, %3, !dbg !6138
  %4 = inttoptr i64 %add to ptr, !dbg !6138
  ret ptr %4, !dbg !6139
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @numa_mem_id() #3 align 16 !dbg !6140 {
entry:
  %call = call i32 @numa_node_id() #11, !dbg !6142
  ret i32 %call, !dbg !6143
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) #3 align 16 !dbg !6144 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6146, metadata !DIExpression()), !dbg !6149
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6147, metadata !DIExpression()), !dbg !6150
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !6148, metadata !DIExpression()), !dbg !6151
  %0 = load i32, ptr %nid.addr, align 4, !dbg !6152
  %1 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6153
  call void @warn_if_node_offline(i32 noundef %0, i32 noundef %1) #11, !dbg !6154
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6155
  %3 = load i32, ptr %order.addr, align 4, !dbg !6156
  %4 = load i32, ptr %nid.addr, align 4, !dbg !6157
  %call = call ptr @__alloc_pages(i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null) #11, !dbg !6158
  ret ptr %call, !dbg !6159
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @numa_node_id() #3 align 16 !dbg !6160 {
entry:
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #10, !dbg !6168
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6162, metadata !DIExpression()), !dbg !6168
  br label %do.body, !dbg !6168

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !6169
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6164, metadata !DIExpression()), !dbg !6169
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6169
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !6168
  br label %do.cond, !dbg !6169

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6169

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #10, !dbg !6170
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6166, metadata !DIExpression()), !dbg !6170
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @numa_node) #12, !dbg !6170, !srcloc !6171
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6170
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6170
  %conv = zext i32 %2 to i64, !dbg !6170
  %conv1 = trunc i64 %conv to i32, !dbg !6170
  store i32 %conv1, ptr %tmp, align 4, !dbg !6170
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #10, !dbg !6168
  %3 = load i32, ptr %tmp, align 4, !dbg !6170
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6168
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6168
  store i32 %4, ptr %tmp2, align 4, !dbg !6168
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #10, !dbg !6172
  %5 = load i32, ptr %tmp2, align 4, !dbg !6168
  ret i32 %5, !dbg !6173
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @warn_if_node_offline(i32 noundef %this_node, i32 noundef %gfp_mask) #3 align 16 !dbg !6174 {
entry:
  %this_node.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %warn_gfp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %this_node, ptr %this_node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %this_node.addr, metadata !6178, metadata !DIExpression()), !dbg !6181
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6179, metadata !DIExpression()), !dbg !6182
  call void @llvm.lifetime.start.p0(i64 4, ptr %warn_gfp) #10, !dbg !6183
  call void @llvm.dbg.declare(metadata ptr %warn_gfp, metadata !6180, metadata !DIExpression()), !dbg !6184
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6185
  %and = and i32 %0, 2105344, !dbg !6186
  store i32 %and, ptr %warn_gfp, align 4, !dbg !6184
  %1 = load i32, ptr %warn_gfp, align 4, !dbg !6187
  %cmp = icmp ne i32 %1, 2105344, !dbg !6189
  br i1 %cmp, label %if.then, label %if.end, !dbg !6190

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6191

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %this_node.addr, align 4, !dbg !6192
  %call = call i32 @node_state(i32 noundef %2, i32 noundef 1) #11, !dbg !6192
  %tobool = icmp ne i32 %call, 0, !dbg !6192
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !6194

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6195

if.end2:                                          ; preds = %if.end
  br label %do.body, !dbg !6196

do.body:                                          ; preds = %if.end2
  br label %do.cond, !dbg !6198

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6198

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %this_node.addr, align 4, !dbg !6196
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %gfp_mask.addr, i32 noundef %3) #13, !dbg !6196
  store i32 %call3, ptr %tmp, align 4, !dbg !6198
  %4 = load i32, ptr %tmp, align 4, !dbg !6196
  call void @dump_stack() #13, !dbg !6200
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6201
  br label %cleanup, !dbg !6201

cleanup:                                          ; preds = %do.end, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %warn_gfp) #10, !dbg !6201
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6201

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6202 dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @node_state(i32 noundef %node, i32 noundef %state) #3 align 16 !dbg !6206 {
entry:
  %node.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6210, metadata !DIExpression()), !dbg !6212
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6211, metadata !DIExpression()), !dbg !6213
  %0 = load i32, ptr %node.addr, align 4, !dbg !6214
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6214
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6214

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %state.addr, align 4, !dbg !6214
  %idxprom = zext i32 %2 to i64, !dbg !6214
  %arrayidx = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom, !dbg !6214
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx, i32 0, i32 0, !dbg !6214
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6214
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !6214
  %cmp = icmp ne i64 %3, 0, !dbg !6214
  %conv = zext i1 %cmp to i32, !dbg !6214
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6214
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6214

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %state.addr, align 4, !dbg !6214
  %idxprom2 = zext i32 %5 to i64, !dbg !6214
  %arrayidx3 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom2, !dbg !6214
  %bits4 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx3, i32 0, i32 0, !dbg !6214
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %bits4, i64 0, i64 0, !dbg !6214
  %6 = ptrtoint ptr %arraydecay5 to i64, !dbg !6214
  %cmp6 = icmp ne i64 %6, 0, !dbg !6214
  br i1 %cmp6, label %land.lhs.true8, label %cond.false, !dbg !6214

land.lhs.true8:                                   ; preds = %land.lhs.true1
  %7 = load i32, ptr %state.addr, align 4, !dbg !6214
  %idxprom9 = zext i32 %7 to i64, !dbg !6214
  %arrayidx10 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom9, !dbg !6214
  %bits11 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx10, i32 0, i32 0, !dbg !6214
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %bits11, i64 0, i64 0, !dbg !6214
  %8 = load i64, ptr %arraydecay12, align 8, !dbg !6214
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6214
  br i1 %9, label %cond.true, label %cond.false, !dbg !6214

cond.true:                                        ; preds = %land.lhs.true8
  %10 = load i32, ptr %node.addr, align 4, !dbg !6214
  %conv13 = sext i32 %10 to i64, !dbg !6214
  %11 = load i32, ptr %state.addr, align 4, !dbg !6214
  %idxprom14 = zext i32 %11 to i64, !dbg !6214
  %arrayidx15 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom14, !dbg !6214
  %bits16 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx15, i32 0, i32 0, !dbg !6214
  %arraydecay17 = getelementptr inbounds [1 x i64], ptr %bits16, i64 0, i64 0, !dbg !6214
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv13, ptr noundef %arraydecay17) #11, !dbg !6214
  %conv18 = zext i1 %call to i32, !dbg !6214
  br label %cond.end, !dbg !6214

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %node.addr, align 4, !dbg !6214
  %conv19 = sext i32 %12 to i64, !dbg !6214
  %13 = load i32, ptr %state.addr, align 4, !dbg !6214
  %idxprom20 = zext i32 %13 to i64, !dbg !6214
  %arrayidx21 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom20, !dbg !6214
  %bits22 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx21, i32 0, i32 0, !dbg !6214
  %arraydecay23 = getelementptr inbounds [1 x i64], ptr %bits22, i64 0, i64 0, !dbg !6214
  %call24 = call zeroext i1 @_test_bit(i64 noundef %conv19, ptr noundef %arraydecay23) #11, !dbg !6214
  %conv25 = zext i1 %call24 to i32, !dbg !6214
  br label %cond.end, !dbg !6214

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %conv25, %cond.false ], !dbg !6214
  ret i32 %cond, !dbg !6215
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6216 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6220 dso_local void @dump_stack() #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6221 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6229, metadata !DIExpression()), !dbg !6234
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6230, metadata !DIExpression()), !dbg !6235
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !6236
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6231, metadata !DIExpression()), !dbg !6237
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6238
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6239
  %div = udiv i64 %1, 64, !dbg !6239
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6240
  store ptr %add.ptr, ptr %p, align 8, !dbg !6237
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !6241
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6232, metadata !DIExpression()), !dbg !6242
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6243
  %rem = urem i64 %2, 64, !dbg !6243
  %shl = shl i64 1, %rem, !dbg !6243
  store i64 %shl, ptr %mask, align 8, !dbg !6242
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !6244
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6233, metadata !DIExpression()), !dbg !6245
  %3 = load ptr, ptr %p, align 8, !dbg !6246
  %4 = load i64, ptr %3, align 8, !dbg !6247
  store i64 %4, ptr %val, align 8, !dbg !6245
  %5 = load i64, ptr %val, align 8, !dbg !6248
  %6 = load i64, ptr %mask, align 8, !dbg !6249
  %and = and i64 %5, %6, !dbg !6250
  %tobool = icmp ne i64 %and, 0, !dbg !6251
  %lnot = xor i1 %tobool, true, !dbg !6251
  %lnot1 = xor i1 %lnot, true, !dbg !6252
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !6253
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !6253
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !6253
  ret i1 %lnot1, !dbg !6254
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6255 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6258, metadata !DIExpression()), !dbg !6260
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6259, metadata !DIExpression()), !dbg !6261
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6262
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6263
  %div = udiv i64 %1, 64, !dbg !6263
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6264
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !6265
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6266
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6267
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !6268
  ret i1 %call, !dbg !6269
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6270 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6278, metadata !DIExpression()), !dbg !6280
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6279, metadata !DIExpression()), !dbg !6281
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6282
  %1 = load i64, ptr %size.addr, align 8, !dbg !6283
  %conv = trunc i64 %1 to i32, !dbg !6283
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !6284
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6285
  %3 = load i64, ptr %size.addr, align 8, !dbg !6285
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !6285
  ret void, !dbg !6286
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6287 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6290, metadata !DIExpression()), !dbg !6292
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6291, metadata !DIExpression()), !dbg !6293
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6294
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6295
  br i1 %1, label %cond.true, label %cond.false, !dbg !6295

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6296
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6297
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !6298
  %conv = zext i1 %call to i32, !dbg !6298
  br label %cond.end, !dbg !6295

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6299
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6300
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !6301
  %conv2 = zext i1 %call1 to i32, !dbg !6301
  br label %cond.end, !dbg !6295

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6295
  %tobool = icmp ne i32 %cond, 0, !dbg !6295
  ret i1 %tobool, !dbg !6302
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6303 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6308, metadata !DIExpression()), !dbg !6310
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6309, metadata !DIExpression()), !dbg !6311
  ret i1 true, !dbg !6312
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6313 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6318, metadata !DIExpression()), !dbg !6321
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6319, metadata !DIExpression()), !dbg !6322
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6320, metadata !DIExpression()), !dbg !6323
  ret void, !dbg !6324
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6325 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6329, metadata !DIExpression()), !dbg !6331
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6330, metadata !DIExpression()), !dbg !6332
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6333
  %and = and i64 %0, 63, !dbg !6334
  %shl = shl i64 1, %and, !dbg !6335
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6336
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6337
  %shr = ashr i64 %2, 6, !dbg !6338
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6336
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6336
  %and1 = and i64 %shl, %3, !dbg !6339
  %cmp = icmp ne i64 %and1, 0, !dbg !6340
  ret i1 %cmp, !dbg !6341
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6342 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6344, metadata !DIExpression()), !dbg !6347
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6345, metadata !DIExpression()), !dbg !6348
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !6349
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6346, metadata !DIExpression()), !dbg !6350
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6351
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6352
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !6353, !srcloc !6354
  %3 = icmp ult i8 %2, 2, !dbg !6353
  call void @llvm.assume(i1 %3), !dbg !6353
  store i8 %2, ptr %oldbit, align 1, !dbg !6353
  %4 = load i8, ptr %oldbit, align 1, !dbg !6355, !range !5929, !noundef !1007
  %tobool = trunc i8 %4 to i1, !dbg !6355
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !6356
  ret i1 %tobool, !dbg !6357
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_to_phys(ptr noundef %address) #3 align 16 !dbg !6358 {
entry:
  %address.addr = alloca ptr, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6364, metadata !DIExpression()), !dbg !6365
  %0 = load ptr, ptr %address.addr, align 8, !dbg !6366
  %1 = ptrtoint ptr %0 to i64, !dbg !6366
  %call = call i64 @__phys_addr_nodebug(i64 noundef %1) #11, !dbg !6366
  ret i64 %call, !dbg !6367
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #5 align 16 !dbg !6368 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6373, metadata !DIExpression()), !dbg !6375
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #10, !dbg !6376
  call void @llvm.dbg.declare(metadata ptr %y, metadata !6374, metadata !DIExpression()), !dbg !6377
  %0 = load i64, ptr %x.addr, align 8, !dbg !6378
  %sub = sub i64 %0, -2147483648, !dbg !6379
  store i64 %sub, ptr %y, align 8, !dbg !6377
  %1 = load i64, ptr %y, align 8, !dbg !6380
  %2 = load i64, ptr %x.addr, align 8, !dbg !6381
  %3 = load i64, ptr %y, align 8, !dbg !6382
  %cmp = icmp ugt i64 %2, %3, !dbg !6383
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6384

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !6385
  br label %cond.end, !dbg !6384

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !6386
  %sub1 = sub i64 -2147483648, %5, !dbg !6387
  br label %cond.end, !dbg !6384

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !6384
  %add = add i64 %1, %cond, !dbg !6388
  store i64 %add, ptr %x.addr, align 8, !dbg !6389
  %6 = load i64, ptr %x.addr, align 8, !dbg !6390
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #10, !dbg !6391
  ret i64 %6, !dbg !6392
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #5 align 16 !dbg !6393 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !6395, metadata !DIExpression()), !dbg !6396
  %0 = load i64, ptr %word.addr, align 8, !dbg !6397
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !6398, !srcloc !6399
  store i64 %1, ptr %word.addr, align 8, !dbg !6398
  %2 = load i64, ptr %word.addr, align 8, !dbg !6400
  ret i64 %2, !dbg !6401
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_alloc_page_size(i64 noundef %size) #3 align 16 !dbg !6402 {
entry:
  %retval = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6406, metadata !DIExpression()), !dbg !6407
  %0 = load i64, ptr %size.addr, align 8, !dbg !6408
  %cmp = icmp uge i64 %0, 1073741824, !dbg !6410
  br i1 %cmp, label %if.then, label %if.end, !dbg !6411

if.then:                                          ; preds = %entry
  store i64 1073741824, ptr %retval, align 8, !dbg !6412
  br label %return, !dbg !6412

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6413
  %cmp1 = icmp uge i64 %1, 2097152, !dbg !6415
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6416

if.then2:                                         ; preds = %if.end
  store i64 2097152, ptr %retval, align 8, !dbg !6417
  br label %return, !dbg !6417

if.end3:                                          ; preds = %if.end
  store i64 4096, ptr %retval, align 8, !dbg !6418
  br label %return, !dbg !6418

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %2 = load i64, ptr %retval, align 8, !dbg !6419
  ret i64 %2, !dbg !6419
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v2_alloc_pte(i32 noundef %nid, ptr noundef %pgd, i64 noundef %iova, i64 noundef %pg_size, i32 noundef %gfp, ptr noundef %updated) #0 align 16 !dbg !6420 {
entry:
  %retval = alloca ptr, align 8
  %nid.addr = alloca i32, align 4
  %pgd.addr = alloca ptr, align 8
  %iova.addr = alloca i64, align 8
  %pg_size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %updated.addr = alloca ptr, align 8
  %pte = alloca ptr, align 8
  %page = alloca ptr, align 8
  %level = alloca i32, align 4
  %end_level = alloca i32, align 4
  %__pte = alloca i64, align 8
  %__npte = alloca i64, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %tmp8 = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp9 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr18 = alloca ptr, align 8
  %tmp22 = alloca i64, align 8
  %tmp26 = alloca i64, align 8
  %__ret27 = alloca i64, align 8
  %__old28 = alloca i64, align 8
  %__new29 = alloca i64, align 8
  %__ptr30 = alloca ptr, align 8
  %tmp31 = alloca i64, align 8
  %__pte52 = alloca ptr, align 8
  %__ai_ptr54 = alloca ptr, align 8
  %tmp58 = alloca i64, align 8
  %tmp62 = alloca i64, align 8
  %__ret63 = alloca i64, align 8
  %__old64 = alloca i64, align 8
  %__new65 = alloca i64, align 8
  %__ptr66 = alloca ptr, align 8
  %tmp67 = alloca i64, align 8
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6424, metadata !DIExpression()), !dbg !6469
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !6425, metadata !DIExpression()), !dbg !6470
  store i64 %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !6426, metadata !DIExpression()), !dbg !6471
  store i64 %pg_size, ptr %pg_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pg_size.addr, metadata !6427, metadata !DIExpression()), !dbg !6472
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !6428, metadata !DIExpression()), !dbg !6473
  store ptr %updated, ptr %updated.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %updated.addr, metadata !6429, metadata !DIExpression()), !dbg !6474
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #10, !dbg !6475
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6430, metadata !DIExpression()), !dbg !6476
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #10, !dbg !6475
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6431, metadata !DIExpression()), !dbg !6477
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #10, !dbg !6478
  call void @llvm.dbg.declare(metadata ptr %level, metadata !6432, metadata !DIExpression()), !dbg !6479
  call void @llvm.lifetime.start.p0(i64 4, ptr %end_level) #10, !dbg !6478
  call void @llvm.dbg.declare(metadata ptr %end_level, metadata !6433, metadata !DIExpression()), !dbg !6480
  %call = call i32 @get_pgtable_level() #11, !dbg !6481
  %sub = sub i32 %call, 1, !dbg !6482
  store i32 %sub, ptr %level, align 4, !dbg !6483
  %0 = load i64, ptr %pg_size.addr, align 8, !dbg !6484
  %call1 = call i32 @page_size_to_level(i64 noundef %0) #11, !dbg !6485
  store i32 %call1, ptr %end_level, align 4, !dbg !6486
  %1 = load ptr, ptr %pgd.addr, align 8, !dbg !6487
  %2 = load i64, ptr %iova.addr, align 8, !dbg !6488
  %3 = load i32, ptr %level, align 4, !dbg !6488
  %mul = mul i32 %3, 9, !dbg !6488
  %add = add i32 12, %mul, !dbg !6488
  %sh_prom = zext i32 %add to i64, !dbg !6488
  %shr = lshr i64 %2, %sh_prom, !dbg !6488
  %and = and i64 %shr, 511, !dbg !6488
  %arrayidx = getelementptr i64, ptr %1, i64 %and, !dbg !6487
  store ptr %arrayidx, ptr %pte, align 8, !dbg !6489
  %4 = load i64, ptr %iova.addr, align 8, !dbg !6490
  %and2 = and i64 %4, -4096, !dbg !6490
  store i64 %and2, ptr %iova.addr, align 8, !dbg !6491
  br label %while.cond, !dbg !6492

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %entry
  %5 = load i32, ptr %level, align 4, !dbg !6493
  %6 = load i32, ptr %end_level, align 4, !dbg !6494
  %cmp = icmp sge i32 %5, %6, !dbg !6495
  br i1 %cmp, label %while.body, label %while.end, !dbg !6492

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pte) #10, !dbg !6496
  call void @llvm.dbg.declare(metadata ptr %__pte, metadata !6434, metadata !DIExpression()), !dbg !6497
  call void @llvm.lifetime.start.p0(i64 8, ptr %__npte) #10, !dbg !6496
  call void @llvm.dbg.declare(metadata ptr %__npte, metadata !6436, metadata !DIExpression()), !dbg !6498
  %7 = load ptr, ptr %pte, align 8, !dbg !6499
  %8 = load i64, ptr %7, align 8, !dbg !6500
  store i64 %8, ptr %__pte, align 8, !dbg !6501
  %9 = load i64, ptr %__pte, align 8, !dbg !6502
  %and3 = and i64 %9, 1, !dbg !6502
  %tobool = icmp ne i64 %and3, 0, !dbg !6502
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6503

land.lhs.true:                                    ; preds = %while.body
  %10 = load i64, ptr %__pte, align 8, !dbg !6504
  %call4 = call zeroext i1 @is_large_pte(i64 noundef %10) #11, !dbg !6505
  br i1 %call4, label %if.then, label %if.end, !dbg !6506

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #10, !dbg !6507
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !6437, metadata !DIExpression()), !dbg !6507
  %11 = load ptr, ptr %pte, align 8, !dbg !6507
  store ptr %11, ptr %__ai_ptr, align 8, !dbg !6507
  br label %do.body, !dbg !6507

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6508

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6508

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %__ai_ptr, align 8, !dbg !6507
  call void @instrument_atomic_read_write(ptr noundef %12, i64 noundef 8) #11, !dbg !6507
  br label %do.body5, !dbg !6510

do.body5:                                         ; preds = %do.end
  br label %do.cond6, !dbg !6511

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6511

do.end7:                                          ; preds = %do.cond6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #10, !dbg !6513
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6441, metadata !DIExpression()), !dbg !6513
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #10, !dbg !6513
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !6444, metadata !DIExpression()), !dbg !6513
  %13 = load ptr, ptr %pte, align 8, !dbg !6513
  %14 = load i64, ptr %13, align 8, !dbg !6513
  store i64 %14, ptr %__old, align 8, !dbg !6513
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #10, !dbg !6513
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !6445, metadata !DIExpression()), !dbg !6513
  store i64 0, ptr %__new, align 8, !dbg !6513
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !6513
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6446, metadata !DIExpression()), !dbg !6513
  %15 = load ptr, ptr %__ai_ptr, align 8, !dbg !6513
  store ptr %15, ptr %__ptr, align 8, !dbg !6513
  %16 = load ptr, ptr %__ptr, align 8, !dbg !6513
  %17 = load i64, ptr %__new, align 8, !dbg !6513
  %18 = load i64, ptr %__old, align 8, !dbg !6513
  %19 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %16, i64 %17, i64 %18, ptr elementtype(i64) %16) #10, !dbg !6513, !srcloc !6514
  store i64 %19, ptr %__ret, align 8, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !6513
  %20 = load i64, ptr %__ret, align 8, !dbg !6513
  store i64 %20, ptr %tmp9, align 8, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #10, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #10, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #10, !dbg !6510
  %21 = load i64, ptr %tmp9, align 8, !dbg !6513
  store i64 %21, ptr %tmp8, align 8, !dbg !6511
  %22 = load i64, ptr %tmp8, align 8, !dbg !6510
  store i64 %22, ptr %tmp, align 8, !dbg !6507
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #10, !dbg !6515
  %23 = load i64, ptr %tmp, align 8, !dbg !6507
  %24 = load ptr, ptr %updated.addr, align 8, !dbg !6516
  store i8 1, ptr %24, align 1, !dbg !6517
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6518, !llvm.loop !6519

if.end:                                           ; preds = %land.lhs.true, %while.body
  %25 = load i64, ptr %__pte, align 8, !dbg !6521
  %and10 = and i64 %25, 1, !dbg !6521
  %tobool11 = icmp ne i64 %and10, 0, !dbg !6521
  br i1 %tobool11, label %if.end39, label %if.then12, !dbg !6522

if.then12:                                        ; preds = %if.end
  %26 = load i32, ptr %nid.addr, align 4, !dbg !6523
  %27 = load i32, ptr %gfp.addr, align 4, !dbg !6524
  %call13 = call ptr @alloc_pgtable_page(i32 noundef %26, i32 noundef %27) #11, !dbg !6525
  store ptr %call13, ptr %page, align 8, !dbg !6526
  %28 = load ptr, ptr %page, align 8, !dbg !6527
  %tobool14 = icmp ne ptr %28, null, !dbg !6527
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !6529

if.then15:                                        ; preds = %if.then12
  store ptr null, ptr %retval, align 8, !dbg !6530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6530

if.end16:                                         ; preds = %if.then12
  %29 = load ptr, ptr %page, align 8, !dbg !6531
  %call17 = call i64 @set_pgtable_attr(ptr noundef %29) #11, !dbg !6532
  store i64 %call17, ptr %__npte, align 8, !dbg !6533
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr18) #10, !dbg !6534
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr18, metadata !6447, metadata !DIExpression()), !dbg !6534
  %30 = load ptr, ptr %pte, align 8, !dbg !6534
  store ptr %30, ptr %__ai_ptr18, align 8, !dbg !6534
  br label %do.body19, !dbg !6534

do.body19:                                        ; preds = %if.end16
  br label %do.cond20, !dbg !6535

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !6535

do.end21:                                         ; preds = %do.cond20
  %31 = load ptr, ptr %__ai_ptr18, align 8, !dbg !6534
  call void @instrument_atomic_read_write(ptr noundef %31, i64 noundef 8) #11, !dbg !6534
  br label %do.body23, !dbg !6537

do.body23:                                        ; preds = %do.end21
  br label %do.cond24, !dbg !6538

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6538

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret27) #10, !dbg !6540
  call void @llvm.dbg.declare(metadata ptr %__ret27, metadata !6452, metadata !DIExpression()), !dbg !6540
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old28) #10, !dbg !6540
  call void @llvm.dbg.declare(metadata ptr %__old28, metadata !6455, metadata !DIExpression()), !dbg !6540
  %32 = load i64, ptr %__pte, align 8, !dbg !6540
  store i64 %32, ptr %__old28, align 8, !dbg !6540
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new29) #10, !dbg !6540
  call void @llvm.dbg.declare(metadata ptr %__new29, metadata !6456, metadata !DIExpression()), !dbg !6540
  %33 = load i64, ptr %__npte, align 8, !dbg !6540
  store i64 %33, ptr %__new29, align 8, !dbg !6540
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr30) #10, !dbg !6540
  call void @llvm.dbg.declare(metadata ptr %__ptr30, metadata !6457, metadata !DIExpression()), !dbg !6540
  %34 = load ptr, ptr %__ai_ptr18, align 8, !dbg !6540
  store ptr %34, ptr %__ptr30, align 8, !dbg !6540
  %35 = load ptr, ptr %__ptr30, align 8, !dbg !6540
  %36 = load i64, ptr %__new29, align 8, !dbg !6540
  %37 = load i64, ptr %__old28, align 8, !dbg !6540
  %38 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %35, i64 %36, i64 %37, ptr elementtype(i64) %35) #10, !dbg !6540, !srcloc !6541
  store i64 %38, ptr %__ret27, align 8, !dbg !6540
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr30) #10, !dbg !6540
  %39 = load i64, ptr %__ret27, align 8, !dbg !6540
  store i64 %39, ptr %tmp31, align 8, !dbg !6540
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new29) #10, !dbg !6537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old28) #10, !dbg !6537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret27) #10, !dbg !6537
  %40 = load i64, ptr %tmp31, align 8, !dbg !6540
  store i64 %40, ptr %tmp26, align 8, !dbg !6538
  %41 = load i64, ptr %tmp26, align 8, !dbg !6537
  store i64 %41, ptr %tmp22, align 8, !dbg !6534
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr18) #10, !dbg !6542
  %42 = load i64, ptr %tmp22, align 8, !dbg !6534
  %43 = load i64, ptr %__pte, align 8, !dbg !6543
  %cmp32 = icmp ne i64 %42, %43, !dbg !6544
  br i1 %cmp32, label %if.then33, label %if.else, !dbg !6545

if.then33:                                        ; preds = %do.end25
  %44 = load ptr, ptr %page, align 8, !dbg !6546
  call void @free_pgtable_page(ptr noundef %44) #11, !dbg !6547
  br label %if.end38, !dbg !6547

if.else:                                          ; preds = %do.end25
  %45 = load i64, ptr %__pte, align 8, !dbg !6548
  %and34 = and i64 %45, 1, !dbg !6548
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6548
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !6550

if.then36:                                        ; preds = %if.else
  %46 = load ptr, ptr %updated.addr, align 8, !dbg !6551
  store i8 1, ptr %46, align 1, !dbg !6552
  br label %if.end37, !dbg !6553

if.end37:                                         ; preds = %if.then36, %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then33
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6554, !llvm.loop !6519

if.end39:                                         ; preds = %if.end
  %47 = load i32, ptr %level, align 4, !dbg !6555
  %sub40 = sub i32 %47, 1, !dbg !6555
  store i32 %sub40, ptr %level, align 4, !dbg !6555
  %48 = load i64, ptr %__pte, align 8, !dbg !6556
  %call41 = call ptr @get_pgtable_pte(i64 noundef %48) #11, !dbg !6557
  store ptr %call41, ptr %pte, align 8, !dbg !6558
  %49 = load ptr, ptr %pte, align 8, !dbg !6559
  %50 = load i64, ptr %iova.addr, align 8, !dbg !6560
  %51 = load i32, ptr %level, align 4, !dbg !6560
  %mul42 = mul i32 %51, 9, !dbg !6560
  %add43 = add i32 12, %mul42, !dbg !6560
  %sh_prom44 = zext i32 %add43 to i64, !dbg !6560
  %shr45 = lshr i64 %50, %sh_prom44, !dbg !6560
  %and46 = and i64 %shr45, 511, !dbg !6560
  %arrayidx47 = getelementptr i64, ptr %49, i64 %and46, !dbg !6559
  store ptr %arrayidx47, ptr %pte, align 8, !dbg !6561
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6520
  br label %cleanup, !dbg !6520

cleanup:                                          ; preds = %if.end39, %if.end38, %if.then15, %do.end7
  call void @llvm.lifetime.end.p0(i64 8, ptr %__npte) #10, !dbg !6520
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pte) #10, !dbg !6520
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup77 [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !6492, !llvm.loop !6519

while.end:                                        ; preds = %while.cond
  %52 = load ptr, ptr %pte, align 8, !dbg !6562
  %53 = load i64, ptr %52, align 8, !dbg !6562
  %and49 = and i64 %53, 1, !dbg !6562
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6562
  br i1 %tobool50, label %if.then51, label %if.end76, !dbg !6563

if.then51:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pte52) #10, !dbg !6564
  call void @llvm.dbg.declare(metadata ptr %__pte52, metadata !6458, metadata !DIExpression()), !dbg !6565
  %54 = load ptr, ptr %updated.addr, align 8, !dbg !6566
  store i8 1, ptr %54, align 1, !dbg !6567
  %55 = load ptr, ptr %pte, align 8, !dbg !6568
  %56 = load i64, ptr %55, align 8, !dbg !6569
  %call53 = call ptr @get_pgtable_pte(i64 noundef %56) #11, !dbg !6570
  store ptr %call53, ptr %__pte52, align 8, !dbg !6571
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr54) #10, !dbg !6572
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr54, metadata !6461, metadata !DIExpression()), !dbg !6572
  %57 = load ptr, ptr %pte, align 8, !dbg !6572
  store ptr %57, ptr %__ai_ptr54, align 8, !dbg !6572
  br label %do.body55, !dbg !6572

do.body55:                                        ; preds = %if.then51
  br label %do.cond56, !dbg !6573

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !6573

do.end57:                                         ; preds = %do.cond56
  %58 = load ptr, ptr %__ai_ptr54, align 8, !dbg !6572
  call void @instrument_atomic_read_write(ptr noundef %58, i64 noundef 8) #11, !dbg !6572
  br label %do.body59, !dbg !6575

do.body59:                                        ; preds = %do.end57
  br label %do.cond60, !dbg !6576

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !6576

do.end61:                                         ; preds = %do.cond60
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret63) #10, !dbg !6578
  call void @llvm.dbg.declare(metadata ptr %__ret63, metadata !6463, metadata !DIExpression()), !dbg !6578
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old64) #10, !dbg !6578
  call void @llvm.dbg.declare(metadata ptr %__old64, metadata !6466, metadata !DIExpression()), !dbg !6578
  %59 = load ptr, ptr %pte, align 8, !dbg !6578
  %60 = load i64, ptr %59, align 8, !dbg !6578
  store i64 %60, ptr %__old64, align 8, !dbg !6578
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new65) #10, !dbg !6578
  call void @llvm.dbg.declare(metadata ptr %__new65, metadata !6467, metadata !DIExpression()), !dbg !6578
  store i64 0, ptr %__new65, align 8, !dbg !6578
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr66) #10, !dbg !6578
  call void @llvm.dbg.declare(metadata ptr %__ptr66, metadata !6468, metadata !DIExpression()), !dbg !6578
  %61 = load ptr, ptr %__ai_ptr54, align 8, !dbg !6578
  store ptr %61, ptr %__ptr66, align 8, !dbg !6578
  %62 = load ptr, ptr %__ptr66, align 8, !dbg !6578
  %63 = load i64, ptr %__new65, align 8, !dbg !6578
  %64 = load i64, ptr %__old64, align 8, !dbg !6578
  %65 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %62, i64 %63, i64 %64, ptr elementtype(i64) %62) #10, !dbg !6578, !srcloc !6579
  store i64 %65, ptr %__ret63, align 8, !dbg !6578
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr66) #10, !dbg !6578
  %66 = load i64, ptr %__ret63, align 8, !dbg !6578
  store i64 %66, ptr %tmp67, align 8, !dbg !6578
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new65) #10, !dbg !6575
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old64) #10, !dbg !6575
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret63) #10, !dbg !6575
  %67 = load i64, ptr %tmp67, align 8, !dbg !6578
  store i64 %67, ptr %tmp62, align 8, !dbg !6576
  %68 = load i64, ptr %tmp62, align 8, !dbg !6575
  store i64 %68, ptr %tmp58, align 8, !dbg !6572
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr54) #10, !dbg !6580
  %69 = load i64, ptr %tmp58, align 8, !dbg !6572
  %70 = load i64, ptr %pg_size.addr, align 8, !dbg !6581
  %cmp68 = icmp eq i64 %70, 1073741824, !dbg !6583
  br i1 %cmp68, label %if.then69, label %if.else71, !dbg !6584

if.then69:                                        ; preds = %do.end61
  %71 = load ptr, ptr %__pte52, align 8, !dbg !6585
  %72 = load i32, ptr %end_level, align 4, !dbg !6586
  %sub70 = sub i32 %72, 1, !dbg !6587
  call void @free_pgtable(ptr noundef %71, i32 noundef %sub70) #11, !dbg !6588
  br label %if.end75, !dbg !6588

if.else71:                                        ; preds = %do.end61
  %73 = load i64, ptr %pg_size.addr, align 8, !dbg !6589
  %cmp72 = icmp eq i64 %73, 2097152, !dbg !6591
  br i1 %cmp72, label %if.then73, label %if.end74, !dbg !6592

if.then73:                                        ; preds = %if.else71
  %74 = load ptr, ptr %__pte52, align 8, !dbg !6593
  call void @free_pgtable_page(ptr noundef %74) #11, !dbg !6594
  br label %if.end74, !dbg !6594

if.end74:                                         ; preds = %if.then73, %if.else71
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then69
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pte52) #10, !dbg !6595
  br label %if.end76, !dbg !6596

if.end76:                                         ; preds = %if.end75, %while.end
  %75 = load ptr, ptr %pte, align 8, !dbg !6597
  store ptr %75, ptr %retval, align 8, !dbg !6598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup77, !dbg !6598

cleanup77:                                        ; preds = %if.end76, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %end_level) #10, !dbg !6599
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #10, !dbg !6599
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #10, !dbg !6599
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #10, !dbg !6599
  %76 = load ptr, ptr %retval, align 8, !dbg !6599
  ret ptr %76, !dbg !6599
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @set_pte_attr(i64 noundef %paddr, i64 noundef %pg_size, i32 noundef %prot) #0 align 16 !dbg !6600 {
entry:
  %paddr.addr = alloca i64, align 8
  %pg_size.addr = alloca i64, align 8
  %prot.addr = alloca i32, align 4
  %pte = alloca i64, align 8
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !6604, metadata !DIExpression()), !dbg !6608
  store i64 %pg_size, ptr %pg_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pg_size.addr, metadata !6605, metadata !DIExpression()), !dbg !6609
  store i32 %prot, ptr %prot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prot.addr, metadata !6606, metadata !DIExpression()), !dbg !6610
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #10, !dbg !6611
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6607, metadata !DIExpression()), !dbg !6612
  %0 = load i64, ptr %paddr.addr, align 8, !dbg !6613
  %and = and i64 %0, 4503599627366400, !dbg !6613
  store i64 %and, ptr %pte, align 8, !dbg !6614
  %1 = load i64, ptr %pte, align 8, !dbg !6615
  %or = or i64 %1, 5, !dbg !6615
  store i64 %or, ptr %pte, align 8, !dbg !6615
  %2 = load i64, ptr %pte, align 8, !dbg !6616
  %or1 = or i64 %2, 96, !dbg !6616
  store i64 %or1, ptr %pte, align 8, !dbg !6616
  %3 = load i32, ptr %prot.addr, align 4, !dbg !6617
  %and2 = and i32 %3, 2, !dbg !6619
  %tobool = icmp ne i32 %and2, 0, !dbg !6619
  br i1 %tobool, label %if.then, label %if.end, !dbg !6620

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %pte, align 8, !dbg !6621
  %or3 = or i64 %4, 2, !dbg !6621
  store i64 %or3, ptr %pte, align 8, !dbg !6621
  br label %if.end, !dbg !6622

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %pg_size.addr, align 8, !dbg !6623
  %cmp = icmp eq i64 %5, 1073741824, !dbg !6625
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !6626

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, ptr %pg_size.addr, align 8, !dbg !6627
  %cmp4 = icmp eq i64 %6, 2097152, !dbg !6628
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !6629

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load i64, ptr %pte, align 8, !dbg !6630
  %or6 = or i64 %7, 128, !dbg !6630
  store i64 %or6, ptr %pte, align 8, !dbg !6630
  br label %if.end7, !dbg !6631

if.end7:                                          ; preds = %if.then5, %lor.lhs.false
  %8 = load i64, ptr %pte, align 8, !dbg !6632
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #10, !dbg !6633
  ret i64 %8, !dbg !6634
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6635 dso_local i32 @amd_iommu_flush_tlb(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6638 dso_local i32 @amd_iommu_flush_page(ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_size_to_level(i64 noundef %pg_size) #3 align 16 !dbg !6641 {
entry:
  %retval = alloca i32, align 4
  %pg_size.addr = alloca i64, align 8
  store i64 %pg_size, ptr %pg_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pg_size.addr, metadata !6645, metadata !DIExpression()), !dbg !6646
  %0 = load i64, ptr %pg_size.addr, align 8, !dbg !6647
  %cmp = icmp eq i64 %0, 1073741824, !dbg !6649
  br i1 %cmp, label %if.then, label %if.end, !dbg !6650

if.then:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !6651
  br label %return, !dbg !6651

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %pg_size.addr, align 8, !dbg !6652
  %cmp1 = icmp eq i64 %1, 2097152, !dbg !6654
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6655

if.then2:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6656
  br label %return, !dbg !6656

if.end3:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6657
  br label %return, !dbg !6657

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6658
  ret i32 %2, !dbg !6658
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_large_pte(i64 noundef %pte) #3 align 16 !dbg !6659 {
entry:
  %pte.addr = alloca i64, align 8
  store i64 %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !6663, metadata !DIExpression()), !dbg !6664
  %0 = load i64, ptr %pte.addr, align 8, !dbg !6665
  %and = and i64 %0, 128, !dbg !6666
  %tobool = icmp ne i64 %and, 0, !dbg !6667
  ret i1 %tobool, !dbg !6668
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6669 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6671, metadata !DIExpression()), !dbg !6673
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6672, metadata !DIExpression()), !dbg !6674
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6675
  %1 = load i64, ptr %size.addr, align 8, !dbg !6676
  %conv = trunc i64 %1 to i32, !dbg !6676
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !6677
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6678
  %3 = load i64, ptr %size.addr, align 8, !dbg !6678
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !6678
  ret void, !dbg !6679
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @set_pgtable_attr(ptr noundef %page) #3 align 16 !dbg !6680 {
entry:
  %page.addr = alloca ptr, align 8
  %prot = alloca i64, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6684, metadata !DIExpression()), !dbg !6686
  call void @llvm.lifetime.start.p0(i64 8, ptr %prot) #10, !dbg !6687
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !6685, metadata !DIExpression()), !dbg !6688
  store i64 7, ptr %prot, align 8, !dbg !6689
  %0 = load i64, ptr %prot, align 8, !dbg !6690
  %or = or i64 %0, 32, !dbg !6690
  store i64 %or, ptr %prot, align 8, !dbg !6690
  %1 = load ptr, ptr %page.addr, align 8, !dbg !6691
  %call = call i64 @iommu_virt_to_phys(ptr noundef %1) #11, !dbg !6692
  %2 = load i64, ptr %prot, align 8, !dbg !6693
  %or1 = or i64 %call, %2, !dbg !6694
  call void @llvm.lifetime.end.p0(i64 8, ptr %prot) #10, !dbg !6695
  ret i64 %or1, !dbg !6696
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_pgtable_pte(i64 noundef %pte) #3 align 16 !dbg !6697 {
entry:
  %pte.addr = alloca i64, align 8
  store i64 %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !6701, metadata !DIExpression()), !dbg !6702
  %0 = load i64, ptr %pte.addr, align 8, !dbg !6703
  %and = and i64 %0, 4503599627366400, !dbg !6704
  %call = call ptr @iommu_phys_to_virt(i64 noundef %and) #11, !dbg !6705
  ret ptr %call, !dbg !6706
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_pgtable(ptr noundef %pt, i32 noundef %level) #0 align 16 !dbg !6707 {
entry:
  %pt.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !6711, metadata !DIExpression()), !dbg !6715
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !6712, metadata !DIExpression()), !dbg !6716
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !6717
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6713, metadata !DIExpression()), !dbg !6718
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !6719
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6714, metadata !DIExpression()), !dbg !6720
  store i32 0, ptr %i, align 4, !dbg !6721
  br label %for.cond, !dbg !6723

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6724
  %cmp = icmp slt i32 %0, 512, !dbg !6726
  br i1 %cmp, label %for.body, label %for.end, !dbg !6727

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %pt.addr, align 8, !dbg !6728
  %2 = load i32, ptr %i, align 4, !dbg !6728
  %idxprom = sext i32 %2 to i64, !dbg !6728
  %arrayidx = getelementptr i64, ptr %1, i64 %idxprom, !dbg !6728
  %3 = load i64, ptr %arrayidx, align 8, !dbg !6728
  %and = and i64 %3, 1, !dbg !6728
  %tobool = icmp ne i64 %and, 0, !dbg !6728
  br i1 %tobool, label %if.end, label %if.then, !dbg !6731

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !6732

if.end:                                           ; preds = %for.body
  %4 = load ptr, ptr %pt.addr, align 8, !dbg !6733
  %5 = load i32, ptr %i, align 4, !dbg !6735
  %idxprom1 = sext i32 %5 to i64, !dbg !6733
  %arrayidx2 = getelementptr i64, ptr %4, i64 %idxprom1, !dbg !6733
  %6 = load i64, ptr %arrayidx2, align 8, !dbg !6733
  %call = call zeroext i1 @is_large_pte(i64 noundef %6) #11, !dbg !6736
  br i1 %call, label %if.then3, label %if.end4, !dbg !6737

if.then3:                                         ; preds = %if.end
  br label %for.inc, !dbg !6738

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %pt.addr, align 8, !dbg !6739
  %8 = load i32, ptr %i, align 4, !dbg !6740
  %idxprom5 = sext i32 %8 to i64, !dbg !6739
  %arrayidx6 = getelementptr i64, ptr %7, i64 %idxprom5, !dbg !6739
  %9 = load i64, ptr %arrayidx6, align 8, !dbg !6739
  %call7 = call ptr @get_pgtable_pte(i64 noundef %9) #11, !dbg !6741
  store ptr %call7, ptr %p, align 8, !dbg !6742
  %10 = load i32, ptr %level.addr, align 4, !dbg !6743
  %cmp8 = icmp sgt i32 %10, 2, !dbg !6745
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !6746

if.then9:                                         ; preds = %if.end4
  %11 = load ptr, ptr %p, align 8, !dbg !6747
  %12 = load i32, ptr %level.addr, align 4, !dbg !6748
  %sub = sub i32 %12, 1, !dbg !6749
  call void @free_pgtable(ptr noundef %11, i32 noundef %sub) #11, !dbg !6750
  br label %if.end10, !dbg !6750

if.else:                                          ; preds = %if.end4
  %13 = load ptr, ptr %p, align 8, !dbg !6751
  call void @free_pgtable_page(ptr noundef %13) #11, !dbg !6752
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  br label %for.inc, !dbg !6753

for.inc:                                          ; preds = %if.end10, %if.then3, %if.then
  %14 = load i32, ptr %i, align 4, !dbg !6754
  %inc = add i32 %14, 1, !dbg !6754
  store i32 %inc, ptr %i, align 4, !dbg !6754
  br label %for.cond, !dbg !6755, !llvm.loop !6756

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %pt.addr, align 8, !dbg !6758
  call void @free_pgtable_page(ptr noundef %15) #11, !dbg !6759
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !6760
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !6760
  ret void, !dbg !6760
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6761 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6763, metadata !DIExpression()), !dbg !6765
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6764, metadata !DIExpression()), !dbg !6766
  ret i1 true, !dbg !6767
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @iommu_phys_to_virt(i64 noundef %paddr) #3 align 16 !dbg !6768 {
entry:
  %paddr.addr = alloca i64, align 8
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !6772, metadata !DIExpression()), !dbg !6773
  %0 = load i64, ptr %paddr.addr, align 8, !dbg !6774
  %call = call ptr @phys_to_virt(i64 noundef %0) #11, !dbg !6775
  ret ptr %call, !dbg !6776
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @phys_to_virt(i64 noundef %address) #3 align 16 !dbg !6777 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6781, metadata !DIExpression()), !dbg !6782
  %0 = load i64, ptr %address.addr, align 8, !dbg !6783
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !6783
  %add = add i64 %0, %1, !dbg !6783
  %2 = inttoptr i64 %add to ptr, !dbg !6783
  ret ptr %2, !dbg !6784
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fetch_pte(ptr noundef %pgtable, i64 noundef %iova, ptr noundef %page_size) #0 align 16 !dbg !6785 {
entry:
  %retval = alloca ptr, align 8
  %pgtable.addr = alloca ptr, align 8
  %iova.addr = alloca i64, align 8
  %page_size.addr = alloca ptr, align 8
  %pte = alloca ptr, align 8
  %level = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pgtable, ptr %pgtable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !6789, metadata !DIExpression()), !dbg !6794
  store i64 %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !6790, metadata !DIExpression()), !dbg !6795
  store ptr %page_size, ptr %page_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page_size.addr, metadata !6791, metadata !DIExpression()), !dbg !6796
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #10, !dbg !6797
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6792, metadata !DIExpression()), !dbg !6798
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #10, !dbg !6799
  call void @llvm.dbg.declare(metadata ptr %level, metadata !6793, metadata !DIExpression()), !dbg !6800
  %call = call i32 @get_pgtable_level() #11, !dbg !6801
  %sub = sub i32 %call, 1, !dbg !6802
  store i32 %sub, ptr %level, align 4, !dbg !6803
  %0 = load ptr, ptr %pgtable.addr, align 8, !dbg !6804
  %pgd = getelementptr inbounds %struct.amd_io_pgtable, ptr %0, i32 0, i32 5, !dbg !6805
  %1 = load ptr, ptr %pgd, align 8, !dbg !6805
  %2 = load i64, ptr %iova.addr, align 8, !dbg !6806
  %3 = load i32, ptr %level, align 4, !dbg !6806
  %mul = mul i32 %3, 9, !dbg !6806
  %add = add i32 12, %mul, !dbg !6806
  %sh_prom = zext i32 %add to i64, !dbg !6806
  %shr = lshr i64 %2, %sh_prom, !dbg !6806
  %and = and i64 %shr, 511, !dbg !6806
  %arrayidx = getelementptr i64, ptr %1, i64 %and, !dbg !6804
  store ptr %arrayidx, ptr %pte, align 8, !dbg !6807
  %4 = load ptr, ptr %page_size.addr, align 8, !dbg !6808
  store i64 4096, ptr %4, align 8, !dbg !6809
  br label %while.cond, !dbg !6810

while.cond:                                       ; preds = %if.end19, %entry
  %5 = load i32, ptr %level, align 4, !dbg !6811
  %tobool = icmp ne i32 %5, 0, !dbg !6810
  br i1 %tobool, label %while.body, label %while.end, !dbg !6810

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %pte, align 8, !dbg !6812
  %7 = load i64, ptr %6, align 8, !dbg !6812
  %and1 = and i64 %7, 1, !dbg !6812
  %tobool2 = icmp ne i64 %and1, 0, !dbg !6812
  br i1 %tobool2, label %if.end, label %if.then, !dbg !6815

if.then:                                          ; preds = %while.body
  store ptr null, ptr %retval, align 8, !dbg !6816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6816

if.end:                                           ; preds = %while.body
  %8 = load ptr, ptr %pte, align 8, !dbg !6817
  %9 = load i64, ptr %8, align 8, !dbg !6818
  %call3 = call ptr @get_pgtable_pte(i64 noundef %9) #11, !dbg !6819
  store ptr %call3, ptr %pte, align 8, !dbg !6820
  %10 = load ptr, ptr %pte, align 8, !dbg !6821
  %11 = load i64, ptr %iova.addr, align 8, !dbg !6822
  %12 = load i32, ptr %level, align 4, !dbg !6822
  %sub4 = sub i32 %12, 1, !dbg !6822
  %mul5 = mul i32 %sub4, 9, !dbg !6822
  %add6 = add i32 12, %mul5, !dbg !6822
  %sh_prom7 = zext i32 %add6 to i64, !dbg !6822
  %shr8 = lshr i64 %11, %sh_prom7, !dbg !6822
  %and9 = and i64 %shr8, 511, !dbg !6822
  %arrayidx10 = getelementptr i64, ptr %10, i64 %and9, !dbg !6821
  store ptr %arrayidx10, ptr %pte, align 8, !dbg !6823
  %13 = load ptr, ptr %pte, align 8, !dbg !6824
  %14 = load i64, ptr %13, align 8, !dbg !6826
  %call11 = call zeroext i1 @is_large_pte(i64 noundef %14) #11, !dbg !6827
  br i1 %call11, label %if.then12, label %if.end19, !dbg !6828

if.then12:                                        ; preds = %if.end
  %15 = load i32, ptr %level, align 4, !dbg !6829
  %cmp = icmp eq i32 %15, 3, !dbg !6832
  br i1 %cmp, label %if.then13, label %if.else, !dbg !6833

if.then13:                                        ; preds = %if.then12
  %16 = load ptr, ptr %page_size.addr, align 8, !dbg !6834
  store i64 1073741824, ptr %16, align 8, !dbg !6835
  br label %if.end18, !dbg !6836

if.else:                                          ; preds = %if.then12
  %17 = load i32, ptr %level, align 4, !dbg !6837
  %cmp14 = icmp eq i32 %17, 2, !dbg !6839
  br i1 %cmp14, label %if.then15, label %if.else16, !dbg !6840

if.then15:                                        ; preds = %if.else
  %18 = load ptr, ptr %page_size.addr, align 8, !dbg !6841
  store i64 2097152, ptr %18, align 8, !dbg !6842
  br label %if.end17, !dbg !6843

if.else16:                                        ; preds = %if.else
  store ptr null, ptr %retval, align 8, !dbg !6844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6844

if.end17:                                         ; preds = %if.then15
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then13
  br label %while.end, !dbg !6845

if.end19:                                         ; preds = %if.end
  %19 = load i32, ptr %level, align 4, !dbg !6846
  %sub20 = sub i32 %19, 1, !dbg !6846
  store i32 %sub20, ptr %level, align 4, !dbg !6846
  br label %while.cond, !dbg !6810, !llvm.loop !6847

while.end:                                        ; preds = %if.end18, %while.cond
  %20 = load ptr, ptr %pte, align 8, !dbg !6849
  store ptr %20, ptr %retval, align 8, !dbg !6850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6850

cleanup:                                          ; preds = %while.end, %if.else16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #10, !dbg !6851
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #10, !dbg !6851
  %21 = load ptr, ptr %retval, align 8, !dbg !6851
  ret ptr %21, !dbg !6851
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v2_tlb_flush_all(ptr noundef %cookie) #0 align 16 !dbg !6852 {
entry:
  %cookie.addr = alloca ptr, align 8
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !6854, metadata !DIExpression()), !dbg !6855
  ret void, !dbg !6856
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v2_tlb_flush_walk(i64 noundef %iova, i64 noundef %size, i64 noundef %granule, ptr noundef %cookie) #0 align 16 !dbg !6857 {
entry:
  %iova.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %granule.addr = alloca i64, align 8
  %cookie.addr = alloca ptr, align 8
  store i64 %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !6859, metadata !DIExpression()), !dbg !6863
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6860, metadata !DIExpression()), !dbg !6864
  store i64 %granule, ptr %granule.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %granule.addr, metadata !6861, metadata !DIExpression()), !dbg !6865
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !6862, metadata !DIExpression()), !dbg !6866
  ret void, !dbg !6867
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v2_tlb_add_page(ptr noundef %gather, i64 noundef %iova, i64 noundef %granule, ptr noundef %cookie) #0 align 16 !dbg !6868 {
entry:
  %gather.addr = alloca ptr, align 8
  %iova.addr = alloca i64, align 8
  %granule.addr = alloca i64, align 8
  %cookie.addr = alloca ptr, align 8
  store ptr %gather, ptr %gather.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gather.addr, metadata !6870, metadata !DIExpression()), !dbg !6874
  store i64 %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !6871, metadata !DIExpression()), !dbg !6875
  store i64 %granule, ptr %granule.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %granule.addr, metadata !6872, metadata !DIExpression()), !dbg !6876
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !6873, metadata !DIExpression()), !dbg !6877
  ret void, !dbg !6878
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6879 dso_local void @free_pages(i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6882 dso_local void @amd_iommu_domain_update(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { nounwind memory(read) }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5627, !5628, !5629, !5630, !5631, !5632, !5633, !5634}
!llvm.ident = !{!5635}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "io_pgtable_amd_iommu_v2_init_fns", scope: !2, file: !3, line: 411, type: !5616, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/iommu/amd/.io_pgtable_v2.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/iommu/amd/io_pgtable_v2\22 -D KBUILD_BASENAME=\22io_pgtable_v2\22 -D KBUILD_MODNAME=\22io_pgtable_v2\22 -D __KBUILD_MODNAME=kmod_io_pgtable_v2 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/iommu/amd/io_pgtable_v2.ll drivers/iommu/amd/io_pgtable_v2.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !245, globals: !5602, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/iommu/amd/io_pgtable_v2.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ac6d77f6dd6a743bad0bff77458a6bf")
!4 = !{!5, !20, !27, !32, !38, !43, !51, !67, !75, !81, !88, !95, !101, !107, !115, !121, !127, !131, !138, !146, !154, !173, !180, !188, !194, !204, !213, !218, !223, !229, !240}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "io_pgtable_fmt", file: !6, line: 11, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/io-pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "879e921f06b647447a151538e0332d0b")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "ARM_32_LPAE_S1", value: 0)
!10 = !DIEnumerator(name: "ARM_32_LPAE_S2", value: 1)
!11 = !DIEnumerator(name: "ARM_64_LPAE_S1", value: 2)
!12 = !DIEnumerator(name: "ARM_64_LPAE_S2", value: 3)
!13 = !DIEnumerator(name: "ARM_V7S", value: 4)
!14 = !DIEnumerator(name: "ARM_MALI_LPAE", value: 5)
!15 = !DIEnumerator(name: "AMD_IOMMU_V1", value: 6)
!16 = !DIEnumerator(name: "AMD_IOMMU_V2", value: 7)
!17 = !DIEnumerator(name: "APPLE_DART", value: 8)
!18 = !DIEnumerator(name: "APPLE_DART2", value: 9)
!19 = !DIEnumerator(name: "IO_PGTABLE_NUM_FMTS", value: 10)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !21, line: 312, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!24 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!25 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!26 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !28, line: 2052, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!31 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !33, line: 54, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "USRQUOTA", value: 0)
!36 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!37 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !39, line: 65, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!42 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !44, line: 9, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!47 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!48 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!49 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!50 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !52, line: 1325, baseType: !7, size: 32, elements: !53)
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
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !68, line: 68, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!69 = !{!70, !71, !72, !73, !74}
!70 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!71 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!72 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!73 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!74 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !76, line: 16, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!77 = !{!78, !79, !80}
!78 = !DIEnumerator(name: "TT_NONE", value: 0)
!79 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!80 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !82, line: 51, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!83 = !{!84, !85, !86, !87}
!84 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!85 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!86 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!87 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !89, line: 15, baseType: !7, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!90 = !{!91, !92, !93, !94}
!91 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!92 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!93 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!94 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !96, line: 26, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!99 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!100 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !102, line: 45, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!103 = !{!104, !105, !106}
!104 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!105 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!106 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iommu_cap", file: !108, line: 121, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/iommu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f65f238ea6d814b0cb3e9a685bbbfc5")
!109 = !{!110, !111, !112, !113, !114}
!110 = !DIEnumerator(name: "IOMMU_CAP_CACHE_COHERENCY", value: 0)
!111 = !DIEnumerator(name: "IOMMU_CAP_NOEXEC", value: 1)
!112 = !DIEnumerator(name: "IOMMU_CAP_PRE_BOOT_PROTECTION", value: 2)
!113 = !DIEnumerator(name: "IOMMU_CAP_ENFORCE_CACHE_COHERENCY", value: 3)
!114 = !DIEnumerator(name: "IOMMU_CAP_DEFERRED_FLUSH", value: 4)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iommu_page_response_code", file: !116, line: 134, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/uapi/linux/iommu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e3653d45113ea4f03fbf4351dacc583")
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "IOMMU_PAGE_RESP_SUCCESS", value: 0)
!119 = !DIEnumerator(name: "IOMMU_PAGE_RESP_INVALID", value: 1)
!120 = !DIEnumerator(name: "IOMMU_PAGE_RESP_FAILURE", value: 2)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !122, line: 30, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!125 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!126 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iommu_dev_features", file: !108, line: 194, baseType: !7, size: 32, elements: !128)
!128 = !{!129, !130}
!129 = !DIEnumerator(name: "IOMMU_DEV_FEAT_SVA", value: 0)
!130 = !DIEnumerator(name: "IOMMU_DEV_FEAT_IOPF", value: 1)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !132, line: 487, baseType: !7, size: 32, elements: !133)
!132 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!133 = !{!134, !135, !136, !137}
!134 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!135 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!136 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!137 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !139, line: 620, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!140 = !{!141, !142, !143, !144, !145}
!141 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!142 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!143 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!144 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!145 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !139, line: 597, baseType: !147, size: 32, elements: !148)
!147 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!148 = !{!149, !150, !151, !152, !153}
!149 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!150 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!151 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!152 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!153 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !155, line: 12, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/irqdomain_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "168aa78cd6535dbcc4cf99c0f8004653")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!157 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0)
!158 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1)
!159 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2)
!160 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3)
!161 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4)
!162 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5)
!163 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6)
!164 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7)
!165 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8)
!166 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9)
!167 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10)
!168 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSI", value: 11)
!169 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSIX", value: 12)
!170 = !DIEnumerator(name: "DOMAIN_BUS_DMAR", value: 13)
!171 = !DIEnumerator(name: "DOMAIN_BUS_AMDVI", value: 14)
!172 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_IMS", value: 15)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !174, line: 497, baseType: !7, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!175 = !{!176, !177, !178, !179}
!176 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0)
!177 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1)
!178 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2)
!179 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !181, line: 1094, baseType: !7, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!182 = !{!183, !184, !185, !186, !187}
!183 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1)
!184 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2)
!185 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4)
!186 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8)
!187 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !189, line: 11, baseType: !7, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!190 = !{!191, !192, !193}
!191 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!192 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!193 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_alloc_type", file: !195, line: 36, baseType: !7, size: 32, elements: !196)
!195 = !DIFile(filename: "./arch/x86/include/asm/hw_irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "63f4463629042f334374af478f7e7db8")
!196 = !{!197, !198, !199, !200, !201, !202, !203}
!197 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_IOAPIC", value: 1)
!198 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_HPET", value: 2)
!199 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_PCI_MSI", value: 3)
!200 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_PCI_MSIX", value: 4)
!201 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_DMAR", value: 5)
!202 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_AMDVI", value: 6)
!203 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_UV", value: 7)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !132, line: 547, baseType: !7, size: 32, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212}
!206 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!207 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!208 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!209 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!210 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!211 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!212 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !132, line: 564, baseType: !7, size: 32, elements: !214)
!214 = !{!215, !216, !217}
!215 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!216 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!217 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !132, line: 577, baseType: !7, size: 32, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!221 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!222 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !132, line: 503, baseType: !7, size: 32, elements: !224)
!224 = !{!225, !226, !227, !228}
!225 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!226 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!227 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!228 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !230, line: 398, baseType: !7, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239}
!232 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!233 = !DIEnumerator(name: "N_ONLINE", value: 1)
!234 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!235 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!236 = !DIEnumerator(name: "N_MEMORY", value: 3)
!237 = !DIEnumerator(name: "N_CPU", value: 4)
!238 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!239 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !241, line: 10, baseType: !7, size: 32, elements: !242)
!241 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!242 = !{!243, !244}
!243 = !DIEnumerator(name: "false", value: 0)
!244 = !DIEnumerator(name: "true", value: 1)
!245 = !{!246, !247, !5582, !1232, !847, !147, !255, !5597, !5598, !1069, !3326, !2270, !536, !5599, !5600}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_io_pgtable", file: !249, line: 542, size: 1984, elements: !250)
!249 = !DIFile(filename: "drivers/iommu/amd/amd_iommu_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f2de0f65dd4f5bb2fd01d3250cd1a81")
!250 = !{!251, !5556, !5578, !5579, !5580, !5581}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "pgtbl_cfg", scope: !248, file: !249, line: 543, baseType: !252, size: 704)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_pgtable_cfg", file: !6, line: 64, size: 704, elements: !253)
!253 = !{!254, !256, !257, !258, !259, !263, !297, !5507}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !252, file: !6, line: 95, baseType: !255, size: 64)
!255 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "pgsize_bitmap", scope: !252, file: !6, line: 96, baseType: !255, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ias", scope: !252, file: !6, line: 97, baseType: !7, size: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "oas", scope: !252, file: !6, line: 98, baseType: !7, size: 32, offset: 160)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_walk", scope: !252, file: !6, line: 99, baseType: !260, size: 8, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !261, line: 35, baseType: !262)
!261 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!262 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tlb", scope: !252, file: !6, line: 100, baseType: !264, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_flush_ops", file: !6, line: 41, size: 192, elements: !267)
!267 = !{!268, !272, !280}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_all", scope: !266, file: !6, line: 42, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !246}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_walk", scope: !266, file: !6, line: 43, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !255, !276, !276, !246}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !261, line: 61, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !278, line: 72, baseType: !279)
!278 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !278, line: 16, baseType: !255)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_add_page", scope: !266, file: !6, line: 45, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !284, !255, !276, !246}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_iotlb_gather", file: !108, line: 222, size: 384, elements: !286)
!286 = !{!287, !288, !289, !290, !296}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !285, file: !108, line: 223, baseType: !255, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !285, file: !108, line: 224, baseType: !255, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "pgsize", scope: !285, file: !108, line: 225, baseType: !276, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !285, file: !108, line: 226, baseType: !291, size: 128, offset: 192)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !261, line: 190, size: 128, elements: !292)
!292 = !{!293, !295}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !261, line: 191, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !291, file: !261, line: 191, baseType: !294, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "queued", scope: !285, file: !108, line: 227, baseType: !260, size: 8, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_dev", scope: !252, file: !6, line: 101, baseType: !298, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !132, line: 705, size: 5824, elements: !300)
!300 = !{!301, !4230, !4231, !4234, !4235, !4288, !4708, !4709, !4710, !4711, !4712, !4719, !4811, !4824, !5390, !5394, !5396, !5397, !5398, !5402, !5409, !5410, !5413, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5453, !5454, !5455, !5456, !5492, !5501, !5502, !5503, !5504, !5505, !5506}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !299, file: !132, line: 706, baseType: !302, size: 512)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !303, line: 64, size: 512, elements: !304)
!303 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!304 = !{!305, !309, !310, !312, !401, !4116, !4220, !4225, !4226, !4227, !4228, !4229}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !303, line: 65, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !302, file: !303, line: 66, baseType: !291, size: 128, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !302, file: !303, line: 67, baseType: !311, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !302, file: !303, line: 68, baseType: !313, size: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !303, line: 168, size: 768, elements: !315)
!315 = !{!316, !317, !360, !361}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !314, file: !303, line: 169, baseType: !291, size: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !314, file: !303, line: 170, baseType: !318, size: 32, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !319, line: 29, baseType: !320)
!319 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !319, line: 17, size: 32, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !319, line: 18, baseType: !323, size: 32)
!323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !319, line: 18, size: 32, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !323, file: !319, line: 19, baseType: !326, size: 32)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !327, line: 14, size: 32, elements: !328)
!327 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !326, file: !327, line: 15, baseType: !330, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !331, line: 44, baseType: !332)
!331 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !331, line: 14, size: 32, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !331, line: 15, baseType: !335, size: 32)
!335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !331, line: 15, size: 32, elements: !336)
!336 = !{!337, !342, !352}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !335, file: !331, line: 16, baseType: !338, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !261, line: 174, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 172, size: 32, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !339, file: !261, line: 173, baseType: !147, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !331, line: 24, baseType: !343, size: 16)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !335, file: !331, line: 24, size: 16, elements: !344)
!344 = !{!345, !351}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !343, file: !331, line: 25, baseType: !346, size: 8)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !347, line: 17, baseType: !348)
!347 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !349, line: 21, baseType: !350)
!349 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!350 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !343, file: !331, line: 26, baseType: !346, size: 8, offset: 8)
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !331, line: 28, baseType: !353, size: 32)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !335, file: !331, line: 28, size: 32, elements: !354)
!354 = !{!355, !359}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !353, file: !331, line: 29, baseType: !356, size: 16)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !347, line: 19, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !349, line: 24, baseType: !358)
!358 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !353, file: !331, line: 30, baseType: !356, size: 16, offset: 16)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !314, file: !303, line: 171, baseType: !302, size: 512, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !314, file: !303, line: 172, baseType: !362, size: 64, offset: 704)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !303, line: 133, size: 192, elements: !365)
!365 = !{!366, !373, !378}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !364, file: !303, line: 134, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!147, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !364, file: !303, line: 135, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!306, !371}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !364, file: !303, line: 136, baseType: !379, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!147, !371, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !303, line: 125, size: 20736, elements: !385)
!385 = !{!386, !391, !395, !396, !400}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !384, file: !303, line: 126, baseType: !387, size: 192)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 192, elements: !389)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!389 = !{!390}
!390 = !DISubrange(count: 3)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !384, file: !303, line: 127, baseType: !392, size: 4096, offset: 192)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 4096, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !384, file: !303, line: 128, baseType: !147, size: 32, offset: 4288)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !384, file: !303, line: 129, baseType: !397, size: 16384, offset: 4320)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 16384, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 2048)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !384, file: !303, line: 130, baseType: !147, size: 32, offset: 20704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !302, file: !303, line: 69, baseType: !402, size: 64, offset: 320)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !303, line: 116, size: 384, elements: !405)
!405 = !{!406, !410, !434, !4078, !4106, !4110}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !404, file: !303, line: 117, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !311}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !404, file: !303, line: 118, baseType: !411, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !414, line: 254, size: 128, elements: !415)
!414 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!415 = !{!416, !430}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !413, file: !414, line: 255, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!420, !311, !424, !388}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !261, line: 66, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !278, line: 73, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !278, line: 15, baseType: !423)
!423 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !414, line: 30, size: 128, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !425, file: !414, line: 31, baseType: !306, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !425, file: !414, line: 32, baseType: !429, size: 16, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !261, line: 24, baseType: !358)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !413, file: !414, line: 256, baseType: !431, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!420, !311, !424, !306, !276}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !404, file: !303, line: 119, baseType: !435, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !414, line: 84, size: 320, elements: !439)
!439 = !{!440, !441, !445, !4074, !4076}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !438, file: !414, line: 85, baseType: !306, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !438, file: !414, line: 86, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!429, !311, !424, !147}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !438, file: !414, line: 88, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!429, !311, !449, !147}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !414, line: 175, size: 512, elements: !451)
!451 = !{!452, !453, !454, !455, !4065, !4069, !4070}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !450, file: !414, line: 176, baseType: !425, size: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !450, file: !414, line: 177, baseType: !276, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !450, file: !414, line: 178, baseType: !246, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !450, file: !414, line: 179, baseType: !456, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !28, line: 472, size: 1536, align: 64, elements: !461)
!461 = !{!462, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !4059, !4060, !4061, !4062, !4063, !4064}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !460, file: !28, line: 473, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !28, line: 641, size: 4800, elements: !465)
!465 = !{!466, !467, !468, !476, !477, !484, !485, !488, !489, !3838, !3839, !3840, !3841, !3842, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3882, !3885, !3886, !3887, !3896, !3897, !3898, !3899}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !464, file: !28, line: 642, baseType: !429, size: 16)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !464, file: !28, line: 643, baseType: !358, size: 16, offset: 16)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !464, file: !28, line: 644, baseType: !469, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !470, line: 23, baseType: !471)
!470 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !470, line: 21, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !471, file: !470, line: 22, baseType: !474, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !261, line: 37, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !278, line: 49, baseType: !7)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !464, file: !28, line: 645, baseType: !291, size: 128, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !464, file: !28, line: 646, baseType: !478, size: 32, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !470, line: 28, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !470, line: 26, size: 32, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !479, file: !470, line: 27, baseType: !482, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !261, line: 38, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !278, line: 50, baseType: !7)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !464, file: !28, line: 647, baseType: !7, size: 32, offset: 224)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !464, file: !28, line: 650, baseType: !486, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !28, line: 607, flags: DIFlagFwdDecl)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !464, file: !28, line: 651, baseType: !486, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !464, file: !28, line: 654, baseType: !490, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !28, line: 1966, size: 2048, align: 512, elements: !493)
!493 = !{!494, !3666, !3676, !3680, !3684, !3688, !3692, !3696, !3700, !3704, !3708, !3709, !3713, !3717, !3754, !3783, !3787, !3793, !3797, !3801, !3805, !3809, !3813, !3819, !3823}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !492, file: !28, line: 1967, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!498, !463, !498, !7}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !500, line: 82, size: 1536, elements: !501)
!500 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!501 = !{!502, !503, !513, !521, !522, !542, !543, !547, !560, !3649, !3650, !3651, !3652, !3658, !3659, !3660}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !499, file: !500, line: 84, baseType: !7, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !499, file: !500, line: 85, baseType: !504, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !505, line: 275, baseType: !506)
!505 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !505, line: 275, size: 32, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !506, file: !505, line: 275, baseType: !509, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !505, line: 69, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !505, line: 64, size: 32, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !510, file: !505, line: 65, baseType: !7, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !499, file: !500, line: 86, baseType: !514, size: 128, offset: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !515, line: 38, size: 128, elements: !516)
!515 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!516 = !{!517, !519}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !514, file: !515, line: 39, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !514, file: !515, line: 39, baseType: !520, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !499, file: !500, line: 87, baseType: !498, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !499, file: !500, line: 88, baseType: !523, size: 128, offset: 256)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !500, line: 49, size: 128, elements: !524)
!524 = !{!525, !539}
!525 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !500, line: 50, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !523, file: !500, line: 50, size: 64, elements: !527)
!527 = !{!528, !535}
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !500, line: 51, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !526, file: !500, line: 51, size: 64, elements: !530)
!530 = !{!531, !534}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !529, file: !500, line: 52, baseType: !532, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !347, line: 21, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !349, line: 27, baseType: !7)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !529, file: !500, line: 52, baseType: !532, size: 32, offset: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !526, file: !500, line: 54, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !347, line: 23, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !349, line: 31, baseType: !538)
!538 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !523, file: !500, line: 56, baseType: !540, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !499, file: !500, line: 89, baseType: !463, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !499, file: !500, line: 91, baseType: !544, size: 256, offset: 448)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 256, elements: !545)
!545 = !{!546}
!546 = !DISubrange(count: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !499, file: !500, line: 94, baseType: !548, size: 64, offset: 704)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !549, line: 25, size: 64, elements: !550)
!549 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !549, line: 26, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !549, line: 26, size: 64, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !552, file: !549, line: 28, baseType: !537, size: 64, align: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, scope: !552, file: !549, line: 30, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !552, file: !549, line: 30, size: 64, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !556, file: !549, line: 31, baseType: !318, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !556, file: !549, line: 32, baseType: !147, size: 32, offset: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !499, file: !500, line: 95, baseType: !561, size: 64, offset: 768)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !500, line: 128, size: 1024, align: 512, elements: !564)
!564 = !{!565, !569, !570, !577, !583, !587, !591, !595, !596, !600, !604, !3639, !3643}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !563, file: !500, line: 129, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!147, !498, !7}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !563, file: !500, line: 130, baseType: !566, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !563, file: !500, line: 131, baseType: !571, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!147, !574, !576}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !563, file: !500, line: 132, baseType: !578, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!147, !574, !7, !306, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !563, file: !500, line: 134, baseType: !584, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!147, !574}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !563, file: !500, line: 135, baseType: !588, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!147, !498}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !563, file: !500, line: 136, baseType: !592, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !498}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !563, file: !500, line: 137, baseType: !592, size: 64, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !563, file: !500, line: 138, baseType: !597, size: 64, offset: 512)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !498, !463}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !563, file: !500, line: 139, baseType: !601, size: 64, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!388, !498, !388, !147}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !563, file: !500, line: 140, baseType: !605, size: 64, offset: 640)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!608, !3638}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !610, line: 70, size: 256, elements: !611)
!610 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!611 = !{!612, !613, !3634, !3635}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !609, file: !610, line: 71, baseType: !498, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !609, file: !610, line: 72, baseType: !614, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !28, line: 1190, size: 10752, elements: !616)
!616 = !{!617, !618, !621, !622, !623, !627, !1101, !1241, !1281, !1371, !1375, !1376, !1377, !1378, !1379, !1388, !1389, !1390, !1391, !1396, !1400, !1401, !1404, !1407, !1410, !1413, !1414, !1415, !1456, !3567, !3568, !3569, !3570, !3571, !3572, !3575, !3577, !3584, !3585, !3586, !3587, !3588, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !615, file: !28, line: 1191, baseType: !291, size: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !615, file: !28, line: 1192, baseType: !619, size: 32, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !261, line: 21, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !261, line: 18, baseType: !532)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !615, file: !28, line: 1193, baseType: !350, size: 8, offset: 160)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !615, file: !28, line: 1194, baseType: !255, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !615, file: !28, line: 1195, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !261, line: 52, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !278, line: 88, baseType: !626)
!626 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !615, file: !28, line: 1196, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !28, line: 2366, size: 576, elements: !630)
!630 = !{!631, !632, !633, !639, !643, !647, !651, !1086, !1087, !1091, !1093, !1094, !1095, !1097, !1098, !1099, !1100}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !629, file: !28, line: 2367, baseType: !306, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !629, file: !28, line: 2368, baseType: !147, size: 32, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !629, file: !28, line: 2376, baseType: !634, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!147, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !610, line: 21, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !629, file: !28, line: 2377, baseType: !640, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !28, line: 75, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !629, file: !28, line: 2378, baseType: !644, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!498, !628, !147, !306, !246}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !629, file: !28, line: 2380, baseType: !648, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !614}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !629, file: !28, line: 2381, baseType: !652, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !21, line: 402, size: 9216, align: 512, elements: !654)
!654 = !{!655, !656, !657, !661, !683, !709, !710, !711, !712, !716, !721, !722, !742, !795, !796, !797, !798, !799, !800, !801, !802, !810, !814, !841, !862, !863, !864, !865, !874, !897, !898, !901, !904, !905, !906, !907, !908, !909, !910, !915, !916, !1044, !1052, !1053, !1054, !1056, !1060, !1061, !1065, !1066, !1067, !1068, !1070, !1071, !1072, !1079, !1080, !1081, !1085}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !653, file: !21, line: 403, baseType: !20, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !653, file: !21, line: 406, baseType: !291, size: 128, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !653, file: !21, line: 409, baseType: !658, size: 448, offset: 192)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 448, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 56)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !653, file: !21, line: 417, baseType: !662, size: 768, offset: 640)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !21, line: 45, size: 768, elements: !663)
!663 = !{!664, !665, !666, !667, !670}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !662, file: !21, line: 46, baseType: !302, size: 512)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !662, file: !21, line: 47, baseType: !652, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !662, file: !21, line: 48, baseType: !311, size: 64, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !662, file: !21, line: 49, baseType: !668, size: 64, offset: 640)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !21, line: 49, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !662, file: !21, line: 50, baseType: !671, size: 64, offset: 704)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !673, line: 26, size: 256, elements: !674)
!673 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !672, file: !673, line: 27, baseType: !7, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !672, file: !673, line: 28, baseType: !677, size: 192, offset: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !678, line: 43, size: 192, elements: !679)
!678 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!679 = !{!680, !682}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !677, file: !678, line: 44, baseType: !681, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !327, line: 23, baseType: !326)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !677, file: !678, line: 45, baseType: !291, size: 128, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !653, file: !21, line: 418, baseType: !684, size: 64, offset: 1408)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !21, line: 53, size: 448, elements: !686)
!686 = !{!687, !688, !693, !697, !701, !705}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !685, file: !21, line: 54, baseType: !425, size: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !685, file: !21, line: 55, baseType: !689, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!420, !684, !692, !388}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !685, file: !21, line: 57, baseType: !694, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!420, !684, !692, !306, !276}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !685, file: !21, line: 59, baseType: !698, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !652, !306}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !685, file: !21, line: 60, baseType: !702, size: 64, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!147, !652}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !685, file: !21, line: 61, baseType: !706, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !652}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !653, file: !21, line: 419, baseType: !306, size: 64, offset: 1472)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !653, file: !21, line: 420, baseType: !306, size: 64, offset: 1536)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !653, file: !21, line: 421, baseType: !311, size: 64, offset: 1600)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !653, file: !21, line: 424, baseType: !713, size: 64, offset: 1664)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !21, line: 424, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !653, file: !21, line: 425, baseType: !717, size: 64, offset: 1728)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !347, line: 20, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !349, line: 26, baseType: !147)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !653, file: !21, line: 426, baseType: !7, size: 32, offset: 1792)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !653, file: !21, line: 435, baseType: !723, size: 256, offset: 1856)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !724, line: 66, size: 256, elements: !725)
!724 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!725 = !{!726, !735, !736, !741}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !723, file: !724, line: 67, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !728, line: 13, baseType: !729)
!728 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !261, line: 181, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 179, size: 64, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !730, file: !261, line: 180, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !347, line: 22, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !349, line: 30, baseType: !626)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !723, file: !724, line: 68, baseType: !681, size: 32, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !723, file: !724, line: 70, baseType: !737, size: 32, offset: 96)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !738, line: 15, size: 32, elements: !739)
!738 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !737, file: !738, line: 20, baseType: !338, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !723, file: !724, line: 72, baseType: !291, size: 128, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !653, file: !21, line: 437, baseType: !743, size: 64, offset: 2112)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !745, line: 69, size: 320, elements: !746)
!745 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!746 = !{!747, !748, !749, !766, !768, !772, !773}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !744, file: !745, line: 70, baseType: !306, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !744, file: !745, line: 71, baseType: !652, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !744, file: !745, line: 72, baseType: !750, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !745, line: 47, size: 256, elements: !753)
!753 = !{!754, !755, !761, !765}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !745, line: 49, baseType: !7, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !752, file: !745, line: 51, baseType: !756, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!147, !306, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !752, file: !745, line: 53, baseType: !762, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!147, !388, !759}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !752, file: !745, line: 55, baseType: !269, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !744, file: !745, line: 73, baseType: !767, size: 16, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !744, file: !745, line: 74, baseType: !769, size: 8, offset: 208)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !347, line: 16, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !349, line: 20, baseType: !771)
!771 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !745, line: 75, baseType: !346, size: 8, offset: 216)
!773 = !DIDerivedType(tag: DW_TAG_member, scope: !744, file: !745, line: 76, baseType: !774, size: 64, offset: 256)
!774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !744, file: !745, line: 76, size: 64, elements: !775)
!775 = !{!776, !777, !784}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !774, file: !745, line: 77, baseType: !246, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !774, file: !745, line: 78, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !745, line: 86, size: 128, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !780, file: !745, line: 87, baseType: !7, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !780, file: !745, line: 88, baseType: !388, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !774, file: !745, line: 79, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !745, line: 92, size: 256, elements: !788)
!788 = !{!789, !790, !791, !793, !794}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !787, file: !745, line: 94, baseType: !7, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !787, file: !745, line: 95, baseType: !7, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !787, file: !745, line: 96, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !787, file: !745, line: 97, baseType: !750, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !787, file: !745, line: 98, baseType: !246, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !653, file: !21, line: 438, baseType: !7, size: 32, offset: 2176)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !653, file: !21, line: 441, baseType: !7, size: 32, offset: 2208)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !653, file: !21, line: 442, baseType: !713, size: 64, offset: 2240)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !653, file: !21, line: 443, baseType: !717, size: 64, offset: 2304)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !653, file: !21, line: 444, baseType: !260, size: 8, offset: 2368)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !653, file: !21, line: 451, baseType: !260, size: 8, offset: 2376)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !653, file: !21, line: 454, baseType: !7, size: 32, offset: 2400)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !653, file: !21, line: 455, baseType: !803, size: 64, offset: 2432)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !805, line: 23, size: 96, elements: !806)
!805 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!806 = !{!807, !808, !809}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !804, file: !805, line: 24, baseType: !147, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !804, file: !805, line: 24, baseType: !147, size: 32, offset: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !804, file: !805, line: 24, baseType: !147, size: 32, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !653, file: !21, line: 458, baseType: !811, size: 64, offset: 2496)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!147}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !653, file: !21, line: 460, baseType: !815, size: 4032, align: 512, offset: 2560)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 4032, elements: !839)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !21, line: 362, size: 576, elements: !817)
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !816, file: !21, line: 363, baseType: !246, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !816, file: !21, line: 364, baseType: !7, size: 32, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !816, file: !21, line: 367, baseType: !821, size: 448, offset: 128)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !21, line: 319, size: 448, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !821, file: !21, line: 320, baseType: !652, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !821, file: !21, line: 321, baseType: !825, size: 384, offset: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !826, line: 40, size: 384, elements: !827)
!826 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!827 = !{!828}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !825, file: !826, line: 41, baseType: !829, size: 384, align: 64)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 384, align: 64, elements: !837)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !831, line: 5, size: 192, align: 64, elements: !832)
!831 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!832 = !{!833, !834, !836}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !830, file: !831, line: 6, baseType: !255, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !830, file: !831, line: 7, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !830, file: !831, line: 8, baseType: !835, size: 64, offset: 128)
!837 = !{!838}
!838 = !DISubrange(count: 2)
!839 = !{!840}
!840 = !DISubrange(count: 7)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !653, file: !21, line: 463, baseType: !842, size: 192, offset: 6592)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !843, line: 8, size: 192, elements: !844)
!843 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!844 = !{!845, !846, !848}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !842, file: !843, line: 10, baseType: !7, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !842, file: !843, line: 11, baseType: !847, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !842, file: !843, line: 12, baseType: !849, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !851, line: 59, size: 48, elements: !852)
!851 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!852 = !{!853, !857, !858, !859, !860, !861}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !850, file: !851, line: 60, baseType: !854, size: 16)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !347, line: 18, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !349, line: 23, baseType: !856)
!856 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !850, file: !851, line: 61, baseType: !854, size: 16, offset: 16)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !850, file: !851, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !850, file: !851, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !850, file: !851, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !850, file: !851, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !653, file: !21, line: 465, baseType: !255, size: 64, offset: 6784)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !653, file: !21, line: 469, baseType: !7, size: 32, offset: 6848)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !653, file: !21, line: 470, baseType: !291, size: 128, offset: 6912)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !653, file: !21, line: 471, baseType: !866, size: 64, offset: 7040)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !868, line: 33, size: 96, elements: !869)
!868 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!869 = !{!870, !871, !872, !873}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !867, file: !868, line: 37, baseType: !147, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !867, file: !868, line: 43, baseType: !147, size: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !867, file: !868, line: 45, baseType: !358, size: 16, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !867, file: !868, line: 47, baseType: !358, size: 16, offset: 80)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !653, file: !21, line: 476, baseType: !875, size: 64, offset: 7104)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !21, line: 378, size: 256, elements: !877)
!877 = !{!878, !894, !895, !896}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !876, file: !21, line: 379, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !881, line: 204, baseType: !882)
!881 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !881, line: 197, size: 192, elements: !883)
!883 = !{!884, !886, !887, !888, !890, !892}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !882, file: !881, line: 198, baseType: !885, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !881, line: 21, baseType: !533)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !882, file: !881, line: 199, baseType: !350, size: 8, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !882, file: !881, line: 200, baseType: !350, size: 8, offset: 40)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !882, file: !881, line: 201, baseType: !889, size: 16, offset: 48)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !881, line: 17, baseType: !357)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !882, file: !881, line: 202, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !881, line: 16, baseType: !537)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !882, file: !881, line: 203, baseType: !893, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !881, line: 22, baseType: !537)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !876, file: !21, line: 380, baseType: !7, size: 32, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !876, file: !21, line: 381, baseType: !388, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !876, file: !21, line: 382, baseType: !388, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !653, file: !21, line: 477, baseType: !876, size: 256, offset: 7168)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !653, file: !21, line: 480, baseType: !899, size: 64, offset: 7424)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !21, line: 480, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !653, file: !21, line: 483, baseType: !902, size: 64, offset: 7488)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !21, line: 483, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !653, file: !21, line: 488, baseType: !388, size: 64, offset: 7552)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !653, file: !21, line: 492, baseType: !246, size: 64, offset: 7616)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !653, file: !21, line: 493, baseType: !7, size: 32, offset: 7680)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !653, file: !21, line: 495, baseType: !246, size: 64, offset: 7744)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !653, file: !21, line: 496, baseType: !7, size: 32, offset: 7808)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !653, file: !21, line: 499, baseType: !7, size: 32, offset: 7840)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !653, file: !21, line: 500, baseType: !911, size: 64, offset: 7872)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !913, line: 45, baseType: !914)
!913 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !653, file: !21, line: 503, baseType: !7, size: 32, offset: 7936)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !653, file: !21, line: 504, baseType: !917, size: 64, offset: 8000)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !920, line: 96, size: 192, elements: !921)
!920 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!921 = !{!922, !923, !1004, !1008}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !919, file: !920, line: 97, baseType: !7, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !919, file: !920, line: 98, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !920, line: 24, size: 3072, elements: !926)
!926 = !{!927, !929, !930, !931, !932, !956, !957, !958, !959, !977, !989, !990, !1001, !1002, !1003}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !925, file: !920, line: 26, baseType: !928, size: 128)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 128, elements: !837)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !925, file: !920, line: 27, baseType: !928, size: 128, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !925, file: !920, line: 28, baseType: !147, size: 32, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !925, file: !920, line: 31, baseType: !318, size: 32, align: 512, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !925, file: !920, line: 32, baseType: !933, size: 960, offset: 576)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !934, line: 206, size: 960, elements: !935)
!934 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!935 = !{!936, !945, !950, !952, !953, !955}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !933, file: !934, line: 207, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !261, line: 232, size: 128, align: 64, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !938, file: !261, line: 233, baseType: !937, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !938, file: !261, line: 234, baseType: !942, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !937}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !933, file: !934, line: 208, baseType: !946, size: 256, offset: 64)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 256, elements: !948)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!948 = !{!949}
!949 = !DISubrange(count: 4)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !933, file: !934, line: 209, baseType: !951, size: 256, offset: 320)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 256, elements: !948)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !933, file: !934, line: 213, baseType: !423, size: 64, offset: 576)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !933, file: !934, line: 215, baseType: !954, size: 256, offset: 640)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 256, elements: !948)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !933, file: !934, line: 216, baseType: !346, size: 8, offset: 896)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !925, file: !920, line: 33, baseType: !255, size: 64, offset: 1536)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !925, file: !920, line: 34, baseType: !255, size: 64, offset: 1600)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !925, file: !920, line: 35, baseType: !260, size: 8, offset: 1664)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !925, file: !920, line: 36, baseType: !960, size: 320, offset: 1728)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !961, line: 11, size: 320, elements: !962)
!961 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!962 = !{!963, !970, !971, !976}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !960, file: !961, line: 16, baseType: !964, size: 128)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !261, line: 198, size: 128, elements: !965)
!965 = !{!966, !968}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !964, file: !261, line: 199, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !964, file: !261, line: 199, baseType: !969, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !960, file: !961, line: 17, baseType: !255, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !960, file: !961, line: 18, baseType: !972, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !975}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !960, file: !961, line: 19, baseType: !532, size: 32, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !925, file: !920, line: 37, baseType: !978, size: 256, offset: 2048)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !979, line: 98, size: 256, elements: !980)
!979 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!980 = !{!981, !982, !983}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !978, file: !979, line: 99, baseType: !727, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !978, file: !979, line: 100, baseType: !291, size: 128, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !978, file: !979, line: 101, baseType: !984, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !979, line: 21, baseType: !985)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !988}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !925, file: !920, line: 38, baseType: !938, size: 128, align: 64, offset: 2304)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !925, file: !920, line: 39, baseType: !991, size: 64, offset: 2432)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !920, line: 49, size: 768, elements: !993)
!993 = !{!994, !995, !996, !997, !998, !999, !1000}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !992, file: !920, line: 50, baseType: !318, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !992, file: !920, line: 51, baseType: !951, size: 256, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !992, file: !920, line: 53, baseType: !951, size: 256, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !992, file: !920, line: 54, baseType: !255, size: 64, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !992, file: !920, line: 55, baseType: !991, size: 64, offset: 640)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !992, file: !920, line: 56, baseType: !147, size: 32, offset: 704)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !992, file: !920, line: 57, baseType: !147, size: 32, offset: 736)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !925, file: !920, line: 40, baseType: !255, size: 64, offset: 2496)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !925, file: !920, line: 42, baseType: !147, size: 32, offset: 2560)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !925, file: !920, line: 43, baseType: !918, size: 64, offset: 2624)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !919, file: !920, line: 99, baseType: !1005, offset: 128)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1006, line: 211, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1007 = !{}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !919, file: !920, line: 100, baseType: !1009, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !920, line: 63, size: 3008, elements: !1011)
!1011 = !{!1012, !1013, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1043}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1010, file: !920, line: 64, baseType: !991, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1010, file: !920, line: 65, baseType: !1014, size: 192, offset: 64)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !991, size: 192, elements: !389)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1010, file: !920, line: 67, baseType: !147, size: 32, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1010, file: !920, line: 68, baseType: !723, size: 256, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1010, file: !920, line: 69, baseType: !318, size: 32, offset: 576)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1010, file: !920, line: 70, baseType: !723, size: 256, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1010, file: !920, line: 71, baseType: !255, size: 64, offset: 896)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1010, file: !920, line: 72, baseType: !255, size: 64, offset: 960)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1010, file: !920, line: 73, baseType: !255, size: 64, offset: 1024)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1010, file: !920, line: 74, baseType: !255, size: 64, offset: 1088)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1010, file: !920, line: 75, baseType: !255, size: 64, offset: 1152)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1010, file: !920, line: 76, baseType: !255, size: 64, offset: 1216)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1010, file: !920, line: 77, baseType: !255, size: 64, offset: 1280)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1010, file: !920, line: 78, baseType: !255, size: 64, offset: 1344)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1010, file: !920, line: 79, baseType: !260, size: 8, offset: 1408)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1010, file: !920, line: 80, baseType: !255, size: 64, offset: 1472)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1010, file: !920, line: 81, baseType: !723, size: 256, offset: 1536)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1010, file: !920, line: 82, baseType: !672, size: 256, offset: 1792)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1010, file: !920, line: 84, baseType: !338, size: 32, offset: 2048)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1010, file: !920, line: 87, baseType: !255, size: 64, offset: 2112)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1010, file: !920, line: 88, baseType: !255, size: 64, offset: 2176)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1010, file: !920, line: 89, baseType: !1035, size: 704, offset: 2240)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !979, line: 111, size: 704, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1042}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1035, file: !979, line: 112, baseType: !978, size: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1035, file: !979, line: 113, baseType: !960, size: 320, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1035, file: !979, line: 116, baseType: !1040, size: 64, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !979, line: 18, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1035, file: !979, line: 117, baseType: !147, size: 32, offset: 640)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1010, file: !920, line: 90, baseType: !918, size: 64, offset: 2944)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !653, file: !21, line: 515, baseType: !1045, size: 64, offset: 8064)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1047, line: 117, size: 128, elements: !1048)
!1047 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1048 = !{!1049, !1050, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1046, file: !1047, line: 118, baseType: !719, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1046, file: !1047, line: 119, baseType: !719, size: 32, offset: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1046, file: !1047, line: 120, baseType: !423, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !653, file: !21, line: 516, baseType: !7, size: 32, offset: 8128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !653, file: !21, line: 519, baseType: !7, size: 32, offset: 8160)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !653, file: !21, line: 520, baseType: !1055, size: 64, offset: 8192)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !653, file: !21, line: 523, baseType: !1057, size: 64, offset: 8256)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !21, line: 523, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !653, file: !21, line: 524, baseType: !7, size: 32, offset: 8320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !653, file: !21, line: 525, baseType: !1062, size: 64, offset: 8384)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !21, line: 525, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !653, file: !21, line: 526, baseType: !7, size: 32, offset: 8448)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !653, file: !21, line: 533, baseType: !246, size: 64, offset: 8512)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !653, file: !21, line: 534, baseType: !7, size: 32, offset: 8576)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !653, file: !21, line: 535, baseType: !1069, size: 64, offset: 8640)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !653, file: !21, line: 536, baseType: !7, size: 32, offset: 8704)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !653, file: !21, line: 539, baseType: !147, size: 32, offset: 8736)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !653, file: !21, line: 540, baseType: !1073, size: 64, offset: 8768)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1075, line: 32, size: 64, elements: !1076)
!1075 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1074, file: !1075, line: 33, baseType: !719, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1074, file: !1075, line: 34, baseType: !719, size: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !653, file: !21, line: 563, baseType: !291, size: 128, offset: 8832)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !653, file: !21, line: 565, baseType: !291, size: 128, offset: 8960)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !653, file: !21, line: 568, baseType: !1082, size: 64, offset: 9088)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !653, file: !21, line: 570, baseType: !338, size: 32, offset: 9152)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !629, file: !28, line: 2382, baseType: !628, size: 64, offset: 448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !629, file: !28, line: 2383, baseType: !1088, size: 64, offset: 512)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !261, line: 194, size: 64, elements: !1089)
!1089 = !{!1090}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1088, file: !261, line: 195, baseType: !967, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !629, file: !28, line: 2385, baseType: !1092, offset: 576)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1006, line: 206, elements: !1007)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !629, file: !28, line: 2386, baseType: !1092, offset: 576)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !629, file: !28, line: 2387, baseType: !1092, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !629, file: !28, line: 2388, baseType: !1096, offset: 576)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1092, elements: !389)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !629, file: !28, line: 2390, baseType: !1092, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !629, file: !28, line: 2391, baseType: !1092, offset: 576)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !629, file: !28, line: 2392, baseType: !1092, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !629, file: !28, line: 2393, baseType: !1092, offset: 576)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !615, file: !28, line: 1197, baseType: !1102, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !28, line: 2057, size: 1664, elements: !1105)
!1105 = !{!1106, !1110, !1114, !1115, !1119, !1125, !1129, !1130, !1131, !1135, !1139, !1143, !1144, !1145, !1151, !1155, !1156, !1163, !1164, !1165, !1166, !1170, !1174, !1223, !1239, !1240}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1104, file: !28, line: 2058, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!463, !614}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1104, file: !28, line: 2059, baseType: !1111, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !463}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1104, file: !28, line: 2060, baseType: !1111, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1104, file: !28, line: 2062, baseType: !1116, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !463, !147}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1104, file: !28, line: 2063, baseType: !1120, size: 64, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!147, !463, !1123}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !28, line: 309, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1104, file: !28, line: 2064, baseType: !1126, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!147, !463}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1104, file: !28, line: 2065, baseType: !1111, size: 64, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1104, file: !28, line: 2066, baseType: !648, size: 64, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1104, file: !28, line: 2067, baseType: !1132, size: 64, offset: 512)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!147, !614, !147}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1104, file: !28, line: 2068, baseType: !1136, size: 64, offset: 576)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!147, !614, !27}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1104, file: !28, line: 2069, baseType: !1140, size: 64, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!147, !614}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1104, file: !28, line: 2070, baseType: !1136, size: 64, offset: 704)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1104, file: !28, line: 2071, baseType: !1140, size: 64, offset: 768)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1104, file: !28, line: 2072, baseType: !1146, size: 64, offset: 832)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!147, !498, !1149}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !28, line: 62, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1104, file: !28, line: 2073, baseType: !1152, size: 64, offset: 896)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!147, !614, !847, !388}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1104, file: !28, line: 2074, baseType: !648, size: 64, offset: 960)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1104, file: !28, line: 2076, baseType: !1157, size: 64, offset: 1024)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!147, !1160, !498}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1162, line: 66, flags: DIFlagFwdDecl)
!1162 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1104, file: !28, line: 2077, baseType: !1157, size: 64, offset: 1088)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1104, file: !28, line: 2078, baseType: !1157, size: 64, offset: 1152)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1104, file: !28, line: 2079, baseType: !1157, size: 64, offset: 1216)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1104, file: !28, line: 2081, baseType: !1167, size: 64, offset: 1280)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!420, !614, !147, !388, !276, !624}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1104, file: !28, line: 2082, baseType: !1171, size: 64, offset: 1344)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!420, !614, !147, !306, !276, !624}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1104, file: !28, line: 2083, baseType: !1175, size: 64, offset: 1408)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!1178, !463}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !33, line: 296, size: 1664, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1206, !1207, !1208}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1180, file: !33, line: 297, baseType: !964, size: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1180, file: !33, line: 298, baseType: !291, size: 128, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1180, file: !33, line: 299, baseType: !291, size: 128, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1180, file: !33, line: 300, baseType: !291, size: 128, offset: 384)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1180, file: !33, line: 301, baseType: !723, size: 256, offset: 512)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1180, file: !33, line: 302, baseType: !318, size: 32, offset: 768)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1180, file: !33, line: 303, baseType: !338, size: 32, offset: 800)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1180, file: !33, line: 304, baseType: !614, size: 64, offset: 832)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1180, file: !33, line: 305, baseType: !1191, size: 64, offset: 896)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !33, line: 68, size: 64, elements: !1192)
!1192 = !{!1193, !1205}
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !33, line: 69, baseType: !1194, size: 32)
!1194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !33, line: 69, size: 32, elements: !1195)
!1195 = !{!1196, !1197, !1198}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1194, file: !33, line: 70, baseType: !469, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1194, file: !33, line: 71, baseType: !478, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1194, file: !33, line: 72, baseType: !1199, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1200, line: 24, baseType: !1201)
!1200 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1200, line: 22, size: 32, elements: !1202)
!1202 = !{!1203}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1201, file: !1200, line: 23, baseType: !1204, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1200, line: 20, baseType: !475)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1191, file: !33, line: 74, baseType: !32, size: 32, offset: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1180, file: !33, line: 306, baseType: !624, size: 64, offset: 960)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1180, file: !33, line: 307, baseType: !255, size: 64, offset: 1024)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1180, file: !33, line: 308, baseType: !1209, size: 576, offset: 1088)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !33, line: 205, size: 576, elements: !1210)
!1210 = !{!1211, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1222}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1209, file: !33, line: 206, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !33, line: 66, baseType: !626)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1209, file: !33, line: 207, baseType: !1212, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1209, file: !33, line: 208, baseType: !1212, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1209, file: !33, line: 209, baseType: !1212, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1209, file: !33, line: 210, baseType: !1212, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1209, file: !33, line: 211, baseType: !1212, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1209, file: !33, line: 212, baseType: !1212, size: 64, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1209, file: !33, line: 213, baseType: !1220, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1221, line: 8, baseType: !734)
!1221 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1209, file: !33, line: 214, baseType: !1220, size: 64, offset: 512)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1104, file: !28, line: 2085, baseType: !1224, size: 64, offset: 1472)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!423, !614, !1227}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1229, line: 15, size: 256, elements: !1230)
!1229 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1230 = !{!1231, !1233, !1234, !1235, !1236}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1228, file: !1229, line: 16, baseType: !1232, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !261, line: 154, baseType: !7)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1228, file: !1229, line: 19, baseType: !147, size: 32, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1228, file: !1229, line: 26, baseType: !255, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1228, file: !1229, line: 33, baseType: !255, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1228, file: !1229, line: 36, baseType: !1237, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !52, line: 33, flags: DIFlagFwdDecl)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1104, file: !28, line: 2087, baseType: !1224, size: 64, offset: 1536)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1104, file: !28, line: 2089, baseType: !648, size: 64, offset: 1600)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !615, file: !28, line: 1198, baseType: !1242, size: 64, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !33, line: 324, size: 704, elements: !1245)
!1245 = !{!1246, !1250, !1254, !1258, !1259, !1260, !1261, !1262, !1267, !1272, !1276}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1244, file: !33, line: 325, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!147, !1179}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1244, file: !33, line: 326, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!1179, !614, !147}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1244, file: !33, line: 327, baseType: !1255, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !1179}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1244, file: !33, line: 328, baseType: !1247, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1244, file: !33, line: 329, baseType: !1247, size: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1244, file: !33, line: 330, baseType: !1247, size: 64, offset: 320)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1244, file: !33, line: 331, baseType: !1132, size: 64, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1244, file: !33, line: 334, baseType: !1263, size: 64, offset: 448)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!1266, !463}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1244, file: !33, line: 335, baseType: !1268, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!147, !463, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1244, file: !33, line: 337, baseType: !1273, size: 64, offset: 576)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!147, !463, !1266}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1244, file: !33, line: 339, baseType: !1277, size: 64, offset: 640)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!147, !614, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !615, file: !28, line: 1199, baseType: !1282, size: 64, offset: 512)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !33, line: 430, size: 704, elements: !1285)
!1285 = !{!1286, !1297, !1298, !1302, !1303, !1304, !1319, !1342, !1346, !1347, !1370}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1284, file: !33, line: 431, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!147, !614, !147, !147, !1290}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1293, line: 8, size: 128, elements: !1294)
!1293 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1292, file: !1293, line: 9, baseType: !608, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1292, file: !1293, line: 10, baseType: !498, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1284, file: !33, line: 432, baseType: !1132, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1284, file: !33, line: 433, baseType: !1299, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!147, !614, !7}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1284, file: !33, line: 434, baseType: !1299, size: 64, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1284, file: !33, line: 435, baseType: !1132, size: 64, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1284, file: !33, line: 436, baseType: !1305, size: 64, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!147, !614, !147, !1308}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !33, line: 417, size: 256, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1309, file: !33, line: 418, baseType: !147, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1309, file: !33, line: 419, baseType: !7, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1309, file: !33, line: 420, baseType: !7, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1309, file: !33, line: 422, baseType: !7, size: 32, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1309, file: !33, line: 423, baseType: !7, size: 32, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1309, file: !33, line: 424, baseType: !7, size: 32, offset: 160)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1309, file: !33, line: 425, baseType: !7, size: 32, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1309, file: !33, line: 426, baseType: !7, size: 32, offset: 224)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1284, file: !33, line: 437, baseType: !1320, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!147, !614, !1191, !1323}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !33, line: 345, size: 960, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1324, file: !33, line: 346, baseType: !147, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1324, file: !33, line: 347, baseType: !536, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1324, file: !33, line: 348, baseType: !536, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1324, file: !33, line: 349, baseType: !536, size: 64, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1324, file: !33, line: 350, baseType: !536, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1324, file: !33, line: 351, baseType: !536, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1324, file: !33, line: 352, baseType: !536, size: 64, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1324, file: !33, line: 353, baseType: !733, size: 64, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1324, file: !33, line: 355, baseType: !733, size: 64, offset: 512)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1324, file: !33, line: 356, baseType: !147, size: 32, offset: 576)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1324, file: !33, line: 357, baseType: !147, size: 32, offset: 608)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1324, file: !33, line: 358, baseType: !536, size: 64, offset: 640)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1324, file: !33, line: 359, baseType: !536, size: 64, offset: 704)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1324, file: !33, line: 360, baseType: !536, size: 64, offset: 768)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1324, file: !33, line: 361, baseType: !733, size: 64, offset: 832)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1324, file: !33, line: 362, baseType: !147, size: 32, offset: 896)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1284, file: !33, line: 438, baseType: !1343, size: 64, offset: 448)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!147, !614, !1280, !1323}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1284, file: !33, line: 440, baseType: !1320, size: 64, offset: 512)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1284, file: !33, line: 441, baseType: !1348, size: 64, offset: 576)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!147, !614, !1351}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !33, line: 411, size: 1408, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1352, file: !33, line: 412, baseType: !7, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1352, file: !33, line: 413, baseType: !1356, size: 1344, offset: 64)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1357, size: 1344, elements: !389)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !33, line: 397, size: 448, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1369}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1357, file: !33, line: 398, baseType: !7, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1357, file: !33, line: 399, baseType: !7, size: 32, offset: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1357, file: !33, line: 401, baseType: !7, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1357, file: !33, line: 402, baseType: !7, size: 32, offset: 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1357, file: !33, line: 403, baseType: !7, size: 32, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1357, file: !33, line: 404, baseType: !7, size: 32, offset: 160)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1357, file: !33, line: 405, baseType: !7, size: 32, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1357, file: !33, line: 406, baseType: !538, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1357, file: !33, line: 407, baseType: !1368, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !261, line: 132, baseType: !536)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1357, file: !33, line: 408, baseType: !1368, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1284, file: !33, line: 442, baseType: !1299, size: 64, offset: 640)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !615, file: !28, line: 1200, baseType: !1372, size: 64, offset: 576)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !28, line: 54, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !615, file: !28, line: 1201, baseType: !255, size: 64, offset: 640)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !615, file: !28, line: 1202, baseType: !255, size: 64, offset: 704)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !615, file: !28, line: 1203, baseType: !255, size: 64, offset: 768)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !615, file: !28, line: 1204, baseType: !498, size: 64, offset: 832)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !615, file: !28, line: 1205, baseType: !1380, size: 320, offset: 896)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1381, line: 48, size: 320, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1382 = !{!1383, !1384, !1385, !1386, !1387}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1380, file: !1381, line: 49, baseType: !727, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1380, file: !1381, line: 55, baseType: !727, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1380, file: !1381, line: 57, baseType: !737, size: 32, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1380, file: !1381, line: 59, baseType: !681, size: 32, offset: 160)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1380, file: !1381, line: 60, baseType: !291, size: 128, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !615, file: !28, line: 1206, baseType: !147, size: 32, offset: 1216)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !615, file: !28, line: 1207, baseType: !338, size: 32, offset: 1248)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !615, file: !28, line: 1209, baseType: !246, size: 64, offset: 1280)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !615, file: !28, line: 1211, baseType: !1392, size: 64, offset: 1344)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1395)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !28, line: 1211, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !615, file: !28, line: 1223, baseType: !1397, size: 64, offset: 1408)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !515, line: 34, size: 64, elements: !1398)
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1397, file: !515, line: 35, baseType: !518, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !615, file: !28, line: 1224, baseType: !291, size: 128, offset: 1472)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !615, file: !28, line: 1225, baseType: !1402, size: 64, offset: 1600)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !28, line: 1225, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !615, file: !28, line: 1226, baseType: !1405, size: 64, offset: 1664)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !28, line: 1226, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !615, file: !28, line: 1227, baseType: !1408, size: 64, offset: 1728)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !28, line: 50, flags: DIFlagFwdDecl)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !615, file: !28, line: 1228, baseType: !1411, size: 64, offset: 1792)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !28, line: 1228, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !615, file: !28, line: 1229, baseType: !964, size: 128, offset: 1856)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !615, file: !28, line: 1230, baseType: !7, size: 32, offset: 1984)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !615, file: !28, line: 1231, baseType: !1416, size: 2496, offset: 2048)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !33, line: 521, size: 2496, elements: !1417)
!1417 = !{!1418, !1419, !1420, !1422, !1454}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1416, file: !33, line: 522, baseType: !7, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1416, file: !33, line: 523, baseType: !1380, size: 320, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1416, file: !33, line: 524, baseType: !1421, size: 192, offset: 384)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 192, elements: !389)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1416, file: !33, line: 525, baseType: !1423, size: 1728, offset: 576)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1424, size: 1728, elements: !389)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !33, line: 222, size: 576, elements: !1425)
!1425 = !{!1426, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1424, file: !33, line: 223, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !33, line: 445, size: 256, elements: !1429)
!1429 = !{!1430, !1431, !1444, !1445}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1428, file: !33, line: 446, baseType: !147, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1428, file: !33, line: 447, baseType: !1432, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !33, line: 312, size: 512, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1434, file: !33, line: 313, baseType: !1132, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1434, file: !33, line: 314, baseType: !1132, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1434, file: !33, line: 315, baseType: !1132, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1434, file: !33, line: 316, baseType: !1132, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1434, file: !33, line: 317, baseType: !1247, size: 64, offset: 256)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1434, file: !33, line: 318, baseType: !1247, size: 64, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1434, file: !33, line: 319, baseType: !1247, size: 64, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1434, file: !33, line: 320, baseType: !1277, size: 64, offset: 448)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1428, file: !33, line: 448, baseType: !652, size: 64, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1428, file: !33, line: 449, baseType: !1427, size: 64, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1424, file: !33, line: 224, baseType: !147, size: 32, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1424, file: !33, line: 226, baseType: !291, size: 128, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1424, file: !33, line: 227, baseType: !255, size: 64, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1424, file: !33, line: 228, baseType: !7, size: 32, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1424, file: !33, line: 229, baseType: !7, size: 32, offset: 352)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1424, file: !33, line: 230, baseType: !1212, size: 64, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1424, file: !33, line: 231, baseType: !1212, size: 64, offset: 448)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1424, file: !33, line: 232, baseType: !246, size: 64, offset: 512)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1416, file: !33, line: 526, baseType: !1455, size: 192, offset: 2304)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1432, size: 192, elements: !389)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !615, file: !28, line: 1233, baseType: !1457, size: 2368, offset: 4544)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !28, line: 1184, size: 2368, elements: !1458)
!1458 = !{!1459, !1460, !1461}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1457, file: !28, line: 1185, baseType: !358, size: 16)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1457, file: !28, line: 1186, baseType: !358, size: 16, offset: 16)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1457, file: !28, line: 1187, baseType: !1462, size: 2304, offset: 64)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1463, size: 2304, elements: !389)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1464, line: 12, size: 768, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1465 = !{!1466, !1480, !1481, !3565, !3566}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1463, file: !1464, line: 13, baseType: !1467, size: 384)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1468, line: 17, size: 384, elements: !1469)
!1468 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1469 = !{!1470, !1471, !1472, !1479}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1467, file: !1468, line: 18, baseType: !147, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1467, file: !1468, line: 19, baseType: !147, size: 32, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1467, file: !1468, line: 20, baseType: !1473, size: 192, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1474, line: 41, baseType: !1475)
!1474 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1474, line: 37, size: 192, elements: !1476)
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1475, file: !1474, line: 38, baseType: !318, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1475, file: !1474, line: 39, baseType: !291, size: 128, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1467, file: !1468, line: 22, baseType: !938, size: 128, align: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1463, file: !1464, line: 14, baseType: !792, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1463, file: !1464, line: 15, baseType: !1482, size: 64, offset: 448)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1483, line: 16, size: 64, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1482, file: !1483, line: 17, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1162, line: 746, size: 58368, elements: !1488)
!1488 = !{!1489, !1497, !1498, !1499, !1505, !1506, !1507, !1508, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1579, !1590, !1685, !1689, !1692, !1723, !1724, !1725, !1726, !1737, !1739, !1740, !1741, !1742, !1743, !1744, !1755, !1756, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1773, !1774, !1781, !1782, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2740, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2788, !2794, !2795, !2796, !2797, !2798, !2802, !2805, !2812, !2817, !2820, !2823, !2826, !2829, !2967, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3005, !3006, !3007, !3016, !3024, !3025, !3026, !3027, !3028, !3033, !3034, !3035, !3038, !3039, !3042, !3045, !3048, !3056, !3059, !3060, !3146, !3147, !3148, !3149, !3150, !3155, !3156, !3157, !3158, !3161, !3162, !3165, !3168, !3169, !3172, !3173, !3174, !3177, !3178, !3179, !3180, !3181, !3182, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3214, !3215, !3221, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3233, !3305, !3307, !3308, !3309, !3310, !3311, !3312, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3342, !3343, !3344}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1487, file: !1162, line: 752, baseType: !1490, size: 192)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1491, line: 56, size: 192, elements: !1492)
!1491 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1492 = !{!1493, !1494, !1495, !1496}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1490, file: !1491, line: 57, baseType: !255, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1490, file: !1491, line: 58, baseType: !255, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1490, file: !1491, line: 59, baseType: !532, size: 32, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1490, file: !1491, line: 61, baseType: !532, size: 32, offset: 160)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1487, file: !1162, line: 754, baseType: !7, size: 32, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1487, file: !1162, line: 767, baseType: !246, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1487, file: !1162, line: 768, baseType: !1500, size: 32, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1501, line: 113, baseType: !1502)
!1501 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1501, line: 111, size: 32, elements: !1503)
!1503 = !{!1504}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1502, file: !1501, line: 112, baseType: !338, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1487, file: !1162, line: 770, baseType: !7, size: 32, offset: 352)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1487, file: !1162, line: 771, baseType: !7, size: 32, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1487, file: !1162, line: 774, baseType: !147, size: 32, offset: 416)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1487, file: !1162, line: 775, baseType: !1509, size: 128, offset: 448)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1510, line: 58, size: 128, elements: !1511)
!1510 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1511 = !{!1512, !1518, !1523, !1524}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1509, file: !1510, line: 59, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1514, line: 60, size: 64, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1513, file: !1514, line: 61, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !1510, line: 60, baseType: !1519, size: 32, offset: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1509, file: !1510, line: 60, size: 32, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1519, file: !1510, line: 61, baseType: !7, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1519, file: !1510, line: 62, baseType: !338, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1509, file: !1510, line: 65, baseType: !356, size: 16, offset: 96)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1509, file: !1510, line: 65, baseType: !356, size: 16, offset: 112)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1487, file: !1162, line: 776, baseType: !7, size: 32, offset: 576)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1487, file: !1162, line: 777, baseType: !255, size: 64, offset: 640)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1487, file: !1162, line: 778, baseType: !1486, size: 64, offset: 704)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1487, file: !1162, line: 787, baseType: !147, size: 32, offset: 768)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1487, file: !1162, line: 788, baseType: !147, size: 32, offset: 800)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1487, file: !1162, line: 790, baseType: !147, size: 32, offset: 832)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1487, file: !1162, line: 792, baseType: !147, size: 32, offset: 864)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1487, file: !1162, line: 793, baseType: !147, size: 32, offset: 896)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1487, file: !1162, line: 794, baseType: !147, size: 32, offset: 928)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1487, file: !1162, line: 795, baseType: !7, size: 32, offset: 960)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1487, file: !1162, line: 797, baseType: !1536, size: 2048, offset: 1024)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1162, line: 551, size: 2048, elements: !1537)
!1537 = !{!1538, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1558, !1561, !1562, !1563}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1536, file: !1162, line: 553, baseType: !1539, size: 128)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1162, line: 411, size: 128, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1539, file: !1162, line: 412, baseType: !255, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1539, file: !1162, line: 413, baseType: !532, size: 32, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1536, file: !1162, line: 554, baseType: !830, size: 192, align: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1536, file: !1162, line: 555, baseType: !536, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1536, file: !1162, line: 556, baseType: !536, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1536, file: !1162, line: 558, baseType: !291, size: 128, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1536, file: !1162, line: 559, baseType: !7, size: 32, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1536, file: !1162, line: 561, baseType: !536, size: 64, offset: 640)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1536, file: !1162, line: 562, baseType: !536, size: 64, offset: 704)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1536, file: !1162, line: 563, baseType: !536, size: 64, offset: 768)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1536, file: !1162, line: 564, baseType: !536, size: 64, offset: 832)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1536, file: !1162, line: 565, baseType: !733, size: 64, offset: 896)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1536, file: !1162, line: 566, baseType: !536, size: 64, offset: 960)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1536, file: !1162, line: 568, baseType: !536, size: 64, offset: 1024)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1536, file: !1162, line: 571, baseType: !147, size: 32, offset: 1088)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1536, file: !1162, line: 572, baseType: !1557, size: 64, offset: 1152)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1536, file: !1162, line: 574, baseType: !1559, size: 64, offset: 1216)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1162, line: 49, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1536, file: !1162, line: 576, baseType: !1559, size: 64, offset: 1280)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1536, file: !1162, line: 578, baseType: !255, size: 64, offset: 1344)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1536, file: !1162, line: 588, baseType: !1564, size: 512, align: 512, offset: 1536)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1162, line: 497, size: 512, align: 512, elements: !1565)
!1565 = !{!1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1564, file: !1162, line: 498, baseType: !536, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1564, file: !1162, line: 499, baseType: !536, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1564, file: !1162, line: 500, baseType: !536, size: 64, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1564, file: !1162, line: 501, baseType: !532, size: 32, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1564, file: !1162, line: 502, baseType: !532, size: 32, offset: 224)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1564, file: !1162, line: 503, baseType: !255, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1564, file: !1162, line: 504, baseType: !255, size: 64, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1564, file: !1162, line: 505, baseType: !255, size: 64, offset: 384)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1564, file: !1162, line: 506, baseType: !1575, size: 64, align: 64, offset: 448)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1162, line: 445, size: 64, align: 64, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1575, file: !1162, line: 446, baseType: !7, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1575, file: !1162, line: 447, baseType: !7, size: 32, offset: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1487, file: !1162, line: 798, baseType: !1580, size: 384, offset: 3072)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1162, line: 592, size: 384, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1580, file: !1162, line: 593, baseType: !291, size: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1580, file: !1162, line: 594, baseType: !255, size: 64, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1580, file: !1162, line: 595, baseType: !255, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1580, file: !1162, line: 596, baseType: !7, size: 32, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1580, file: !1162, line: 597, baseType: !358, size: 16, offset: 288)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1580, file: !1162, line: 598, baseType: !358, size: 16, offset: 304)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1580, file: !1162, line: 600, baseType: !1589, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1487, file: !1162, line: 799, baseType: !1591, size: 1792, offset: 3456)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1162, line: 610, size: 1792, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1682, !1683}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1591, file: !1162, line: 611, baseType: !830, size: 192, align: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1591, file: !1162, line: 618, baseType: !536, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1591, file: !1162, line: 619, baseType: !536, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1591, file: !1162, line: 620, baseType: !536, size: 64, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1591, file: !1162, line: 621, baseType: !536, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1591, file: !1162, line: 622, baseType: !536, size: 64, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1591, file: !1162, line: 629, baseType: !733, size: 64, offset: 512)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1591, file: !1162, line: 630, baseType: !536, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1591, file: !1162, line: 631, baseType: !7, size: 32, offset: 640)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1591, file: !1162, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1591, file: !1162, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1591, file: !1162, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1591, file: !1162, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1591, file: !1162, line: 662, baseType: !1607, size: 512, offset: 704)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !1608)
!1608 = !{!1609, !1617, !1618, !1623, !1678, !1679, !1680, !1681}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1607, file: !39, line: 119, baseType: !1610, size: 256)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1611, line: 9, size: 256, elements: !1612)
!1611 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1610, file: !1611, line: 10, baseType: !830, size: 192, align: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1610, file: !1611, line: 11, baseType: !1615, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1616, line: 29, baseType: !733)
!1616 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1607, file: !39, line: 120, baseType: !1615, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1607, file: !39, line: 121, baseType: !1619, size: 64, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!38, !1622}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1607, file: !39, line: 122, baseType: !1624, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !1626)
!1626 = !{!1627, !1652, !1653, !1656, !1661, !1662, !1673, !1677}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1625, file: !39, line: 160, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1629, file: !39, line: 216, baseType: !681, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1629, file: !39, line: 217, baseType: !7, size: 32, offset: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1629, file: !39, line: 218, baseType: !7, size: 32, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1629, file: !39, line: 219, baseType: !7, size: 32, offset: 96)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1629, file: !39, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1629, file: !39, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1629, file: !39, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1629, file: !39, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1629, file: !39, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1629, file: !39, line: 226, baseType: !7, size: 32, offset: 160)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1629, file: !39, line: 227, baseType: !358, size: 16, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1629, file: !39, line: 228, baseType: !358, size: 16, offset: 208)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1629, file: !39, line: 229, baseType: !7, size: 32, offset: 224)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1629, file: !39, line: 235, baseType: !1615, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1629, file: !39, line: 236, baseType: !1622, size: 64, offset: 320)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1629, file: !39, line: 237, baseType: !1615, size: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1629, file: !39, line: 238, baseType: !1622, size: 64, offset: 448)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1629, file: !39, line: 239, baseType: !1649, size: 4096, align: 512, offset: 512)
!1649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1625, size: 4096, align: 512, elements: !1650)
!1650 = !{!1651}
!1651 = !DISubrange(count: 8)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1625, file: !39, line: 161, baseType: !7, size: 32, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1625, file: !39, line: 162, baseType: !1654, size: 32, offset: 96)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !261, line: 32, baseType: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !278, line: 96, baseType: !147)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1625, file: !39, line: 163, baseType: !1657, size: 32, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !505, line: 274, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !505, line: 274, size: 32, elements: !1659)
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1658, file: !505, line: 274, baseType: !509, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1625, file: !39, line: 164, baseType: !1622, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1625, file: !39, line: 165, baseType: !1663, size: 128, offset: 256)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1611, line: 14, size: 128, elements: !1664)
!1664 = !{!1665}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1663, file: !1611, line: 15, baseType: !1666, size: 128)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !831, line: 26, size: 128, elements: !1667)
!1667 = !{!1668, !1672}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1666, file: !831, line: 27, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !831, line: 12, size: 64, elements: !1670)
!1670 = !{!1671}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1669, file: !831, line: 13, baseType: !835, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1666, file: !831, line: 28, baseType: !835, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1625, file: !39, line: 166, baseType: !1674, size: 64, offset: 384)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!1615}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1625, file: !39, line: 167, baseType: !1615, size: 64, offset: 448)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1607, file: !39, line: 123, baseType: !346, size: 8, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1607, file: !39, line: 124, baseType: !346, size: 8, offset: 456)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1607, file: !39, line: 125, baseType: !346, size: 8, offset: 464)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1607, file: !39, line: 126, baseType: !346, size: 8, offset: 472)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1591, file: !1162, line: 671, baseType: !1607, size: 512, offset: 1216)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1591, file: !1162, line: 679, baseType: !1684, size: 64, offset: 1728)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1487, file: !1162, line: 800, baseType: !1686, size: 64, offset: 5248)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1162, line: 800, flags: DIFlagFwdDecl)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1487, file: !1162, line: 809, baseType: !1690, size: 64, offset: 5312)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1162, line: 70, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1487, file: !1162, line: 825, baseType: !1693, size: 2048, align: 512, offset: 5632)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1162, line: 509, size: 2048, align: 512, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1693, file: !1162, line: 511, baseType: !536, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1693, file: !1162, line: 512, baseType: !536, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1693, file: !1162, line: 513, baseType: !536, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1693, file: !1162, line: 514, baseType: !536, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1693, file: !1162, line: 515, baseType: !536, size: 64, offset: 256)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1693, file: !1162, line: 516, baseType: !536, size: 64, offset: 320)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1693, file: !1162, line: 518, baseType: !536, size: 64, offset: 384)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1693, file: !1162, line: 519, baseType: !536, size: 64, offset: 448)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1693, file: !1162, line: 520, baseType: !733, size: 64, offset: 512)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1693, file: !1162, line: 522, baseType: !536, size: 64, offset: 576)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1693, file: !1162, line: 523, baseType: !536, size: 64, offset: 640)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1693, file: !1162, line: 524, baseType: !733, size: 64, offset: 704)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1693, file: !1162, line: 526, baseType: !733, size: 64, offset: 768)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1693, file: !1162, line: 527, baseType: !536, size: 64, offset: 832)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1693, file: !1162, line: 529, baseType: !536, size: 64, offset: 896)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1693, file: !1162, line: 530, baseType: !536, size: 64, offset: 960)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1693, file: !1162, line: 531, baseType: !536, size: 64, offset: 1024)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1693, file: !1162, line: 532, baseType: !536, size: 64, offset: 1088)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1693, file: !1162, line: 533, baseType: !536, size: 64, offset: 1152)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1693, file: !1162, line: 535, baseType: !536, size: 64, offset: 1216)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1693, file: !1162, line: 536, baseType: !536, size: 64, offset: 1280)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1693, file: !1162, line: 537, baseType: !536, size: 64, offset: 1344)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1693, file: !1162, line: 538, baseType: !536, size: 64, offset: 1408)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1693, file: !1162, line: 539, baseType: !536, size: 64, offset: 1472)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1693, file: !1162, line: 540, baseType: !536, size: 64, offset: 1536)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1693, file: !1162, line: 541, baseType: !536, size: 64, offset: 1600)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1693, file: !1162, line: 542, baseType: !536, size: 64, offset: 1664)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1693, file: !1162, line: 543, baseType: !536, size: 64, offset: 1728)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1487, file: !1162, line: 833, baseType: !7, size: 32, offset: 7680)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1487, file: !1162, line: 836, baseType: !7, size: 32, offset: 7712)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1487, file: !1162, line: 837, baseType: !147, size: 32, offset: 7744)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1487, file: !1162, line: 838, baseType: !1727, size: 64, offset: 7808)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1729)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1730, line: 19, baseType: !1731)
!1730 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1730, line: 19, size: 64, elements: !1732)
!1732 = !{!1733}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1731, file: !1730, line: 19, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 64, elements: !1735)
!1735 = !{!1736}
!1736 = !DISubrange(count: 1)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1487, file: !1162, line: 839, baseType: !1738, size: 64, offset: 7872)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1487, file: !1162, line: 840, baseType: !1729, size: 64, offset: 7936)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1487, file: !1162, line: 841, baseType: !246, size: 64, offset: 8000)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1487, file: !1162, line: 843, baseType: !358, size: 16, offset: 8064)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1487, file: !1162, line: 845, baseType: !358, size: 16, offset: 8080)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1487, file: !1162, line: 848, baseType: !147, size: 32, offset: 8096)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1487, file: !1162, line: 849, baseType: !1745, size: 32, offset: 8128)
!1745 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1162, line: 718, size: 32, elements: !1746)
!1746 = !{!1747, !1754}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1745, file: !1162, line: 724, baseType: !1748, size: 32)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1745, file: !1162, line: 719, size: 32, elements: !1749)
!1749 = !{!1750, !1751, !1752, !1753}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1748, file: !1162, line: 720, baseType: !346, size: 8)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1748, file: !1162, line: 721, baseType: !346, size: 8, offset: 8)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1748, file: !1162, line: 722, baseType: !346, size: 8, offset: 16)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1748, file: !1162, line: 723, baseType: !346, size: 8, offset: 24)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1745, file: !1162, line: 725, baseType: !532, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1487, file: !1162, line: 850, baseType: !291, size: 128, offset: 8192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1487, file: !1162, line: 851, baseType: !1757, size: 64, offset: 8320)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1162, line: 60, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1487, file: !1162, line: 855, baseType: !255, size: 64, offset: 8384)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1487, file: !1162, line: 856, baseType: !346, size: 8, offset: 8448)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1487, file: !1162, line: 857, baseType: !346, size: 8, offset: 8456)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1487, file: !1162, line: 858, baseType: !147, size: 32, offset: 8480)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1487, file: !1162, line: 859, baseType: !291, size: 128, offset: 8512)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1487, file: !1162, line: 860, baseType: !147, size: 32, offset: 8640)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1487, file: !1162, line: 861, baseType: !291, size: 128, offset: 8704)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1487, file: !1162, line: 873, baseType: !1767, size: 256, offset: 8832)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1162, line: 376, size: 256, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1772}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1767, file: !1162, line: 381, baseType: !255, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1767, file: !1162, line: 384, baseType: !538, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1767, file: !1162, line: 389, baseType: !538, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1767, file: !1162, line: 392, baseType: !538, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1487, file: !1162, line: 875, baseType: !291, size: 128, offset: 9088)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1487, file: !1162, line: 877, baseType: !1775, size: 320, offset: 9216)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1776, line: 86, size: 320, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1777 = !{!1778, !1779, !1780}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1775, file: !1776, line: 87, baseType: !147, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1775, file: !1776, line: 88, baseType: !291, size: 128, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1775, file: !1776, line: 89, baseType: !291, size: 128, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1487, file: !1162, line: 878, baseType: !830, size: 192, align: 64, offset: 9536)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1487, file: !1162, line: 881, baseType: !1783, size: 64, offset: 9728)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !52, line: 733, size: 10240, elements: !1785)
!1785 = !{!1786, !2659}
!1786 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !52, line: 734, baseType: !1787, size: 10240)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1784, file: !52, line: 734, size: 10240, elements: !1788)
!1788 = !{!1789, !1793, !1806, !2536, !2537, !2538, !2539, !2540, !2541, !2548, !2549, !2550, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2589, !2591, !2594, !2639, !2640, !2641, !2644, !2645, !2646, !2649, !2650, !2651, !2657, !2658}
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !52, line: 739, baseType: !1790, size: 512, align: 512)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1787, file: !52, line: 739, size: 512, align: 512, elements: !1791)
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1790, file: !52, line: 747, baseType: !338, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1787, file: !52, line: 750, baseType: !1794, size: 128, offset: 512)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1795, line: 218, size: 128, elements: !1796)
!1795 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1796 = !{!1797, !1804, !1805}
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1794, file: !1795, line: 219, baseType: !1798, size: 32)
!1798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1794, file: !1795, line: 219, size: 32, elements: !1799)
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1798, file: !1795, line: 220, baseType: !318, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1798, file: !1795, line: 221, baseType: !1802)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1795, line: 197, baseType: !1803)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1795, line: 197, elements: !1007)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1794, file: !1795, line: 223, baseType: !7, size: 32, offset: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1794, file: !1795, line: 224, baseType: !246, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1787, file: !52, line: 752, baseType: !1807, size: 64, offset: 640)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!255, !1810, !255, !255, !255, !255}
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !28, line: 994, size: 1856, align: 64, elements: !1812)
!1812 = !{!1813, !1819, !1820, !1822, !1823, !1824, !1825, !1826, !1876, !2066, !2075, !2076, !2077, !2526, !2527, !2528, !2529, !2531, !2532, !2535}
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !28, line: 995, baseType: !1814, size: 128)
!1814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !28, line: 995, size: 128, elements: !1815)
!1815 = !{!1816, !1817, !1818}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1814, file: !28, line: 996, baseType: !1513, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1814, file: !28, line: 997, baseType: !938, size: 128, align: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1814, file: !28, line: 998, baseType: !7, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1811, file: !28, line: 1005, baseType: !318, size: 32, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1811, file: !28, line: 1006, baseType: !1821, size: 32, offset: 160)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !261, line: 156, baseType: !7)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1811, file: !28, line: 1007, baseType: !727, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1811, file: !28, line: 1008, baseType: !723, size: 256, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1811, file: !28, line: 1009, baseType: !624, size: 64, offset: 512)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1811, file: !28, line: 1010, baseType: !7, size: 32, offset: 576)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1811, file: !28, line: 1011, baseType: !1827, size: 256, offset: 640)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !28, line: 948, size: 256, elements: !1828)
!1828 = !{!1829, !1850, !1872, !1873, !1874, !1875}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1827, file: !28, line: 949, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1831, line: 34, baseType: !1832)
!1831 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1831, line: 25, size: 64, elements: !1833)
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1832, file: !1831, line: 26, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1836, line: 27, baseType: !1837)
!1836 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1836, line: 13, size: 64, elements: !1838)
!1838 = !{!1839, !1849}
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1836, line: 14, baseType: !1840, size: 32)
!1840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !1836, line: 14, size: 32, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1840, file: !1836, line: 15, baseType: !338, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1840, file: !1836, line: 16, baseType: !1844, size: 32)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1840, file: !1836, line: 16, size: 32, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1844, file: !1836, line: 18, baseType: !346, size: 8)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1844, file: !1836, line: 19, baseType: !1848, size: 24, offset: 8)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 24, elements: !389)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1837, file: !1836, line: 26, baseType: !330, size: 32, offset: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1827, file: !28, line: 950, baseType: !1851, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !44, line: 59, size: 768, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1859, !1860, !1861, !1862}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1852, file: !44, line: 61, baseType: !1500, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1852, file: !44, line: 62, baseType: !7, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1852, file: !44, line: 63, baseType: !318, size: 32, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1852, file: !44, line: 65, baseType: !1858, size: 256, offset: 128)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1088, size: 256, elements: !948)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1852, file: !44, line: 66, baseType: !1088, size: 64, offset: 384)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1852, file: !44, line: 68, baseType: !1473, size: 192, offset: 448)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1852, file: !44, line: 69, baseType: !938, size: 128, align: 64, offset: 640)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1852, file: !44, line: 70, baseType: !1863, offset: 768)
!1863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1864, elements: !1870)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !44, line: 54, size: 128, elements: !1865)
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1864, file: !44, line: 55, baseType: !147, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1864, file: !44, line: 56, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !44, line: 56, flags: DIFlagFwdDecl)
!1870 = !{!1871}
!1871 = !DISubrange(count: -1)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1827, file: !28, line: 951, baseType: !43, size: 32, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1827, file: !28, line: 952, baseType: !469, size: 32, offset: 160)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1827, file: !28, line: 952, baseType: !469, size: 32, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1827, file: !28, line: 953, baseType: !147, size: 32, offset: 224)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1811, file: !28, line: 1012, baseType: !1877, size: 64, offset: 896)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1879)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1880, line: 110, size: 1472, elements: !1881)
!1880 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1881 = !{!1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1898, !1899, !1900, !1901, !1902, !1903, !2011, !2012, !2013, !2014, !2015, !2046, !2049, !2053, !2061}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1879, file: !1880, line: 111, baseType: !727, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1879, file: !1880, line: 112, baseType: !469, size: 32, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1879, file: !1880, line: 113, baseType: !478, size: 32, offset: 96)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1879, file: !1880, line: 114, baseType: !469, size: 32, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1879, file: !1880, line: 115, baseType: !478, size: 32, offset: 160)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1879, file: !1880, line: 116, baseType: !469, size: 32, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1879, file: !1880, line: 117, baseType: !478, size: 32, offset: 224)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1879, file: !1880, line: 118, baseType: !469, size: 32, offset: 256)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1879, file: !1880, line: 119, baseType: !478, size: 32, offset: 288)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1879, file: !1880, line: 120, baseType: !7, size: 32, offset: 320)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1879, file: !1880, line: 121, baseType: !1893, size: 64, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1894, line: 24, baseType: !1895)
!1894 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1894, line: 24, size: 64, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1895, file: !1894, line: 24, baseType: !536, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1879, file: !1880, line: 122, baseType: !1893, size: 64, offset: 448)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1879, file: !1880, line: 123, baseType: !1893, size: 64, offset: 512)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1879, file: !1880, line: 124, baseType: !1893, size: 64, offset: 576)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1879, file: !1880, line: 125, baseType: !1893, size: 64, offset: 640)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1879, file: !1880, line: 127, baseType: !350, size: 8, offset: 704)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1879, file: !1880, line: 129, baseType: !1904, size: 64, offset: 768)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1906, line: 195, size: 1728, elements: !1907)
!1906 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1907 = !{!1908, !1909, !1912, !1917, !1918, !1921, !1922, !1927, !1928, !1929, !1930, !1933, !1934, !1935, !1936, !1937, !1975, !1996}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1905, file: !1906, line: 196, baseType: !1500, size: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1905, file: !1906, line: 197, baseType: !1910, size: 32, offset: 32)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1906, line: 28, baseType: !1911)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !261, line: 104, baseType: !719)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1905, file: !1906, line: 198, baseType: !1913, size: 192, offset: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1905, file: !1906, line: 198, size: 192, elements: !1914)
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1913, file: !1906, line: 199, baseType: !291, size: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1913, file: !1906, line: 200, baseType: !830, size: 192, align: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1905, file: !1906, line: 205, baseType: !1380, size: 320, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1905, file: !1906, line: 206, baseType: !1919, size: 64, offset: 576)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1906, line: 206, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1905, file: !1906, line: 207, baseType: !246, size: 64, offset: 640)
!1922 = !DIDerivedType(tag: DW_TAG_member, scope: !1905, file: !1906, line: 208, baseType: !1923, size: 64, offset: 704)
!1923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1905, file: !1906, line: 208, size: 64, elements: !1924)
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1923, file: !1906, line: 209, baseType: !1220, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1923, file: !1906, line: 210, baseType: !1220, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1905, file: !1906, line: 212, baseType: !1220, size: 64, offset: 768)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1905, file: !1906, line: 213, baseType: !469, size: 32, offset: 832)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1905, file: !1906, line: 214, baseType: !478, size: 32, offset: 864)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1905, file: !1906, line: 215, baseType: !1931, size: 32, offset: 896)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1906, line: 31, baseType: !1932)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !261, line: 110, baseType: !532)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1905, file: !1906, line: 216, baseType: !358, size: 16, offset: 928)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1905, file: !1906, line: 217, baseType: !358, size: 16, offset: 944)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1905, file: !1906, line: 221, baseType: !856, size: 16, offset: 960)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1905, file: !1906, line: 228, baseType: !255, size: 64, offset: 1024)
!1937 = !DIDerivedType(tag: DW_TAG_member, scope: !1905, file: !1906, line: 245, baseType: !1938, size: 320, offset: 1088)
!1938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1905, file: !1906, line: 245, size: 320, elements: !1939)
!1939 = !{!1940, !1967}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1938, file: !1906, line: 246, baseType: !1941, size: 320)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1906, line: 114, size: 320, elements: !1942)
!1942 = !{!1943, !1944, !1956, !1959, !1966}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1941, file: !1906, line: 116, baseType: !255, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !1906, line: 117, baseType: !1945, size: 64, offset: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1941, file: !1906, line: 117, size: 64, elements: !1946)
!1946 = !{!1947, !1955}
!1947 = !DIDerivedType(tag: DW_TAG_member, scope: !1945, file: !1906, line: 118, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1906, line: 118, size: 64, elements: !1949)
!1949 = !{!1950, !1951}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1948, file: !1906, line: 120, baseType: !356, size: 16)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1948, file: !1906, line: 121, baseType: !1952, size: 48, offset: 16)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 48, elements: !1953)
!1953 = !{!1954}
!1954 = !DISubrange(count: 6)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1945, file: !1906, line: 127, baseType: !255, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1941, file: !1906, line: 129, baseType: !1957, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1906, line: 102, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1941, file: !1906, line: 130, baseType: !1960, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1906, line: 108, size: 192, elements: !1962)
!1962 = !{!1963, !1964, !1965}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1961, file: !1906, line: 109, baseType: !938, size: 128, align: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1961, file: !1906, line: 110, baseType: !1500, size: 32, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1961, file: !1906, line: 111, baseType: !260, size: 8, offset: 160)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1941, file: !1906, line: 131, baseType: !306, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_member, scope: !1938, file: !1906, line: 247, baseType: !1968, size: 320)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1938, file: !1906, line: 247, size: 320, elements: !1969)
!1969 = !{!1970, !1971, !1972, !1973, !1974}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1968, file: !1906, line: 248, baseType: !255, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1968, file: !1906, line: 249, baseType: !255, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1968, file: !1906, line: 250, baseType: !1957, size: 64, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1968, file: !1906, line: 251, baseType: !1960, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1968, file: !1906, line: 252, baseType: !388, size: 64, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_member, scope: !1905, file: !1906, line: 260, baseType: !1976, size: 256, offset: 1408)
!1976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1905, file: !1906, line: 260, size: 256, elements: !1977)
!1977 = !{!1978, !1984}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1976, file: !1906, line: 261, baseType: !1979, size: 256)
!1979 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1906, line: 134, size: 256, elements: !1980)
!1980 = !{!1981, !1982}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1979, file: !1906, line: 135, baseType: !246, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1979, file: !1906, line: 136, baseType: !1983, size: 256)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 256, elements: !948)
!1984 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !1906, line: 262, baseType: !1985, size: 256)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1976, file: !1906, line: 262, size: 256, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1985, file: !1906, line: 264, baseType: !291, size: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1985, file: !1906, line: 265, baseType: !1989, size: 128, offset: 128)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1990, line: 22, size: 128, elements: !1991)
!1990 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1991 = !{!1992, !1995}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1989, file: !1990, line: 23, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1990, line: 23, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1989, file: !1990, line: 24, baseType: !255, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1905, file: !1906, line: 280, baseType: !1997, size: 64, offset: 1664)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1906, line: 176, size: 192, elements: !1999)
!1999 = !{!2000, !2009, !2010}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1998, file: !1906, line: 177, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1906, line: 171, baseType: !2002)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!147, !1904, !2005, !2007, !1904}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1958)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1979)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1998, file: !1906, line: 178, baseType: !1904, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1998, file: !1906, line: 179, baseType: !1957, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1879, file: !1880, line: 130, baseType: !1904, size: 64, offset: 832)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1879, file: !1880, line: 131, baseType: !1904, size: 64, offset: 896)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1879, file: !1880, line: 132, baseType: !1904, size: 64, offset: 960)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1879, file: !1880, line: 135, baseType: !246, size: 64, offset: 1024)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1879, file: !1880, line: 137, baseType: !2016, size: 64, offset: 1088)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2018, line: 14, size: 1088, elements: !2019)
!2018 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2019 = !{!2020, !2021, !2030, !2031, !2032, !2033, !2034, !2035}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2017, file: !2018, line: 15, baseType: !1500, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2017, file: !2018, line: 17, baseType: !2022, size: 320, offset: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2023, line: 22, size: 320, elements: !2024)
!2023 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2024 = !{!2025, !2026, !2027, !2028}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2022, file: !2023, line: 23, baseType: !681, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2022, file: !2023, line: 24, baseType: !733, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2022, file: !2023, line: 26, baseType: !291, size: 128, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2022, file: !2023, line: 28, baseType: !2029, size: 64, offset: 256)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2017, file: !2018, line: 19, baseType: !255, size: 64, offset: 384)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2017, file: !2018, line: 20, baseType: !727, size: 64, offset: 448)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2017, file: !2018, line: 23, baseType: !964, size: 128, offset: 512)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2017, file: !2018, line: 24, baseType: !469, size: 32, offset: 640)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2017, file: !2018, line: 29, baseType: !727, size: 64, offset: 704)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2017, file: !2018, line: 36, baseType: !2036, size: 320, offset: 768)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2037, line: 15, size: 320, elements: !2038)
!2037 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2036, file: !2037, line: 16, baseType: !681, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2036, file: !2037, line: 18, baseType: !147, size: 32, offset: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2036, file: !2037, line: 19, baseType: !147, size: 32, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2036, file: !2037, line: 20, baseType: !147, size: 32, offset: 96)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2036, file: !2037, line: 21, baseType: !147, size: 32, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2036, file: !2037, line: 22, baseType: !255, size: 64, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2036, file: !2037, line: 23, baseType: !255, size: 64, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1879, file: !1880, line: 138, baseType: !2047, size: 64, offset: 1152)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !52, line: 901, flags: DIFlagFwdDecl)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1879, file: !1880, line: 139, baseType: !2050, size: 64, offset: 1216)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2052, line: 16, flags: DIFlagFwdDecl)
!2052 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1879, file: !1880, line: 140, baseType: !2054, size: 64, offset: 1280)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1880, line: 25, size: 64, elements: !2056)
!2056 = !{!2057, !2058, !2059}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2055, file: !1880, line: 26, baseType: !338, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2055, file: !1880, line: 27, baseType: !147, size: 32, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2055, file: !1880, line: 28, baseType: !2060, offset: 64)
!2060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, elements: !1870)
!2061 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !1880, line: 142, baseType: !2062, size: 128, offset: 1344)
!2062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1879, file: !1880, line: 142, size: 128, elements: !2063)
!2063 = !{!2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2062, file: !1880, line: 143, baseType: !147, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2062, file: !1880, line: 144, baseType: !938, size: 128, align: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1811, file: !28, line: 1013, baseType: !2067, size: 256, offset: 960)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !28, line: 970, size: 256, elements: !2068)
!2068 = !{!2069, !2070, !2071, !2072, !2073, !2074}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2067, file: !28, line: 971, baseType: !255, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2067, file: !28, line: 972, baseType: !7, size: 32, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2067, file: !28, line: 973, baseType: !7, size: 32, offset: 96)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2067, file: !28, line: 974, baseType: !7, size: 32, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2067, file: !28, line: 975, baseType: !7, size: 32, offset: 160)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2067, file: !28, line: 976, baseType: !624, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1811, file: !28, line: 1014, baseType: !1292, size: 128, offset: 1216)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1811, file: !28, line: 1015, baseType: !463, size: 64, offset: 1344)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1811, file: !28, line: 1016, baseType: !2078, size: 64, offset: 1408)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2080)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !28, line: 1914, size: 2112, elements: !2081)
!2081 = !{!2082, !2083, !2087, !2092, !2096, !2124, !2125, !2131, !2144, !2152, !2156, !2157, !2448, !2449, !2453, !2458, !2459, !2463, !2467, !2473, !2474, !2478, !2479, !2485, !2489, !2493, !2499, !2503, !2507, !2511, !2515, !2516, !2522}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2080, file: !28, line: 1915, baseType: !652, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2080, file: !28, line: 1916, baseType: !2084, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!624, !1810, !624, !147}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2080, file: !28, line: 1917, baseType: !2088, size: 64, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!420, !1810, !388, !276, !2091}
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2080, file: !28, line: 1918, baseType: !2093, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!420, !1810, !306, !276, !2091}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2080, file: !28, line: 1919, baseType: !2097, size: 64, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!420, !2100, !2122}
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !28, line: 373, size: 384, elements: !2102)
!2102 = !{!2103, !2104, !2105, !2109, !2110, !2111, !2112}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2101, file: !28, line: 374, baseType: !1810, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2101, file: !28, line: 375, baseType: !624, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2101, file: !28, line: 376, baseType: !2106, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{null, !2100, !423}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2101, file: !28, line: 377, baseType: !246, size: 64, offset: 192)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2101, file: !28, line: 378, baseType: !147, size: 32, offset: 256)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2101, file: !28, line: 379, baseType: !356, size: 16, offset: 288)
!2112 = !DIDerivedType(tag: DW_TAG_member, scope: !2101, file: !28, line: 380, baseType: !2113, size: 64, offset: 320)
!2113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2101, file: !28, line: 380, size: 64, elements: !2114)
!2114 = !{!2115, !2118}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2113, file: !28, line: 386, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !28, line: 386, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2113, file: !28, line: 395, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!420, !246}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !28, line: 69, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2080, file: !28, line: 1920, baseType: !2097, size: 64, offset: 320)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2080, file: !28, line: 1921, baseType: !2126, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!147, !2100, !2129, !7}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !28, line: 53, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2080, file: !28, line: 1923, baseType: !2132, size: 64, offset: 448)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!147, !1810, !2135}
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !28, line: 1858, size: 128, elements: !2137)
!2137 = !{!2138, !2143}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2136, file: !28, line: 1859, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !28, line: 1855, baseType: !2140)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!260, !2135, !306, !147, !624, !536, !7}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2136, file: !28, line: 1860, baseType: !624, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2080, file: !28, line: 1924, baseType: !2145, size: 64, offset: 512)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!2148, !1810, !2150}
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2149, line: 59, baseType: !7)
!2149 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !28, line: 61, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2080, file: !28, line: 1925, baseType: !2153, size: 64, offset: 576)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!423, !1810, !7, !255}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2080, file: !28, line: 1926, baseType: !2153, size: 64, offset: 640)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2080, file: !28, line: 1927, baseType: !2158, size: 64, offset: 704)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!147, !1810, !2161}
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !52, line: 625, size: 1344, elements: !2163)
!2163 = !{!2164, !2173, !2174, !2182, !2189, !2190, !2195, !2196, !2201, !2202, !2205, !2441, !2442, !2443, !2444, !2445, !2446}
!2164 = !DIDerivedType(tag: DW_TAG_member, scope: !2162, file: !52, line: 628, baseType: !2165, size: 128)
!2165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2162, file: !52, line: 628, size: 128, elements: !2166)
!2166 = !{!2167, !2172}
!2167 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !52, line: 629, baseType: !2168, size: 128)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2165, file: !52, line: 629, size: 128, elements: !2169)
!2169 = !{!2170, !2171}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2168, file: !52, line: 631, baseType: !255, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2168, file: !52, line: 632, baseType: !255, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2165, file: !52, line: 635, baseType: !938, size: 128, align: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2162, file: !52, line: 639, baseType: !1783, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2162, file: !52, line: 640, baseType: !2175, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2176, line: 297, baseType: !2177)
!2176 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2176, line: 297, size: 64, elements: !2178)
!2178 = !{!2179}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2177, file: !2176, line: 297, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2181, line: 19, baseType: !255)
!2181 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2182 = !DIDerivedType(tag: DW_TAG_member, scope: !2162, file: !52, line: 646, baseType: !2183, size: 64, offset: 256)
!2183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2162, file: !52, line: 646, size: 64, elements: !2184)
!2184 = !{!2185, !2188}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2183, file: !52, line: 647, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2187)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !52, line: 542, baseType: !255)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2183, file: !52, line: 648, baseType: !2187, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2162, file: !52, line: 666, baseType: !147, size: 32, offset: 320)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2162, file: !52, line: 667, baseType: !2191, size: 64, offset: 384)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !52, line: 579, size: 320, elements: !2193)
!2193 = !{!2194}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2192, file: !52, line: 580, baseType: !1380, size: 320)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2162, file: !52, line: 670, baseType: !260, size: 8, offset: 448)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2162, file: !52, line: 681, baseType: !2197, size: 256, offset: 512)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2162, file: !52, line: 678, size: 256, elements: !2198)
!2198 = !{!2199, !2200}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2197, file: !52, line: 679, baseType: !830, size: 192, align: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2197, file: !52, line: 680, baseType: !255, size: 64, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2162, file: !52, line: 689, baseType: !291, size: 128, offset: 768)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2162, file: !52, line: 691, baseType: !2203, size: 64, offset: 896)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !52, line: 691, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2162, file: !52, line: 694, baseType: !2206, size: 64, offset: 960)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2208)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2209, line: 563, size: 1024, elements: !2210)
!2209 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2210 = !{!2211, !2215, !2216, !2220, !2224, !2228, !2405, !2409, !2413, !2417, !2418, !2419, !2423, !2427, !2433, !2437}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2208, file: !2209, line: 564, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !2161}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2208, file: !2209, line: 569, baseType: !2212, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2208, file: !2209, line: 571, baseType: !2217, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!147, !2161, !255}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2208, file: !2209, line: 572, baseType: !2221, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!147, !2161}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2208, file: !2209, line: 578, baseType: !2225, size: 64, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!147, !2161, !255, !255, !255}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2208, file: !2209, line: 580, baseType: !2229, size: 64, offset: 320)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !52, line: 1184, baseType: !7)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2209, line: 512, size: 896, elements: !2235)
!2235 = !{!2236, !2244, !2245, !2252, !2259, !2269, !2398, !2399, !2401, !2403}
!2236 = !DIDerivedType(tag: DW_TAG_member, scope: !2234, file: !2209, line: 513, baseType: !2237, size: 320)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2234, file: !2209, line: 513, size: 320, elements: !2238)
!2238 = !{!2239, !2240, !2241, !2242, !2243}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2237, file: !2209, line: 514, baseType: !2161, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2237, file: !2209, line: 515, baseType: !1232, size: 32, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2237, file: !2209, line: 516, baseType: !255, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2237, file: !2209, line: 517, baseType: !255, size: 64, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2237, file: !2209, line: 518, baseType: !255, size: 64, offset: 256)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2234, file: !2209, line: 520, baseType: !51, size: 32, offset: 320)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2234, file: !2209, line: 522, baseType: !2246, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2181, line: 22, baseType: !2248)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2181, line: 22, size: 64, elements: !2249)
!2249 = !{!2250}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2248, file: !2181, line: 22, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2181, line: 15, baseType: !255)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2234, file: !2209, line: 524, baseType: !2253, size: 64, offset: 448)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2176, line: 372, baseType: !2255)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2176, line: 372, size: 64, elements: !2256)
!2256 = !{!2257}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2255, file: !2176, line: 372, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2181, line: 16, baseType: !255)
!2259 = !DIDerivedType(tag: DW_TAG_member, scope: !2234, file: !2209, line: 527, baseType: !2260, size: 64, offset: 512)
!2260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2234, file: !2209, line: 527, size: 64, elements: !2261)
!2261 = !{!2262, !2268}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2260, file: !2209, line: 528, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2181, line: 21, baseType: !2264)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2181, line: 21, size: 64, elements: !2265)
!2265 = !{!2266}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2264, file: !2181, line: 21, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2181, line: 14, baseType: !255)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2260, file: !2209, line: 529, baseType: !2247, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2234, file: !2209, line: 534, baseType: !2270, size: 64, offset: 576)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !52, line: 74, size: 512, align: 128, elements: !2272)
!2272 = !{!2273, !2274, !2392, !2397}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2271, file: !52, line: 75, baseType: !255, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, scope: !2271, file: !52, line: 83, baseType: !2275, size: 320, offset: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2271, file: !52, line: 83, size: 320, elements: !2276)
!2276 = !{!2277, !2298, !2312, !2316, !2391}
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !52, line: 84, baseType: !2278, size: 320)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2275, file: !52, line: 84, size: 320, elements: !2279)
!2279 = !{!2280, !2291, !2292, !2297}
!2280 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !52, line: 90, baseType: !2281, size: 128)
!2281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2278, file: !52, line: 90, size: 128, elements: !2282)
!2282 = !{!2283, !2284, !2289, !2290}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2281, file: !52, line: 91, baseType: !291, size: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !52, line: 94, baseType: !2285, size: 128)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2281, file: !52, line: 94, size: 128, elements: !2286)
!2286 = !{!2287, !2288}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2285, file: !52, line: 96, baseType: !246, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2285, file: !52, line: 98, baseType: !7, size: 32, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2281, file: !52, line: 102, baseType: !291, size: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2281, file: !52, line: 103, baseType: !291, size: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2278, file: !52, line: 106, baseType: !459, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !52, line: 107, baseType: !2293, size: 64, offset: 192)
!2293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2278, file: !52, line: 107, size: 64, elements: !2294)
!2294 = !{!2295, !2296}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2293, file: !52, line: 108, baseType: !255, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2293, file: !52, line: 109, baseType: !255, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2278, file: !52, line: 117, baseType: !255, size: 64, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !52, line: 119, baseType: !2299, size: 320)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2275, file: !52, line: 119, size: 320, elements: !2300)
!2300 = !{!2301, !2302, !2305, !2306, !2307}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2299, file: !52, line: 124, baseType: !255, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2299, file: !52, line: 125, baseType: !2303, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !52, line: 125, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2299, file: !52, line: 126, baseType: !255, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2299, file: !52, line: 127, baseType: !255, size: 64, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, scope: !2299, file: !52, line: 128, baseType: !2308, size: 64, offset: 256)
!2308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2299, file: !52, line: 128, size: 64, elements: !2309)
!2309 = !{!2310, !2311}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2308, file: !52, line: 133, baseType: !255, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2308, file: !52, line: 138, baseType: !727, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !52, line: 141, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2275, file: !52, line: 141, size: 64, elements: !2314)
!2314 = !{!2315}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2313, file: !52, line: 142, baseType: !255, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !52, line: 144, baseType: !2317, size: 128)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2275, file: !52, line: 144, size: 128, elements: !2318)
!2318 = !{!2319, !2390}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2317, file: !52, line: 146, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !68, line: 126, size: 1216, elements: !2322)
!2322 = !{!2323, !2333, !2354, !2355, !2356, !2357, !2358, !2372, !2373, !2374}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2321, file: !68, line: 127, baseType: !2324, size: 384)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !68, line: 21, size: 384, elements: !2325)
!2325 = !{!2326, !2327, !2329, !2330, !2331, !2332}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2324, file: !68, line: 22, baseType: !255, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2324, file: !68, line: 23, baseType: !2328, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2324, file: !68, line: 24, baseType: !2328, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2324, file: !68, line: 25, baseType: !255, size: 64, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2324, file: !68, line: 26, baseType: !255, size: 64, offset: 256)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2324, file: !68, line: 27, baseType: !255, size: 64, offset: 320)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2321, file: !68, line: 128, baseType: !2334, size: 128, offset: 384)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2335, line: 105, size: 128, elements: !2336)
!2335 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2336 = !{!2337, !2338}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2334, file: !2335, line: 110, baseType: !255, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2334, file: !2335, line: 118, baseType: !2339, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2335, line: 95, size: 448, elements: !2341)
!2341 = !{!2342, !2343, !2349, !2350, !2351, !2352, !2353}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2340, file: !2335, line: 96, baseType: !727, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2340, file: !2335, line: 97, baseType: !2344, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2335, line: 60, baseType: !2346)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{null, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2340, file: !2335, line: 98, baseType: !2344, size: 64, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2340, file: !2335, line: 99, baseType: !260, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2340, file: !2335, line: 100, baseType: !260, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2340, file: !2335, line: 101, baseType: !938, size: 128, align: 64, offset: 256)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2340, file: !2335, line: 102, baseType: !2348, size: 64, offset: 384)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2321, file: !68, line: 129, baseType: !672, size: 256, offset: 512)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2321, file: !68, line: 130, baseType: !67, size: 32, offset: 768)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2321, file: !68, line: 131, baseType: !7, size: 32, offset: 800)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2321, file: !68, line: 132, baseType: !255, size: 64, offset: 832)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2321, file: !68, line: 133, baseType: !2359, size: 64, offset: 896)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2361)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !68, line: 77, size: 192, elements: !2362)
!2362 = !{!2363, !2367, !2368}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2361, file: !68, line: 83, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !2270}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2361, file: !68, line: 89, baseType: !2229, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2361, file: !68, line: 100, baseType: !2369, size: 64, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!147, !2320, !255, !255, !147}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2321, file: !68, line: 134, baseType: !246, size: 64, offset: 960)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2321, file: !68, line: 135, baseType: !147, size: 32, offset: 1024)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !2321, file: !68, line: 136, baseType: !2375, size: 128, offset: 1088)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2321, file: !68, line: 136, size: 128, elements: !2376)
!2376 = !{!2377, !2383}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2375, file: !68, line: 137, baseType: !2378, size: 128)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2379, line: 6, size: 128, elements: !2380)
!2379 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2380 = !{!2381, !2382}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2378, file: !2379, line: 7, baseType: !536, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2378, file: !2379, line: 8, baseType: !536, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, scope: !2375, file: !68, line: 138, baseType: !2384)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2375, file: !68, line: 138, elements: !2385)
!2385 = !{!2386, !2388}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2384, file: !68, line: 138, baseType: !2387)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2384, file: !68, line: 138, elements: !1007)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2384, file: !68, line: 138, baseType: !2389)
!2389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2378, elements: !1870)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2317, file: !52, line: 147, baseType: !246, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2275, file: !52, line: 161, baseType: !938, size: 128, align: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, scope: !2271, file: !52, line: 164, baseType: !2393, size: 32, offset: 384)
!2393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2271, file: !52, line: 164, size: 32, elements: !2394)
!2394 = !{!2395, !2396}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2393, file: !52, line: 169, baseType: !338, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2393, file: !52, line: 177, baseType: !7, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2271, file: !52, line: 181, baseType: !338, size: 32, offset: 416)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2234, file: !2209, line: 535, baseType: !2270, size: 64, offset: 640)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2234, file: !2209, line: 541, baseType: !2400, size: 64, offset: 704)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2234, file: !2209, line: 545, baseType: !2402, size: 64, offset: 768)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2234, file: !2209, line: 549, baseType: !2404, size: 64, offset: 832)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2176, line: 520, baseType: !2270)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2208, file: !2209, line: 581, baseType: !2406, size: 64, offset: 384)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!2232, !2233, !7}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2208, file: !2209, line: 582, baseType: !2410, size: 64, offset: 448)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!2232, !2233, !255, !255}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2208, file: !2209, line: 584, baseType: !2414, size: 64, offset: 512)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!255, !2161}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2208, file: !2209, line: 588, baseType: !2229, size: 64, offset: 576)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2208, file: !2209, line: 591, baseType: !2229, size: 64, offset: 640)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2208, file: !2209, line: 597, baseType: !2420, size: 64, offset: 704)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!147, !2161, !255, !246, !147, !147}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2208, file: !2209, line: 603, baseType: !2424, size: 64, offset: 768)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!306, !2161}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2208, file: !2209, line: 613, baseType: !2428, size: 64, offset: 832)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!147, !2161, !2431}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !52, line: 717, flags: DIFlagFwdDecl)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2208, file: !2209, line: 625, baseType: !2434, size: 64, offset: 896)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!2431, !2161, !255}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2208, file: !2209, line: 633, baseType: !2438, size: 64, offset: 960)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!2270, !2161, !255}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2162, file: !52, line: 697, baseType: !255, size: 64, offset: 1024)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2162, file: !52, line: 699, baseType: !1810, size: 64, offset: 1088)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2162, file: !52, line: 700, baseType: !246, size: 64, offset: 1152)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2162, file: !52, line: 711, baseType: !727, size: 64, offset: 1216)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2162, file: !52, line: 717, baseType: !2431, size: 64, offset: 1280)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2162, file: !52, line: 722, baseType: !2447, offset: 1344)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !52, line: 570, elements: !1007)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2080, file: !28, line: 1928, baseType: !255, size: 64, offset: 768)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2080, file: !28, line: 1929, baseType: !2450, size: 64, offset: 832)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!147, !463, !1810}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2080, file: !28, line: 1930, baseType: !2454, size: 64, offset: 896)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!147, !1810, !2457}
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !28, line: 1061, baseType: !246)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2080, file: !28, line: 1931, baseType: !2450, size: 64, offset: 960)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2080, file: !28, line: 1932, baseType: !2460, size: 64, offset: 1024)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!147, !1810, !624, !624, !147}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2080, file: !28, line: 1933, baseType: !2464, size: 64, offset: 1088)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!147, !147, !1810, !147}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2080, file: !28, line: 1934, baseType: !2468, size: 64, offset: 1152)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!147, !1810, !147, !2471}
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !28, line: 1063, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2080, file: !28, line: 1935, baseType: !1807, size: 64, offset: 1216)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2080, file: !28, line: 1936, baseType: !2475, size: 64, offset: 1280)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!147, !147}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2080, file: !28, line: 1937, baseType: !2468, size: 64, offset: 1344)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2080, file: !28, line: 1938, baseType: !2480, size: 64, offset: 1408)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!420, !2483, !1810, !2091, !276, !7}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1162, line: 59, flags: DIFlagFwdDecl)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2080, file: !28, line: 1939, baseType: !2486, size: 64, offset: 1472)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!420, !1810, !2091, !2483, !276, !7}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2080, file: !28, line: 1940, baseType: !2490, size: 64, offset: 1536)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !1810}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2080, file: !28, line: 1941, baseType: !2494, size: 64, offset: 1600)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!147, !1810, !147, !2497, !2498}
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2080, file: !28, line: 1942, baseType: !2500, size: 64, offset: 1664)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!423, !1810, !147, !624, !624}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2080, file: !28, line: 1944, baseType: !2504, size: 64, offset: 1728)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{null, !1160, !1810}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2080, file: !28, line: 1948, baseType: !2508, size: 64, offset: 1792)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!420, !1810, !624, !1810, !624, !276, !7}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2080, file: !28, line: 1950, baseType: !2512, size: 64, offset: 1856)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!624, !1810, !624, !1810, !624, !624, !7}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2080, file: !28, line: 1953, baseType: !2460, size: 64, offset: 1920)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2080, file: !28, line: 1954, baseType: !2517, size: 64, offset: 1984)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!147, !2520, !7}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !28, line: 1911, flags: DIFlagFwdDecl)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2080, file: !28, line: 1955, baseType: !2523, size: 64, offset: 2048)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!147, !2520, !2129, !7}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1811, file: !28, line: 1018, baseType: !536, size: 64, offset: 1472)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1811, file: !28, line: 1020, baseType: !246, size: 64, offset: 1536)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1811, file: !28, line: 1023, baseType: !246, size: 64, offset: 1600)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1811, file: !28, line: 1027, baseType: !2530, size: 64, offset: 1664)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1811, file: !28, line: 1029, baseType: !459, size: 64, offset: 1728)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1811, file: !28, line: 1030, baseType: !2533, size: 32, offset: 1792)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2534, line: 8, baseType: !532)
!2534 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1811, file: !28, line: 1031, baseType: !2533, size: 32, offset: 1824)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1787, file: !52, line: 756, baseType: !255, size: 64, offset: 704)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1787, file: !52, line: 757, baseType: !255, size: 64, offset: 768)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1787, file: !52, line: 760, baseType: !255, size: 64, offset: 832)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1787, file: !52, line: 761, baseType: !255, size: 64, offset: 896)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1787, file: !52, line: 763, baseType: !255, size: 64, offset: 960)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1787, file: !52, line: 764, baseType: !2542, size: 64, offset: 1024)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2176, line: 299, baseType: !2544)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2176, line: 299, size: 64, elements: !2545)
!2545 = !{!2546}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2544, file: !2176, line: 299, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2181, line: 18, baseType: !255)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1787, file: !52, line: 773, baseType: !338, size: 32, offset: 1088)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1787, file: !52, line: 785, baseType: !338, size: 32, offset: 1120)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1787, file: !52, line: 795, baseType: !2551, size: 64, offset: 1152)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !52, line: 726, size: 128, elements: !2553)
!2553 = !{!2554, !2555}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2552, file: !52, line: 727, baseType: !536, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2552, file: !52, line: 728, baseType: !147, size: 32, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1787, file: !52, line: 801, baseType: !255, size: 64, offset: 1216)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1787, file: !52, line: 804, baseType: !727, size: 64, offset: 1280)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1787, file: !52, line: 806, baseType: !147, size: 32, offset: 1344)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1787, file: !52, line: 808, baseType: !318, size: 32, offset: 1376)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1787, file: !52, line: 823, baseType: !1380, size: 320, offset: 1408)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1787, file: !52, line: 825, baseType: !291, size: 128, offset: 1728)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1787, file: !52, line: 845, baseType: !147, size: 32, offset: 1856)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1787, file: !52, line: 849, baseType: !255, size: 64, offset: 1920)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1787, file: !52, line: 850, baseType: !255, size: 64, offset: 1984)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1787, file: !52, line: 852, baseType: !255, size: 64, offset: 2048)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1787, file: !52, line: 853, baseType: !255, size: 64, offset: 2112)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1787, file: !52, line: 854, baseType: !729, size: 64, offset: 2176)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1787, file: !52, line: 855, baseType: !255, size: 64, offset: 2240)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1787, file: !52, line: 856, baseType: !255, size: 64, offset: 2304)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1787, file: !52, line: 857, baseType: !255, size: 64, offset: 2368)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1787, file: !52, line: 858, baseType: !255, size: 64, offset: 2432)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1787, file: !52, line: 865, baseType: !509, size: 32, offset: 2496)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1787, file: !52, line: 867, baseType: !318, size: 32, offset: 2528)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1787, file: !52, line: 869, baseType: !255, size: 64, offset: 2560)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1787, file: !52, line: 869, baseType: !255, size: 64, offset: 2624)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1787, file: !52, line: 869, baseType: !255, size: 64, offset: 2688)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1787, file: !52, line: 869, baseType: !255, size: 64, offset: 2752)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1787, file: !52, line: 870, baseType: !255, size: 64, offset: 2816)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1787, file: !52, line: 870, baseType: !255, size: 64, offset: 2880)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1787, file: !52, line: 870, baseType: !255, size: 64, offset: 2944)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1787, file: !52, line: 871, baseType: !255, size: 64, offset: 3008)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1787, file: !52, line: 871, baseType: !255, size: 64, offset: 3072)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1787, file: !52, line: 871, baseType: !255, size: 64, offset: 3136)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1787, file: !52, line: 871, baseType: !255, size: 64, offset: 3200)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1787, file: !52, line: 873, baseType: !2586, size: 3328, offset: 3264)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 3328, elements: !2587)
!2587 = !{!2588}
!2588 = !DISubrange(count: 52)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1787, file: !52, line: 875, baseType: !2590, size: 1280, offset: 6592)
!2590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2022, size: 1280, elements: !948)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1787, file: !52, line: 877, baseType: !2592, size: 64, offset: 7872)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !52, line: 877, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1787, file: !52, line: 880, baseType: !2595, size: 1088, offset: 7936)
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2596, line: 72, baseType: !2597)
!2596 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2596, line: 23, size: 1088, elements: !2598)
!2598 = !{!2599, !2600, !2601, !2602, !2603, !2606, !2607, !2608, !2609, !2636, !2637, !2638}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2597, file: !2596, line: 28, baseType: !536, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2597, file: !2596, line: 38, baseType: !729, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2597, file: !2596, line: 40, baseType: !255, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2597, file: !2596, line: 43, baseType: !1380, size: 320, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2597, file: !2596, line: 44, baseType: !2604, size: 64, offset: 512)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2596, line: 44, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2597, file: !2596, line: 48, baseType: !255, size: 64, offset: 576)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2597, file: !2596, line: 59, baseType: !723, size: 256, offset: 640)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2597, file: !2596, line: 60, baseType: !246, size: 64, offset: 896)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2597, file: !2596, line: 61, baseType: !2610, size: 64, offset: 960)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2612)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2613, line: 13, size: 1216, elements: !2614)
!2613 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2620, !2621, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2612, file: !2613, line: 14, baseType: !246, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2612, file: !2613, line: 15, baseType: !255, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2612, file: !2613, line: 17, baseType: !255, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2612, file: !2613, line: 17, baseType: !255, size: 64, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2612, file: !2613, line: 18, baseType: !255, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2612, file: !2613, line: 18, baseType: !255, size: 64, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2612, file: !2613, line: 19, baseType: !2622, size: 64, offset: 384)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2612, file: !2613, line: 21, baseType: !423, size: 64, offset: 448)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2612, file: !2613, line: 23, baseType: !423, size: 64, offset: 512)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2612, file: !2613, line: 24, baseType: !423, size: 64, offset: 576)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2612, file: !2613, line: 25, baseType: !423, size: 64, offset: 640)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2612, file: !2613, line: 26, baseType: !423, size: 64, offset: 704)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2612, file: !2613, line: 27, baseType: !423, size: 64, offset: 768)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2612, file: !2613, line: 28, baseType: !423, size: 64, offset: 832)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2612, file: !2613, line: 29, baseType: !423, size: 64, offset: 896)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2612, file: !2613, line: 30, baseType: !423, size: 64, offset: 960)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2612, file: !2613, line: 31, baseType: !423, size: 64, offset: 1024)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2612, file: !2613, line: 32, baseType: !423, size: 64, offset: 1088)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2612, file: !2613, line: 33, baseType: !423, size: 64, offset: 1152)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2597, file: !2596, line: 63, baseType: !338, size: 32, offset: 1024)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2597, file: !2596, line: 69, baseType: !356, size: 16, offset: 1056)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2597, file: !2596, line: 70, baseType: !854, size: 16, offset: 1072)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1787, file: !52, line: 882, baseType: !255, size: 64, offset: 9024)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1787, file: !52, line: 885, baseType: !318, size: 32, offset: 9088)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1787, file: !52, line: 886, baseType: !2642, size: 64, offset: 9152)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !52, line: 732, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1787, file: !52, line: 901, baseType: !2047, size: 64, offset: 9216)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1787, file: !52, line: 904, baseType: !1810, size: 64, offset: 9280)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1787, file: !52, line: 906, baseType: !2647, size: 64, offset: 9344)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !52, line: 906, flags: DIFlagFwdDecl)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1787, file: !52, line: 930, baseType: !338, size: 32, offset: 9408)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1787, file: !52, line: 933, baseType: !338, size: 32, offset: 9440)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1787, file: !52, line: 935, baseType: !2652, size: 64, offset: 9472)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !82, line: 103, size: 64, elements: !2653)
!2653 = !{!2654}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2652, file: !82, line: 104, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !82, line: 101, flags: DIFlagFwdDecl)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1787, file: !52, line: 940, baseType: !727, size: 64, offset: 9536)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1787, file: !52, line: 942, baseType: !978, size: 256, offset: 9600)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1784, file: !52, line: 986, baseType: !2660, offset: 10240)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, elements: !1870)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1487, file: !1162, line: 882, baseType: !1783, size: 64, offset: 9792)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1487, file: !1162, line: 884, baseType: !147, size: 32, offset: 9856)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1487, file: !1162, line: 885, baseType: !147, size: 32, offset: 9888)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1487, file: !1162, line: 886, baseType: !147, size: 32, offset: 9920)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1487, file: !1162, line: 888, baseType: !147, size: 32, offset: 9952)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1487, file: !1162, line: 890, baseType: !255, size: 64, offset: 9984)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1487, file: !1162, line: 893, baseType: !7, size: 32, offset: 10048)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1487, file: !1162, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1487, file: !1162, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1487, file: !1162, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1487, file: !1162, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1487, file: !1162, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1487, file: !1162, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1487, file: !1162, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1487, file: !1162, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1487, file: !1162, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1487, file: !1162, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1487, file: !1162, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1487, file: !1162, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1487, file: !1162, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1487, file: !1162, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1487, file: !1162, line: 969, baseType: !255, size: 64, offset: 10176)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1487, file: !1162, line: 971, baseType: !2684, size: 448, offset: 10240)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !76, line: 25, size: 448, elements: !2685)
!2685 = !{!2686, !2687, !2692}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2684, file: !76, line: 26, baseType: !255, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2684, file: !76, line: 27, baseType: !2688, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!423, !2691}
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, scope: !2684, file: !76, line: 28, baseType: !2693, size: 320, offset: 128)
!2693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2684, file: !76, line: 28, size: 320, elements: !2694)
!2694 = !{!2695, !2705, !2730}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2693, file: !76, line: 37, baseType: !2696, size: 320)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2693, file: !76, line: 30, size: 320, elements: !2697)
!2697 = !{!2698, !2700, !2701, !2702, !2703, !2704}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2696, file: !76, line: 31, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2696, file: !76, line: 32, baseType: !532, size: 32, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2696, file: !76, line: 33, baseType: !532, size: 32, offset: 96)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2696, file: !76, line: 34, baseType: !532, size: 32, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2696, file: !76, line: 35, baseType: !536, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2696, file: !76, line: 36, baseType: !2699, size: 64, offset: 256)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2693, file: !76, line: 47, baseType: !2706, size: 192)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2693, file: !76, line: 39, size: 192, elements: !2707)
!2707 = !{!2708, !2709, !2710, !2729}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2706, file: !76, line: 40, baseType: !1654, size: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2706, file: !76, line: 41, baseType: !75, size: 32, offset: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, scope: !2706, file: !76, line: 42, baseType: !2711, size: 64, offset: 64)
!2711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2706, file: !76, line: 42, size: 64, elements: !2712)
!2712 = !{!2713, !2721}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2711, file: !76, line: 43, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2716, line: 7, size: 128, elements: !2717)
!2716 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2717 = !{!2718, !2720}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2715, file: !2716, line: 8, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !278, line: 93, baseType: !626)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2715, file: !2716, line: 9, baseType: !626, size: 64, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2711, file: !76, line: 44, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2724, line: 7, size: 64, elements: !2725)
!2724 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2725 = !{!2726, !2728}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2723, file: !2724, line: 8, baseType: !2727, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2724, line: 5, baseType: !719)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2723, file: !2724, line: 9, baseType: !719, size: 32, offset: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2706, file: !76, line: 46, baseType: !536, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2693, file: !76, line: 55, baseType: !2731, size: 256)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2693, file: !76, line: 49, size: 256, elements: !2732)
!2732 = !{!2733, !2736, !2737, !2738, !2739}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2731, file: !76, line: 50, baseType: !2734, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !76, line: 14, flags: DIFlagFwdDecl)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2731, file: !76, line: 51, baseType: !147, size: 32, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2731, file: !76, line: 52, baseType: !147, size: 32, offset: 96)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2731, file: !76, line: 53, baseType: !255, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2731, file: !76, line: 54, baseType: !255, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1487, file: !1162, line: 973, baseType: !2741, size: 32, offset: 10688)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !261, line: 27, baseType: !2742)
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !278, line: 28, baseType: !147)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1487, file: !1162, line: 974, baseType: !2741, size: 32, offset: 10720)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1487, file: !1162, line: 978, baseType: !255, size: 64, offset: 10752)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1487, file: !1162, line: 987, baseType: !1486, size: 64, offset: 10816)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1487, file: !1162, line: 990, baseType: !1486, size: 64, offset: 10880)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1487, file: !1162, line: 995, baseType: !291, size: 128, offset: 10944)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1487, file: !1162, line: 996, baseType: !291, size: 128, offset: 11072)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1487, file: !1162, line: 997, baseType: !1486, size: 64, offset: 11200)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1487, file: !1162, line: 1005, baseType: !291, size: 128, offset: 11264)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1487, file: !1162, line: 1006, baseType: !291, size: 128, offset: 11392)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1487, file: !1162, line: 1009, baseType: !1851, size: 64, offset: 11520)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1487, file: !1162, line: 1010, baseType: !2754, size: 512, offset: 11584)
!2754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !964, size: 512, elements: !948)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1487, file: !1162, line: 1011, baseType: !291, size: 128, offset: 12096)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1487, file: !1162, line: 1012, baseType: !291, size: 128, offset: 12224)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1487, file: !1162, line: 1014, baseType: !671, size: 64, offset: 12352)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1487, file: !1162, line: 1017, baseType: !847, size: 64, offset: 12416)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1487, file: !1162, line: 1020, baseType: !847, size: 64, offset: 12480)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1487, file: !1162, line: 1023, baseType: !246, size: 64, offset: 12544)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1487, file: !1162, line: 1025, baseType: !536, size: 64, offset: 12608)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1487, file: !1162, line: 1026, baseType: !536, size: 64, offset: 12672)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1487, file: !1162, line: 1031, baseType: !536, size: 64, offset: 12736)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1487, file: !1162, line: 1032, baseType: !2765, size: 192, offset: 12800)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1162, line: 324, size: 192, elements: !2766)
!2766 = !{!2767, !2768, !2769}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2765, file: !1162, line: 326, baseType: !536, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2765, file: !1162, line: 327, baseType: !536, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2765, file: !1162, line: 328, baseType: !681, size: 32, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1487, file: !1162, line: 1041, baseType: !255, size: 64, offset: 12992)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1487, file: !1162, line: 1042, baseType: !255, size: 64, offset: 13056)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1487, file: !1162, line: 1045, baseType: !536, size: 64, offset: 13120)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1487, file: !1162, line: 1048, baseType: !536, size: 64, offset: 13184)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1487, file: !1162, line: 1051, baseType: !255, size: 64, offset: 13248)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1487, file: !1162, line: 1052, baseType: !255, size: 64, offset: 13312)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1487, file: !1162, line: 1055, baseType: !2777, size: 640, offset: 13376)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2778, line: 132, size: 640, elements: !2779)
!2778 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2779 = !{!2780, !2786, !2787}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2777, file: !2778, line: 133, baseType: !2781, size: 576)
!2781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2782, size: 576, elements: !389)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2778, line: 117, size: 192, elements: !2783)
!2783 = !{!2784, !2785}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2782, file: !2778, line: 118, baseType: !536, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2782, file: !2778, line: 119, baseType: !1663, size: 128, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2777, file: !2778, line: 134, baseType: !7, size: 32, offset: 576)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2777, file: !2778, line: 135, baseType: !7, size: 32, offset: 608)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1487, file: !1162, line: 1058, baseType: !2789, size: 448, offset: 14016)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2778, line: 144, size: 448, elements: !2790)
!2790 = !{!2791, !2792, !2793}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2789, file: !2778, line: 145, baseType: !938, size: 128, align: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2789, file: !2778, line: 146, baseType: !723, size: 256, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2789, file: !2778, line: 147, baseType: !7, size: 32, offset: 384)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1487, file: !1162, line: 1064, baseType: !1877, size: 64, offset: 14464)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1487, file: !1162, line: 1067, baseType: !1877, size: 64, offset: 14528)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1487, file: !1162, line: 1070, baseType: !1877, size: 64, offset: 14592)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1487, file: !1162, line: 1074, baseType: !1904, size: 64, offset: 14656)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1487, file: !1162, line: 1084, baseType: !2799, size: 128, offset: 14720)
!2799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 128, elements: !2800)
!2800 = !{!2801}
!2801 = !DISubrange(count: 16)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1487, file: !1162, line: 1086, baseType: !2803, size: 64, offset: 14848)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1162, line: 55, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1487, file: !1162, line: 1089, baseType: !2806, size: 64, offset: 14912)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2807, line: 12, size: 64, elements: !2808)
!2807 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2808 = !{!2809}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2806, file: !2807, line: 13, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2807, line: 8, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1487, file: !1162, line: 1090, baseType: !2813, size: 128, offset: 14976)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2814, line: 13, size: 128, elements: !2815)
!2814 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2815 = !{!2816}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2813, file: !2814, line: 14, baseType: !291, size: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1487, file: !1162, line: 1097, baseType: !2818, size: 64, offset: 15104)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1162, line: 50, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1487, file: !1162, line: 1100, baseType: !2821, size: 64, offset: 15168)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1162, line: 1100, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1487, file: !1162, line: 1103, baseType: !2824, size: 64, offset: 15232)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1162, line: 53, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1487, file: !1162, line: 1107, baseType: !2827, size: 64, offset: 15296)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1162, line: 56, flags: DIFlagFwdDecl)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1487, file: !1162, line: 1110, baseType: !2830, size: 64, offset: 15360)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2832, line: 93, size: 8768, elements: !2833)
!2832 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2833 = !{!2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2881, !2890, !2891, !2893, !2894, !2895, !2898, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2936, !2937, !2944, !2954, !2957, !2958, !2961, !2962, !2963, !2964, !2965, !2966}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2831, file: !2832, line: 94, baseType: !1500, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2831, file: !2832, line: 95, baseType: !338, size: 32, offset: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2831, file: !2832, line: 96, baseType: !147, size: 32, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2831, file: !2832, line: 97, baseType: !147, size: 32, offset: 96)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2831, file: !2832, line: 98, baseType: !291, size: 128, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2831, file: !2832, line: 100, baseType: !1473, size: 192, offset: 256)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2831, file: !2832, line: 103, baseType: !1486, size: 64, offset: 448)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2831, file: !2832, line: 106, baseType: !2842, size: 192, offset: 512)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2052, line: 32, size: 192, elements: !2843)
!2843 = !{!2844, !2845}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2842, file: !2052, line: 33, baseType: !291, size: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2842, file: !2052, line: 34, baseType: !2846, size: 64, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2847, line: 25, baseType: !2848)
!2847 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2847, line: 23, size: 64, elements: !2849)
!2849 = !{!2850}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2848, file: !2847, line: 24, baseType: !1734, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2831, file: !2832, line: 109, baseType: !1088, size: 64, offset: 704)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2831, file: !2832, line: 112, baseType: !147, size: 32, offset: 768)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2831, file: !2832, line: 114, baseType: !147, size: 32, offset: 800)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2831, file: !2832, line: 115, baseType: !1486, size: 64, offset: 832)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2831, file: !2832, line: 118, baseType: !147, size: 32, offset: 896)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2831, file: !2832, line: 119, baseType: !7, size: 32, offset: 928)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2831, file: !2832, line: 121, baseType: !2858, size: 64, offset: 960)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2832, line: 80, size: 448, elements: !2860)
!2860 = !{!2861, !2862, !2868}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2859, file: !2832, line: 81, baseType: !338, size: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2859, file: !2832, line: 82, baseType: !2863, size: 128, offset: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2832, line: 75, size: 128, elements: !2864)
!2864 = !{!2865, !2866}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2863, file: !2832, line: 76, baseType: !1486, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2863, file: !2832, line: 77, baseType: !2867, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2859, file: !2832, line: 83, baseType: !672, size: 256, offset: 192)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2831, file: !2832, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2831, file: !2832, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2831, file: !2832, line: 138, baseType: !7, size: 32, offset: 1056)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2831, file: !2832, line: 139, baseType: !291, size: 128, offset: 1088)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2831, file: !2832, line: 142, baseType: !1607, size: 512, offset: 1216)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2831, file: !2832, line: 143, baseType: !1615, size: 64, offset: 1728)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2831, file: !2832, line: 150, baseType: !2876, size: 256, offset: 1792)
!2876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2877, size: 256, elements: !837)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2832, line: 38, size: 128, elements: !2878)
!2878 = !{!2879, !2880}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2877, file: !2832, line: 39, baseType: !536, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2877, file: !2832, line: 40, baseType: !536, size: 64, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2831, file: !2832, line: 156, baseType: !2882, size: 192, offset: 2048)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2832, line: 66, size: 192, elements: !2883)
!2883 = !{!2884}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2882, file: !2832, line: 67, baseType: !2885, size: 192)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2832, line: 47, size: 192, elements: !2886)
!2886 = !{!2887, !2888, !2889}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2885, file: !2832, line: 48, baseType: !729, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2885, file: !2832, line: 49, baseType: !729, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2885, file: !2832, line: 50, baseType: !729, size: 64, offset: 128)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2831, file: !2832, line: 160, baseType: !2777, size: 640, offset: 2240)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2831, file: !2832, line: 163, baseType: !2892, size: 256, offset: 2880)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1851, size: 256, elements: !948)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2831, file: !2832, line: 169, baseType: !1851, size: 64, offset: 3136)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2831, file: !2832, line: 172, baseType: !147, size: 32, offset: 3200)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2831, file: !2832, line: 174, baseType: !2896, size: 64, offset: 3264)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2832, line: 174, flags: DIFlagFwdDecl)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2831, file: !2832, line: 185, baseType: !2899, size: 64, offset: 3328)
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !505, line: 860, baseType: !2900)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 853, size: 64, elements: !2901)
!2901 = !{!2902, !2903}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2900, file: !505, line: 858, baseType: !504, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2900, file: !505, line: 859, baseType: !318, size: 32, offset: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2831, file: !2832, line: 186, baseType: !536, size: 64, offset: 3392)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2831, file: !2832, line: 186, baseType: !536, size: 64, offset: 3456)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2831, file: !2832, line: 186, baseType: !536, size: 64, offset: 3520)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2831, file: !2832, line: 186, baseType: !536, size: 64, offset: 3584)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2831, file: !2832, line: 187, baseType: !536, size: 64, offset: 3648)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2831, file: !2832, line: 188, baseType: !536, size: 64, offset: 3712)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2831, file: !2832, line: 189, baseType: !2765, size: 192, offset: 3776)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2831, file: !2832, line: 190, baseType: !255, size: 64, offset: 3968)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2831, file: !2832, line: 190, baseType: !255, size: 64, offset: 4032)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2831, file: !2832, line: 190, baseType: !255, size: 64, offset: 4096)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2831, file: !2832, line: 190, baseType: !255, size: 64, offset: 4160)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2831, file: !2832, line: 191, baseType: !255, size: 64, offset: 4224)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2831, file: !2832, line: 191, baseType: !255, size: 64, offset: 4288)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2831, file: !2832, line: 191, baseType: !255, size: 64, offset: 4352)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2831, file: !2832, line: 191, baseType: !255, size: 64, offset: 4416)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2831, file: !2832, line: 192, baseType: !255, size: 64, offset: 4480)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2831, file: !2832, line: 192, baseType: !255, size: 64, offset: 4544)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2831, file: !2832, line: 192, baseType: !255, size: 64, offset: 4608)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2831, file: !2832, line: 192, baseType: !255, size: 64, offset: 4672)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2831, file: !2832, line: 193, baseType: !255, size: 64, offset: 4736)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2831, file: !2832, line: 193, baseType: !255, size: 64, offset: 4800)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2831, file: !2832, line: 194, baseType: !2926, size: 448, offset: 4864)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2927, line: 12, size: 448, elements: !2928)
!2927 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2928 = !{!2929, !2930, !2931, !2932, !2933, !2934, !2935}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2926, file: !2927, line: 15, baseType: !536, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2926, file: !2927, line: 17, baseType: !536, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2926, file: !2927, line: 19, baseType: !536, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2926, file: !2927, line: 21, baseType: !536, size: 64, offset: 192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2926, file: !2927, line: 29, baseType: !536, size: 64, offset: 256)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2926, file: !2927, line: 35, baseType: !536, size: 64, offset: 320)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2926, file: !2927, line: 44, baseType: !536, size: 64, offset: 384)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2831, file: !2832, line: 202, baseType: !538, size: 64, offset: 5312)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2831, file: !2832, line: 213, baseType: !2938, size: 2048, offset: 5376)
!2938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2939, size: 2048, elements: !2800)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2940, line: 43, size: 128, elements: !2941)
!2940 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2939, file: !2940, line: 44, baseType: !279, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2939, file: !2940, line: 45, baseType: !279, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2831, file: !2832, line: 216, baseType: !2945, size: 448, offset: 7424)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2832, line: 30, size: 448, elements: !2946)
!2946 = !{!2947, !2948, !2949, !2950, !2951, !2952, !2953}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2945, file: !2832, line: 31, baseType: !147, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2945, file: !2832, line: 32, baseType: !423, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2945, file: !2832, line: 33, baseType: !255, size: 64, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2945, file: !2832, line: 34, baseType: !536, size: 64, offset: 192)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2945, file: !2832, line: 34, baseType: !536, size: 64, offset: 256)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2945, file: !2832, line: 35, baseType: !255, size: 64, offset: 320)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2945, file: !2832, line: 35, baseType: !255, size: 64, offset: 384)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2831, file: !2832, line: 219, baseType: !2955, size: 64, offset: 7872)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2832, line: 219, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2831, file: !2832, line: 222, baseType: !7, size: 32, offset: 7936)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2831, file: !2832, line: 223, baseType: !2959, size: 64, offset: 8000)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2832, line: 223, flags: DIFlagFwdDecl)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2831, file: !2832, line: 230, baseType: !260, size: 8, offset: 8064)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2831, file: !2832, line: 231, baseType: !856, size: 16, offset: 8080)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2831, file: !2832, line: 232, baseType: !856, size: 16, offset: 8096)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2831, file: !2832, line: 234, baseType: !1783, size: 64, offset: 8128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2831, file: !2832, line: 237, baseType: !723, size: 256, offset: 8192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2831, file: !2832, line: 243, baseType: !1380, size: 320, offset: 8448)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1487, file: !1162, line: 1111, baseType: !2968, size: 64, offset: 15424)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2832, line: 20, size: 16640, elements: !2970)
!2970 = !{!2971, !2972, !2973, !2974}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2969, file: !2832, line: 21, baseType: !318, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2969, file: !2832, line: 22, baseType: !1500, size: 32, offset: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2969, file: !2832, line: 23, baseType: !1473, size: 192, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2969, file: !2832, line: 24, baseType: !2975, size: 16384, offset: 256)
!2975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2976, size: 16384, elements: !393)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2052, line: 51, size: 256, elements: !2977)
!2977 = !{!2978}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2976, file: !2052, line: 52, baseType: !2979, size: 256)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2052, line: 37, size: 256, elements: !2980)
!2980 = !{!2981, !2988, !2989, !2993}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2979, file: !2052, line: 39, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2983, line: 83, baseType: !2984)
!2983 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2983, line: 82, baseType: !2986)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{null, !147}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2979, file: !2052, line: 40, baseType: !255, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2979, file: !2052, line: 46, baseType: !2990, size: 64, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2983, line: 86, baseType: !2991)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2983, line: 85, baseType: !1083)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2979, file: !2052, line: 48, baseType: !2846, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1487, file: !1162, line: 1112, baseType: !2846, size: 64, offset: 15488)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1487, file: !1162, line: 1113, baseType: !2846, size: 64, offset: 15552)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1487, file: !1162, line: 1115, baseType: !2846, size: 64, offset: 15616)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1487, file: !1162, line: 1116, baseType: !2842, size: 192, offset: 15680)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1487, file: !1162, line: 1117, baseType: !255, size: 64, offset: 15872)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1487, file: !1162, line: 1118, baseType: !276, size: 64, offset: 15936)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1487, file: !1162, line: 1119, baseType: !7, size: 32, offset: 16000)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1487, file: !1162, line: 1121, baseType: !937, size: 64, offset: 16064)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1487, file: !1162, line: 1125, baseType: !3003, size: 64, offset: 16128)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1162, line: 43, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1487, file: !1162, line: 1127, baseType: !469, size: 32, offset: 16192)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1487, file: !1162, line: 1128, baseType: !7, size: 32, offset: 16224)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1487, file: !1162, line: 1130, baseType: !3008, size: 128, offset: 16256)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3009, line: 37, size: 128, elements: !3010)
!3009 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3010 = !{!3011, !3012, !3013}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3008, file: !3009, line: 38, baseType: !147, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3008, file: !3009, line: 39, baseType: !338, size: 32, offset: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3008, file: !3009, line: 40, baseType: !3014, size: 64, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3009, line: 24, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1487, file: !1162, line: 1131, baseType: !3017, size: 256, offset: 16384)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3018, line: 12, size: 256, elements: !3019)
!3018 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3019 = !{!3020, !3021, !3022, !3023}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3017, file: !3018, line: 13, baseType: !388, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3017, file: !3018, line: 14, baseType: !255, size: 64, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3017, file: !3018, line: 15, baseType: !255, size: 64, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3017, file: !3018, line: 16, baseType: !260, size: 8, offset: 192)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1487, file: !1162, line: 1134, baseType: !536, size: 64, offset: 16640)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1487, file: !1162, line: 1135, baseType: !536, size: 64, offset: 16704)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1487, file: !1162, line: 1138, baseType: !318, size: 32, offset: 16768)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1487, file: !1162, line: 1141, baseType: !681, size: 32, offset: 16800)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1487, file: !1162, line: 1143, baseType: !3029, size: 64, offset: 16832)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1162, line: 735, size: 64, elements: !3030)
!3030 = !{!3031}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3029, file: !1162, line: 736, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1487, file: !1162, line: 1147, baseType: !1666, size: 128, offset: 16896)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1487, file: !1162, line: 1149, baseType: !1486, size: 64, offset: 17024)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1487, file: !1162, line: 1151, baseType: !3036, size: 64, offset: 17088)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1162, line: 1151, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1487, file: !1162, line: 1188, baseType: !246, size: 64, offset: 17152)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1487, file: !1162, line: 1191, baseType: !3040, size: 64, offset: 17216)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1162, line: 44, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1487, file: !1162, line: 1194, baseType: !3043, size: 64, offset: 17280)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1162, line: 45, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1487, file: !1162, line: 1197, baseType: !3046, size: 64, offset: 17344)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1162, line: 61, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1487, file: !1162, line: 1199, baseType: !3049, size: 64, offset: 17408)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3051, line: 99, size: 128, elements: !3052)
!3051 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3052 = !{!3053, !3054, !3055}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3050, file: !3051, line: 100, baseType: !727, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3050, file: !3051, line: 101, baseType: !338, size: 32, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3050, file: !3051, line: 103, baseType: !358, size: 16, offset: 96)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1487, file: !1162, line: 1202, baseType: !3057, size: 64, offset: 17472)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1162, line: 48, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1487, file: !1162, line: 1205, baseType: !255, size: 64, offset: 17536)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1487, file: !1162, line: 1206, baseType: !3061, size: 64, offset: 17600)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2052, line: 14, baseType: !3063)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2052, line: 12, size: 384, elements: !3064)
!3064 = !{!3065}
!3065 = !DIDerivedType(tag: DW_TAG_member, scope: !3063, file: !2052, line: 13, baseType: !3066, size: 384)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3063, file: !2052, line: 13, size: 384, elements: !3067)
!3067 = !{!3068, !3069, !3070, !3071}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3066, file: !2052, line: 13, baseType: !147, size: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3066, file: !2052, line: 13, baseType: !147, size: 32, offset: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3066, file: !2052, line: 13, baseType: !147, size: 32, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3066, file: !2052, line: 13, baseType: !3072, size: 256, offset: 128)
!3072 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3073, line: 37, size: 256, elements: !3074)
!3073 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3074 = !{!3075, !3080, !3093, !3099, !3108, !3135, !3140}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3072, file: !3073, line: 42, baseType: !3076, size: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3073, line: 39, size: 64, elements: !3077)
!3077 = !{!3078, !3079}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3076, file: !3073, line: 40, baseType: !2742, size: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3076, file: !3073, line: 41, baseType: !475, size: 32, offset: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3072, file: !3073, line: 50, baseType: !3081, size: 192)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3073, line: 45, size: 192, elements: !3082)
!3082 = !{!3083, !3085, !3086, !3092}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3081, file: !3073, line: 46, baseType: !3084, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !278, line: 95, baseType: !147)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3081, file: !3073, line: 47, baseType: !147, size: 32, offset: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3081, file: !3073, line: 48, baseType: !3087, size: 64, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3073, line: 11, baseType: !3088)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3073, line: 8, size: 64, elements: !3089)
!3089 = !{!3090, !3091}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3088, file: !3073, line: 9, baseType: !147, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3088, file: !3073, line: 10, baseType: !246, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3081, file: !3073, line: 49, baseType: !147, size: 32, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3072, file: !3073, line: 57, baseType: !3094, size: 128)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3073, line: 53, size: 128, elements: !3095)
!3095 = !{!3096, !3097, !3098}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3094, file: !3073, line: 54, baseType: !2742, size: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3094, file: !3073, line: 55, baseType: !475, size: 32, offset: 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3094, file: !3073, line: 56, baseType: !3087, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3072, file: !3073, line: 66, baseType: !3100, size: 256)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3073, line: 60, size: 256, elements: !3101)
!3101 = !{!3102, !3103, !3104, !3105, !3107}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3100, file: !3073, line: 61, baseType: !2742, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3100, file: !3073, line: 62, baseType: !475, size: 32, offset: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3100, file: !3073, line: 63, baseType: !147, size: 32, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3100, file: !3073, line: 64, baseType: !3106, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !278, line: 94, baseType: !422)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3100, file: !3073, line: 65, baseType: !3106, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3072, file: !3073, line: 105, baseType: !3109, size: 256)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3073, line: 69, size: 256, elements: !3110)
!3110 = !{!3111, !3112}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3109, file: !3073, line: 70, baseType: !246, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, scope: !3109, file: !3073, line: 79, baseType: !3113, size: 192, offset: 64)
!3113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3109, file: !3073, line: 79, size: 192, elements: !3114)
!3114 = !{!3115, !3116, !3117, !3124, !3129}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3113, file: !3073, line: 81, baseType: !147, size: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3113, file: !3073, line: 86, baseType: !856, size: 16)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3113, file: !3073, line: 92, baseType: !3118, size: 192)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3113, file: !3073, line: 88, size: 192, elements: !3119)
!3119 = !{!3120, !3122, !3123}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3118, file: !3073, line: 89, baseType: !3121, size: 64)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 64, elements: !1650)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3118, file: !3073, line: 90, baseType: !246, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3118, file: !3073, line: 91, baseType: !246, size: 64, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3113, file: !3073, line: 97, baseType: !3125, size: 96)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3113, file: !3073, line: 94, size: 96, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3125, file: !3073, line: 95, baseType: !3121, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3125, file: !3073, line: 96, baseType: !533, size: 32, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3113, file: !3073, line: 103, baseType: !3130, size: 128)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3113, file: !3073, line: 99, size: 128, elements: !3131)
!3131 = !{!3132, !3133, !3134}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3130, file: !3073, line: 100, baseType: !255, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3130, file: !3073, line: 101, baseType: !533, size: 32, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3130, file: !3073, line: 102, baseType: !533, size: 32, offset: 96)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3072, file: !3073, line: 111, baseType: !3136, size: 128)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3073, line: 108, size: 128, elements: !3137)
!3137 = !{!3138, !3139}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3136, file: !3073, line: 109, baseType: !423, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3136, file: !3073, line: 110, baseType: !147, size: 32, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3072, file: !3073, line: 118, baseType: !3141, size: 128)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3073, line: 114, size: 128, elements: !3142)
!3142 = !{!3143, !3144, !3145}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3141, file: !3073, line: 115, baseType: !246, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3141, file: !3073, line: 116, baseType: !147, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3141, file: !3073, line: 117, baseType: !7, size: 32, offset: 96)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1487, file: !1162, line: 1208, baseType: !2926, size: 448, offset: 17664)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1487, file: !1162, line: 1215, baseType: !536, size: 64, offset: 18112)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1487, file: !1162, line: 1217, baseType: !536, size: 64, offset: 18176)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1487, file: !1162, line: 1219, baseType: !536, size: 64, offset: 18240)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1487, file: !1162, line: 1223, baseType: !3151, size: 64, offset: 18304)
!3151 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !230, line: 99, baseType: !3152)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 99, size: 64, elements: !3153)
!3153 = !{!3154}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3152, file: !230, line: 99, baseType: !1734, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1487, file: !1162, line: 1225, baseType: !504, size: 32, offset: 18368)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1487, file: !1162, line: 1226, baseType: !147, size: 32, offset: 18400)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1487, file: !1162, line: 1227, baseType: !147, size: 32, offset: 18432)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1487, file: !1162, line: 1231, baseType: !3159, size: 64, offset: 18496)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1162, line: 1231, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1487, file: !1162, line: 1233, baseType: !291, size: 128, offset: 18560)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1487, file: !1162, line: 1240, baseType: !3163, size: 64, offset: 18688)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1162, line: 62, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1487, file: !1162, line: 1242, baseType: !3166, size: 64, offset: 18752)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1162, line: 1242, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1487, file: !1162, line: 1244, baseType: !291, size: 128, offset: 18816)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1487, file: !1162, line: 1245, baseType: !3170, size: 64, offset: 18944)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1162, line: 51, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1487, file: !1162, line: 1246, baseType: !723, size: 256, offset: 19008)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1487, file: !1162, line: 1247, baseType: !7, size: 32, offset: 19264)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1487, file: !1162, line: 1250, baseType: !3175, size: 64, offset: 19328)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1162, line: 57, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1487, file: !1162, line: 1251, baseType: !723, size: 256, offset: 19392)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1487, file: !1162, line: 1252, baseType: !291, size: 128, offset: 19648)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1487, file: !1162, line: 1259, baseType: !2431, size: 64, offset: 19776)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1487, file: !1162, line: 1260, baseType: !856, size: 16, offset: 19840)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1487, file: !1162, line: 1261, baseType: !856, size: 16, offset: 19856)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1487, file: !1162, line: 1314, baseType: !3183, size: 64, offset: 19904)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3185, line: 62, size: 256, align: 256, elements: !3186)
!3185 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3186 = !{!3187, !3188, !3189, !3190, !3191, !3192, !3193}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3184, file: !3185, line: 75, baseType: !533, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3184, file: !3185, line: 90, baseType: !533, size: 32, offset: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3184, file: !3185, line: 112, baseType: !537, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3184, file: !3185, line: 132, baseType: !533, size: 32, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3184, file: !3185, line: 140, baseType: !533, size: 32, offset: 160)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3184, file: !3185, line: 149, baseType: !533, size: 32, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3184, file: !3185, line: 154, baseType: !3194, offset: 224)
!3194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, elements: !1870)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1487, file: !1162, line: 1315, baseType: !532, size: 32, offset: 19968)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1487, file: !1162, line: 1316, baseType: !532, size: 32, offset: 20000)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1487, file: !1162, line: 1321, baseType: !255, size: 64, offset: 20032)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1487, file: !1162, line: 1325, baseType: !147, size: 32, offset: 20096)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1487, file: !1162, line: 1326, baseType: !147, size: 32, offset: 20128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1487, file: !1162, line: 1327, baseType: !147, size: 32, offset: 20160)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1487, file: !1162, line: 1328, baseType: !147, size: 32, offset: 20192)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1487, file: !1162, line: 1329, baseType: !938, size: 128, align: 64, offset: 20224)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1487, file: !1162, line: 1332, baseType: !3204, size: 128, offset: 20352)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3205, line: 51, size: 128, elements: !3206)
!3205 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3206 = !{!3207, !3212, !3213}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3204, file: !3205, line: 60, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3209, line: 7, size: 64, elements: !3210)
!3209 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3210 = !{!3211}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3208, file: !3209, line: 12, baseType: !1731, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3204, file: !3205, line: 63, baseType: !260, size: 8, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3204, file: !3205, line: 70, baseType: !260, size: 8, offset: 72)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1487, file: !1162, line: 1335, baseType: !2483, size: 64, offset: 20480)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1487, file: !1162, line: 1337, baseType: !3216, size: 128, offset: 20544)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3205, line: 39, size: 128, elements: !3217)
!3217 = !{!3218, !3219, !3220}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3216, file: !3205, line: 40, baseType: !2270, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3216, file: !3205, line: 42, baseType: !533, size: 32, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3216, file: !3205, line: 43, baseType: !533, size: 32, offset: 96)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1487, file: !1162, line: 1340, baseType: !3222, size: 64, offset: 20672)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1162, line: 69, flags: DIFlagFwdDecl)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1487, file: !1162, line: 1351, baseType: !147, size: 32, offset: 20736)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1487, file: !1162, line: 1352, baseType: !147, size: 32, offset: 20768)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1487, file: !1162, line: 1354, baseType: !255, size: 64, offset: 20800)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1487, file: !1162, line: 1364, baseType: !536, size: 64, offset: 20864)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1487, file: !1162, line: 1365, baseType: !536, size: 64, offset: 20928)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1487, file: !1162, line: 1412, baseType: !255, size: 64, offset: 20992)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1487, file: !1162, line: 1453, baseType: !3231, size: 64, offset: 21056)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1162, line: 1453, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1487, file: !1162, line: 1457, baseType: !3234, size: 64, offset: 21120)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !82, line: 61, size: 576, elements: !3236)
!3236 = !{!3237, !3238, !3257, !3260, !3261, !3294, !3304}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3235, file: !82, line: 62, baseType: !81, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, scope: !3235, file: !82, line: 64, baseType: !3239, size: 192, offset: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3235, file: !82, line: 64, size: 192, elements: !3240)
!3240 = !{!3241, !3252}
!3241 = !DIDerivedType(tag: DW_TAG_member, scope: !3239, file: !82, line: 65, baseType: !3242, size: 192)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3239, file: !82, line: 65, size: 192, elements: !3243)
!3243 = !{!3244, !3251}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3242, file: !82, line: 66, baseType: !3245, size: 128)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3246, line: 50, size: 128, elements: !3247)
!3246 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3247 = !{!3248, !3249, !3250}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3245, file: !3246, line: 52, baseType: !255, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3245, file: !3246, line: 54, baseType: !7, size: 32, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3245, file: !3246, line: 55, baseType: !7, size: 32, offset: 96)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3242, file: !82, line: 67, baseType: !255, size: 64, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_member, scope: !3239, file: !82, line: 70, baseType: !3253, size: 192)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3239, file: !82, line: 70, size: 192, elements: !3254)
!3254 = !{!3255, !3256}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3253, file: !82, line: 71, baseType: !938, size: 128, align: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3253, file: !82, line: 72, baseType: !255, size: 64, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3235, file: !82, line: 76, baseType: !3258, size: 64, offset: 256)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !82, line: 76, flags: DIFlagFwdDecl)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3235, file: !82, line: 77, baseType: !255, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3235, file: !82, line: 79, baseType: !3262, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3246, line: 25, size: 256, elements: !3264)
!3264 = !{!3265, !3271, !3275}
!3265 = !DIDerivedType(tag: DW_TAG_member, scope: !3263, file: !3246, line: 26, baseType: !3266, size: 128)
!3266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3263, file: !3246, line: 26, size: 128, elements: !3267)
!3267 = !{!3268, !3270}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3266, file: !3246, line: 27, baseType: !3269, size: 128)
!3269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 128, elements: !2800)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3266, file: !3246, line: 28, baseType: !3269, size: 128)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3263, file: !3246, line: 31, baseType: !3272, size: 64, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3274)
!3274 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3246, line: 23, flags: DIFlagFwdDecl)
!3275 = !DIDerivedType(tag: DW_TAG_member, scope: !3263, file: !3246, line: 33, baseType: !3276, size: 64, offset: 192)
!3276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3263, file: !3246, line: 33, size: 64, elements: !3277)
!3277 = !{!3278, !3284, !3289}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3276, file: !3246, line: 38, baseType: !3279, size: 64)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3276, file: !3246, line: 34, size: 64, elements: !3280)
!3280 = !{!3281, !3282, !3283}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3279, file: !3246, line: 35, baseType: !719, size: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3279, file: !3246, line: 36, baseType: !346, size: 8, offset: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3279, file: !3246, line: 37, baseType: !346, size: 8, offset: 40)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3276, file: !3246, line: 42, baseType: !3285, size: 16)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3276, file: !3246, line: 39, size: 16, elements: !3286)
!3286 = !{!3287, !3288}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3285, file: !3246, line: 40, baseType: !346, size: 8)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3285, file: !3246, line: 41, baseType: !346, size: 8, offset: 8)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3276, file: !3246, line: 46, baseType: !3290, size: 16)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3276, file: !3246, line: 43, size: 16, elements: !3291)
!3291 = !{!3292, !3293}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3290, file: !3246, line: 44, baseType: !346, size: 8)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3290, file: !3246, line: 45, baseType: !346, size: 8, offset: 8)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3235, file: !82, line: 81, baseType: !3295, size: 64, offset: 448)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !82, line: 85, size: 384, elements: !3297)
!3297 = !{!3298, !3299, !3300, !3301, !3302, !3303}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3296, file: !82, line: 86, baseType: !3258, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3296, file: !82, line: 87, baseType: !255, size: 64, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3296, file: !82, line: 88, baseType: !255, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3296, file: !82, line: 89, baseType: !255, size: 64, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3296, file: !82, line: 90, baseType: !260, size: 8, offset: 256)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3296, file: !82, line: 92, baseType: !3295, size: 64, offset: 320)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3235, file: !82, line: 82, baseType: !7, size: 32, offset: 512)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1487, file: !1162, line: 1463, baseType: !3306, offset: 21184)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1162, line: 739, elements: !1007)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1487, file: !1162, line: 1470, baseType: !938, size: 128, align: 64, offset: 21184)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1487, file: !1162, line: 1471, baseType: !1500, size: 32, offset: 21312)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1487, file: !1162, line: 1472, baseType: !147, size: 32, offset: 21344)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1487, file: !1162, line: 1474, baseType: !1486, size: 64, offset: 21376)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1487, file: !1162, line: 1475, baseType: !960, size: 320, offset: 21440)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1487, file: !1162, line: 1478, baseType: !3313, size: 64, offset: 21760)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3315, line: 49, size: 512, elements: !3316)
!3315 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3323, !3324, !3325, !3327}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3314, file: !3315, line: 50, baseType: !3313, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3314, file: !3315, line: 51, baseType: !246, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3314, file: !3315, line: 52, baseType: !255, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3314, file: !3315, line: 53, baseType: !255, size: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3314, file: !3315, line: 54, baseType: !3322, size: 64, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3314, file: !3315, line: 56, baseType: !7, size: 32, offset: 320)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3314, file: !3315, line: 58, baseType: !7, size: 32, offset: 352)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3314, file: !3315, line: 59, baseType: !3326, size: 64, offset: 384)
!3326 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !261, line: 159, baseType: !536)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3314, file: !3315, line: 60, baseType: !2622, size: 64, offset: 448)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1487, file: !1162, line: 1482, baseType: !1500, size: 32, offset: 21824)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1487, file: !1162, line: 1489, baseType: !246, size: 64, offset: 21888)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1487, file: !1162, line: 1504, baseType: !246, size: 64, offset: 21952)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1487, file: !1162, line: 1505, baseType: !537, size: 64, offset: 22016)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1487, file: !1162, line: 1506, baseType: !536, size: 64, offset: 22080)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1487, file: !1162, line: 1507, baseType: !537, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1487, file: !1162, line: 1508, baseType: !537, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1487, file: !1162, line: 1509, baseType: !537, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1487, file: !1162, line: 1510, baseType: !938, size: 128, align: 64, offset: 22208)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1487, file: !1162, line: 1511, baseType: !147, size: 32, offset: 22336)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1487, file: !1162, line: 1515, baseType: !3339, size: 64, offset: 22400)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1514, line: 56, size: 64, elements: !3340)
!3340 = !{!3341}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3339, file: !1514, line: 57, baseType: !1517, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1487, file: !1162, line: 1518, baseType: !3339, size: 64, offset: 22464)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1487, file: !1162, line: 1528, baseType: !938, size: 128, align: 64, offset: 22528)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1487, file: !1162, line: 1552, baseType: !3345, size: 35328, offset: 23040)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3346, line: 430, size: 35328, elements: !3347)
!3346 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3347 = !{!3348, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3377, !3378, !3379, !3380, !3381, !3382, !3385, !3386, !3387, !3388}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3345, file: !3346, line: 432, baseType: !3349, size: 192)
!3349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3350, size: 192, elements: !389)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3351, line: 16, size: 64, elements: !3352)
!3351 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3352 = !{!3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3350, file: !3351, line: 17, baseType: !356, size: 16)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3350, file: !3351, line: 18, baseType: !356, size: 16, offset: 16)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3350, file: !3351, line: 19, baseType: !356, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3350, file: !3351, line: 19, baseType: !356, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3350, file: !3351, line: 19, baseType: !356, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3350, file: !3351, line: 19, baseType: !356, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3350, file: !3351, line: 19, baseType: !356, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3350, file: !3351, line: 20, baseType: !356, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3350, file: !3351, line: 20, baseType: !356, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3350, file: !3351, line: 20, baseType: !356, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3350, file: !3351, line: 20, baseType: !356, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3350, file: !3351, line: 20, baseType: !356, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3350, file: !3351, line: 20, baseType: !356, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3345, file: !3346, line: 436, baseType: !255, size: 64, offset: 192)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3345, file: !3346, line: 440, baseType: !358, size: 16, offset: 256)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3345, file: !3346, line: 441, baseType: !358, size: 16, offset: 272)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3345, file: !3346, line: 442, baseType: !358, size: 16, offset: 288)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3345, file: !3346, line: 443, baseType: !358, size: 16, offset: 304)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3345, file: !3346, line: 447, baseType: !255, size: 64, offset: 320)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3345, file: !3346, line: 448, baseType: !255, size: 64, offset: 384)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3345, file: !3346, line: 459, baseType: !3374, size: 256, offset: 448)
!3374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3375, size: 256, elements: !948)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3346, line: 428, flags: DIFlagFwdDecl)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3345, file: !3346, line: 461, baseType: !255, size: 64, offset: 704)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3345, file: !3346, line: 463, baseType: !255, size: 64, offset: 768)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3345, file: !3346, line: 465, baseType: !255, size: 64, offset: 832)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3345, file: !3346, line: 466, baseType: !255, size: 64, offset: 896)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3345, file: !3346, line: 467, baseType: !255, size: 64, offset: 960)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3345, file: !3346, line: 473, baseType: !3383, size: 64, offset: 1024)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3346, line: 10, flags: DIFlagFwdDecl)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3345, file: !3346, line: 480, baseType: !255, size: 64, offset: 1088)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3345, file: !3346, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3345, file: !3346, line: 491, baseType: !532, size: 32, offset: 1184)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3345, file: !3346, line: 501, baseType: !3389, size: 33792, offset: 1536)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3390, line: 448, size: 33792, elements: !3391)
!3390 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3391 = !{!3392, !3393, !3394, !3556, !3557, !3563, !3564}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3389, file: !3390, line: 461, baseType: !7, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3389, file: !3390, line: 468, baseType: !255, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3389, file: !3390, line: 476, baseType: !3395, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3390, line: 356, size: 33280, align: 512, elements: !3397)
!3397 = !{!3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3396, file: !3390, line: 358, baseType: !7, size: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3396, file: !3390, line: 361, baseType: !7, size: 32, offset: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3396, file: !3390, line: 364, baseType: !536, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3396, file: !3390, line: 367, baseType: !536, size: 64, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3396, file: !3390, line: 370, baseType: !536, size: 64, offset: 192)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3396, file: !3390, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3396, file: !3390, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3396, file: !3390, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3396, file: !3390, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3396, file: !3390, line: 397, baseType: !3408, size: 32768, offset: 512)
!3408 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3390, line: 348, size: 32768, elements: !3409)
!3409 = !{!3410, !3425, !3462, !3539, !3552}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3408, file: !3390, line: 349, baseType: !3411, size: 896)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3390, line: 12, size: 896, elements: !3412)
!3412 = !{!3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3424}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3411, file: !3390, line: 13, baseType: !532, size: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3411, file: !3390, line: 14, baseType: !532, size: 32, offset: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3411, file: !3390, line: 15, baseType: !532, size: 32, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3411, file: !3390, line: 16, baseType: !532, size: 32, offset: 96)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3411, file: !3390, line: 17, baseType: !532, size: 32, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3411, file: !3390, line: 18, baseType: !532, size: 32, offset: 160)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3411, file: !3390, line: 19, baseType: !532, size: 32, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3411, file: !3390, line: 22, baseType: !3421, size: 640, offset: 224)
!3421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 640, elements: !3422)
!3422 = !{!3423}
!3423 = !DISubrange(count: 20)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3411, file: !3390, line: 25, baseType: !532, size: 32, offset: 864)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3408, file: !3390, line: 350, baseType: !3426, size: 4096, align: 128)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3390, line: 34, size: 4096, align: 128, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3447, !3448, !3449, !3451, !3453, !3457}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3426, file: !3390, line: 35, baseType: !356, size: 16)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3426, file: !3390, line: 36, baseType: !356, size: 16, offset: 16)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3426, file: !3390, line: 37, baseType: !356, size: 16, offset: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3426, file: !3390, line: 38, baseType: !356, size: 16, offset: 48)
!3432 = !DIDerivedType(tag: DW_TAG_member, scope: !3426, file: !3390, line: 39, baseType: !3433, size: 128, offset: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3426, file: !3390, line: 39, size: 128, elements: !3434)
!3434 = !{!3435, !3440}
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !3433, file: !3390, line: 40, baseType: !3436, size: 128)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3433, file: !3390, line: 40, size: 128, elements: !3437)
!3437 = !{!3438, !3439}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3436, file: !3390, line: 41, baseType: !536, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3436, file: !3390, line: 42, baseType: !536, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, scope: !3433, file: !3390, line: 44, baseType: !3441, size: 128)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3433, file: !3390, line: 44, size: 128, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3446}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3441, file: !3390, line: 45, baseType: !532, size: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3441, file: !3390, line: 46, baseType: !532, size: 32, offset: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3441, file: !3390, line: 47, baseType: !532, size: 32, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3441, file: !3390, line: 48, baseType: !532, size: 32, offset: 96)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3426, file: !3390, line: 51, baseType: !532, size: 32, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3426, file: !3390, line: 52, baseType: !532, size: 32, offset: 224)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3426, file: !3390, line: 55, baseType: !3450, size: 1024, offset: 256)
!3450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 1024, elements: !545)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3426, file: !3390, line: 58, baseType: !3452, size: 2048, offset: 1280)
!3452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 2048, elements: !393)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3426, file: !3390, line: 60, baseType: !3454, size: 384, offset: 3328)
!3454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 384, elements: !3455)
!3455 = !{!3456}
!3456 = !DISubrange(count: 12)
!3457 = !DIDerivedType(tag: DW_TAG_member, scope: !3426, file: !3390, line: 62, baseType: !3458, size: 384, offset: 3712)
!3458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3426, file: !3390, line: 62, size: 384, elements: !3459)
!3459 = !{!3460, !3461}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3458, file: !3390, line: 63, baseType: !3454, size: 384)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3458, file: !3390, line: 64, baseType: !3454, size: 384)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3408, file: !3390, line: 351, baseType: !3463, size: 1088)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3390, line: 79, size: 1088, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3538}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3463, file: !3390, line: 80, baseType: !532, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3463, file: !3390, line: 81, baseType: !532, size: 32, offset: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3463, file: !3390, line: 82, baseType: !532, size: 32, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3463, file: !3390, line: 83, baseType: !532, size: 32, offset: 96)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3463, file: !3390, line: 84, baseType: !532, size: 32, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3463, file: !3390, line: 85, baseType: !532, size: 32, offset: 160)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3463, file: !3390, line: 86, baseType: !532, size: 32, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3463, file: !3390, line: 88, baseType: !3421, size: 640, offset: 224)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3463, file: !3390, line: 89, baseType: !346, size: 8, offset: 864)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3463, file: !3390, line: 90, baseType: !346, size: 8, offset: 872)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3463, file: !3390, line: 91, baseType: !346, size: 8, offset: 880)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3463, file: !3390, line: 92, baseType: !346, size: 8, offset: 888)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3463, file: !3390, line: 93, baseType: !346, size: 8, offset: 896)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3463, file: !3390, line: 94, baseType: !346, size: 8, offset: 904)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3463, file: !3390, line: 95, baseType: !3480, size: 64, offset: 960)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3482, line: 11, size: 128, elements: !3483)
!3482 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3483 = !{!3484, !3485}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3481, file: !3482, line: 12, baseType: !423, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3481, file: !3482, line: 13, baseType: !3486, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3488, line: 103, size: 1344, elements: !3489)
!3488 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3518, !3519, !3520}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3487, file: !3488, line: 109, baseType: !255, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3487, file: !3488, line: 110, baseType: !255, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3487, file: !3488, line: 111, baseType: !255, size: 64, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3487, file: !3488, line: 112, baseType: !255, size: 64, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3487, file: !3488, line: 113, baseType: !255, size: 64, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3487, file: !3488, line: 114, baseType: !255, size: 64, offset: 320)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3487, file: !3488, line: 117, baseType: !255, size: 64, offset: 384)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3487, file: !3488, line: 118, baseType: !255, size: 64, offset: 448)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3487, file: !3488, line: 119, baseType: !255, size: 64, offset: 512)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3487, file: !3488, line: 120, baseType: !255, size: 64, offset: 576)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3487, file: !3488, line: 121, baseType: !255, size: 64, offset: 640)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3487, file: !3488, line: 122, baseType: !255, size: 64, offset: 704)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3487, file: !3488, line: 123, baseType: !255, size: 64, offset: 768)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3487, file: !3488, line: 124, baseType: !255, size: 64, offset: 832)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3487, file: !3488, line: 125, baseType: !255, size: 64, offset: 896)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3487, file: !3488, line: 139, baseType: !255, size: 64, offset: 960)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3487, file: !3488, line: 142, baseType: !255, size: 64, offset: 1024)
!3507 = !DIDerivedType(tag: DW_TAG_member, scope: !3487, file: !3488, line: 144, baseType: !3508, size: 64, offset: 1088)
!3508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3487, file: !3488, line: 144, size: 64, elements: !3509)
!3509 = !{!3510, !3511, !3512}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3508, file: !3488, line: 146, baseType: !356, size: 16)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3508, file: !3488, line: 148, baseType: !536, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3508, file: !3488, line: 150, baseType: !3513, size: 64)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3488, line: 59, size: 64, elements: !3514)
!3514 = !{!3515, !3516, !3517}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3513, file: !3488, line: 61, baseType: !536, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3513, file: !3488, line: 63, baseType: !536, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3513, file: !3488, line: 65, baseType: !536, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3487, file: !3488, line: 153, baseType: !255, size: 64, offset: 1152)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3487, file: !3488, line: 154, baseType: !255, size: 64, offset: 1216)
!3520 = !DIDerivedType(tag: DW_TAG_member, scope: !3487, file: !3488, line: 156, baseType: !3521, size: 64, offset: 1280)
!3521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3487, file: !3488, line: 156, size: 64, elements: !3522)
!3522 = !{!3523, !3524, !3525}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3521, file: !3488, line: 158, baseType: !356, size: 16)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3521, file: !3488, line: 160, baseType: !536, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3521, file: !3488, line: 162, baseType: !3526, size: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3488, line: 69, size: 64, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3526, file: !3488, line: 71, baseType: !536, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3526, file: !3488, line: 73, baseType: !536, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3526, file: !3488, line: 75, baseType: !536, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3526, file: !3488, line: 77, baseType: !536, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3526, file: !3488, line: 80, baseType: !536, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3526, file: !3488, line: 83, baseType: !536, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3526, file: !3488, line: 86, baseType: !536, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3526, file: !3488, line: 88, baseType: !536, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3526, file: !3488, line: 93, baseType: !536, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3526, file: !3488, line: 100, baseType: !536, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3463, file: !3390, line: 96, baseType: !532, size: 32, offset: 1024)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3408, file: !3390, line: 352, baseType: !3540, size: 4608, align: 512)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3390, line: 333, size: 4608, align: 512, elements: !3541)
!3541 = !{!3542, !3543, !3550}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3540, file: !3390, line: 334, baseType: !3426, size: 4096, align: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3540, file: !3390, line: 335, baseType: !3544, size: 512, offset: 4096)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3390, line: 312, size: 512, elements: !3545)
!3545 = !{!3546, !3547, !3548}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3544, file: !3390, line: 313, baseType: !536, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3544, file: !3390, line: 314, baseType: !536, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3544, file: !3390, line: 315, baseType: !3549, size: 384, offset: 128)
!3549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 384, elements: !1953)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3540, file: !3390, line: 336, baseType: !3551, offset: 4608)
!3551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, elements: !1870)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3408, file: !3390, line: 353, baseType: !3553, size: 32768)
!3553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 32768, elements: !3554)
!3554 = !{!3555}
!3555 = !DISubrange(count: 4096)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3389, file: !3390, line: 484, baseType: !3395, size: 64, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3389, file: !3390, line: 491, baseType: !3558, size: 128, offset: 256)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3390, line: 404, size: 128, elements: !3559)
!3559 = !{!3560, !3561, !3562}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3558, file: !3390, line: 424, baseType: !536, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3558, file: !3390, line: 432, baseType: !7, size: 32, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3558, file: !3390, line: 440, baseType: !7, size: 32, offset: 96)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3389, file: !3390, line: 498, baseType: !3558, size: 128, offset: 384)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3389, file: !3390, line: 508, baseType: !3396, size: 33280, align: 512, offset: 512)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1463, file: !1464, line: 16, baseType: !1473, size: 192, offset: 512)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1463, file: !1464, line: 17, baseType: !338, size: 32, offset: 704)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !615, file: !28, line: 1240, baseType: !246, size: 64, offset: 6912)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !615, file: !28, line: 1243, baseType: !532, size: 32, offset: 6976)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !615, file: !28, line: 1245, baseType: !1220, size: 64, offset: 7040)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !615, file: !28, line: 1246, baseType: !1220, size: 64, offset: 7104)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !615, file: !28, line: 1248, baseType: !533, size: 32, offset: 7168)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !615, file: !28, line: 1249, baseType: !3573, size: 64, offset: 7232)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !28, line: 634, flags: DIFlagFwdDecl)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !615, file: !28, line: 1252, baseType: !3576, size: 256, offset: 7296)
!3576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 256, elements: !545)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !615, file: !28, line: 1253, baseType: !3578, size: 128, offset: 7552)
!3578 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3579, line: 21, baseType: !3580)
!3579 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3579, line: 19, size: 128, elements: !3581)
!3581 = !{!3582}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3580, file: !3579, line: 20, baseType: !3583, size: 128)
!3583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 128, elements: !2800)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !615, file: !28, line: 1255, baseType: !7, size: 32, offset: 7680)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !615, file: !28, line: 1261, baseType: !723, size: 256, offset: 7744)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !615, file: !28, line: 1267, baseType: !306, size: 64, offset: 8000)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !615, file: !28, line: 1269, baseType: !561, size: 64, offset: 8064)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !615, file: !28, line: 1271, baseType: !3589, size: 448, offset: 8128)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1229, line: 63, size: 448, elements: !3590)
!3590 = !{!3591, !3596, !3597, !3598, !3599, !3600, !3601}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3589, file: !1229, line: 64, baseType: !3592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!255, !3595, !1227}
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3589, file: !1229, line: 66, baseType: !3592, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3589, file: !1229, line: 69, baseType: !423, size: 64, offset: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3589, file: !1229, line: 70, baseType: !147, size: 32, offset: 192)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3589, file: !1229, line: 71, baseType: !7, size: 32, offset: 224)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3589, file: !1229, line: 74, baseType: !291, size: 128, offset: 256)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3589, file: !1229, line: 85, baseType: !3602, size: 64, offset: 384)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !615, file: !28, line: 1274, baseType: !727, size: 64, offset: 8576)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !615, file: !28, line: 1280, baseType: !727, size: 64, offset: 8640)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !615, file: !28, line: 1283, baseType: !147, size: 32, offset: 8704)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !615, file: !28, line: 1286, baseType: !2533, size: 32, offset: 8736)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !615, file: !28, line: 1289, baseType: !1040, size: 64, offset: 8768)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !615, file: !28, line: 1290, baseType: !1088, size: 64, offset: 8832)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !615, file: !28, line: 1297, baseType: !2047, size: 64, offset: 8896)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !615, file: !28, line: 1304, baseType: !3611, size: 64, offset: 8960)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3612, line: 49, size: 64, elements: !3613)
!3612 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3613 = !{!3614}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3611, file: !3612, line: 50, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3612, line: 41, size: 512, align: 512, elements: !3617)
!3617 = !{!3618, !3619, !3624}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3616, file: !3612, line: 43, baseType: !318, size: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3616, file: !3612, line: 45, baseType: !3620, size: 192, offset: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3612, line: 29, size: 192, elements: !3621)
!3621 = !{!3622, !3623}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3620, file: !3612, line: 30, baseType: !291, size: 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3620, file: !3612, line: 32, baseType: !423, size: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3616, file: !3612, line: 46, baseType: !423, size: 64, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !615, file: !28, line: 1305, baseType: !3611, size: 64, offset: 9024)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !615, file: !28, line: 1306, baseType: !938, size: 128, align: 64, offset: 9088)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !615, file: !28, line: 1307, baseType: !978, size: 256, offset: 9216)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !615, file: !28, line: 1309, baseType: !723, size: 256, offset: 9472)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !615, file: !28, line: 1314, baseType: !147, size: 32, offset: 9728)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !615, file: !28, line: 1317, baseType: !318, size: 32, align: 512, offset: 10240)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !615, file: !28, line: 1318, baseType: !291, size: 128, offset: 10304)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !615, file: !28, line: 1320, baseType: !318, size: 32, offset: 10432)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !615, file: !28, line: 1321, baseType: !291, size: 128, offset: 10496)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !609, file: !610, line: 73, baseType: !147, size: 32, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !609, file: !610, line: 74, baseType: !3636, size: 64, offset: 192)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1894, line: 42, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !563, file: !500, line: 141, baseType: !3640, size: 64, offset: 704)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!147, !1290, !260}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !563, file: !500, line: 142, baseType: !3644, size: 64, offset: 768)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!498, !498, !3647}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !499, file: !500, line: 96, baseType: !614, size: 64, offset: 832)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !499, file: !500, line: 97, baseType: !255, size: 64, offset: 896)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !499, file: !500, line: 98, baseType: !246, size: 64, offset: 960)
!3652 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !500, line: 100, baseType: !3653, size: 128, offset: 1024)
!3653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !500, line: 100, size: 128, elements: !3654)
!3654 = !{!3655, !3656}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3653, file: !500, line: 101, baseType: !291, size: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3653, file: !500, line: 102, baseType: !3657, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !499, file: !500, line: 104, baseType: !291, size: 128, offset: 1152)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !499, file: !500, line: 105, baseType: !291, size: 128, offset: 1280)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !499, file: !500, line: 113, baseType: !3661, size: 128, offset: 1408)
!3661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !500, line: 109, size: 128, elements: !3662)
!3662 = !{!3663, !3664, !3665}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3661, file: !500, line: 110, baseType: !964, size: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3661, file: !500, line: 111, baseType: !514, size: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3661, file: !500, line: 112, baseType: !938, size: 128, align: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !492, file: !28, line: 1968, baseType: !3667, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!306, !498, !463, !3670}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3672, line: 10, size: 128, elements: !3673)
!3672 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3673 = !{!3674, !3675}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3671, file: !3672, line: 11, baseType: !269, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3671, file: !3672, line: 12, baseType: !246, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !492, file: !28, line: 1969, baseType: !3677, size: 64, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!147, !3636, !463, !147}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !492, file: !28, line: 1970, baseType: !3681, size: 64, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!486, !463, !147, !260}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !492, file: !28, line: 1972, baseType: !3685, size: 64, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!147, !498, !388, !147}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !492, file: !28, line: 1974, baseType: !3689, size: 64, offset: 320)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!147, !3636, !463, !498, !429, !260}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !492, file: !28, line: 1976, baseType: !3693, size: 64, offset: 384)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!147, !498, !463, !498}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !492, file: !28, line: 1977, baseType: !3697, size: 64, offset: 448)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!147, !463, !498}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !492, file: !28, line: 1978, baseType: !3701, size: 64, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!147, !3636, !463, !498, !306}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !492, file: !28, line: 1980, baseType: !3705, size: 64, offset: 576)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!147, !3636, !463, !498, !429}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !492, file: !28, line: 1982, baseType: !3697, size: 64, offset: 640)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !492, file: !28, line: 1983, baseType: !3710, size: 64, offset: 704)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!147, !3636, !463, !498, !429, !619}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !492, file: !28, line: 1985, baseType: !3714, size: 64, offset: 768)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!147, !3636, !463, !498, !463, !498, !7}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !492, file: !28, line: 1987, baseType: !3718, size: 64, offset: 832)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!147, !3636, !498, !3721}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !28, line: 226, size: 640, elements: !3723)
!3723 = !{!3724, !3725, !3726, !3736, !3745, !3746, !3751, !3752, !3753}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3722, file: !28, line: 227, baseType: !7, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3722, file: !28, line: 228, baseType: !429, size: 16, offset: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, scope: !3722, file: !28, line: 241, baseType: !3727, size: 32, offset: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3722, file: !28, line: 241, size: 32, elements: !3728)
!3728 = !{!3729, !3730}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3727, file: !28, line: 242, baseType: !469, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3727, file: !28, line: 243, baseType: !3731, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3732, line: 16, baseType: !3733)
!3732 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3732, line: 14, size: 32, elements: !3734)
!3734 = !{!3735}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3733, file: !3732, line: 15, baseType: !474, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, scope: !3722, file: !28, line: 245, baseType: !3737, size: 32, offset: 96)
!3737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3722, file: !28, line: 245, size: 32, elements: !3738)
!3738 = !{!3739, !3740}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3737, file: !28, line: 246, baseType: !478, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3737, file: !28, line: 247, baseType: !3741, size: 32)
!3741 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3732, line: 20, baseType: !3742)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3732, line: 18, size: 32, elements: !3743)
!3743 = !{!3744}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3742, file: !3732, line: 19, baseType: !482, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3722, file: !28, line: 249, baseType: !624, size: 64, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3722, file: !28, line: 250, baseType: !3747, size: 128, offset: 192)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1221, line: 13, size: 128, elements: !3748)
!3748 = !{!3749, !3750}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3747, file: !1221, line: 14, baseType: !1220, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3747, file: !1221, line: 15, baseType: !423, size: 64, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3722, file: !28, line: 251, baseType: !3747, size: 128, offset: 320)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3722, file: !28, line: 252, baseType: !3747, size: 128, offset: 448)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3722, file: !28, line: 259, baseType: !1810, size: 64, offset: 576)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !492, file: !28, line: 1988, baseType: !3755, size: 64, offset: 896)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!147, !3636, !1290, !3758, !532, !7}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3760, line: 22, size: 1280, elements: !3761)
!3760 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3759, file: !3760, line: 23, baseType: !532, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3759, file: !3760, line: 24, baseType: !429, size: 16, offset: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3759, file: !3760, line: 25, baseType: !7, size: 32, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3759, file: !3760, line: 26, baseType: !1932, size: 32, offset: 96)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3759, file: !3760, line: 27, baseType: !536, size: 64, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3759, file: !3760, line: 28, baseType: !536, size: 64, offset: 192)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3759, file: !3760, line: 41, baseType: !536, size: 64, offset: 256)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3759, file: !3760, line: 42, baseType: !619, size: 32, offset: 320)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3759, file: !3760, line: 43, baseType: !619, size: 32, offset: 352)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3759, file: !3760, line: 44, baseType: !469, size: 32, offset: 384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3759, file: !3760, line: 45, baseType: !478, size: 32, offset: 416)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3759, file: !3760, line: 46, baseType: !624, size: 64, offset: 448)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3759, file: !3760, line: 47, baseType: !3747, size: 128, offset: 512)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3759, file: !3760, line: 48, baseType: !3747, size: 128, offset: 640)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3759, file: !3760, line: 49, baseType: !3747, size: 128, offset: 768)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3759, file: !3760, line: 50, baseType: !3747, size: 128, offset: 896)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3759, file: !3760, line: 51, baseType: !536, size: 64, offset: 1024)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3759, file: !3760, line: 52, baseType: !536, size: 64, offset: 1088)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3759, file: !3760, line: 53, baseType: !532, size: 32, offset: 1152)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3759, file: !3760, line: 54, baseType: !532, size: 32, offset: 1184)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3759, file: !3760, line: 55, baseType: !536, size: 64, offset: 1216)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !492, file: !28, line: 1990, baseType: !3784, size: 64, offset: 960)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!420, !498, !388, !276}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !492, file: !28, line: 1991, baseType: !3788, size: 64, offset: 1024)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!147, !463, !3791, !536, !536}
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !28, line: 55, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !492, file: !28, line: 1993, baseType: !3794, size: 64, offset: 1088)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!147, !463, !147}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !492, file: !28, line: 1994, baseType: !3798, size: 64, offset: 1152)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!147, !463, !498, !1810, !7, !429}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !492, file: !28, line: 1997, baseType: !3802, size: 64, offset: 1216)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!147, !3636, !463, !1810, !429}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !492, file: !28, line: 1999, baseType: !3806, size: 64, offset: 1280)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!486, !3636, !498, !147}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !492, file: !28, line: 2001, baseType: !3810, size: 64, offset: 1344)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!147, !3636, !498, !486, !147}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !492, file: !28, line: 2003, baseType: !3814, size: 64, offset: 1408)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!147, !3636, !498, !3817}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !28, line: 76, flags: DIFlagFwdDecl)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !492, file: !28, line: 2005, baseType: !3820, size: 64, offset: 1472)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!147, !498, !3817}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !492, file: !28, line: 2006, baseType: !3824, size: 64, offset: 1536)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!3827, !463}
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !28, line: 3192, size: 192, elements: !3829)
!3829 = !{!3830, !3837}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3828, file: !28, line: 3193, baseType: !3831, size: 128)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3832, line: 296, size: 128, elements: !3833)
!3832 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3833 = !{!3834, !3835, !3836}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3831, file: !3832, line: 297, baseType: !318, size: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3831, file: !3832, line: 299, baseType: !1232, size: 32, offset: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3831, file: !3832, line: 300, baseType: !246, size: 64, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3828, file: !28, line: 3194, baseType: !532, size: 32, offset: 128)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !464, file: !28, line: 655, baseType: !614, size: 64, offset: 448)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !464, file: !28, line: 656, baseType: !459, size: 64, offset: 512)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !464, file: !28, line: 659, baseType: !246, size: 64, offset: 576)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !464, file: !28, line: 663, baseType: !255, size: 64, offset: 640)
!3842 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !28, line: 671, baseType: !3843, size: 32, offset: 704)
!3843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !28, line: 671, size: 32, elements: !3844)
!3844 = !{!3845, !3847}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3843, file: !28, line: 672, baseType: !3846, size: 32)
!3846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3843, file: !28, line: 673, baseType: !7, size: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !464, file: !28, line: 675, baseType: !619, size: 32, offset: 736)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !464, file: !28, line: 676, baseType: !624, size: 64, offset: 768)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !464, file: !28, line: 677, baseType: !3747, size: 128, offset: 832)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !464, file: !28, line: 678, baseType: !3747, size: 128, offset: 960)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !464, file: !28, line: 679, baseType: !3747, size: 128, offset: 1088)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !464, file: !28, line: 680, baseType: !318, size: 32, offset: 1216)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !464, file: !28, line: 681, baseType: !358, size: 16, offset: 1248)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !464, file: !28, line: 682, baseType: !346, size: 8, offset: 1264)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !464, file: !28, line: 683, baseType: !346, size: 8, offset: 1272)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !464, file: !28, line: 684, baseType: !1368, size: 64, offset: 1280)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !464, file: !28, line: 691, baseType: !255, size: 64, offset: 1344)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !464, file: !28, line: 692, baseType: !1380, size: 320, offset: 1408)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !464, file: !28, line: 694, baseType: !255, size: 64, offset: 1728)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !464, file: !28, line: 695, baseType: !255, size: 64, offset: 1792)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !464, file: !28, line: 697, baseType: !964, size: 128, offset: 1856)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !464, file: !28, line: 698, baseType: !291, size: 128, offset: 1984)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !464, file: !28, line: 707, baseType: !291, size: 128, offset: 2112)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !464, file: !28, line: 708, baseType: !291, size: 128, offset: 2240)
!3866 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !28, line: 709, baseType: !3867, size: 128, offset: 2368)
!3867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !28, line: 709, size: 128, elements: !3868)
!3868 = !{!3869, !3870}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3867, file: !28, line: 710, baseType: !1088, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3867, file: !28, line: 711, baseType: !938, size: 128, align: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !464, file: !28, line: 713, baseType: !729, size: 64, offset: 2496)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !464, file: !28, line: 714, baseType: !729, size: 64, offset: 2560)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !464, file: !28, line: 715, baseType: !338, size: 32, offset: 2624)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !464, file: !28, line: 716, baseType: !338, size: 32, offset: 2656)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !464, file: !28, line: 717, baseType: !338, size: 32, offset: 2688)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !464, file: !28, line: 719, baseType: !338, size: 32, offset: 2720)
!3877 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !28, line: 721, baseType: !3878, size: 64, offset: 2752)
!3878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !28, line: 721, size: 64, elements: !3879)
!3879 = !{!3880, !3881}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3878, file: !28, line: 722, baseType: !2078, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3878, file: !28, line: 723, baseType: !1111, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !464, file: !28, line: 725, baseType: !3883, size: 64, offset: 2816)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !28, line: 725, flags: DIFlagFwdDecl)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !464, file: !28, line: 726, baseType: !460, size: 1536, align: 64, offset: 2880)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !464, file: !28, line: 727, baseType: !291, size: 128, offset: 4416)
!3887 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !28, line: 728, baseType: !3888, size: 64, offset: 4544)
!3888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !28, line: 728, size: 64, elements: !3889)
!3889 = !{!3890, !3891, !3894, !3895}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3888, file: !28, line: 729, baseType: !2483, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3888, file: !28, line: 730, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !28, line: 730, flags: DIFlagFwdDecl)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3888, file: !28, line: 731, baseType: !388, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3888, file: !28, line: 732, baseType: !7, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !464, file: !28, line: 735, baseType: !533, size: 32, offset: 4608)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !464, file: !28, line: 738, baseType: !533, size: 32, offset: 4640)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !464, file: !28, line: 739, baseType: !3573, size: 64, offset: 4672)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !464, file: !28, line: 750, baseType: !246, size: 64, offset: 4736)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !460, file: !28, line: 474, baseType: !3831, size: 128, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !460, file: !28, line: 475, baseType: !1380, size: 320, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !460, file: !28, line: 476, baseType: !1232, size: 32, offset: 512)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !460, file: !28, line: 477, baseType: !338, size: 32, offset: 544)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !460, file: !28, line: 482, baseType: !1666, size: 128, offset: 576)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !460, file: !28, line: 483, baseType: !255, size: 64, offset: 704)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !460, file: !28, line: 484, baseType: !255, size: 64, offset: 768)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !460, file: !28, line: 485, baseType: !3908, size: 64, offset: 832)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3910)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !28, line: 404, size: 1280, elements: !3911)
!3911 = !{!3912, !3916, !3986, !3990, !3994, !4000, !4004, !4008, !4013, !4017, !4021, !4025, !4026, !4030, !4034, !4038, !4043, !4047, !4054, !4055}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3910, file: !28, line: 405, baseType: !3913, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!147, !2270, !1123}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3910, file: !28, line: 406, baseType: !3917, size: 64, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!147, !1810, !3920}
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !52, line: 293, size: 1536, elements: !3922)
!3922 = !{!3923, !3953, !3967}
!3923 = !DIDerivedType(tag: DW_TAG_member, scope: !3921, file: !52, line: 295, baseType: !3924, size: 512)
!3924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3921, file: !52, line: 295, size: 512, elements: !3925)
!3925 = !{!3926, !3952}
!3926 = !DIDerivedType(tag: DW_TAG_member, scope: !3924, file: !52, line: 296, baseType: !3927, size: 448)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3924, file: !52, line: 296, size: 448, elements: !3928)
!3928 = !{!3929, !3930, !3939, !3940, !3941, !3950, !3951}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3927, file: !52, line: 298, baseType: !255, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, scope: !3927, file: !52, line: 299, baseType: !3931, size: 128, offset: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3927, file: !52, line: 299, size: 128, elements: !3932)
!3932 = !{!3933, !3934}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3931, file: !52, line: 300, baseType: !291, size: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, scope: !3931, file: !52, line: 302, baseType: !3935, size: 128)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3931, file: !52, line: 302, size: 128, elements: !3936)
!3936 = !{!3937, !3938}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3935, file: !52, line: 303, baseType: !246, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3935, file: !52, line: 305, baseType: !7, size: 32, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3927, file: !52, line: 310, baseType: !459, size: 64, offset: 192)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3927, file: !52, line: 311, baseType: !255, size: 64, offset: 256)
!3941 = !DIDerivedType(tag: DW_TAG_member, scope: !3927, file: !52, line: 312, baseType: !3942, size: 64, offset: 320)
!3942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3927, file: !52, line: 312, size: 64, elements: !3943)
!3943 = !{!3944, !3945}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3942, file: !52, line: 313, baseType: !246, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3942, file: !52, line: 314, baseType: !3946, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !52, line: 257, baseType: !3947)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 255, size: 64, elements: !3948)
!3948 = !{!3949}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3947, file: !52, line: 256, baseType: !255, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3927, file: !52, line: 316, baseType: !338, size: 32, offset: 384)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3927, file: !52, line: 317, baseType: !338, size: 32, offset: 416)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3924, file: !52, line: 323, baseType: !2271, size: 512, align: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, scope: !3921, file: !52, line: 325, baseType: !3954, size: 512, offset: 512)
!3954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3921, file: !52, line: 325, size: 512, elements: !3955)
!3955 = !{!3956, !3966}
!3956 = !DIDerivedType(tag: DW_TAG_member, scope: !3954, file: !52, line: 326, baseType: !3957, size: 320)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3954, file: !52, line: 326, size: 320, elements: !3958)
!3958 = !{!3959, !3960, !3961, !3962, !3963, !3964, !3965}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3957, file: !52, line: 327, baseType: !255, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3957, file: !52, line: 328, baseType: !255, size: 64, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3957, file: !52, line: 329, baseType: !255, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3957, file: !52, line: 331, baseType: !338, size: 32, offset: 192)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3957, file: !52, line: 332, baseType: !338, size: 32, offset: 224)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3957, file: !52, line: 333, baseType: !338, size: 32, offset: 256)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3957, file: !52, line: 335, baseType: !7, size: 32, offset: 288)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3954, file: !52, line: 339, baseType: !2271, size: 512, align: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, scope: !3921, file: !52, line: 341, baseType: !3968, size: 512, offset: 1024)
!3968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3921, file: !52, line: 341, size: 512, elements: !3969)
!3969 = !{!3970, !3979, !3985}
!3970 = !DIDerivedType(tag: DW_TAG_member, scope: !3968, file: !52, line: 342, baseType: !3971, size: 384)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3968, file: !52, line: 342, size: 384, elements: !3972)
!3972 = !{!3973, !3974, !3975, !3976, !3977, !3978}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3971, file: !52, line: 343, baseType: !255, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3971, file: !52, line: 344, baseType: !255, size: 64, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3971, file: !52, line: 346, baseType: !246, size: 64, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3971, file: !52, line: 347, baseType: !246, size: 64, offset: 192)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3971, file: !52, line: 348, baseType: !246, size: 64, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3971, file: !52, line: 349, baseType: !246, size: 64, offset: 320)
!3979 = !DIDerivedType(tag: DW_TAG_member, scope: !3968, file: !52, line: 352, baseType: !3980, size: 256)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3968, file: !52, line: 352, size: 256, elements: !3981)
!3981 = !{!3982, !3983, !3984}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3980, file: !52, line: 353, baseType: !255, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3980, file: !52, line: 354, baseType: !255, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3980, file: !52, line: 356, baseType: !291, size: 128, offset: 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3968, file: !52, line: 359, baseType: !2271, size: 512, align: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3910, file: !28, line: 409, baseType: !3987, size: 64, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!147, !459, !1123}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3910, file: !28, line: 412, baseType: !3991, size: 64, offset: 192)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!260, !459, !3920}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3910, file: !28, line: 414, baseType: !3995, size: 64, offset: 256)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{null, !3998}
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !28, line: 310, flags: DIFlagFwdDecl)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3910, file: !28, line: 416, baseType: !4001, size: 64, offset: 320)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!147, !1810, !459, !624, !7, !3322, !2498}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3910, file: !28, line: 419, baseType: !4005, size: 64, offset: 384)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!147, !1810, !459, !624, !7, !7, !2270, !246}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3910, file: !28, line: 424, baseType: !4009, size: 64, offset: 448)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!4012, !459, !4012}
!4012 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !261, line: 131, baseType: !536)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3910, file: !28, line: 425, baseType: !4014, size: 64, offset: 512)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{null, !3920, !276, !276}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3910, file: !28, line: 426, baseType: !4018, size: 64, offset: 576)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!260, !3920, !1232}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3910, file: !28, line: 427, baseType: !4022, size: 64, offset: 640)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{null, !3920}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3910, file: !28, line: 428, baseType: !2097, size: 64, offset: 704)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3910, file: !28, line: 433, baseType: !4027, size: 64, offset: 768)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!147, !459, !3920, !3920, !88}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3910, file: !28, line: 435, baseType: !4031, size: 64, offset: 832)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!147, !3920}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3910, file: !28, line: 436, baseType: !4035, size: 64, offset: 896)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!260, !3920, !276, !276}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3910, file: !28, line: 438, baseType: !4039, size: 64, offset: 960)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{null, !3920, !4042, !4042}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3910, file: !28, line: 439, baseType: !4044, size: 64, offset: 1024)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!147, !459, !2270}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3910, file: !28, line: 442, baseType: !4048, size: 64, offset: 1088)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!147, !4051, !1810, !4053}
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !28, line: 66, flags: DIFlagFwdDecl)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3910, file: !28, line: 444, baseType: !2490, size: 64, offset: 1152)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3910, file: !28, line: 445, baseType: !4056, size: 64, offset: 1216)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!147, !2100, !2122}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !28, line: 486, baseType: !255, size: 64, offset: 896)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !460, file: !28, line: 487, baseType: !1380, size: 320, offset: 960)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !460, file: !28, line: 488, baseType: !2533, size: 32, offset: 1280)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !460, file: !28, line: 489, baseType: !318, size: 32, offset: 1312)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !460, file: !28, line: 490, baseType: !291, size: 128, offset: 1344)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !460, file: !28, line: 491, baseType: !246, size: 64, offset: 1472)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !450, file: !414, line: 180, baseType: !4066, size: 64, offset: 320)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!420, !1810, !311, !449, !388, !624, !276}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !450, file: !414, line: 182, baseType: !4066, size: 64, offset: 384)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !450, file: !414, line: 184, baseType: !4071, size: 64, offset: 448)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!147, !1810, !311, !449, !2161}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !438, file: !414, line: 90, baseType: !4075, size: 64, offset: 192)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !438, file: !414, line: 91, baseType: !4077, size: 64, offset: 256)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !404, file: !303, line: 120, baseType: !4079, size: 64, offset: 192)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!4082, !371}
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4084)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !96, line: 39, size: 384, elements: !4085)
!4085 = !{!4086, !4087, !4091, !4095, !4101, !4105}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4084, file: !96, line: 40, baseType: !95, size: 32)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4084, file: !96, line: 41, baseType: !4088, size: 64, offset: 64)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!260}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4084, file: !96, line: 42, baseType: !4092, size: 64, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!246}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4084, file: !96, line: 43, baseType: !4096, size: 64, offset: 192)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!2622, !4099}
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !96, line: 19, flags: DIFlagFwdDecl)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4084, file: !96, line: 44, baseType: !4102, size: 64, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!2622}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4084, file: !96, line: 45, baseType: !269, size: 64, offset: 320)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !404, file: !303, line: 121, baseType: !4107, size: 64, offset: 256)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!2622, !371}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !404, file: !303, line: 122, baseType: !4111, size: 64, offset: 320)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !371, !4114, !4115}
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !302, file: !303, line: 70, baseType: !4117, size: 64, offset: 384)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4119, line: 190, size: 1152, elements: !4120)
!4119 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4120 = !{!4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4212, !4213, !4214, !4215, !4216, !4219}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4118, file: !4119, line: 191, baseType: !338, size: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4118, file: !4119, line: 192, baseType: !338, size: 32, offset: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4118, file: !4119, line: 202, baseType: !4117, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4118, file: !4119, line: 203, baseType: !306, size: 64, offset: 128)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4118, file: !4119, line: 205, baseType: !830, size: 192, align: 64, offset: 192)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4118, file: !4119, line: 207, baseType: !2622, size: 64, offset: 384)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4118, file: !4119, line: 208, baseType: !7, size: 32, offset: 448)
!4128 = !DIDerivedType(tag: DW_TAG_member, scope: !4118, file: !4119, line: 209, baseType: !4129, size: 256, offset: 512)
!4129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4118, file: !4119, line: 209, size: 256, elements: !4130)
!4130 = !{!4131, !4140, !4144}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4129, file: !4119, line: 210, baseType: !4132, size: 256)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4119, line: 153, size: 256, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4139}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4132, file: !4119, line: 154, baseType: !255, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4132, file: !4119, line: 156, baseType: !1669, size: 64, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4132, file: !4119, line: 162, baseType: !4137, size: 64, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4119, line: 162, flags: DIFlagFwdDecl)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4132, file: !4119, line: 167, baseType: !255, size: 64, offset: 192)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4129, file: !4119, line: 211, baseType: !4141, size: 64)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4119, line: 170, size: 64, elements: !4142)
!4142 = !{!4143}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4141, file: !4119, line: 171, baseType: !4117, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4129, file: !4119, line: 212, baseType: !4145, size: 256)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4119, line: 174, size: 256, elements: !4146)
!4146 = !{!4147, !4207, !4210, !4211}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4145, file: !4119, line: 175, baseType: !4148, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4150)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4119, line: 271, size: 768, elements: !4151)
!4151 = !{!4152, !4172, !4176, !4180, !4184, !4188, !4192, !4196, !4197, !4198, !4199, !4203}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4150, file: !4119, line: 276, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!147, !4156}
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4119, line: 251, size: 1216, elements: !4158)
!4158 = !{!4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4157, file: !4119, line: 253, baseType: !4117, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4157, file: !4119, line: 254, baseType: !1810, size: 64, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4157, file: !4119, line: 255, baseType: !1160, size: 64, offset: 128)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4157, file: !4119, line: 256, baseType: !246, size: 64, offset: 192)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4157, file: !4119, line: 259, baseType: !723, size: 256, offset: 256)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4157, file: !4119, line: 260, baseType: !723, size: 256, offset: 512)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4157, file: !4119, line: 261, baseType: !147, size: 32, offset: 768)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4157, file: !4119, line: 262, baseType: !291, size: 128, offset: 832)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4157, file: !4119, line: 263, baseType: !388, size: 64, offset: 960)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4157, file: !4119, line: 265, baseType: !276, size: 64, offset: 1024)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4157, file: !4119, line: 266, baseType: !260, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4157, file: !4119, line: 267, baseType: !260, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4157, file: !4119, line: 268, baseType: !2206, size: 64, offset: 1152)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4150, file: !4119, line: 277, baseType: !4173, size: 64, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{null, !4156}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4150, file: !4119, line: 290, baseType: !4177, size: 64, offset: 128)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!147, !1160, !246}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4150, file: !4119, line: 292, baseType: !4181, size: 64, offset: 192)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!246, !1160, !2091}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4150, file: !4119, line: 293, baseType: !4185, size: 64, offset: 256)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!246, !1160, !246, !2091}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4150, file: !4119, line: 294, baseType: !4189, size: 64, offset: 320)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{null, !1160, !246}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4150, file: !4119, line: 296, baseType: !4193, size: 64, offset: 384)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!420, !4156, !388, !276, !624}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4150, file: !4119, line: 306, baseType: !276, size: 64, offset: 448)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4150, file: !4119, line: 313, baseType: !260, size: 8, offset: 512)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4150, file: !4119, line: 314, baseType: !4193, size: 64, offset: 576)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4150, file: !4119, line: 317, baseType: !4200, size: 64, offset: 640)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!2148, !4156, !2150}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4150, file: !4119, line: 320, baseType: !4204, size: 64, offset: 704)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!147, !4156, !2161}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4145, file: !4119, line: 176, baseType: !4208, size: 64, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4119, line: 35, flags: DIFlagFwdDecl)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4145, file: !4119, line: 177, baseType: !624, size: 64, offset: 128)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4145, file: !4119, line: 178, baseType: !4117, size: 64, offset: 192)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4118, file: !4119, line: 215, baseType: !246, size: 64, offset: 768)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4118, file: !4119, line: 221, baseType: !536, size: 64, offset: 832)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4118, file: !4119, line: 223, baseType: !358, size: 16, offset: 896)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4118, file: !4119, line: 224, baseType: !429, size: 16, offset: 912)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4118, file: !4119, line: 225, baseType: !4217, size: 64, offset: 960)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4119, line: 36, flags: DIFlagFwdDecl)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4118, file: !4119, line: 227, baseType: !938, size: 128, align: 64, offset: 1024)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !302, file: !303, line: 71, baseType: !4221, size: 32, offset: 448)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4222, line: 19, size: 32, elements: !4223)
!4222 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4223 = !{!4224}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4221, file: !4222, line: 20, baseType: !1500, size: 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !302, file: !303, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !302, file: !303, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !302, file: !303, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !302, file: !303, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !302, file: !303, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !299, file: !132, line: 707, baseType: !298, size: 64, offset: 512)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !299, file: !132, line: 709, baseType: !4232, size: 64, offset: 576)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !132, line: 37, flags: DIFlagFwdDecl)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !299, file: !132, line: 711, baseType: !306, size: 64, offset: 640)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !299, file: !132, line: 712, baseType: !4236, size: 64, offset: 704)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4238)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !132, line: 89, size: 384, elements: !4239)
!4239 = !{!4240, !4241, !4242, !4248, !4253, !4257}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4238, file: !132, line: 90, baseType: !306, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4238, file: !132, line: 91, baseType: !435, size: 64, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4238, file: !132, line: 92, baseType: !4243, size: 64, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!147, !4246, !383}
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4238, file: !132, line: 93, baseType: !4249, size: 64, offset: 192)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!388, !4246, !4252, !4114, !4115}
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4238, file: !132, line: 95, baseType: !4254, size: 64, offset: 256)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !298}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4238, file: !132, line: 97, baseType: !4258, size: 64, offset: 320)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4260)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !139, line: 286, size: 1472, elements: !4261)
!4261 = !{!4262, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4260, file: !139, line: 287, baseType: !4263, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!147, !298}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4260, file: !139, line: 288, baseType: !4254, size: 64, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4260, file: !139, line: 289, baseType: !4263, size: 64, offset: 128)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4260, file: !139, line: 290, baseType: !4263, size: 64, offset: 192)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4260, file: !139, line: 291, baseType: !4263, size: 64, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4260, file: !139, line: 292, baseType: !4263, size: 64, offset: 320)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4260, file: !139, line: 293, baseType: !4263, size: 64, offset: 384)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4260, file: !139, line: 294, baseType: !4263, size: 64, offset: 448)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4260, file: !139, line: 295, baseType: !4263, size: 64, offset: 512)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4260, file: !139, line: 296, baseType: !4263, size: 64, offset: 576)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4260, file: !139, line: 297, baseType: !4263, size: 64, offset: 640)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4260, file: !139, line: 298, baseType: !4263, size: 64, offset: 704)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4260, file: !139, line: 299, baseType: !4263, size: 64, offset: 768)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4260, file: !139, line: 300, baseType: !4263, size: 64, offset: 832)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4260, file: !139, line: 301, baseType: !4263, size: 64, offset: 896)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4260, file: !139, line: 302, baseType: !4263, size: 64, offset: 960)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4260, file: !139, line: 303, baseType: !4263, size: 64, offset: 1024)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4260, file: !139, line: 304, baseType: !4263, size: 64, offset: 1088)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4260, file: !139, line: 305, baseType: !4263, size: 64, offset: 1152)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4260, file: !139, line: 306, baseType: !4263, size: 64, offset: 1216)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4260, file: !139, line: 307, baseType: !4263, size: 64, offset: 1280)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4260, file: !139, line: 308, baseType: !4263, size: 64, offset: 1344)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4260, file: !139, line: 309, baseType: !4263, size: 64, offset: 1408)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !299, file: !132, line: 714, baseType: !4289, size: 64, offset: 768)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4291)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4292, line: 80, size: 1344, elements: !4293)
!4292 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4293 = !{!4294, !4295, !4296, !4297, !4298, !4299, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4707}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4291, file: !4292, line: 81, baseType: !306, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4291, file: !4292, line: 82, baseType: !306, size: 64, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4291, file: !4292, line: 83, baseType: !435, size: 64, offset: 128)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4291, file: !4292, line: 84, baseType: !435, size: 64, offset: 192)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4291, file: !4292, line: 85, baseType: !435, size: 64, offset: 256)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4291, file: !4292, line: 87, baseType: !4300, size: 64, offset: 320)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!147, !298, !4303}
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !102, line: 96, size: 1152, elements: !4305)
!4305 = !{!4306, !4307, !4308, !4309, !4310, !4311, !4312, !4325, !4335, !4336, !4337, !4338, !4339, !4347, !4348, !4349, !4350, !4351, !4352}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4304, file: !102, line: 97, baseType: !306, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4304, file: !102, line: 98, baseType: !4289, size: 64, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4304, file: !102, line: 100, baseType: !652, size: 64, offset: 128)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4304, file: !102, line: 101, baseType: !306, size: 64, offset: 192)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4304, file: !102, line: 103, baseType: !260, size: 8, offset: 256)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4304, file: !102, line: 104, baseType: !101, size: 32, offset: 288)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4304, file: !102, line: 106, baseType: !4313, size: 64, offset: 320)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4315)
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4316, line: 282, size: 1600, elements: !4317)
!4316 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4317 = !{!4318, !4319, !4320, !4324}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4315, file: !4316, line: 283, baseType: !3576, size: 256)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4315, file: !4316, line: 284, baseType: !3576, size: 256, offset: 256)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4315, file: !4316, line: 285, baseType: !4321, size: 1024, offset: 512)
!4321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 1024, elements: !4322)
!4322 = !{!4323}
!4323 = !DISubrange(count: 128)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4315, file: !4316, line: 286, baseType: !2622, size: 64, offset: 1536)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4304, file: !102, line: 107, baseType: !4326, size: 64, offset: 384)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4328)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4316, line: 217, size: 256, elements: !4329)
!4329 = !{!4330, !4331, !4333, !4334}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4328, file: !4316, line: 218, baseType: !3583, size: 128)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4328, file: !4316, line: 219, baseType: !4332, size: 64, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4316, line: 15, baseType: !255)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4328, file: !4316, line: 220, baseType: !533, size: 32, offset: 192)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4328, file: !4316, line: 221, baseType: !533, size: 32, offset: 224)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4304, file: !102, line: 109, baseType: !4263, size: 64, offset: 448)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4304, file: !102, line: 110, baseType: !4254, size: 64, offset: 512)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4304, file: !102, line: 111, baseType: !4263, size: 64, offset: 576)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4304, file: !102, line: 112, baseType: !4254, size: 64, offset: 640)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4304, file: !102, line: 113, baseType: !4340, size: 64, offset: 704)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!147, !298, !4343}
!4343 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !139, line: 60, baseType: !4344)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !139, line: 58, size: 32, elements: !4345)
!4345 = !{!4346}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4344, file: !139, line: 59, baseType: !147, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4304, file: !102, line: 114, baseType: !4263, size: 64, offset: 768)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4304, file: !102, line: 115, baseType: !435, size: 64, offset: 832)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4304, file: !102, line: 116, baseType: !435, size: 64, offset: 896)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4304, file: !102, line: 118, baseType: !4258, size: 64, offset: 960)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4304, file: !102, line: 119, baseType: !4254, size: 64, offset: 1024)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4304, file: !102, line: 121, baseType: !4353, size: 64, offset: 1088)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !102, line: 121, flags: DIFlagFwdDecl)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4291, file: !4292, line: 88, baseType: !4243, size: 64, offset: 384)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4291, file: !4292, line: 89, baseType: !4263, size: 64, offset: 448)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4291, file: !4292, line: 90, baseType: !4254, size: 64, offset: 512)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4291, file: !4292, line: 91, baseType: !4254, size: 64, offset: 576)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4291, file: !4292, line: 92, baseType: !4254, size: 64, offset: 640)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4291, file: !4292, line: 94, baseType: !4263, size: 64, offset: 704)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4291, file: !4292, line: 95, baseType: !4263, size: 64, offset: 768)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4291, file: !4292, line: 97, baseType: !4340, size: 64, offset: 832)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4291, file: !4292, line: 98, baseType: !4263, size: 64, offset: 896)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4291, file: !4292, line: 100, baseType: !4263, size: 64, offset: 960)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4291, file: !4292, line: 102, baseType: !4263, size: 64, offset: 1024)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4291, file: !4292, line: 103, baseType: !4254, size: 64, offset: 1088)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4291, file: !4292, line: 105, baseType: !4258, size: 64, offset: 1152)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4291, file: !4292, line: 107, baseType: !4369, size: 64, offset: 1216)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4371)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !108, line: 264, size: 1216, elements: !4372)
!4372 = !{!4373, !4377, !4381, !4511, !4625, !4626, !4627, !4628, !4634, !4638, !4672, !4676, !4680, !4681, !4699, !4700, !4704, !4705, !4706}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "capable", scope: !4371, file: !108, line: 265, baseType: !4374, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!260, !298, !107}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "hw_info", scope: !4371, file: !108, line: 266, baseType: !4378, size: 64, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!246, !298, !2699, !2699}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "domain_alloc", scope: !4371, file: !108, line: 269, baseType: !4382, size: 64, offset: 128)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!4385, !7}
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_domain", file: !108, line: 95, size: 704, elements: !4387)
!4387 = !{!4388, !4389, !4450, !4451, !4457, !4460, !4493, !4494}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4386, file: !108, line: 96, baseType: !7, size: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4386, file: !108, line: 97, baseType: !4390, size: 64, offset: 64)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4392)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_domain_ops", file: !108, line: 332, size: 896, elements: !4393)
!4393 = !{!4394, !4398, !4403, !4407, !4412, !4416, !4420, !4424, !4428, !4432, !4437, !4441, !4445, !4449}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "attach_dev", scope: !4392, file: !108, line: 333, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!147, !4385, !298}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "set_dev_pasid", scope: !4392, file: !108, line: 334, baseType: !4399, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!147, !4385, !298, !4402}
!4402 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioasid_t", file: !108, line: 202, baseType: !7)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4392, file: !108, line: 337, baseType: !4404, size: 64, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!147, !4385, !255, !3326, !276, !147, !1232}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !4392, file: !108, line: 339, baseType: !4408, size: 64, offset: 192)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!147, !4385, !255, !3326, !276, !276, !147, !1232, !4411}
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4392, file: !108, line: 342, baseType: !4413, size: 64, offset: 256)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!276, !4385, !255, !276, !284}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_pages", scope: !4392, file: !108, line: 344, baseType: !4417, size: 64, offset: 320)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!276, !4385, !255, !276, !276, !284}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "flush_iotlb_all", scope: !4392, file: !108, line: 348, baseType: !4421, size: 64, offset: 384)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{null, !4385}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "iotlb_sync_map", scope: !4392, file: !108, line: 349, baseType: !4425, size: 64, offset: 448)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{null, !4385, !255, !276}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "iotlb_sync", scope: !4392, file: !108, line: 351, baseType: !4429, size: 64, offset: 512)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{null, !4385, !284}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "iova_to_phys", scope: !4392, file: !108, line: 354, baseType: !4433, size: 64, offset: 576)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!3326, !4385, !4436}
!4436 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !261, line: 149, baseType: !536)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "enforce_cache_coherency", scope: !4392, file: !108, line: 357, baseType: !4438, size: 64, offset: 640)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!260, !4385}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "enable_nesting", scope: !4392, file: !108, line: 358, baseType: !4442, size: 64, offset: 704)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!147, !4385}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "set_pgtable_quirks", scope: !4392, file: !108, line: 359, baseType: !4446, size: 64, offset: 768)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!147, !4385, !255}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4392, file: !108, line: 362, baseType: !4421, size: 64, offset: 832)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "pgsize_bitmap", scope: !4386, file: !108, line: 98, baseType: !255, size: 64, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !4386, file: !108, line: 99, baseType: !4452, size: 192, offset: 192)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_domain_geometry", file: !108, line: 53, size: 192, elements: !4453)
!4453 = !{!4454, !4455, !4456}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_start", scope: !4452, file: !108, line: 54, baseType: !4436, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_end", scope: !4452, file: !108, line: 55, baseType: !4436, size: 64, offset: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "force_aperture", scope: !4452, file: !108, line: 56, baseType: !260, size: 8, offset: 128)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "iova_cookie", scope: !4386, file: !108, line: 100, baseType: !4458, size: 64, offset: 384)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_dma_cookie", file: !108, line: 43, flags: DIFlagFwdDecl)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "iopf_handler", scope: !4386, file: !108, line: 101, baseType: !4461, size: 64, offset: 448)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!115, !4464, !246}
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault", file: !116, line: 115, size: 512, elements: !4466)
!4466 = !{!4467, !4468, !4469}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4465, file: !116, line: 116, baseType: !533, size: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4465, file: !116, line: 117, baseType: !533, size: 32, offset: 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, scope: !4465, file: !116, line: 118, baseType: !4470, size: 448, offset: 64)
!4470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4465, file: !116, line: 118, size: 448, elements: !4471)
!4471 = !{!4472, !4481, !4491}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4470, file: !116, line: 119, baseType: !4473, size: 256)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_unrecoverable", file: !116, line: 69, size: 256, elements: !4474)
!4474 = !{!4475, !4476, !4477, !4478, !4479, !4480}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !4473, file: !116, line: 70, baseType: !533, size: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4473, file: !116, line: 74, baseType: !533, size: 32, offset: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !4473, file: !116, line: 75, baseType: !533, size: 32, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4473, file: !116, line: 76, baseType: !533, size: 32, offset: 96)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4473, file: !116, line: 77, baseType: !537, size: 64, offset: 128)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "fetch_addr", scope: !4473, file: !116, line: 78, baseType: !537, size: 64, offset: 192)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "prm", scope: !4470, file: !116, line: 120, baseType: !4482, size: 320)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_page_request", file: !116, line: 94, size: 320, elements: !4483)
!4483 = !{!4484, !4485, !4486, !4487, !4488, !4489}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4482, file: !116, line: 99, baseType: !533, size: 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !4482, file: !116, line: 100, baseType: !533, size: 32, offset: 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "grpid", scope: !4482, file: !116, line: 101, baseType: !533, size: 32, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4482, file: !116, line: 102, baseType: !533, size: 32, offset: 96)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4482, file: !116, line: 103, baseType: !537, size: 64, offset: 128)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4482, file: !116, line: 104, baseType: !4490, size: 128, offset: 192)
!4490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 128, elements: !837)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !4470, file: !116, line: 121, baseType: !4492, size: 448)
!4492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 448, elements: !659)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "fault_data", scope: !4386, file: !108, line: 103, baseType: !246, size: 64, offset: 512)
!4494 = !DIDerivedType(tag: DW_TAG_member, scope: !4386, file: !108, line: 104, baseType: !4495, size: 128, offset: 576)
!4495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4386, file: !108, line: 104, size: 128, elements: !4496)
!4496 = !{!4497, !4506}
!4497 = !DIDerivedType(tag: DW_TAG_member, scope: !4495, file: !108, line: 105, baseType: !4498, size: 128)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4495, file: !108, line: 105, size: 128, elements: !4499)
!4499 = !{!4500, !4505}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4498, file: !108, line: 106, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_typedef, name: "iommu_fault_handler_t", file: !108, line: 49, baseType: !4502)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!147, !4385, !298, !255, !147, !246}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "handler_token", scope: !4498, file: !108, line: 107, baseType: !246, size: 64, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, scope: !4495, file: !108, line: 109, baseType: !4507, size: 128)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4495, file: !108, line: 109, size: 128, elements: !4508)
!4508 = !{!4509, !4510}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !4507, file: !108, line: 110, baseType: !1783, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4507, file: !108, line: 111, baseType: !147, size: 32, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "probe_device", scope: !4371, file: !108, line: 271, baseType: !4512, size: 64, offset: 192)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!4515, !298}
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_device", file: !108, line: 373, size: 384, elements: !4517)
!4517 = !{!4518, !4519, !4520, !4623, !4624}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4516, file: !108, line: 374, baseType: !291, size: 128)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4516, file: !108, line: 375, baseType: !4369, size: 64, offset: 128)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4516, file: !108, line: 376, baseType: !4521, size: 64, offset: 192)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4523, line: 41, size: 512, elements: !4524)
!4523 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4524 = !{!4525, !4526, !4619, !4620, !4621, !4622}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4522, file: !4523, line: 42, baseType: !4521, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4522, file: !4523, line: 43, baseType: !4527, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4529)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4523, line: 125, size: 1408, elements: !4530)
!4530 = !{!4531, !4535, !4539, !4545, !4549, !4550, !4554, !4558, !4562, !4566, !4570, !4571, !4575, !4579, !4583, !4594, !4595, !4596, !4597, !4607, !4611, !4615}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4529, file: !4523, line: 126, baseType: !4532, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!4521, !4521}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4529, file: !4523, line: 127, baseType: !4536, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{null, !4521}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4529, file: !4523, line: 128, baseType: !4540, size: 64, offset: 128)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!260, !4543}
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4522)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4529, file: !4523, line: 129, baseType: !4546, size: 64, offset: 192)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!2622, !4543, !4246}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4529, file: !4523, line: 131, baseType: !4540, size: 64, offset: 256)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4529, file: !4523, line: 133, baseType: !4551, size: 64, offset: 320)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!121, !4543}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4529, file: !4523, line: 134, baseType: !4555, size: 64, offset: 384)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!260, !4543, !306}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4529, file: !4523, line: 136, baseType: !4559, size: 64, offset: 448)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!147, !4543, !306, !7, !246, !276}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4529, file: !4523, line: 141, baseType: !4563, size: 64, offset: 512)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!147, !4543, !306, !1055, !276}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4529, file: !4523, line: 144, baseType: !4567, size: 64, offset: 576)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!306, !4543}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4529, file: !4523, line: 145, baseType: !4567, size: 64, offset: 640)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4529, file: !4523, line: 146, baseType: !4572, size: 64, offset: 704)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!4521, !4543}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4529, file: !4523, line: 148, baseType: !4576, size: 64, offset: 768)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!4521, !4543, !4521}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4529, file: !4523, line: 151, baseType: !4580, size: 64, offset: 832)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!4521, !4543, !306}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4529, file: !4523, line: 153, baseType: !4584, size: 64, offset: 896)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!147, !4543, !306, !306, !7, !7, !4587}
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4523, line: 94, size: 640, elements: !4589)
!4589 = !{!4590, !4591, !4592}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4588, file: !4523, line: 95, baseType: !4521, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4588, file: !4523, line: 96, baseType: !7, size: 32, offset: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4588, file: !4523, line: 97, baseType: !4593, size: 512, offset: 128)
!4593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 512, elements: !1650)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4529, file: !4523, line: 158, baseType: !4576, size: 64, offset: 960)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4529, file: !4523, line: 161, baseType: !4572, size: 64, offset: 1024)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4529, file: !4523, line: 163, baseType: !4532, size: 64, offset: 1088)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4529, file: !4523, line: 164, baseType: !4598, size: 64, offset: 1152)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!147, !4543, !4601}
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4523, line: 73, size: 128, elements: !4603)
!4603 = !{!4604, !4605, !4606}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4602, file: !4523, line: 74, baseType: !7, size: 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4602, file: !4523, line: 75, baseType: !7, size: 32, offset: 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4602, file: !4523, line: 76, baseType: !4543, size: 64, offset: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4529, file: !4523, line: 166, baseType: !4608, size: 64, offset: 1216)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!246, !4521, !147}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4529, file: !4523, line: 167, baseType: !4612, size: 64, offset: 1280)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!147, !4543, !7}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4529, file: !4523, line: 168, baseType: !4616, size: 64, offset: 1344)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!147, !4521}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4522, file: !4523, line: 44, baseType: !298, size: 64, offset: 128)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4522, file: !4523, line: 45, baseType: !291, size: 128, offset: 192)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4522, file: !4523, line: 46, baseType: !291, size: 128, offset: 320)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4522, file: !4523, line: 47, baseType: !346, size: 8, offset: 448)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4516, file: !108, line: 377, baseType: !298, size: 64, offset: 256)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "max_pasids", scope: !4516, file: !108, line: 378, baseType: !532, size: 32, offset: 320)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "release_device", scope: !4371, file: !108, line: 272, baseType: !4254, size: 64, offset: 256)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "probe_finalize", scope: !4371, file: !108, line: 273, baseType: !4254, size: 64, offset: 320)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "set_platform_dma_ops", scope: !4371, file: !108, line: 274, baseType: !4254, size: 64, offset: 384)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "device_group", scope: !4371, file: !108, line: 275, baseType: !4629, size: 64, offset: 448)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!4632, !298}
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !132, line: 46, flags: DIFlagFwdDecl)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "get_resv_regions", scope: !4371, file: !108, line: 278, baseType: !4635, size: 64, offset: 512)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{null, !298, !294}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "of_xlate", scope: !4371, file: !108, line: 280, baseType: !4639, size: 64, offset: 576)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!147, !298, !4642}
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !4644, line: 71, size: 640, elements: !4645)
!4644 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!4645 = !{!4646, !4669, !4670}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !4643, file: !4644, line: 72, baseType: !4647, size: 64)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4644, line: 48, size: 1152, elements: !4649)
!4649 = !{!4650, !4651, !4653, !4654, !4655, !4663, !4664, !4665, !4666, !4667, !4668}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4648, file: !4644, line: 49, baseType: !306, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4648, file: !4644, line: 50, baseType: !4652, size: 32, offset: 64)
!4652 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4644, line: 25, baseType: !532)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4648, file: !4644, line: 51, baseType: !306, size: 64, offset: 128)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4648, file: !4644, line: 52, baseType: !4522, size: 512, offset: 192)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4648, file: !4644, line: 54, baseType: !4656, size: 64, offset: 704)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4644, line: 28, size: 256, elements: !4658)
!4658 = !{!4659, !4660, !4661, !4662}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4657, file: !4644, line: 29, baseType: !388, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4657, file: !4644, line: 30, baseType: !147, size: 32, offset: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4657, file: !4644, line: 31, baseType: !246, size: 64, offset: 128)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4657, file: !4644, line: 32, baseType: !4656, size: 64, offset: 192)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4648, file: !4644, line: 55, baseType: !4656, size: 64, offset: 768)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4648, file: !4644, line: 56, baseType: !4647, size: 64, offset: 832)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4648, file: !4644, line: 57, baseType: !4647, size: 64, offset: 896)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4648, file: !4644, line: 58, baseType: !4647, size: 64, offset: 960)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4648, file: !4644, line: 62, baseType: !255, size: 64, offset: 1024)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4648, file: !4644, line: 63, baseType: !246, size: 64, offset: 1088)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !4643, file: !4644, line: 73, baseType: !147, size: 32, offset: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4643, file: !4644, line: 74, baseType: !4671, size: 512, offset: 96)
!4671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1932, size: 512, elements: !2800)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "is_attach_deferred", scope: !4371, file: !108, line: 281, baseType: !4673, size: 64, offset: 640)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!260, !298}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "dev_enable_feat", scope: !4371, file: !108, line: 284, baseType: !4677, size: 64, offset: 704)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!147, !298, !127}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "dev_disable_feat", scope: !4371, file: !108, line: 285, baseType: !4677, size: 64, offset: 768)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "page_response", scope: !4371, file: !108, line: 287, baseType: !4682, size: 64, offset: 832)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!147, !298, !4685, !4690}
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_event", file: !108, line: 390, size: 640, elements: !4687)
!4687 = !{!4688, !4689}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !4686, file: !108, line: 391, baseType: !4465, size: 512)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4686, file: !108, line: 392, baseType: !291, size: 128, offset: 512)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_page_response", file: !116, line: 150, size: 192, elements: !4692)
!4692 = !{!4693, !4694, !4695, !4696, !4697, !4698}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "argsz", scope: !4691, file: !116, line: 151, baseType: !533, size: 32)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4691, file: !116, line: 153, baseType: !533, size: 32, offset: 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4691, file: !116, line: 155, baseType: !533, size: 32, offset: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !4691, file: !116, line: 156, baseType: !533, size: 32, offset: 96)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "grpid", scope: !4691, file: !116, line: 157, baseType: !533, size: 32, offset: 128)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4691, file: !116, line: 158, baseType: !533, size: 32, offset: 160)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "def_domain_type", scope: !4371, file: !108, line: 291, baseType: !4263, size: 64, offset: 896)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "remove_dev_pasid", scope: !4371, file: !108, line: 292, baseType: !4701, size: 64, offset: 960)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{null, !298, !4402}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "default_domain_ops", scope: !4371, file: !108, line: 294, baseType: !4390, size: 64, offset: 1024)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "pgsize_bitmap", scope: !4371, file: !108, line: 295, baseType: !255, size: 64, offset: 1088)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4371, file: !108, line: 296, baseType: !652, size: 64, offset: 1152)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4291, file: !4292, line: 109, baseType: !260, size: 8, offset: 1280)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !299, file: !132, line: 715, baseType: !4303, size: 64, offset: 832)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !299, file: !132, line: 717, baseType: !246, size: 64, offset: 896)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !299, file: !132, line: 719, baseType: !246, size: 64, offset: 960)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !299, file: !132, line: 721, baseType: !723, size: 256, offset: 1024)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !299, file: !132, line: 725, baseType: !4713, size: 448, offset: 1280)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !132, line: 517, size: 448, elements: !4714)
!4714 = !{!4715, !4716, !4717, !4718}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4713, file: !132, line: 518, baseType: !291, size: 128)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4713, file: !132, line: 519, baseType: !291, size: 128, offset: 128)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4713, file: !132, line: 520, baseType: !291, size: 128, offset: 256)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4713, file: !132, line: 521, baseType: !131, size: 32, offset: 384)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !299, file: !132, line: 726, baseType: !4720, size: 2496, offset: 1728)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !139, line: 663, size: 2496, elements: !4721)
!4721 = !{!4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4804, !4808}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4720, file: !139, line: 664, baseType: !4343, size: 32)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4720, file: !139, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4720, file: !139, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4720, file: !139, line: 667, baseType: !260, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4720, file: !139, line: 668, baseType: !260, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4720, file: !139, line: 669, baseType: !260, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4720, file: !139, line: 670, baseType: !260, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4720, file: !139, line: 671, baseType: !260, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4720, file: !139, line: 672, baseType: !260, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4720, file: !139, line: 673, baseType: !260, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4720, file: !139, line: 674, baseType: !260, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4720, file: !139, line: 675, baseType: !532, size: 32, offset: 64)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4720, file: !139, line: 676, baseType: !318, size: 32, offset: 96)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4720, file: !139, line: 678, baseType: !291, size: 128, offset: 128)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4720, file: !139, line: 679, baseType: !672, size: 256, offset: 256)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4720, file: !139, line: 680, baseType: !4738, size: 64, offset: 512)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4740, line: 43, size: 1536, elements: !4741)
!4740 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4741 = !{!4742, !4743, !4744, !4745, !4746, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4739, file: !4740, line: 44, baseType: !306, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4739, file: !4740, line: 45, baseType: !147, size: 32, offset: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4739, file: !4740, line: 46, baseType: !291, size: 128, offset: 128)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4739, file: !4740, line: 47, baseType: !318, size: 32, offset: 256)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4739, file: !4740, line: 48, baseType: !4747, size: 64, offset: 320)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !139, line: 629, flags: DIFlagFwdDecl)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4739, file: !4740, line: 49, baseType: !960, size: 320, offset: 384)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4739, file: !4740, line: 50, baseType: !255, size: 64, offset: 704)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4739, file: !4740, line: 51, baseType: !1615, size: 64, offset: 768)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4739, file: !4740, line: 52, baseType: !1615, size: 64, offset: 832)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4739, file: !4740, line: 53, baseType: !1615, size: 64, offset: 896)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4739, file: !4740, line: 54, baseType: !1615, size: 64, offset: 960)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4739, file: !4740, line: 55, baseType: !1615, size: 64, offset: 1024)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4739, file: !4740, line: 56, baseType: !255, size: 64, offset: 1088)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4739, file: !4740, line: 57, baseType: !255, size: 64, offset: 1152)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4739, file: !4740, line: 58, baseType: !255, size: 64, offset: 1216)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4739, file: !4740, line: 59, baseType: !255, size: 64, offset: 1280)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4739, file: !4740, line: 60, baseType: !255, size: 64, offset: 1344)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4739, file: !4740, line: 61, baseType: !298, size: 64, offset: 1408)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4739, file: !4740, line: 62, baseType: !260, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4739, file: !4740, line: 63, baseType: !260, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4720, file: !139, line: 681, baseType: !260, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4720, file: !139, line: 682, baseType: !260, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4720, file: !139, line: 683, baseType: !260, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4720, file: !139, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4720, file: !139, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4720, file: !139, line: 690, baseType: !1607, size: 512, offset: 640)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4720, file: !139, line: 691, baseType: !536, size: 64, offset: 1152)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4720, file: !139, line: 692, baseType: !978, size: 256, offset: 1216)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4720, file: !139, line: 693, baseType: !1473, size: 192, offset: 1472)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4720, file: !139, line: 694, baseType: !4747, size: 64, offset: 1664)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4720, file: !139, line: 695, baseType: !338, size: 32, offset: 1728)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4720, file: !139, line: 696, baseType: !338, size: 32, offset: 1760)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4720, file: !139, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4720, file: !139, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4720, file: !139, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4720, file: !139, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4720, file: !139, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4720, file: !139, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4720, file: !139, line: 703, baseType: !260, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4720, file: !139, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4720, file: !139, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4720, file: !139, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4720, file: !139, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4720, file: !139, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4720, file: !139, line: 709, baseType: !7, size: 32, offset: 1824)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4720, file: !139, line: 710, baseType: !138, size: 32, offset: 1856)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4720, file: !139, line: 711, baseType: !146, size: 32, offset: 1888)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4720, file: !139, line: 712, baseType: !146, size: 32, offset: 1920)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4720, file: !139, line: 713, baseType: !147, size: 32, offset: 1952)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4720, file: !139, line: 714, baseType: !147, size: 32, offset: 1984)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4720, file: !139, line: 715, baseType: !536, size: 64, offset: 2048)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4720, file: !139, line: 716, baseType: !536, size: 64, offset: 2112)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4720, file: !139, line: 717, baseType: !536, size: 64, offset: 2176)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4720, file: !139, line: 718, baseType: !536, size: 64, offset: 2240)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4720, file: !139, line: 720, baseType: !4799, size: 64, offset: 2304)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !139, line: 632, size: 64, elements: !4801)
!4801 = !{!4802, !4803}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4800, file: !139, line: 633, baseType: !318, size: 32)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4800, file: !139, line: 634, baseType: !7, size: 32, offset: 32)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4720, file: !139, line: 721, baseType: !4805, size: 64, offset: 2368)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{null, !298, !719}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4720, file: !139, line: 722, baseType: !4809, size: 64, offset: 2432)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !139, line: 722, flags: DIFlagFwdDecl)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !299, file: !132, line: 727, baseType: !4812, size: 64, offset: 4224)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !139, line: 742, size: 1792, elements: !4814)
!4814 = !{!4815, !4816, !4817, !4821, !4822, !4823}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4813, file: !139, line: 743, baseType: !4260, size: 1472)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4813, file: !139, line: 744, baseType: !4263, size: 64, offset: 1472)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4813, file: !139, line: 745, baseType: !4818, size: 64, offset: 1536)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{null, !298, !260}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4813, file: !139, line: 746, baseType: !4263, size: 64, offset: 1600)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4813, file: !139, line: 747, baseType: !4254, size: 64, offset: 1664)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4813, file: !139, line: 748, baseType: !4254, size: 64, offset: 1728)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !299, file: !132, line: 736, baseType: !4825, size: 128, offset: 4288)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !132, line: 529, size: 128, elements: !4826)
!4826 = !{!4827, !5374}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4825, file: !132, line: 531, baseType: !4828, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4830, line: 150, size: 1408, elements: !4831)
!4830 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd3b6d3aac1ec0f42f0ed0e1454dc51c")
!4831 = !{!4832, !4833, !4834, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5277, !5278, !5279, !5280, !5369, !5370, !5371, !5372}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4829, file: !4830, line: 151, baseType: !291, size: 128)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4829, file: !4830, line: 152, baseType: !306, size: 64, offset: 128)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4829, file: !4830, line: 153, baseType: !4835, size: 64, offset: 192)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4837)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !4830, line: 88, size: 640, elements: !4838)
!4838 = !{!4839, !4843, !4854, !4859, !4863, !4869, !4873, !4877, !5117, !5121}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4837, file: !4830, line: 89, baseType: !4840, size: 64)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!147, !4828, !4647, !154}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4837, file: !4830, line: 91, baseType: !4844, size: 64, offset: 64)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!147, !4828, !4847, !154}
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !4830, line: 63, size: 640, elements: !4849)
!4849 = !{!4850, !4851, !4852}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4848, file: !4830, line: 64, baseType: !4521, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4848, file: !4830, line: 65, baseType: !147, size: 32, offset: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4848, file: !4830, line: 66, baseType: !4853, size: 512, offset: 96)
!4853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 512, elements: !2800)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4837, file: !4830, line: 93, baseType: !4855, size: 64, offset: 128)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!147, !4828, !7, !4858}
!4858 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !261, line: 170, baseType: !255)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4837, file: !4830, line: 94, baseType: !4860, size: 64, offset: 192)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{null, !4828, !7}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4837, file: !4830, line: 95, baseType: !4864, size: 64, offset: 256)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!147, !4828, !4647, !4867, !7, !1069, !792}
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4837, file: !4830, line: 100, baseType: !4870, size: 64, offset: 320)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!147, !4828, !7, !7, !246}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4837, file: !4830, line: 102, baseType: !4874, size: 64, offset: 384)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{null, !4828, !7, !7}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4837, file: !4830, line: 104, baseType: !4878, size: 64, offset: 448)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!147, !4828, !4881, !260}
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !181, line: 179, size: 448, elements: !4883)
!4883 = !{!4884, !4885, !4886, !4887, !5038, !5114, !5115, !5116}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4882, file: !181, line: 180, baseType: !532, size: 32)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4882, file: !181, line: 181, baseType: !7, size: 32, offset: 32)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !4882, file: !181, line: 182, baseType: !255, size: 64, offset: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !4882, file: !181, line: 183, baseType: !4888, size: 64, offset: 128)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !181, line: 147, size: 320, elements: !4890)
!4890 = !{!4891, !4892, !4893, !4894, !5034, !5037}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !4889, file: !181, line: 148, baseType: !7, size: 32)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4889, file: !181, line: 150, baseType: !7, size: 32, offset: 32)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !4889, file: !181, line: 152, baseType: !246, size: 64, offset: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !4889, file: !181, line: 153, baseType: !4895, size: 64, offset: 128)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !4897, line: 184, size: 832, elements: !4898)
!4897 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4852ae4344fcd499a416b3c5d20e2abd")
!4898 = !{!4899, !4900, !4901, !4902, !4967, !4973, !4974, !4987, !4991, !4992, !4993}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4896, file: !4897, line: 186, baseType: !7, size: 32)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !4896, file: !4897, line: 187, baseType: !7, size: 32, offset: 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4896, file: !4897, line: 188, baseType: !298, size: 64, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4896, file: !4897, line: 189, baseType: !4903, size: 96, offset: 128)
!4903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !4897, line: 65, size: 96, elements: !4904)
!4904 = !{!4905, !4936, !4946}
!4905 = !DIDerivedType(tag: DW_TAG_member, scope: !4903, file: !4897, line: 66, baseType: !4906, size: 32)
!4906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4903, file: !4897, line: 66, size: 32, elements: !4907)
!4907 = !{!4908, !4909}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !4906, file: !4897, line: 67, baseType: !532, size: 32)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "arch_addr_lo", scope: !4906, file: !4897, line: 68, baseType: !4910, size: 32)
!4910 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_addr_lo_t", file: !4911, line: 49, baseType: !4912)
!4911 = !DIFile(filename: "./arch/x86/include/asm/msi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18fb5c3a6ec98b3248a11eb70711a164")
!4912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_addr_lo", file: !4911, line: 29, size: 32, elements: !4913)
!4913 = !{!4914}
!4914 = !DIDerivedType(tag: DW_TAG_member, scope: !4912, file: !4911, line: 30, baseType: !4915, size: 32)
!4915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4912, file: !4911, line: 30, size: 32, elements: !4916)
!4916 = !{!4917, !4927}
!4917 = !DIDerivedType(tag: DW_TAG_member, scope: !4915, file: !4911, line: 31, baseType: !4918, size: 32)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4915, file: !4911, line: 31, size: 32, elements: !4919)
!4919 = !{!4920, !4921, !4922, !4923, !4924, !4925, !4926}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0", scope: !4918, file: !4911, line: 32, baseType: !532, size: 2, flags: DIFlagBitField, extraData: i64 0)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "dest_mode_logical", scope: !4918, file: !4911, line: 33, baseType: !532, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_hint", scope: !4918, file: !4911, line: 34, baseType: !532, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_1", scope: !4918, file: !4911, line: 35, baseType: !532, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "virt_destid_8_14", scope: !4918, file: !4911, line: 36, baseType: !532, size: 7, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "destid_0_7", scope: !4918, file: !4911, line: 37, baseType: !532, size: 8, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !4918, file: !4911, line: 38, baseType: !532, size: 12, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!4927 = !DIDerivedType(tag: DW_TAG_member, scope: !4915, file: !4911, line: 40, baseType: !4928, size: 32)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4915, file: !4911, line: 40, size: 32, elements: !4929)
!4929 = !{!4930, !4931, !4932, !4933, !4934, !4935}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_reserved_0", scope: !4928, file: !4911, line: 41, baseType: !532, size: 2, flags: DIFlagBitField, extraData: i64 0)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_index_15", scope: !4928, file: !4911, line: 42, baseType: !532, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_subhandle_valid", scope: !4928, file: !4911, line: 43, baseType: !532, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_format", scope: !4928, file: !4911, line: 44, baseType: !532, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_index_0_14", scope: !4928, file: !4911, line: 45, baseType: !532, size: 15, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_base_address", scope: !4928, file: !4911, line: 46, baseType: !532, size: 12, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!4936 = !DIDerivedType(tag: DW_TAG_member, scope: !4903, file: !4897, line: 70, baseType: !4937, size: 32, offset: 32)
!4937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4903, file: !4897, line: 70, size: 32, elements: !4938)
!4938 = !{!4939, !4940}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !4937, file: !4897, line: 71, baseType: !532, size: 32)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "arch_addr_hi", scope: !4937, file: !4897, line: 72, baseType: !4941, size: 32)
!4941 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_addr_hi_t", file: !4911, line: 57, baseType: !4942)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_addr_hi", file: !4911, line: 54, size: 32, elements: !4943)
!4943 = !{!4944, !4945}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4942, file: !4911, line: 55, baseType: !532, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "destid_8_31", scope: !4942, file: !4911, line: 56, baseType: !532, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4946 = !DIDerivedType(tag: DW_TAG_member, scope: !4903, file: !4897, line: 74, baseType: !4947, size: 32, offset: 64)
!4947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4903, file: !4897, line: 74, size: 32, elements: !4948)
!4948 = !{!4949, !4950}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4947, file: !4897, line: 75, baseType: !532, size: 32)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4947, file: !4897, line: 76, baseType: !4951, size: 32)
!4951 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_data_t", file: !4911, line: 26, baseType: !4952)
!4952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_data", file: !4911, line: 14, size: 32, elements: !4953)
!4953 = !{!4954}
!4954 = !DIDerivedType(tag: DW_TAG_member, scope: !4952, file: !4911, line: 15, baseType: !4955, size: 32)
!4955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4952, file: !4911, line: 15, size: 32, elements: !4956)
!4956 = !{!4957, !4966}
!4957 = !DIDerivedType(tag: DW_TAG_member, scope: !4955, file: !4911, line: 16, baseType: !4958, size: 32)
!4958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4955, file: !4911, line: 16, size: 32, elements: !4959)
!4959 = !{!4960, !4961, !4962, !4963, !4964, !4965}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4958, file: !4911, line: 17, baseType: !532, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_mode", scope: !4958, file: !4911, line: 18, baseType: !532, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "dest_mode_logical", scope: !4958, file: !4911, line: 19, baseType: !532, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4958, file: !4911, line: 20, baseType: !532, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "active_low", scope: !4958, file: !4911, line: 21, baseType: !532, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "is_level", scope: !4958, file: !4911, line: 22, baseType: !532, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_subhandle", scope: !4955, file: !4911, line: 24, baseType: !532, size: 32)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !4896, file: !4897, line: 190, baseType: !4968, size: 64, offset: 256)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !174, line: 299, size: 128, elements: !4970)
!4970 = !{!4971, !4972}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4969, file: !174, line: 300, baseType: !1731, size: 64)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4969, file: !174, line: 301, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cookie", scope: !4896, file: !4897, line: 192, baseType: !2622, size: 64, offset: 320)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_attrs", scope: !4896, file: !4897, line: 195, baseType: !4975, size: 64, offset: 384)
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !132, line: 106, size: 256, elements: !4977)
!4977 = !{!4978, !4979, !4983}
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4976, file: !132, line: 107, baseType: !425, size: 128)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4976, file: !132, line: 108, baseType: !4980, size: 64, offset: 128)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!420, !298, !4975, !388}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4976, file: !132, line: 110, baseType: !4984, size: 64, offset: 192)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!420, !298, !4975, !306, !276}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !4896, file: !4897, line: 198, baseType: !4988, size: 64, offset: 448)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{null, !4895, !246}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !4896, file: !4897, line: 199, baseType: !246, size: 64, offset: 512)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !4896, file: !4897, line: 201, baseType: !356, size: 16, offset: 576)
!4993 = !DIDerivedType(tag: DW_TAG_member, scope: !4896, file: !4897, line: 202, baseType: !4994, size: 192, offset: 640)
!4994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4896, file: !4897, line: 202, size: 192, elements: !4995)
!4995 = !{!4996, !5019}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !4994, file: !4897, line: 203, baseType: !4997, size: 192)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_msi_desc", file: !4897, line: 113, size: 192, elements: !4998)
!4998 = !{!4999, !5004, !5014}
!4999 = !DIDerivedType(tag: DW_TAG_member, scope: !4997, file: !4897, line: 114, baseType: !5000, size: 32)
!5000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4997, file: !4897, line: 114, size: 32, elements: !5001)
!5001 = !{!5002, !5003}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "msi_mask", scope: !5000, file: !4897, line: 115, baseType: !532, size: 32)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "msix_ctrl", scope: !5000, file: !4897, line: 116, baseType: !532, size: 32)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !4997, file: !4897, line: 126, baseType: !5005, size: 64, offset: 32)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4997, file: !4897, line: 118, size: 64, elements: !5006)
!5006 = !{!5007, !5008, !5009, !5010, !5011, !5012, !5013}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !5005, file: !4897, line: 119, baseType: !346, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !5005, file: !4897, line: 120, baseType: !346, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !5005, file: !4897, line: 121, baseType: !346, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "can_mask", scope: !5005, file: !4897, line: 122, baseType: !346, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !5005, file: !4897, line: 123, baseType: !346, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !5005, file: !4897, line: 124, baseType: !346, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !5005, file: !4897, line: 125, baseType: !7, size: 32, offset: 32)
!5014 = !DIDerivedType(tag: DW_TAG_member, scope: !4997, file: !4897, line: 127, baseType: !5015, size: 64, offset: 128)
!5015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4997, file: !4897, line: 127, size: 64, elements: !5016)
!5016 = !{!5017, !5018}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !5015, file: !4897, line: 128, baseType: !346, size: 8)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !5015, file: !4897, line: 129, baseType: !246, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4994, file: !4897, line: 204, baseType: !5020, size: 128)
!5020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc_data", file: !4897, line: 160, size: 128, elements: !5021)
!5021 = !{!5022, !5028}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "dcookie", scope: !5020, file: !4897, line: 161, baseType: !5023, size: 64)
!5023 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "msi_domain_cookie", file: !4897, line: 143, size: 64, elements: !5024)
!5024 = !{!5025, !5026, !5027}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5023, file: !4897, line: 144, baseType: !536, size: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5023, file: !4897, line: 145, baseType: !246, size: 64)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !5023, file: !4897, line: 146, baseType: !246, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "icookie", scope: !5020, file: !4897, line: 162, baseType: !5029, size: 64, offset: 64)
!5029 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "msi_instance_cookie", file: !5030, line: 34, size: 64, elements: !5031)
!5030 = !DIFile(filename: "./include/linux/msi_api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fcac0f5d9a7a05197477b5383eee228")
!5031 = !{!5032, !5033}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5029, file: !5030, line: 35, baseType: !536, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5029, file: !5030, line: 36, baseType: !246, size: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !4889, file: !181, line: 155, baseType: !5035, size: 64, offset: 192)
!5035 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1730, line: 913, baseType: !5036)
!5036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1731, size: 64, elements: !1735)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "effective_affinity", scope: !4889, file: !181, line: 158, baseType: !5035, size: 64, offset: 256)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4882, file: !181, line: 184, baseType: !5039, size: 64, offset: 192)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !181, line: 501, size: 2112, elements: !5041)
!5041 = !{!5042, !5043, !5047, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5064, !5068, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5083, !5084, !5085, !5090, !5091, !5095, !5099, !5103, !5107, !5111, !5112, !5113}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5040, file: !181, line: 502, baseType: !306, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !5040, file: !181, line: 503, baseType: !5044, size: 64, offset: 64)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!7, !4881}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !5040, file: !181, line: 504, baseType: !5048, size: 64, offset: 128)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{null, !4881}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !5040, file: !181, line: 505, baseType: !5048, size: 64, offset: 192)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !5040, file: !181, line: 506, baseType: !5048, size: 64, offset: 256)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !5040, file: !181, line: 508, baseType: !5048, size: 64, offset: 320)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !5040, file: !181, line: 509, baseType: !5048, size: 64, offset: 384)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !5040, file: !181, line: 510, baseType: !5048, size: 64, offset: 448)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !5040, file: !181, line: 511, baseType: !5048, size: 64, offset: 512)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !5040, file: !181, line: 512, baseType: !5048, size: 64, offset: 576)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !5040, file: !181, line: 514, baseType: !5059, size: 64, offset: 640)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!147, !4881, !5062, !260}
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1731)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !5040, file: !181, line: 515, baseType: !5065, size: 64, offset: 704)
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!147, !4881}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !5040, file: !181, line: 516, baseType: !5069, size: 64, offset: 768)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!147, !4881, !7}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !5040, file: !181, line: 517, baseType: !5069, size: 64, offset: 832)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !5040, file: !181, line: 519, baseType: !5048, size: 64, offset: 896)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !5040, file: !181, line: 520, baseType: !5048, size: 64, offset: 960)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !5040, file: !181, line: 526, baseType: !5048, size: 64, offset: 1024)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !5040, file: !181, line: 527, baseType: !5048, size: 64, offset: 1088)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !5040, file: !181, line: 528, baseType: !5048, size: 64, offset: 1152)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !5040, file: !181, line: 530, baseType: !5048, size: 64, offset: 1216)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !5040, file: !181, line: 532, baseType: !5080, size: 64, offset: 1280)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{null, !4881, !1160}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !5040, file: !181, line: 533, baseType: !5065, size: 64, offset: 1344)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !5040, file: !181, line: 534, baseType: !5048, size: 64, offset: 1408)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !5040, file: !181, line: 536, baseType: !5086, size: 64, offset: 1472)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{null, !4881, !5089}
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !5040, file: !181, line: 537, baseType: !5086, size: 64, offset: 1536)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !5040, file: !181, line: 539, baseType: !5092, size: 64, offset: 1600)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!147, !4881, !173, !4042}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !5040, file: !181, line: 540, baseType: !5096, size: 64, offset: 1664)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{!147, !4881, !173, !260}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !5040, file: !181, line: 542, baseType: !5100, size: 64, offset: 1728)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!147, !4881, !246}
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !5040, file: !181, line: 544, baseType: !5104, size: 64, offset: 1792)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{null, !4881, !7}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !5040, file: !181, line: 545, baseType: !5108, size: 64, offset: 1856)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{null, !4881, !5062}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !5040, file: !181, line: 547, baseType: !5065, size: 64, offset: 1920)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !5040, file: !181, line: 548, baseType: !5048, size: 64, offset: 1984)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5040, file: !181, line: 550, baseType: !255, size: 64, offset: 2048)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4882, file: !181, line: 185, baseType: !4828, size: 64, offset: 256)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !4882, file: !181, line: 187, baseType: !4881, size: 64, offset: 320)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !4882, file: !181, line: 189, baseType: !246, size: 64, offset: 384)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4837, file: !4830, line: 105, baseType: !5118, size: 64, offset: 512)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{null, !4828, !4881}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4837, file: !4830, line: 106, baseType: !5122, size: 64, offset: 576)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DISubroutineType(types: !5124)
!5124 = !{!147, !4828, !4847, !1069, !792}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4829, file: !4830, line: 154, baseType: !246, size: 64, offset: 256)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4829, file: !4830, line: 155, baseType: !7, size: 32, offset: 320)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4829, file: !4830, line: 156, baseType: !7, size: 32, offset: 352)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4829, file: !4830, line: 157, baseType: !723, size: 256, offset: 384)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4829, file: !4830, line: 158, baseType: !4828, size: 64, offset: 640)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4829, file: !4830, line: 161, baseType: !4521, size: 64, offset: 704)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4829, file: !4830, line: 162, baseType: !154, size: 32, offset: 768)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4829, file: !4830, line: 163, baseType: !5133, size: 64, offset: 832)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !181, line: 1111, size: 192, elements: !5135)
!5135 = !{!5136, !5137, !5138, !5139, !5140, !5141}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !5134, file: !181, line: 1112, baseType: !7, size: 32)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !5134, file: !181, line: 1113, baseType: !7, size: 32, offset: 32)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !5134, file: !181, line: 1114, baseType: !7, size: 32, offset: 64)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !5134, file: !181, line: 1115, baseType: !7, size: 32, offset: 96)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !5134, file: !181, line: 1116, baseType: !180, size: 32, offset: 128)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !5134, file: !181, line: 1117, baseType: !5142, offset: 192)
!5142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5143, elements: !1870)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !181, line: 1061, size: 1024, elements: !5145)
!5145 = !{!5146, !5147, !5148, !5152, !5156, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5144, file: !181, line: 1062, baseType: !681, size: 32)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !5144, file: !181, line: 1063, baseType: !246, size: 64, offset: 64)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !5144, file: !181, line: 1064, baseType: !5149, size: 64, offset: 128)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!532, !246}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !5144, file: !181, line: 1065, baseType: !5153, size: 64, offset: 192)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{null, !532, !246}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5144, file: !181, line: 1066, baseType: !5157, size: 64, offset: 256)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{null, !5143}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5144, file: !181, line: 1067, baseType: !5157, size: 64, offset: 320)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !5144, file: !181, line: 1068, baseType: !7, size: 32, offset: 384)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !5144, file: !181, line: 1069, baseType: !7, size: 32, offset: 416)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !5144, file: !181, line: 1070, baseType: !532, size: 32, offset: 448)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !5144, file: !181, line: 1071, baseType: !532, size: 32, offset: 480)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !5144, file: !181, line: 1072, baseType: !532, size: 32, offset: 512)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !5144, file: !181, line: 1073, baseType: !532, size: 32, offset: 544)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !5144, file: !181, line: 1074, baseType: !532, size: 32, offset: 576)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !5144, file: !181, line: 1075, baseType: !7, size: 32, offset: 608)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5144, file: !181, line: 1076, baseType: !246, size: 64, offset: 640)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !5144, file: !181, line: 1077, baseType: !255, size: 64, offset: 704)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !5144, file: !181, line: 1078, baseType: !255, size: 64, offset: 768)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5144, file: !181, line: 1079, baseType: !4828, size: 64, offset: 832)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5144, file: !181, line: 1080, baseType: !291, size: 128, offset: 896)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !5144, file: !181, line: 1081, baseType: !5175, offset: 1024)
!5175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5176, elements: !1870)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !181, line: 1019, size: 2752, elements: !5177)
!5177 = !{!5178, !5179, !5189, !5274, !5275, !5276}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !5176, file: !181, line: 1020, baseType: !5040, size: 2112)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5176, file: !181, line: 1021, baseType: !5180, size: 448, offset: 2112)
!5180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !181, line: 996, size: 448, elements: !5181)
!5181 = !{!5182, !5183, !5184, !5185, !5186, !5187, !5188}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5180, file: !181, line: 997, baseType: !255, size: 64)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5180, file: !181, line: 998, baseType: !255, size: 64, offset: 64)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5180, file: !181, line: 999, baseType: !255, size: 64, offset: 128)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !5180, file: !181, line: 1000, baseType: !255, size: 64, offset: 192)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !5180, file: !181, line: 1001, baseType: !255, size: 64, offset: 256)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5180, file: !181, line: 1002, baseType: !255, size: 64, offset: 320)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5180, file: !181, line: 1003, baseType: !255, size: 64, offset: 384)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5176, file: !181, line: 1022, baseType: !5190, size: 64, offset: 2560)
!5190 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !5191, line: 12, baseType: !5192)
!5191 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{null, !5195}
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !5197, line: 55, size: 3584, align: 512, elements: !5198)
!5197 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "435ffcdb49377a4c91932ebe21d66dca")
!5198 = !{!5199, !5200, !5201, !5202, !5203, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5240, !5241, !5242, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273}
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !5196, file: !5197, line: 56, baseType: !4889, size: 320)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !5196, file: !5197, line: 57, baseType: !4882, size: 448, offset: 320)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !5196, file: !5197, line: 58, baseType: !792, size: 64, offset: 768)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !5196, file: !5197, line: 59, baseType: !5190, size: 64, offset: 832)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5196, file: !5197, line: 60, baseType: !5204, size: 64, offset: 896)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !174, line: 118, size: 1024, align: 512, elements: !5206)
!5206 = !{!5207, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224}
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5205, file: !174, line: 119, baseType: !5208, size: 64)
!5208 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !174, line: 100, baseType: !5209)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!5212, !147, !246}
!5212 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !189, line: 17, baseType: !188)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !5205, file: !174, line: 120, baseType: !246, size: 64, offset: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !5205, file: !174, line: 121, baseType: !246, size: 64, offset: 128)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5205, file: !174, line: 122, baseType: !5204, size: 64, offset: 192)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !5205, file: !174, line: 123, baseType: !5208, size: 64, offset: 256)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !5205, file: !174, line: 124, baseType: !1486, size: 64, offset: 320)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !5205, file: !174, line: 125, baseType: !5204, size: 64, offset: 384)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5205, file: !174, line: 126, baseType: !7, size: 32, offset: 448)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5205, file: !174, line: 127, baseType: !7, size: 32, offset: 480)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !5205, file: !174, line: 128, baseType: !255, size: 64, offset: 512)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !5205, file: !174, line: 129, baseType: !255, size: 64, offset: 576)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5205, file: !174, line: 130, baseType: !306, size: 64, offset: 640)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5205, file: !174, line: 131, baseType: !5225, size: 64, offset: 704)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !5197, line: 14, flags: DIFlagFwdDecl)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !5196, file: !5197, line: 61, baseType: !7, size: 32, offset: 960)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !5196, file: !5197, line: 62, baseType: !7, size: 32, offset: 992)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5196, file: !5197, line: 63, baseType: !7, size: 32, offset: 1024)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !5196, file: !5197, line: 64, baseType: !7, size: 32, offset: 1056)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !5196, file: !5197, line: 65, baseType: !7, size: 32, offset: 1088)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5196, file: !5197, line: 66, baseType: !7, size: 32, offset: 1120)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !5196, file: !5197, line: 67, baseType: !255, size: 64, offset: 1152)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !5196, file: !5197, line: 68, baseType: !7, size: 32, offset: 1216)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !5196, file: !5197, line: 69, baseType: !338, size: 32, offset: 1248)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !5196, file: !5197, line: 70, baseType: !147, size: 32, offset: 1280)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5196, file: !5197, line: 71, baseType: !681, size: 32, offset: 1312)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !5196, file: !5197, line: 72, baseType: !5239, size: 64, offset: 1344)
!5239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !5196, file: !5197, line: 73, baseType: !5062, size: 64, offset: 1408)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_hint", scope: !5196, file: !5197, line: 75, baseType: !5062, size: 64, offset: 1472)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_notify", scope: !5196, file: !5197, line: 76, baseType: !5243, size: 64, offset: 1536)
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_notify", file: !174, line: 261, size: 448, elements: !5245)
!5245 = !{!5246, !5247, !5248, !5249, !5253}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5244, file: !174, line: 262, baseType: !7, size: 32)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5244, file: !174, line: 263, baseType: !4221, size: 32, offset: 32)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5244, file: !174, line: 264, baseType: !978, size: 256, offset: 64)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5244, file: !174, line: 265, baseType: !5250, size: 64, offset: 320)
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{null, !5243, !1727}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5244, file: !174, line: 266, baseType: !5254, size: 64, offset: 384)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{null, !5257}
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mask", scope: !5196, file: !5197, line: 78, baseType: !5035, size: 64, offset: 1600)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !5196, file: !5197, line: 81, baseType: !255, size: 64, offset: 1664)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !5196, file: !5197, line: 82, baseType: !338, size: 32, offset: 1728)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !5196, file: !5197, line: 83, baseType: !1473, size: 192, offset: 1792)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !5196, file: !5197, line: 85, baseType: !7, size: 32, offset: 1984)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !5196, file: !5197, line: 86, baseType: !7, size: 32, offset: 2016)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !5196, file: !5197, line: 87, baseType: !7, size: 32, offset: 2048)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !5196, file: !5197, line: 88, baseType: !7, size: 32, offset: 2080)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5196, file: !5197, line: 91, baseType: !5225, size: 64, offset: 2112)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5196, file: !5197, line: 98, baseType: !938, size: 128, align: 64, offset: 2176)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5196, file: !5197, line: 99, baseType: !302, size: 512, offset: 2304)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !5196, file: !5197, line: 101, baseType: !723, size: 256, offset: 2816)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !5196, file: !5197, line: 102, baseType: !147, size: 32, offset: 3072)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5196, file: !5197, line: 103, baseType: !652, size: 64, offset: 3136)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5196, file: !5197, line: 104, baseType: !306, size: 64, offset: 3200)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "resend_node", scope: !5196, file: !5197, line: 106, baseType: !964, size: 128, offset: 3264)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5176, file: !181, line: 1023, baseType: !532, size: 32, offset: 2624)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !5176, file: !181, line: 1024, baseType: !532, size: 32, offset: 2656)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !5176, file: !181, line: 1025, baseType: !2699, size: 64, offset: 2688)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4829, file: !4830, line: 164, baseType: !298, size: 64, offset: 896)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "pm_dev", scope: !4829, file: !4830, line: 165, baseType: !298, size: 64, offset: 960)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4829, file: !4830, line: 167, baseType: !4828, size: 64, offset: 1024)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "msi_parent_ops", scope: !4829, file: !4830, line: 170, baseType: !5281, size: 64, offset: 1088)
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5282, size: 64)
!5282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5283)
!5283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_parent_ops", file: !4897, line: 580, size: 192, elements: !5284)
!5284 = !{!5285, !5286, !5287}
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "supported_flags", scope: !5283, file: !4897, line: 581, baseType: !532, size: 32)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5283, file: !4897, line: 582, baseType: !306, size: 64, offset: 64)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "init_dev_msi_info", scope: !5283, file: !4897, line: 583, baseType: !5288, size: 64, offset: 128)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!260, !298, !4828, !4828, !5291}
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_domain_info", file: !4897, line: 489, size: 576, elements: !5293)
!5293 = !{!5294, !5295, !5296, !5297, !5363, !5364, !5365, !5366, !5367, !5368}
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5292, file: !4897, line: 490, baseType: !532, size: 32)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !5292, file: !4897, line: 491, baseType: !154, size: 32, offset: 32)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "hwsize", scope: !5292, file: !4897, line: 492, baseType: !7, size: 32, offset: 64)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5292, file: !4897, line: 493, baseType: !5298, size: 64, offset: 128)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_domain_ops", file: !4897, line: 448, size: 576, elements: !5300)
!5300 = !{!5301, !5334, !5338, !5342, !5346, !5350, !5354, !5358, !5362}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "get_hwirq", scope: !5299, file: !4897, line: 449, baseType: !5302, size: 64)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!4858, !5291, !5305}
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_typedef, name: "msi_alloc_info_t", file: !4911, line: 7, baseType: !5307)
!5307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_alloc_info", file: !195, line: 75, size: 576, elements: !5308)
!5308 = !{!5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5307, file: !195, line: 76, baseType: !194, size: 32)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5307, file: !195, line: 77, baseType: !532, size: 32, offset: 32)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !5307, file: !195, line: 78, baseType: !532, size: 32, offset: 64)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !5307, file: !195, line: 79, baseType: !4858, size: 64, offset: 128)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5307, file: !195, line: 80, baseType: !5062, size: 64, offset: 192)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5307, file: !195, line: 81, baseType: !4895, size: 64, offset: 256)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5307, file: !195, line: 82, baseType: !246, size: 64, offset: 320)
!5316 = !DIDerivedType(tag: DW_TAG_member, scope: !5307, file: !195, line: 84, baseType: !5317, size: 192, offset: 384)
!5317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5307, file: !195, line: 84, size: 192, elements: !5318)
!5318 = !{!5319, !5327}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "ioapic", scope: !5317, file: !195, line: 85, baseType: !5320, size: 96)
!5320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ioapic_alloc_info", file: !195, line: 46, size: 96, elements: !5321)
!5321 = !{!5322, !5323, !5324, !5325, !5326}
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !5320, file: !195, line: 47, baseType: !147, size: 32)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5320, file: !195, line: 48, baseType: !147, size: 32, offset: 32)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "is_level", scope: !5320, file: !195, line: 49, baseType: !532, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "active_low", scope: !5320, file: !195, line: 50, baseType: !532, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5320, file: !195, line: 51, baseType: !532, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !5317, file: !195, line: 86, baseType: !5328, size: 192)
!5328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uv_alloc_info", file: !195, line: 54, size: 192, elements: !5329)
!5329 = !{!5330, !5331, !5332, !5333}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !5328, file: !195, line: 55, baseType: !147, size: 32)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "blade", scope: !5328, file: !195, line: 56, baseType: !147, size: 32, offset: 32)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5328, file: !195, line: 57, baseType: !255, size: 64, offset: 64)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5328, file: !195, line: 58, baseType: !388, size: 64, offset: 128)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "msi_init", scope: !5299, file: !4897, line: 451, baseType: !5335, size: 64, offset: 64)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{!147, !4828, !5291, !7, !4858, !5305}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "msi_free", scope: !5299, file: !4897, line: 455, baseType: !5339, size: 64, offset: 128)
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5340 = !DISubroutineType(types: !5341)
!5341 = !{null, !4828, !5291, !7}
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "msi_prepare", scope: !5299, file: !4897, line: 458, baseType: !5343, size: 64, offset: 192)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!147, !4828, !298, !147, !5305}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_desc", scope: !5299, file: !4897, line: 461, baseType: !5347, size: 64, offset: 256)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{null, !4828, !5305, !4895}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "set_desc", scope: !5299, file: !4897, line: 463, baseType: !5351, size: 64, offset: 320)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{null, !5305, !4895}
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "domain_alloc_irqs", scope: !5299, file: !4897, line: 465, baseType: !5355, size: 64, offset: 384)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{!147, !4828, !298, !147}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "domain_free_irqs", scope: !5299, file: !4897, line: 467, baseType: !5359, size: 64, offset: 448)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{null, !4828, !298}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "msi_post_free", scope: !5299, file: !4897, line: 469, baseType: !5359, size: 64, offset: 512)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !5292, file: !4897, line: 494, baseType: !5039, size: 64, offset: 192)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !5292, file: !4897, line: 495, baseType: !246, size: 64, offset: 256)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5292, file: !4897, line: 496, baseType: !5190, size: 64, offset: 320)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !5292, file: !4897, line: 497, baseType: !246, size: 64, offset: 384)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "handler_name", scope: !5292, file: !4897, line: 498, baseType: !306, size: 64, offset: 448)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5292, file: !4897, line: 499, baseType: !246, size: 64, offset: 512)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4829, file: !4830, line: 174, baseType: !4858, size: 64, offset: 1152)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4829, file: !4830, line: 175, baseType: !7, size: 32, offset: 1216)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4829, file: !4830, line: 176, baseType: !3831, size: 128, offset: 1280)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "revmap", scope: !4829, file: !4830, line: 177, baseType: !5373, offset: 1408)
!5373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4881, elements: !1870)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4825, file: !132, line: 532, baseType: !5375, size: 64, offset: 64)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5376, size: 64)
!5376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !4897, line: 239, size: 832, elements: !5377)
!5377 = !{!5378, !5379, !5382, !5383, !5389}
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5376, file: !4897, line: 240, baseType: !255, size: 64)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !5376, file: !4897, line: 241, baseType: !5380, size: 64, offset: 64)
!5380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5381, size: 64)
!5381 = !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !4897, line: 84, flags: DIFlagFwdDecl)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5376, file: !4897, line: 242, baseType: !723, size: 256, offset: 128)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "__domains", scope: !5376, file: !4897, line: 243, baseType: !5384, size: 384, offset: 384)
!5384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5385, size: 384, elements: !837)
!5385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_dev_domain", file: !4897, line: 226, size: 192, elements: !5386)
!5386 = !{!5387, !5388}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5385, file: !4897, line: 227, baseType: !3831, size: 128)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5385, file: !4897, line: 228, baseType: !4828, size: 64, offset: 128)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "__iter_idx", scope: !5376, file: !4897, line: 244, baseType: !255, size: 64, offset: 768)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !299, file: !132, line: 738, baseType: !5391, size: 64, offset: 4416)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5393)
!5393 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !132, line: 738, flags: DIFlagFwdDecl)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !299, file: !132, line: 740, baseType: !5395, size: 64, offset: 4480)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !299, file: !132, line: 741, baseType: !536, size: 64, offset: 4544)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !299, file: !132, line: 746, baseType: !536, size: 64, offset: 4608)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !299, file: !132, line: 747, baseType: !5399, size: 64, offset: 4672)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5401)
!5401 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !132, line: 747, flags: DIFlagFwdDecl)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !299, file: !132, line: 749, baseType: !5403, size: 64, offset: 4736)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !132, line: 428, size: 128, elements: !5405)
!5405 = !{!5406, !5407, !5408}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5404, file: !132, line: 433, baseType: !7, size: 32)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5404, file: !132, line: 434, baseType: !7, size: 32, offset: 32)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5404, file: !132, line: 435, baseType: !255, size: 64, offset: 64)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !299, file: !132, line: 751, baseType: !291, size: 128, offset: 4800)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !299, file: !132, line: 762, baseType: !5411, size: 64, offset: 4928)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !132, line: 762, flags: DIFlagFwdDecl)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !299, file: !132, line: 770, baseType: !5414, offset: 4992)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5415, line: 5, elements: !1007)
!5415 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !299, file: !132, line: 772, baseType: !4647, size: 64, offset: 4992)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !299, file: !132, line: 773, baseType: !4521, size: 64, offset: 5056)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !299, file: !132, line: 776, baseType: !147, size: 32, offset: 5120)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !299, file: !132, line: 778, baseType: !619, size: 32, offset: 5152)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !299, file: !132, line: 779, baseType: !532, size: 32, offset: 5184)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !299, file: !132, line: 781, baseType: !318, size: 32, offset: 5216)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !299, file: !132, line: 782, baseType: !291, size: 128, offset: 5248)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !299, file: !132, line: 784, baseType: !5424, size: 64, offset: 5376)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5426)
!5426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5427, line: 52, size: 768, elements: !5428)
!5427 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5428 = !{!5429, !5430, !5431, !5432, !5433, !5437, !5441, !5442, !5443, !5444, !5448, !5452}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5426, file: !5427, line: 53, baseType: !306, size: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5426, file: !5427, line: 55, baseType: !435, size: 64, offset: 64)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5426, file: !5427, line: 56, baseType: !435, size: 64, offset: 128)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5426, file: !5427, line: 58, baseType: !4243, size: 64, offset: 192)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5426, file: !5427, line: 59, baseType: !5434, size: 64, offset: 256)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5435, size: 64)
!5435 = !DISubroutineType(types: !5436)
!5436 = !{!388, !4246, !4252}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5426, file: !5427, line: 61, baseType: !5438, size: 64, offset: 320)
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5439, size: 64)
!5439 = !DISubroutineType(types: !5440)
!5440 = !{null, !5424}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5426, file: !5427, line: 62, baseType: !4254, size: 64, offset: 384)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5426, file: !5427, line: 64, baseType: !4263, size: 64, offset: 448)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5426, file: !5427, line: 66, baseType: !4082, size: 64, offset: 512)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5426, file: !5427, line: 67, baseType: !5445, size: 64, offset: 576)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!2622, !4246}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5426, file: !5427, line: 69, baseType: !5449, size: 64, offset: 640)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{null, !4246, !4114, !4115}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5426, file: !5427, line: 71, baseType: !4258, size: 64, offset: 704)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !299, file: !132, line: 785, baseType: !435, size: 64, offset: 5440)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !299, file: !132, line: 787, baseType: !4254, size: 64, offset: 5504)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !299, file: !132, line: 788, baseType: !4632, size: 64, offset: 5568)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !299, file: !132, line: 789, baseType: !5457, size: 64, offset: 5632)
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !108, line: 425, size: 640, elements: !5459)
!5459 = !{!5460, !5461, !5473, !5476, !5486, !5487, !5488, !5489, !5490, !5491}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5458, file: !108, line: 426, baseType: !723, size: 256)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "fault_param", scope: !5458, file: !108, line: 427, baseType: !5462, size: 64, offset: 256)
!5462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5463, size: 64)
!5463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_param", file: !108, line: 402, size: 512, elements: !5464)
!5464 = !{!5465, !5470, !5471, !5472}
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5463, file: !108, line: 403, baseType: !5466, size: 64)
!5466 = !DIDerivedType(tag: DW_TAG_typedef, name: "iommu_dev_fault_handler_t", file: !108, line: 51, baseType: !5467)
!5467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5468, size: 64)
!5468 = !DISubroutineType(types: !5469)
!5469 = !{!147, !4464, !246}
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5463, file: !108, line: 404, baseType: !246, size: 64, offset: 64)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "faults", scope: !5463, file: !108, line: 405, baseType: !291, size: 128, offset: 128)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5463, file: !108, line: 406, baseType: !723, size: 256, offset: 256)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "iopf_param", scope: !5458, file: !108, line: 428, baseType: !5474, size: 64, offset: 320)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DICompositeType(tag: DW_TAG_structure_type, name: "iopf_device_param", file: !108, line: 428, flags: DIFlagFwdDecl)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "fwspec", scope: !5458, file: !108, line: 429, baseType: !5477, size: 64, offset: 384)
!5477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5478, size: 64)
!5478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fwspec", file: !108, line: 654, size: 192, elements: !5479)
!5479 = !{!5480, !5481, !5482, !5483, !5484}
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5478, file: !108, line: 655, baseType: !4369, size: 64)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_fwnode", scope: !5478, file: !108, line: 656, baseType: !4521, size: 64, offset: 64)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5478, file: !108, line: 657, baseType: !532, size: 32, offset: 128)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "num_ids", scope: !5478, file: !108, line: 658, baseType: !7, size: 32, offset: 160)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5478, file: !108, line: 659, baseType: !5485, offset: 192)
!5485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, elements: !1870)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_dev", scope: !5458, file: !108, line: 430, baseType: !4515, size: 64, offset: 448)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5458, file: !108, line: 431, baseType: !246, size: 64, offset: 512)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "max_pasids", scope: !5458, file: !108, line: 432, baseType: !532, size: 32, offset: 576)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "attach_deferred", scope: !5458, file: !108, line: 433, baseType: !532, size: 1, offset: 608, flags: DIFlagBitField, extraData: i64 608)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "pci_32bit_workaround", scope: !5458, file: !108, line: 434, baseType: !532, size: 1, offset: 609, flags: DIFlagBitField, extraData: i64 608)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "require_direct", scope: !5458, file: !108, line: 435, baseType: !532, size: 1, offset: 610, flags: DIFlagBitField, extraData: i64 608)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !299, file: !132, line: 791, baseType: !5493, size: 64, offset: 5696)
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5494, size: 64)
!5494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !132, line: 597, size: 128, elements: !5495)
!5495 = !{!5496, !5497, !5498, !5499, !5500}
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5494, file: !132, line: 598, baseType: !204, size: 32)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5494, file: !132, line: 599, baseType: !213, size: 32, offset: 32)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5494, file: !132, line: 600, baseType: !218, size: 32, offset: 64)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5494, file: !132, line: 601, baseType: !260, size: 8, offset: 96)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5494, file: !132, line: 602, baseType: !260, size: 8, offset: 104)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !299, file: !132, line: 793, baseType: !223, size: 32, offset: 5760)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !299, file: !132, line: 795, baseType: !260, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !299, file: !132, line: 796, baseType: !260, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !299, file: !132, line: 797, baseType: !260, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !299, file: !132, line: 798, baseType: !260, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !299, file: !132, line: 799, baseType: !260, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5507 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !6, line: 104, baseType: !5508, size: 320, offset: 384)
!5508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !6, line: 104, size: 320, elements: !5509)
!5509 = !{!5510, !5524, !5538, !5545, !5550}
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "arm_lpae_s1_cfg", scope: !5508, file: !6, line: 116, baseType: !5511, size: 192)
!5511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5508, file: !6, line: 105, size: 192, elements: !5512)
!5512 = !{!5513, !5514, !5523}
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "ttbr", scope: !5511, file: !6, line: 106, baseType: !536, size: 64)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "tcr", scope: !5511, file: !6, line: 114, baseType: !5515, size: 32, offset: 64)
!5515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5511, file: !6, line: 107, size: 32, elements: !5516)
!5516 = !{!5517, !5518, !5519, !5520, !5521, !5522}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "ips", scope: !5515, file: !6, line: 108, baseType: !532, size: 3, flags: DIFlagBitField, extraData: i64 0)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "tg", scope: !5515, file: !6, line: 109, baseType: !532, size: 2, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !5515, file: !6, line: 110, baseType: !532, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "orgn", scope: !5515, file: !6, line: 111, baseType: !532, size: 2, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "irgn", scope: !5515, file: !6, line: 112, baseType: !532, size: 2, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "tsz", scope: !5515, file: !6, line: 113, baseType: !532, size: 6, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "mair", scope: !5511, file: !6, line: 115, baseType: !536, size: 64, offset: 128)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "arm_lpae_s2_cfg", scope: !5508, file: !6, line: 129, baseType: !5525, size: 128)
!5525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5508, file: !6, line: 118, size: 128, elements: !5526)
!5526 = !{!5527, !5528}
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "vttbr", scope: !5525, file: !6, line: 119, baseType: !536, size: 64)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "vtcr", scope: !5525, file: !6, line: 128, baseType: !5529, size: 32, offset: 64)
!5529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5525, file: !6, line: 120, size: 32, elements: !5530)
!5530 = !{!5531, !5532, !5533, !5534, !5535, !5536, !5537}
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "ps", scope: !5529, file: !6, line: 121, baseType: !532, size: 3, flags: DIFlagBitField, extraData: i64 0)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "tg", scope: !5529, file: !6, line: 122, baseType: !532, size: 2, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !5529, file: !6, line: 123, baseType: !532, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "orgn", scope: !5529, file: !6, line: 124, baseType: !532, size: 2, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "irgn", scope: !5529, file: !6, line: 125, baseType: !532, size: 2, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5529, file: !6, line: 126, baseType: !532, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "tsz", scope: !5529, file: !6, line: 127, baseType: !532, size: 6, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "arm_v7s_cfg", scope: !5508, file: !6, line: 136, baseType: !5539, size: 128)
!5539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5508, file: !6, line: 131, size: 128, elements: !5540)
!5540 = !{!5541, !5542, !5543, !5544}
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "ttbr", scope: !5539, file: !6, line: 132, baseType: !532, size: 32)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "tcr", scope: !5539, file: !6, line: 133, baseType: !532, size: 32, offset: 32)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "nmrr", scope: !5539, file: !6, line: 134, baseType: !532, size: 32, offset: 64)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "prrr", scope: !5539, file: !6, line: 135, baseType: !532, size: 32, offset: 96)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "arm_mali_lpae_cfg", scope: !5508, file: !6, line: 141, baseType: !5546, size: 128)
!5546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5508, file: !6, line: 138, size: 128, elements: !5547)
!5547 = !{!5548, !5549}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "transtab", scope: !5546, file: !6, line: 139, baseType: !536, size: 64)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "memattr", scope: !5546, file: !6, line: 140, baseType: !536, size: 64, offset: 64)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "apple_dart_cfg", scope: !5508, file: !6, line: 146, baseType: !5551, size: 320)
!5551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5508, file: !6, line: 143, size: 320, elements: !5552)
!5552 = !{!5553, !5555}
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "ttbr", scope: !5551, file: !6, line: 144, baseType: !5554, size: 256)
!5554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 256, elements: !948)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "n_ttbrs", scope: !5551, file: !6, line: 145, baseType: !532, size: 32, offset: 256)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "iop", scope: !248, file: !249, line: 544, baseType: !5557, size: 1024, offset: 704)
!5557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_pgtable", file: !6, line: 208, size: 1024, elements: !5558)
!5558 = !{!5559, !5560, !5561, !5562}
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5557, file: !6, line: 209, baseType: !5, size: 32)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !5557, file: !6, line: 210, baseType: !246, size: 64, offset: 64)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !5557, file: !6, line: 211, baseType: !252, size: 704, offset: 128)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5557, file: !6, line: 212, baseType: !5563, size: 192, offset: 832)
!5563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_pgtable_ops", file: !6, line: 160, size: 192, elements: !5564)
!5564 = !{!5565, !5570, !5574}
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !5563, file: !6, line: 161, baseType: !5566, size: 64)
!5566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5567, size: 64)
!5567 = !DISubroutineType(types: !5568)
!5568 = !{!147, !5569, !255, !3326, !276, !276, !147, !1232, !4411}
!5569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5563, size: 64)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_pages", scope: !5563, file: !6, line: 164, baseType: !5571, size: 64, offset: 64)
!5571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5572, size: 64)
!5572 = !DISubroutineType(types: !5573)
!5573 = !{!276, !5569, !255, !276, !276, !284}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "iova_to_phys", scope: !5563, file: !6, line: 167, baseType: !5575, size: 64, offset: 128)
!5575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5576, size: 64)
!5576 = !DISubroutineType(types: !5577)
!5577 = !{!3326, !5569, !255}
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !248, file: !249, line: 545, baseType: !147, size: 32, offset: 1728)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !248, file: !249, line: 546, baseType: !5395, size: 64, offset: 1792)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "pt_root", scope: !248, file: !249, line: 547, baseType: !729, size: 64, offset: 1856)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !248, file: !249, line: 548, baseType: !5395, size: 64, offset: 1920)
!5582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5583, size: 64)
!5583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "protection_domain", file: !249, line: 555, size: 4160, elements: !5584)
!5584 = !{!5585, !5586, !5587, !5588, !5589, !5590, !5591, !5592, !5593, !5594, !5595}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "dev_list", scope: !5583, file: !249, line: 556, baseType: !291, size: 128)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5583, file: !249, line: 557, baseType: !4386, size: 704, offset: 128)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "iop", scope: !5583, file: !249, line: 559, baseType: !248, size: 1984, offset: 832)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5583, file: !249, line: 560, baseType: !318, size: 32, offset: 2816)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5583, file: !249, line: 561, baseType: !356, size: 16, offset: 2848)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "glx", scope: !5583, file: !249, line: 562, baseType: !147, size: 32, offset: 2880)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !5583, file: !249, line: 563, baseType: !147, size: 32, offset: 2912)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "gcr3_tbl", scope: !5583, file: !249, line: 564, baseType: !5395, size: 64, offset: 2944)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5583, file: !249, line: 565, baseType: !255, size: 64, offset: 3008)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "dev_cnt", scope: !5583, file: !249, line: 566, baseType: !7, size: 32, offset: 3072)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "dev_iommu", scope: !5583, file: !249, line: 567, baseType: !5596, size: 1024, offset: 3104)
!5596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !545)
!5597 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !261, line: 42, baseType: !255)
!5598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!5599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5557, size: 64)
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5601, size: 64)
!5601 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !536)
!5602 = !{!0, !5603, !5609, !5614}
!5603 = !DIGlobalVariableExpression(var: !5604, expr: !DIExpression())
!5604 = distinct !DIGlobalVariable(scope: null, file: !5605, line: 223, type: !5606, isLocal: true, isDefinition: true)
!5605 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!5606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 384, elements: !5607)
!5607 = !{!5608}
!5608 = !DISubrange(count: 48)
!5609 = !DIGlobalVariableExpression(var: !5610, expr: !DIExpression())
!5610 = distinct !DIGlobalVariable(scope: null, file: !3, line: 251, type: !5611, isLocal: true, isDefinition: true)
!5611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 272, elements: !5612)
!5612 = !{!5613}
!5613 = !DISubrange(count: 34)
!5614 = !DIGlobalVariableExpression(var: !5615, expr: !DIExpression())
!5615 = distinct !DIGlobalVariable(name: "v2_flush_ops", scope: !2, file: !3, line: 351, type: !265, isLocal: true, isDefinition: true)
!5616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_pgtable_init_fns", file: !6, line: 247, size: 128, elements: !5617)
!5617 = !{!5618, !5623}
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5616, file: !6, line: 248, baseType: !5619, size: 64)
!5619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5620, size: 64)
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!5599, !5622, !246}
!5622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5616, file: !6, line: 249, baseType: !5624, size: 64, offset: 64)
!5624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5625, size: 64)
!5625 = !DISubroutineType(types: !5626)
!5626 = !{null, !5599}
!5627 = !{i32 7, !"Dwarf Version", i32 5}
!5628 = !{i32 2, !"Debug Info Version", i32 3}
!5629 = !{i32 1, !"wchar_size", i32 2}
!5630 = !{i32 8, !"cf-protection-branch", i32 1}
!5631 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5632 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5633 = !{i32 1, !"Code Model", i32 2}
!5634 = !{i32 1, !"override-stack-alignment", i32 8}
!5635 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5636 = distinct !DISubprogram(name: "v2_alloc_pgtable", scope: !3, file: !3, line: 376, type: !5620, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5637)
!5637 = !{!5638, !5639, !5640, !5641, !5643, !5644, !5645, !5646}
!5638 = !DILocalVariable(name: "cfg", arg: 1, scope: !5636, file: !3, line: 376, type: !5622)
!5639 = !DILocalVariable(name: "cookie", arg: 2, scope: !5636, file: !3, line: 376, type: !246)
!5640 = !DILocalVariable(name: "pgtable", scope: !5636, file: !3, line: 378, type: !247)
!5641 = !DILocalVariable(name: "__mptr", scope: !5642, file: !3, line: 378, type: !246)
!5642 = distinct !DILexicalBlock(scope: !5636, file: !3, line: 378, column: 35)
!5643 = !DILocalVariable(name: "pdom", scope: !5636, file: !3, line: 379, type: !5582)
!5644 = !DILocalVariable(name: "ret", scope: !5636, file: !3, line: 380, type: !147)
!5645 = !DILocalVariable(name: "ias", scope: !5636, file: !3, line: 381, type: !147)
!5646 = !DILabel(scope: !5636, name: "err_free_pgd", file: !3, line: 405)
!5647 = !DILocation(line: 376, column: 67, scope: !5636)
!5648 = !DILocation(line: 376, column: 78, scope: !5636)
!5649 = !DILocation(line: 378, column: 2, scope: !5636)
!5650 = !DILocation(line: 378, column: 25, scope: !5636)
!5651 = !DILocation(line: 378, column: 35, scope: !5642)
!5652 = !DILocation(line: 378, column: 35, scope: !5636)
!5653 = !DILocation(line: 379, column: 2, scope: !5636)
!5654 = !DILocation(line: 379, column: 28, scope: !5636)
!5655 = !DILocation(line: 379, column: 63, scope: !5636)
!5656 = !DILocation(line: 380, column: 2, scope: !5636)
!5657 = !DILocation(line: 380, column: 6, scope: !5636)
!5658 = !DILocation(line: 381, column: 2, scope: !5636)
!5659 = !DILocation(line: 381, column: 6, scope: !5636)
!5660 = !DILocation(line: 383, column: 36, scope: !5636)
!5661 = !DILocation(line: 383, column: 42, scope: !5636)
!5662 = !DILocation(line: 383, column: 17, scope: !5636)
!5663 = !DILocation(line: 383, column: 2, scope: !5636)
!5664 = !DILocation(line: 383, column: 11, scope: !5636)
!5665 = !DILocation(line: 383, column: 15, scope: !5636)
!5666 = !DILocation(line: 384, column: 7, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5636, file: !3, line: 384, column: 6)
!5668 = !DILocation(line: 384, column: 16, scope: !5667)
!5669 = !DILocation(line: 384, column: 6, scope: !5636)
!5670 = !DILocation(line: 385, column: 3, scope: !5667)
!5671 = !DILocation(line: 387, column: 35, scope: !5636)
!5672 = !DILocation(line: 387, column: 41, scope: !5636)
!5673 = !DILocation(line: 387, column: 71, scope: !5636)
!5674 = !DILocation(line: 387, column: 80, scope: !5636)
!5675 = !DILocation(line: 387, column: 52, scope: !5636)
!5676 = !DILocation(line: 387, column: 8, scope: !5636)
!5677 = !DILocation(line: 387, column: 6, scope: !5636)
!5678 = !DILocation(line: 388, column: 6, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5636, file: !3, line: 388, column: 6)
!5680 = !DILocation(line: 388, column: 6, scope: !5636)
!5681 = !DILocation(line: 389, column: 3, scope: !5679)
!5682 = !DILocation(line: 391, column: 6, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5636, file: !3, line: 391, column: 6)
!5684 = !DILocation(line: 391, column: 26, scope: !5683)
!5685 = !DILocation(line: 391, column: 6, scope: !5636)
!5686 = !DILocation(line: 392, column: 7, scope: !5683)
!5687 = !DILocation(line: 392, column: 3, scope: !5683)
!5688 = !DILocation(line: 394, column: 2, scope: !5636)
!5689 = !DILocation(line: 394, column: 11, scope: !5636)
!5690 = !DILocation(line: 394, column: 15, scope: !5636)
!5691 = !DILocation(line: 394, column: 19, scope: !5636)
!5692 = !DILocation(line: 394, column: 32, scope: !5636)
!5693 = !DILocation(line: 395, column: 2, scope: !5636)
!5694 = !DILocation(line: 395, column: 11, scope: !5636)
!5695 = !DILocation(line: 395, column: 15, scope: !5636)
!5696 = !DILocation(line: 395, column: 19, scope: !5636)
!5697 = !DILocation(line: 395, column: 32, scope: !5636)
!5698 = !DILocation(line: 396, column: 2, scope: !5636)
!5699 = !DILocation(line: 396, column: 11, scope: !5636)
!5700 = !DILocation(line: 396, column: 15, scope: !5636)
!5701 = !DILocation(line: 396, column: 19, scope: !5636)
!5702 = !DILocation(line: 396, column: 32, scope: !5636)
!5703 = !DILocation(line: 398, column: 2, scope: !5636)
!5704 = !DILocation(line: 398, column: 7, scope: !5636)
!5705 = !DILocation(line: 398, column: 21, scope: !5636)
!5706 = !DILocation(line: 399, column: 23, scope: !5636)
!5707 = !DILocation(line: 399, column: 2, scope: !5636)
!5708 = !DILocation(line: 399, column: 7, scope: !5636)
!5709 = !DILocation(line: 399, column: 21, scope: !5636)
!5710 = !DILocation(line: 400, column: 2, scope: !5636)
!5711 = !DILocation(line: 400, column: 7, scope: !5636)
!5712 = !DILocation(line: 400, column: 21, scope: !5636)
!5713 = !DILocation(line: 401, column: 2, scope: !5636)
!5714 = !DILocation(line: 401, column: 7, scope: !5636)
!5715 = !DILocation(line: 401, column: 21, scope: !5636)
!5716 = !DILocation(line: 403, column: 10, scope: !5636)
!5717 = !DILocation(line: 403, column: 19, scope: !5636)
!5718 = !DILocation(line: 403, column: 2, scope: !5636)
!5719 = !DILocation(line: 405, column: 1, scope: !5636)
!5720 = !DILocation(line: 406, column: 20, scope: !5636)
!5721 = !DILocation(line: 406, column: 29, scope: !5636)
!5722 = !DILocation(line: 406, column: 2, scope: !5636)
!5723 = !DILocation(line: 408, column: 2, scope: !5636)
!5724 = !DILocation(line: 409, column: 1, scope: !5636)
!5725 = distinct !DISubprogram(name: "v2_free_pgtable", scope: !3, file: !3, line: 357, type: !5625, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5726)
!5726 = !{!5727, !5728, !5729, !5730, !5732}
!5727 = !DILocalVariable(name: "iop", arg: 1, scope: !5725, file: !3, line: 357, type: !5599)
!5728 = !DILocalVariable(name: "pdom", scope: !5725, file: !3, line: 359, type: !5582)
!5729 = !DILocalVariable(name: "pgtable", scope: !5725, file: !3, line: 360, type: !247)
!5730 = !DILocalVariable(name: "__mptr", scope: !5731, file: !3, line: 360, type: !246)
!5731 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 360, column: 35)
!5732 = !DILocalVariable(name: "__mptr", scope: !5733, file: !3, line: 362, type: !246)
!5733 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 362, column: 9)
!5734 = !DILocation(line: 357, column: 48, scope: !5725)
!5735 = !DILocation(line: 359, column: 2, scope: !5725)
!5736 = !DILocation(line: 359, column: 28, scope: !5725)
!5737 = !DILocation(line: 360, column: 2, scope: !5725)
!5738 = !DILocation(line: 360, column: 25, scope: !5725)
!5739 = !DILocation(line: 360, column: 35, scope: !5731)
!5740 = !DILocation(line: 360, column: 35, scope: !5725)
!5741 = !DILocation(line: 362, column: 9, scope: !5733)
!5742 = !DILocation(line: 362, column: 9, scope: !5725)
!5743 = !DILocation(line: 362, column: 7, scope: !5725)
!5744 = !DILocation(line: 363, column: 8, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 363, column: 6)
!5746 = !DILocation(line: 363, column: 14, scope: !5745)
!5747 = !DILocation(line: 363, column: 20, scope: !5745)
!5748 = !DILocation(line: 363, column: 6, scope: !5725)
!5749 = !DILocation(line: 364, column: 3, scope: !5745)
!5750 = !DILocation(line: 370, column: 26, scope: !5725)
!5751 = !DILocation(line: 370, column: 2, scope: !5725)
!5752 = !DILocation(line: 373, column: 15, scope: !5725)
!5753 = !DILocation(line: 373, column: 24, scope: !5725)
!5754 = !DILocation(line: 373, column: 29, scope: !5725)
!5755 = !DILocation(line: 373, column: 2, scope: !5725)
!5756 = !DILocation(line: 374, column: 1, scope: !5725)
!5757 = distinct !DISubprogram(name: "alloc_pgtable_page", scope: !5758, file: !5758, line: 127, type: !5759, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5761)
!5758 = !DIFile(filename: "drivers/iommu/amd/amd_iommu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aede48238cd268ef1a1785d928ba502c")
!5759 = !DISubroutineType(types: !5760)
!5760 = !{!246, !147, !1232}
!5761 = !{!5762, !5763, !5764}
!5762 = !DILocalVariable(name: "nid", arg: 1, scope: !5757, file: !5758, line: 127, type: !147)
!5763 = !DILocalVariable(name: "gfp", arg: 2, scope: !5757, file: !5758, line: 127, type: !1232)
!5764 = !DILocalVariable(name: "page", scope: !5757, file: !5758, line: 129, type: !2270)
!5765 = !DILocation(line: 127, column: 44, scope: !5757)
!5766 = !DILocation(line: 127, column: 55, scope: !5757)
!5767 = !DILocation(line: 129, column: 2, scope: !5757)
!5768 = !DILocation(line: 129, column: 15, scope: !5757)
!5769 = !DILocation(line: 131, column: 26, scope: !5757)
!5770 = !DILocation(line: 131, column: 31, scope: !5757)
!5771 = !DILocation(line: 131, column: 35, scope: !5757)
!5772 = !DILocation(line: 131, column: 9, scope: !5757)
!5773 = !DILocation(line: 131, column: 7, scope: !5757)
!5774 = !DILocation(line: 132, column: 9, scope: !5757)
!5775 = !DILocation(line: 132, column: 16, scope: !5757)
!5776 = !DILocation(line: 133, column: 1, scope: !5757)
!5777 = !DILocation(line: 132, column: 2, scope: !5757)
!5778 = !DISubprogram(name: "amd_iommu_domain_set_gcr3", scope: !5758, file: !5758, line: 64, type: !5779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{!147, !4385, !532, !255}
!5781 = distinct !DISubprogram(name: "iommu_virt_to_phys", scope: !5758, file: !5758, line: 95, type: !5782, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5784)
!5782 = !DISubroutineType(types: !5783)
!5783 = !{!536, !246}
!5784 = !{!5785}
!5785 = !DILocalVariable(name: "vaddr", arg: 1, scope: !5781, file: !5758, line: 95, type: !246)
!5786 = !DILocation(line: 95, column: 44, scope: !5781)
!5787 = !DILocation(line: 97, column: 14, scope: !5781)
!5788 = !DILocation(line: 97, column: 2, scope: !5781)
!5789 = distinct !DISubprogram(name: "get_pgtable_level", scope: !3, file: !3, line: 38, type: !812, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5790 = !DILocation(line: 40, column: 9, scope: !5789)
!5791 = !DILocation(line: 40, column: 2, scope: !5789)
!5792 = distinct !DISubprogram(name: "iommu_v2_map_pages", scope: !3, file: !3, line: 236, type: !5567, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5793)
!5793 = !{!5794, !5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803, !5805, !5807, !5809, !5810, !5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5821, !5824}
!5794 = !DILocalVariable(name: "ops", arg: 1, scope: !5792, file: !3, line: 236, type: !5569)
!5795 = !DILocalVariable(name: "iova", arg: 2, scope: !5792, file: !3, line: 236, type: !255)
!5796 = !DILocalVariable(name: "paddr", arg: 3, scope: !5792, file: !3, line: 237, type: !3326)
!5797 = !DILocalVariable(name: "pgsize", arg: 4, scope: !5792, file: !3, line: 237, type: !276)
!5798 = !DILocalVariable(name: "pgcount", arg: 5, scope: !5792, file: !3, line: 237, type: !276)
!5799 = !DILocalVariable(name: "prot", arg: 6, scope: !5792, file: !3, line: 238, type: !147)
!5800 = !DILocalVariable(name: "gfp", arg: 7, scope: !5792, file: !3, line: 238, type: !1232)
!5801 = !DILocalVariable(name: "mapped", arg: 8, scope: !5792, file: !3, line: 238, type: !4411)
!5802 = !DILocalVariable(name: "pdom", scope: !5792, file: !3, line: 240, type: !5582)
!5803 = !DILocalVariable(name: "__mptr", scope: !5804, file: !3, line: 240, type: !246)
!5804 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 240, column: 35)
!5805 = !DILocalVariable(name: "__mptr", scope: !5806, file: !3, line: 240, type: !246)
!5806 = distinct !DILexicalBlock(scope: !5804, file: !3, line: 240, column: 35)
!5807 = !DILocalVariable(name: "__mptr", scope: !5808, file: !3, line: 240, type: !246)
!5808 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 240, column: 35)
!5809 = !DILocalVariable(name: "cfg", scope: !5792, file: !3, line: 241, type: !5622)
!5810 = !DILocalVariable(name: "pte", scope: !5792, file: !3, line: 242, type: !5395)
!5811 = !DILocalVariable(name: "map_size", scope: !5792, file: !3, line: 243, type: !255)
!5812 = !DILocalVariable(name: "mapped_size", scope: !5792, file: !3, line: 244, type: !255)
!5813 = !DILocalVariable(name: "o_iova", scope: !5792, file: !3, line: 245, type: !255)
!5814 = !DILocalVariable(name: "size", scope: !5792, file: !3, line: 246, type: !276)
!5815 = !DILocalVariable(name: "count", scope: !5792, file: !3, line: 247, type: !147)
!5816 = !DILocalVariable(name: "ret", scope: !5792, file: !3, line: 248, type: !147)
!5817 = !DILocalVariable(name: "updated", scope: !5792, file: !3, line: 249, type: !260)
!5818 = !DILocalVariable(name: "__ret_warn_on", scope: !5819, file: !3, line: 251, type: !147)
!5819 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 251, column: 6)
!5820 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 251, column: 6)
!5821 = !DILocalVariable(name: "__flags", scope: !5822, file: !3, line: 251, type: !147)
!5822 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 251, column: 6)
!5823 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 251, column: 6)
!5824 = !DILabel(scope: !5792, name: "out", file: !3, line: 274)
!5825 = !DILocation(line: 236, column: 54, scope: !5792)
!5826 = !DILocation(line: 236, column: 73, scope: !5792)
!5827 = !DILocation(line: 237, column: 22, scope: !5792)
!5828 = !DILocation(line: 237, column: 36, scope: !5792)
!5829 = !DILocation(line: 237, column: 51, scope: !5792)
!5830 = !DILocation(line: 238, column: 14, scope: !5792)
!5831 = !DILocation(line: 238, column: 26, scope: !5792)
!5832 = !DILocation(line: 238, column: 39, scope: !5792)
!5833 = !DILocation(line: 240, column: 2, scope: !5792)
!5834 = !DILocation(line: 240, column: 28, scope: !5792)
!5835 = !DILocation(line: 240, column: 35, scope: !5804)
!5836 = !DILocation(line: 240, column: 35, scope: !5806)
!5837 = !DILocation(line: 240, column: 35, scope: !5808)
!5838 = !DILocation(line: 240, column: 35, scope: !5792)
!5839 = !DILocation(line: 241, column: 2, scope: !5792)
!5840 = !DILocation(line: 241, column: 25, scope: !5792)
!5841 = !DILocation(line: 241, column: 32, scope: !5792)
!5842 = !DILocation(line: 241, column: 38, scope: !5792)
!5843 = !DILocation(line: 241, column: 42, scope: !5792)
!5844 = !DILocation(line: 241, column: 46, scope: !5792)
!5845 = !DILocation(line: 242, column: 2, scope: !5792)
!5846 = !DILocation(line: 242, column: 7, scope: !5792)
!5847 = !DILocation(line: 243, column: 2, scope: !5792)
!5848 = !DILocation(line: 243, column: 16, scope: !5792)
!5849 = !DILocation(line: 244, column: 2, scope: !5792)
!5850 = !DILocation(line: 244, column: 16, scope: !5792)
!5851 = !DILocation(line: 245, column: 2, scope: !5792)
!5852 = !DILocation(line: 245, column: 16, scope: !5792)
!5853 = !DILocation(line: 245, column: 25, scope: !5792)
!5854 = !DILocation(line: 246, column: 2, scope: !5792)
!5855 = !DILocation(line: 246, column: 9, scope: !5792)
!5856 = !DILocation(line: 246, column: 16, scope: !5792)
!5857 = !DILocation(line: 246, column: 27, scope: !5792)
!5858 = !DILocation(line: 246, column: 24, scope: !5792)
!5859 = !DILocation(line: 247, column: 2, scope: !5792)
!5860 = !DILocation(line: 247, column: 6, scope: !5792)
!5861 = !DILocation(line: 248, column: 2, scope: !5792)
!5862 = !DILocation(line: 248, column: 6, scope: !5792)
!5863 = !DILocation(line: 249, column: 2, scope: !5792)
!5864 = !DILocation(line: 249, column: 7, scope: !5792)
!5865 = !DILocation(line: 251, column: 6, scope: !5819)
!5866 = !DILocation(line: 251, column: 6, scope: !5823)
!5867 = !DILocation(line: 251, column: 6, scope: !5822)
!5868 = !DILocation(line: 251, column: 6, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 251, column: 6)
!5870 = !DILocation(line: 251, column: 6, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 251, column: 6)
!5872 = !{i64 2155395295, i64 2155395324, i64 2155395370, i64 2155395428, i64 2155395482, i64 2155395536, i64 2155395591, i64 2155395622, i64 2155395930, i64 2155395936, i64 2155395983, i64 2155396006, i64 2155396032}
!5873 = !DILocation(line: 251, column: 6, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 251, column: 6)
!5875 = !DILocation(line: 251, column: 6, scope: !5820)
!5876 = !DILocation(line: 251, column: 66, scope: !5820)
!5877 = !DILocation(line: 251, column: 70, scope: !5820)
!5878 = !DILocation(line: 251, column: 6, scope: !5792)
!5879 = !DILocation(line: 252, column: 3, scope: !5820)
!5880 = !DILocation(line: 254, column: 8, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 254, column: 6)
!5882 = !DILocation(line: 254, column: 13, scope: !5881)
!5883 = !DILocation(line: 254, column: 6, scope: !5792)
!5884 = !DILocation(line: 255, column: 3, scope: !5881)
!5885 = !DILocation(line: 257, column: 2, scope: !5792)
!5886 = !DILocation(line: 257, column: 9, scope: !5792)
!5887 = !DILocation(line: 257, column: 23, scope: !5792)
!5888 = !DILocation(line: 257, column: 21, scope: !5792)
!5889 = !DILocation(line: 258, column: 34, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 257, column: 29)
!5891 = !DILocation(line: 258, column: 14, scope: !5890)
!5892 = !DILocation(line: 258, column: 12, scope: !5890)
!5893 = !DILocation(line: 259, column: 22, scope: !5890)
!5894 = !DILocation(line: 259, column: 28, scope: !5890)
!5895 = !DILocation(line: 259, column: 33, scope: !5890)
!5896 = !DILocation(line: 259, column: 39, scope: !5890)
!5897 = !DILocation(line: 259, column: 43, scope: !5890)
!5898 = !DILocation(line: 260, column: 8, scope: !5890)
!5899 = !DILocation(line: 260, column: 14, scope: !5890)
!5900 = !DILocation(line: 260, column: 24, scope: !5890)
!5901 = !DILocation(line: 259, column: 9, scope: !5890)
!5902 = !DILocation(line: 259, column: 7, scope: !5890)
!5903 = !DILocation(line: 261, column: 8, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5890, file: !3, line: 261, column: 7)
!5905 = !DILocation(line: 261, column: 7, scope: !5890)
!5906 = !DILocation(line: 262, column: 8, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 261, column: 13)
!5908 = !DILocation(line: 263, column: 4, scope: !5907)
!5909 = !DILocation(line: 266, column: 23, scope: !5890)
!5910 = !DILocation(line: 266, column: 30, scope: !5890)
!5911 = !DILocation(line: 266, column: 40, scope: !5890)
!5912 = !DILocation(line: 266, column: 10, scope: !5890)
!5913 = !DILocation(line: 266, column: 4, scope: !5890)
!5914 = !DILocation(line: 266, column: 8, scope: !5890)
!5915 = !DILocation(line: 268, column: 8, scope: !5890)
!5916 = !DILocation(line: 269, column: 11, scope: !5890)
!5917 = !DILocation(line: 269, column: 8, scope: !5890)
!5918 = !DILocation(line: 270, column: 12, scope: !5890)
!5919 = !DILocation(line: 270, column: 9, scope: !5890)
!5920 = !DILocation(line: 271, column: 18, scope: !5890)
!5921 = !DILocation(line: 271, column: 15, scope: !5890)
!5922 = distinct !{!5922, !5885, !5923, !5924, !5925}
!5923 = !DILocation(line: 272, column: 2, scope: !5792)
!5924 = !{!"llvm.loop.mustprogress"}
!5925 = !{!"llvm.loop.unroll.disable"}
!5926 = !DILocation(line: 274, column: 1, scope: !5792)
!5927 = !DILocation(line: 275, column: 6, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 275, column: 6)
!5929 = !{i8 0, i8 2}
!5930 = !DILocation(line: 275, column: 6, scope: !5792)
!5931 = !DILocation(line: 276, column: 7, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5933, file: !3, line: 276, column: 7)
!5933 = distinct !DILexicalBlock(scope: !5928, file: !3, line: 275, column: 15)
!5934 = !DILocation(line: 276, column: 13, scope: !5932)
!5935 = !DILocation(line: 276, column: 7, scope: !5933)
!5936 = !DILocation(line: 277, column: 25, scope: !5932)
!5937 = !DILocation(line: 277, column: 31, scope: !5932)
!5938 = !DILocation(line: 277, column: 4, scope: !5932)
!5939 = !DILocation(line: 279, column: 26, scope: !5932)
!5940 = !DILocation(line: 279, column: 32, scope: !5932)
!5941 = !DILocation(line: 279, column: 43, scope: !5932)
!5942 = !DILocation(line: 279, column: 4, scope: !5932)
!5943 = !DILocation(line: 280, column: 2, scope: !5933)
!5944 = !DILocation(line: 282, column: 6, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 282, column: 6)
!5946 = !DILocation(line: 282, column: 6, scope: !5792)
!5947 = !DILocation(line: 283, column: 14, scope: !5945)
!5948 = !DILocation(line: 283, column: 4, scope: !5945)
!5949 = !DILocation(line: 283, column: 11, scope: !5945)
!5950 = !DILocation(line: 283, column: 3, scope: !5945)
!5951 = !DILocation(line: 285, column: 9, scope: !5792)
!5952 = !DILocation(line: 285, column: 2, scope: !5792)
!5953 = !DILocation(line: 286, column: 1, scope: !5792)
!5954 = distinct !DISubprogram(name: "iommu_v2_unmap_pages", scope: !3, file: !3, line: 288, type: !5955, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5957)
!5955 = !DISubroutineType(types: !5956)
!5956 = !{!255, !5569, !255, !276, !276, !284}
!5957 = !{!5958, !5959, !5960, !5961, !5962, !5963, !5964, !5966, !5968, !5969, !5970, !5971, !5972, !5973, !5976}
!5958 = !DILocalVariable(name: "ops", arg: 1, scope: !5954, file: !3, line: 288, type: !5569)
!5959 = !DILocalVariable(name: "iova", arg: 2, scope: !5954, file: !3, line: 289, type: !255)
!5960 = !DILocalVariable(name: "pgsize", arg: 3, scope: !5954, file: !3, line: 290, type: !276)
!5961 = !DILocalVariable(name: "pgcount", arg: 4, scope: !5954, file: !3, line: 290, type: !276)
!5962 = !DILocalVariable(name: "gather", arg: 5, scope: !5954, file: !3, line: 291, type: !284)
!5963 = !DILocalVariable(name: "pgtable", scope: !5954, file: !3, line: 293, type: !247)
!5964 = !DILocalVariable(name: "__mptr", scope: !5965, file: !3, line: 293, type: !246)
!5965 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 293, column: 35)
!5966 = !DILocalVariable(name: "__mptr", scope: !5967, file: !3, line: 293, type: !246)
!5967 = distinct !DILexicalBlock(scope: !5965, file: !3, line: 293, column: 35)
!5968 = !DILocalVariable(name: "cfg", scope: !5954, file: !3, line: 294, type: !5622)
!5969 = !DILocalVariable(name: "unmap_size", scope: !5954, file: !3, line: 295, type: !255)
!5970 = !DILocalVariable(name: "unmapped", scope: !5954, file: !3, line: 296, type: !255)
!5971 = !DILocalVariable(name: "size", scope: !5954, file: !3, line: 297, type: !276)
!5972 = !DILocalVariable(name: "pte", scope: !5954, file: !3, line: 298, type: !5395)
!5973 = !DILocalVariable(name: "__ret_warn_on", scope: !5974, file: !3, line: 300, type: !147)
!5974 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 300, column: 6)
!5975 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 300, column: 6)
!5976 = !DILocalVariable(name: "__flags", scope: !5977, file: !3, line: 300, type: !147)
!5977 = distinct !DILexicalBlock(scope: !5978, file: !3, line: 300, column: 6)
!5978 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 300, column: 6)
!5979 = !DILocation(line: 288, column: 66, scope: !5954)
!5980 = !DILocation(line: 289, column: 22, scope: !5954)
!5981 = !DILocation(line: 290, column: 15, scope: !5954)
!5982 = !DILocation(line: 290, column: 30, scope: !5954)
!5983 = !DILocation(line: 291, column: 35, scope: !5954)
!5984 = !DILocation(line: 293, column: 2, scope: !5954)
!5985 = !DILocation(line: 293, column: 25, scope: !5954)
!5986 = !DILocation(line: 293, column: 35, scope: !5965)
!5987 = !DILocation(line: 293, column: 35, scope: !5967)
!5988 = !DILocation(line: 293, column: 35, scope: !5954)
!5989 = !DILocation(line: 294, column: 2, scope: !5954)
!5990 = !DILocation(line: 294, column: 25, scope: !5954)
!5991 = !DILocation(line: 294, column: 32, scope: !5954)
!5992 = !DILocation(line: 294, column: 41, scope: !5954)
!5993 = !DILocation(line: 294, column: 45, scope: !5954)
!5994 = !DILocation(line: 295, column: 2, scope: !5954)
!5995 = !DILocation(line: 295, column: 16, scope: !5954)
!5996 = !DILocation(line: 296, column: 2, scope: !5954)
!5997 = !DILocation(line: 296, column: 16, scope: !5954)
!5998 = !DILocation(line: 297, column: 2, scope: !5954)
!5999 = !DILocation(line: 297, column: 9, scope: !5954)
!6000 = !DILocation(line: 297, column: 16, scope: !5954)
!6001 = !DILocation(line: 297, column: 27, scope: !5954)
!6002 = !DILocation(line: 297, column: 24, scope: !5954)
!6003 = !DILocation(line: 298, column: 2, scope: !5954)
!6004 = !DILocation(line: 298, column: 7, scope: !5954)
!6005 = !DILocation(line: 300, column: 6, scope: !5974)
!6006 = !DILocation(line: 300, column: 6, scope: !5978)
!6007 = !DILocation(line: 300, column: 6, scope: !5977)
!6008 = !DILocation(line: 300, column: 6, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 300, column: 6)
!6010 = !DILocation(line: 300, column: 6, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 300, column: 6)
!6012 = !{i64 2155403696, i64 2155403725, i64 2155403771, i64 2155403829, i64 2155403883, i64 2155403937, i64 2155403992, i64 2155404023, i64 2155404331, i64 2155404337, i64 2155404384, i64 2155404407, i64 2155404433}
!6013 = !DILocation(line: 300, column: 6, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 300, column: 6)
!6015 = !DILocation(line: 300, column: 6, scope: !5975)
!6016 = !DILocation(line: 300, column: 6, scope: !5954)
!6017 = !DILocation(line: 301, column: 3, scope: !5975)
!6018 = !DILocation(line: 303, column: 2, scope: !5954)
!6019 = !DILocation(line: 303, column: 9, scope: !5954)
!6020 = !DILocation(line: 303, column: 20, scope: !5954)
!6021 = !DILocation(line: 303, column: 18, scope: !5954)
!6022 = !DILocation(line: 304, column: 19, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 303, column: 26)
!6024 = !DILocation(line: 304, column: 28, scope: !6023)
!6025 = !DILocation(line: 304, column: 9, scope: !6023)
!6026 = !DILocation(line: 304, column: 7, scope: !6023)
!6027 = !DILocation(line: 305, column: 8, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6023, file: !3, line: 305, column: 7)
!6029 = !DILocation(line: 305, column: 7, scope: !6023)
!6030 = !DILocation(line: 306, column: 11, scope: !6028)
!6031 = !DILocation(line: 306, column: 4, scope: !6028)
!6032 = !DILocation(line: 308, column: 4, scope: !6023)
!6033 = !DILocation(line: 308, column: 8, scope: !6023)
!6034 = !DILocation(line: 310, column: 11, scope: !6023)
!6035 = !DILocation(line: 310, column: 20, scope: !6023)
!6036 = !DILocation(line: 310, column: 31, scope: !6023)
!6037 = !DILocation(line: 310, column: 18, scope: !6023)
!6038 = !DILocation(line: 310, column: 16, scope: !6023)
!6039 = !DILocation(line: 310, column: 39, scope: !6023)
!6040 = !DILocation(line: 310, column: 37, scope: !6023)
!6041 = !DILocation(line: 310, column: 8, scope: !6023)
!6042 = !DILocation(line: 311, column: 15, scope: !6023)
!6043 = !DILocation(line: 311, column: 12, scope: !6023)
!6044 = distinct !{!6044, !6018, !6045, !5924, !5925}
!6045 = !DILocation(line: 312, column: 2, scope: !5954)
!6046 = !DILocation(line: 314, column: 9, scope: !5954)
!6047 = !DILocation(line: 314, column: 2, scope: !5954)
!6048 = !DILocation(line: 315, column: 1, scope: !5954)
!6049 = distinct !DISubprogram(name: "iommu_v2_iova_to_phys", scope: !3, file: !3, line: 317, type: !5576, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6050)
!6050 = !{!6051, !6052, !6053, !6054, !6056, !6058, !6059, !6060, !6061}
!6051 = !DILocalVariable(name: "ops", arg: 1, scope: !6049, file: !3, line: 317, type: !5569)
!6052 = !DILocalVariable(name: "iova", arg: 2, scope: !6049, file: !3, line: 317, type: !255)
!6053 = !DILocalVariable(name: "pgtable", scope: !6049, file: !3, line: 319, type: !247)
!6054 = !DILocalVariable(name: "__mptr", scope: !6055, file: !3, line: 319, type: !246)
!6055 = distinct !DILexicalBlock(scope: !6049, file: !3, line: 319, column: 35)
!6056 = !DILocalVariable(name: "__mptr", scope: !6057, file: !3, line: 319, type: !246)
!6057 = distinct !DILexicalBlock(scope: !6055, file: !3, line: 319, column: 35)
!6058 = !DILocalVariable(name: "offset_mask", scope: !6049, file: !3, line: 320, type: !255)
!6059 = !DILocalVariable(name: "pte_pgsize", scope: !6049, file: !3, line: 320, type: !255)
!6060 = !DILocalVariable(name: "pte", scope: !6049, file: !3, line: 321, type: !5395)
!6061 = !DILocalVariable(name: "__pte", scope: !6049, file: !3, line: 321, type: !536)
!6062 = !DILocation(line: 317, column: 65, scope: !6049)
!6063 = !DILocation(line: 317, column: 84, scope: !6049)
!6064 = !DILocation(line: 319, column: 2, scope: !6049)
!6065 = !DILocation(line: 319, column: 25, scope: !6049)
!6066 = !DILocation(line: 319, column: 35, scope: !6055)
!6067 = !DILocation(line: 319, column: 35, scope: !6057)
!6068 = !DILocation(line: 319, column: 35, scope: !6049)
!6069 = !DILocation(line: 320, column: 2, scope: !6049)
!6070 = !DILocation(line: 320, column: 16, scope: !6049)
!6071 = !DILocation(line: 320, column: 29, scope: !6049)
!6072 = !DILocation(line: 321, column: 2, scope: !6049)
!6073 = !DILocation(line: 321, column: 7, scope: !6049)
!6074 = !DILocation(line: 321, column: 12, scope: !6049)
!6075 = !DILocation(line: 323, column: 18, scope: !6049)
!6076 = !DILocation(line: 323, column: 27, scope: !6049)
!6077 = !DILocation(line: 323, column: 8, scope: !6049)
!6078 = !DILocation(line: 323, column: 6, scope: !6049)
!6079 = !DILocation(line: 324, column: 7, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !6049, file: !3, line: 324, column: 6)
!6081 = !DILocation(line: 324, column: 11, scope: !6080)
!6082 = !DILocation(line: 324, column: 15, scope: !6080)
!6083 = !DILocation(line: 324, column: 6, scope: !6049)
!6084 = !DILocation(line: 325, column: 3, scope: !6080)
!6085 = !DILocation(line: 327, column: 16, scope: !6049)
!6086 = !DILocation(line: 327, column: 27, scope: !6049)
!6087 = !DILocation(line: 327, column: 14, scope: !6049)
!6088 = !DILocation(line: 328, column: 10, scope: !6049)
!6089 = !DILocation(line: 328, column: 8, scope: !6049)
!6090 = !DILocation(line: 330, column: 10, scope: !6049)
!6091 = !DILocation(line: 330, column: 19, scope: !6049)
!6092 = !DILocation(line: 330, column: 18, scope: !6049)
!6093 = !DILocation(line: 330, column: 16, scope: !6049)
!6094 = !DILocation(line: 330, column: 35, scope: !6049)
!6095 = !DILocation(line: 330, column: 42, scope: !6049)
!6096 = !DILocation(line: 330, column: 40, scope: !6049)
!6097 = !DILocation(line: 330, column: 32, scope: !6049)
!6098 = !DILocation(line: 330, column: 2, scope: !6049)
!6099 = !DILocation(line: 331, column: 1, scope: !6049)
!6100 = distinct !DISubprogram(name: "free_pgtable_page", scope: !3, file: !3, line: 102, type: !6101, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6103)
!6101 = !DISubroutineType(types: !6102)
!6102 = !{null, !5395}
!6103 = !{!6104}
!6104 = !DILocalVariable(name: "pt", arg: 1, scope: !6100, file: !3, line: 102, type: !5395)
!6105 = !DILocation(line: 102, column: 43, scope: !6100)
!6106 = !DILocation(line: 104, column: 2, scope: !6100)
!6107 = !DILocation(line: 105, column: 1, scope: !6100)
!6108 = distinct !DISubprogram(name: "alloc_pages_node", scope: !5605, file: !5605, line: 254, type: !6109, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6111)
!6109 = !DISubroutineType(types: !6110)
!6110 = !{!2270, !147, !1232, !7}
!6111 = !{!6112, !6113, !6114}
!6112 = !DILocalVariable(name: "nid", arg: 1, scope: !6108, file: !5605, line: 254, type: !147)
!6113 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6108, file: !5605, line: 254, type: !1232)
!6114 = !DILocalVariable(name: "order", arg: 3, scope: !6108, file: !5605, line: 255, type: !7)
!6115 = !DILocation(line: 254, column: 49, scope: !6108)
!6116 = !DILocation(line: 254, column: 60, scope: !6108)
!6117 = !DILocation(line: 255, column: 20, scope: !6108)
!6118 = !DILocation(line: 257, column: 6, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6108, file: !5605, line: 257, column: 6)
!6120 = !DILocation(line: 257, column: 10, scope: !6119)
!6121 = !DILocation(line: 257, column: 6, scope: !6108)
!6122 = !DILocation(line: 258, column: 9, scope: !6119)
!6123 = !DILocation(line: 258, column: 7, scope: !6119)
!6124 = !DILocation(line: 258, column: 3, scope: !6119)
!6125 = !DILocation(line: 260, column: 28, scope: !6108)
!6126 = !DILocation(line: 260, column: 33, scope: !6108)
!6127 = !DILocation(line: 260, column: 43, scope: !6108)
!6128 = !DILocation(line: 260, column: 9, scope: !6108)
!6129 = !DILocation(line: 260, column: 2, scope: !6108)
!6130 = distinct !DISubprogram(name: "lowmem_page_address", scope: !2209, file: !2209, line: 2176, type: !6131, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6135)
!6131 = !DISubroutineType(types: !6132)
!6132 = !{!246, !6133}
!6133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6134, size: 64)
!6134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2271)
!6135 = !{!6136}
!6136 = !DILocalVariable(name: "page", arg: 1, scope: !6130, file: !2209, line: 2176, type: !6133)
!6137 = !DILocation(line: 2176, column: 69, scope: !6130)
!6138 = !DILocation(line: 2178, column: 9, scope: !6130)
!6139 = !DILocation(line: 2178, column: 2, scope: !6130)
!6140 = distinct !DISubprogram(name: "numa_mem_id", scope: !6141, file: !6141, line: 168, type: !812, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6141 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!6142 = !DILocation(line: 170, column: 9, scope: !6140)
!6143 = !DILocation(line: 170, column: 2, scope: !6140)
!6144 = distinct !DISubprogram(name: "__alloc_pages_node", scope: !5605, file: !5605, line: 232, type: !6109, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6145)
!6145 = !{!6146, !6147, !6148}
!6146 = !DILocalVariable(name: "nid", arg: 1, scope: !6144, file: !5605, line: 232, type: !147)
!6147 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6144, file: !5605, line: 232, type: !1232)
!6148 = !DILocalVariable(name: "order", arg: 3, scope: !6144, file: !5605, line: 232, type: !7)
!6149 = !DILocation(line: 232, column: 24, scope: !6144)
!6150 = !DILocation(line: 232, column: 35, scope: !6144)
!6151 = !DILocation(line: 232, column: 58, scope: !6144)
!6152 = !DILocation(line: 235, column: 23, scope: !6144)
!6153 = !DILocation(line: 235, column: 28, scope: !6144)
!6154 = !DILocation(line: 235, column: 2, scope: !6144)
!6155 = !DILocation(line: 237, column: 23, scope: !6144)
!6156 = !DILocation(line: 237, column: 33, scope: !6144)
!6157 = !DILocation(line: 237, column: 40, scope: !6144)
!6158 = !DILocation(line: 237, column: 9, scope: !6144)
!6159 = !DILocation(line: 237, column: 2, scope: !6144)
!6160 = distinct !DISubprogram(name: "numa_node_id", scope: !6141, file: !6141, line: 87, type: !812, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6161)
!6161 = !{!6162, !6164, !6166}
!6162 = !DILocalVariable(name: "pscr_ret__", scope: !6163, file: !6141, line: 89, type: !147)
!6163 = distinct !DILexicalBlock(scope: !6160, file: !6141, line: 89, column: 9)
!6164 = !DILocalVariable(name: "__vpp_verify", scope: !6165, file: !6141, line: 89, type: !2622)
!6165 = distinct !DILexicalBlock(scope: !6163, file: !6141, line: 89, column: 9)
!6166 = !DILocalVariable(name: "pfo_val__", scope: !6167, file: !6141, line: 89, type: !532)
!6167 = distinct !DILexicalBlock(scope: !6163, file: !6141, line: 89, column: 9)
!6168 = !DILocation(line: 89, column: 9, scope: !6163)
!6169 = !DILocation(line: 89, column: 9, scope: !6165)
!6170 = !DILocation(line: 89, column: 9, scope: !6167)
!6171 = !{i64 2151468029}
!6172 = !DILocation(line: 89, column: 9, scope: !6160)
!6173 = !DILocation(line: 89, column: 2, scope: !6160)
!6174 = distinct !DISubprogram(name: "warn_if_node_offline", scope: !5605, file: !5605, line: 213, type: !6175, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6177)
!6175 = !DISubroutineType(types: !6176)
!6176 = !{null, !147, !1232}
!6177 = !{!6178, !6179, !6180}
!6178 = !DILocalVariable(name: "this_node", arg: 1, scope: !6174, file: !5605, line: 213, type: !147)
!6179 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6174, file: !5605, line: 213, type: !1232)
!6180 = !DILocalVariable(name: "warn_gfp", scope: !6174, file: !5605, line: 215, type: !1232)
!6181 = !DILocation(line: 213, column: 45, scope: !6174)
!6182 = !DILocation(line: 213, column: 62, scope: !6174)
!6183 = !DILocation(line: 215, column: 2, scope: !6174)
!6184 = !DILocation(line: 215, column: 8, scope: !6174)
!6185 = !DILocation(line: 215, column: 19, scope: !6174)
!6186 = !DILocation(line: 215, column: 28, scope: !6174)
!6187 = !DILocation(line: 217, column: 6, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6174, file: !5605, line: 217, column: 6)
!6189 = !DILocation(line: 217, column: 15, scope: !6188)
!6190 = !DILocation(line: 217, column: 6, scope: !6174)
!6191 = !DILocation(line: 218, column: 3, scope: !6188)
!6192 = !DILocation(line: 220, column: 6, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6174, file: !5605, line: 220, column: 6)
!6194 = !DILocation(line: 220, column: 6, scope: !6174)
!6195 = !DILocation(line: 221, column: 3, scope: !6193)
!6196 = !DILocation(line: 223, column: 2, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6174, file: !5605, line: 223, column: 2)
!6198 = !DILocation(line: 223, column: 2, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6197, file: !5605, line: 223, column: 2)
!6200 = !DILocation(line: 224, column: 2, scope: !6174)
!6201 = !DILocation(line: 225, column: 1, scope: !6174)
!6202 = !DISubprogram(name: "__alloc_pages", scope: !5605, file: !5605, line: 177, type: !6203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6203 = !DISubroutineType(types: !6204)
!6204 = !{!2270, !1232, !7, !147, !6205}
!6205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!6206 = distinct !DISubprogram(name: "node_state", scope: !230, file: !230, line: 421, type: !6207, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6209)
!6207 = !DISubroutineType(types: !6208)
!6208 = !{!147, !147, !229}
!6209 = !{!6210, !6211}
!6210 = !DILocalVariable(name: "node", arg: 1, scope: !6206, file: !230, line: 421, type: !147)
!6211 = !DILocalVariable(name: "state", arg: 2, scope: !6206, file: !230, line: 421, type: !229)
!6212 = !DILocation(line: 421, column: 34, scope: !6206)
!6213 = !DILocation(line: 421, column: 57, scope: !6206)
!6214 = !DILocation(line: 423, column: 9, scope: !6206)
!6215 = !DILocation(line: 423, column: 2, scope: !6206)
!6216 = !DISubprogram(name: "_printk", scope: !6217, file: !6217, line: 153, type: !6218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6217 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6218 = !DISubroutineType(types: !6219)
!6219 = !{!147, !306, null}
!6220 = !DISubprogram(name: "dump_stack", scope: !6217, file: !6217, line: 193, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6221 = distinct !DISubprogram(name: "const_test_bit", scope: !6222, file: !6222, line: 166, type: !6223, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6228)
!6222 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6223 = !DISubroutineType(types: !6224)
!6224 = !{!260, !255, !6225}
!6225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6226, size: 64)
!6226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6227)
!6227 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !255)
!6228 = !{!6229, !6230, !6231, !6232, !6233}
!6229 = !DILocalVariable(name: "nr", arg: 1, scope: !6221, file: !6222, line: 166, type: !255)
!6230 = !DILocalVariable(name: "addr", arg: 2, scope: !6221, file: !6222, line: 166, type: !6225)
!6231 = !DILocalVariable(name: "p", scope: !6221, file: !6222, line: 168, type: !5598)
!6232 = !DILocalVariable(name: "mask", scope: !6221, file: !6222, line: 169, type: !255)
!6233 = !DILocalVariable(name: "val", scope: !6221, file: !6222, line: 170, type: !255)
!6234 = !DILocation(line: 166, column: 30, scope: !6221)
!6235 = !DILocation(line: 166, column: 64, scope: !6221)
!6236 = !DILocation(line: 168, column: 2, scope: !6221)
!6237 = !DILocation(line: 168, column: 23, scope: !6221)
!6238 = !DILocation(line: 168, column: 50, scope: !6221)
!6239 = !DILocation(line: 168, column: 57, scope: !6221)
!6240 = !DILocation(line: 168, column: 55, scope: !6221)
!6241 = !DILocation(line: 169, column: 2, scope: !6221)
!6242 = !DILocation(line: 169, column: 16, scope: !6221)
!6243 = !DILocation(line: 169, column: 23, scope: !6221)
!6244 = !DILocation(line: 170, column: 2, scope: !6221)
!6245 = !DILocation(line: 170, column: 16, scope: !6221)
!6246 = !DILocation(line: 170, column: 23, scope: !6221)
!6247 = !DILocation(line: 170, column: 22, scope: !6221)
!6248 = !DILocation(line: 172, column: 12, scope: !6221)
!6249 = !DILocation(line: 172, column: 18, scope: !6221)
!6250 = !DILocation(line: 172, column: 16, scope: !6221)
!6251 = !DILocation(line: 172, column: 10, scope: !6221)
!6252 = !DILocation(line: 172, column: 9, scope: !6221)
!6253 = !DILocation(line: 173, column: 1, scope: !6221)
!6254 = !DILocation(line: 172, column: 2, scope: !6221)
!6255 = distinct !DISubprogram(name: "_test_bit", scope: !6256, file: !6256, line: 139, type: !6223, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6257)
!6256 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6257 = !{!6258, !6259}
!6258 = !DILocalVariable(name: "nr", arg: 1, scope: !6255, file: !6256, line: 139, type: !255)
!6259 = !DILocalVariable(name: "addr", arg: 2, scope: !6255, file: !6256, line: 139, type: !6225)
!6260 = !DILocation(line: 139, column: 25, scope: !6255)
!6261 = !DILocation(line: 139, column: 59, scope: !6255)
!6262 = !DILocation(line: 141, column: 25, scope: !6255)
!6263 = !DILocation(line: 141, column: 32, scope: !6255)
!6264 = !DILocation(line: 141, column: 30, scope: !6255)
!6265 = !DILocation(line: 141, column: 2, scope: !6255)
!6266 = !DILocation(line: 142, column: 23, scope: !6255)
!6267 = !DILocation(line: 142, column: 27, scope: !6255)
!6268 = !DILocation(line: 142, column: 9, scope: !6255)
!6269 = !DILocation(line: 142, column: 2, scope: !6255)
!6270 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6271, file: !6271, line: 66, type: !6272, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6277)
!6271 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6272 = !DISubroutineType(types: !6273)
!6273 = !{null, !6274, !276}
!6274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6275, size: 64)
!6275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6276)
!6276 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6277 = !{!6278, !6279}
!6278 = !DILocalVariable(name: "v", arg: 1, scope: !6270, file: !6271, line: 66, type: !6274)
!6279 = !DILocalVariable(name: "size", arg: 2, scope: !6270, file: !6271, line: 66, type: !276)
!6280 = !DILocation(line: 66, column: 73, scope: !6270)
!6281 = !DILocation(line: 66, column: 83, scope: !6270)
!6282 = !DILocation(line: 68, column: 19, scope: !6270)
!6283 = !DILocation(line: 68, column: 22, scope: !6270)
!6284 = !DILocation(line: 68, column: 2, scope: !6270)
!6285 = !DILocation(line: 69, column: 2, scope: !6270)
!6286 = !DILocation(line: 70, column: 1, scope: !6270)
!6287 = distinct !DISubprogram(name: "arch_test_bit", scope: !6288, file: !6288, line: 237, type: !6223, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6289)
!6288 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6289 = !{!6290, !6291}
!6290 = !DILocalVariable(name: "nr", arg: 1, scope: !6287, file: !6288, line: 237, type: !255)
!6291 = !DILocalVariable(name: "addr", arg: 2, scope: !6287, file: !6288, line: 237, type: !6225)
!6292 = !DILocation(line: 237, column: 29, scope: !6287)
!6293 = !DILocation(line: 237, column: 63, scope: !6287)
!6294 = !DILocation(line: 239, column: 30, scope: !6287)
!6295 = !DILocation(line: 239, column: 9, scope: !6287)
!6296 = !DILocation(line: 239, column: 54, scope: !6287)
!6297 = !DILocation(line: 239, column: 58, scope: !6287)
!6298 = !DILocation(line: 239, column: 36, scope: !6287)
!6299 = !DILocation(line: 240, column: 26, scope: !6287)
!6300 = !DILocation(line: 240, column: 30, scope: !6287)
!6301 = !DILocation(line: 240, column: 8, scope: !6287)
!6302 = !DILocation(line: 239, column: 2, scope: !6287)
!6303 = distinct !DISubprogram(name: "kasan_check_read", scope: !6304, file: !6304, line: 40, type: !6305, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6307)
!6304 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6305 = !DISubroutineType(types: !6306)
!6306 = !{!260, !6274, !7}
!6307 = !{!6308, !6309}
!6308 = !DILocalVariable(name: "p", arg: 1, scope: !6303, file: !6304, line: 40, type: !6274)
!6309 = !DILocalVariable(name: "size", arg: 2, scope: !6303, file: !6304, line: 40, type: !7)
!6310 = !DILocation(line: 40, column: 58, scope: !6303)
!6311 = !DILocation(line: 40, column: 74, scope: !6303)
!6312 = !DILocation(line: 42, column: 2, scope: !6303)
!6313 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6314, file: !6314, line: 229, type: !6315, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6317)
!6314 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6315 = !DISubroutineType(types: !6316)
!6316 = !{null, !6274, !276, !147}
!6317 = !{!6318, !6319, !6320}
!6318 = !DILocalVariable(name: "ptr", arg: 1, scope: !6313, file: !6314, line: 229, type: !6274)
!6319 = !DILocalVariable(name: "size", arg: 2, scope: !6313, file: !6314, line: 229, type: !276)
!6320 = !DILocalVariable(name: "type", arg: 3, scope: !6313, file: !6314, line: 230, type: !147)
!6321 = !DILocation(line: 229, column: 60, scope: !6313)
!6322 = !DILocation(line: 229, column: 72, scope: !6313)
!6323 = !DILocation(line: 230, column: 15, scope: !6313)
!6324 = !DILocation(line: 230, column: 23, scope: !6313)
!6325 = distinct !DISubprogram(name: "constant_test_bit", scope: !6288, file: !6288, line: 204, type: !6326, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6328)
!6326 = !DISubroutineType(types: !6327)
!6327 = !{!260, !423, !6225}
!6328 = !{!6329, !6330}
!6329 = !DILocalVariable(name: "nr", arg: 1, scope: !6325, file: !6288, line: 204, type: !423)
!6330 = !DILocalVariable(name: "addr", arg: 2, scope: !6325, file: !6288, line: 204, type: !6225)
!6331 = !DILocation(line: 204, column: 52, scope: !6325)
!6332 = !DILocation(line: 204, column: 86, scope: !6325)
!6333 = !DILocation(line: 206, column: 19, scope: !6325)
!6334 = !DILocation(line: 206, column: 22, scope: !6325)
!6335 = !DILocation(line: 206, column: 15, scope: !6325)
!6336 = !DILocation(line: 207, column: 4, scope: !6325)
!6337 = !DILocation(line: 207, column: 9, scope: !6325)
!6338 = !DILocation(line: 207, column: 12, scope: !6325)
!6339 = !DILocation(line: 206, column: 44, scope: !6325)
!6340 = !DILocation(line: 207, column: 37, scope: !6325)
!6341 = !DILocation(line: 206, column: 2, scope: !6325)
!6342 = distinct !DISubprogram(name: "variable_test_bit", scope: !6288, file: !6288, line: 224, type: !6326, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6343)
!6343 = !{!6344, !6345, !6346}
!6344 = !DILocalVariable(name: "nr", arg: 1, scope: !6342, file: !6288, line: 224, type: !423)
!6345 = !DILocalVariable(name: "addr", arg: 2, scope: !6342, file: !6288, line: 224, type: !6225)
!6346 = !DILocalVariable(name: "oldbit", scope: !6342, file: !6288, line: 226, type: !260)
!6347 = !DILocation(line: 224, column: 52, scope: !6342)
!6348 = !DILocation(line: 224, column: 86, scope: !6342)
!6349 = !DILocation(line: 226, column: 2, scope: !6342)
!6350 = !DILocation(line: 226, column: 7, scope: !6342)
!6351 = !DILocation(line: 231, column: 33, scope: !6342)
!6352 = !DILocation(line: 231, column: 46, scope: !6342)
!6353 = !DILocation(line: 228, column: 2, scope: !6342)
!6354 = !{i64 2147759387, i64 2147759461}
!6355 = !DILocation(line: 233, column: 9, scope: !6342)
!6356 = !DILocation(line: 234, column: 1, scope: !6342)
!6357 = !DILocation(line: 233, column: 2, scope: !6342)
!6358 = distinct !DISubprogram(name: "virt_to_phys", scope: !6359, file: !6359, line: 128, type: !6360, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6363)
!6359 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!6360 = !DISubroutineType(types: !6361)
!6361 = !{!3326, !6362}
!6362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6276, size: 64)
!6363 = !{!6364}
!6364 = !DILocalVariable(name: "address", arg: 1, scope: !6358, file: !6359, line: 128, type: !6362)
!6365 = !DILocation(line: 128, column: 55, scope: !6358)
!6366 = !DILocation(line: 130, column: 9, scope: !6358)
!6367 = !DILocation(line: 130, column: 2, scope: !6358)
!6368 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !6369, file: !6369, line: 22, type: !6370, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6372)
!6369 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!6370 = !DISubroutineType(types: !6371)
!6371 = !{!255, !255}
!6372 = !{!6373, !6374}
!6373 = !DILocalVariable(name: "x", arg: 1, scope: !6368, file: !6369, line: 22, type: !255)
!6374 = !DILocalVariable(name: "y", scope: !6368, file: !6369, line: 24, type: !255)
!6375 = !DILocation(line: 22, column: 72, scope: !6368)
!6376 = !DILocation(line: 24, column: 2, scope: !6368)
!6377 = !DILocation(line: 24, column: 16, scope: !6368)
!6378 = !DILocation(line: 24, column: 20, scope: !6368)
!6379 = !DILocation(line: 24, column: 22, scope: !6368)
!6380 = !DILocation(line: 27, column: 6, scope: !6368)
!6381 = !DILocation(line: 27, column: 12, scope: !6368)
!6382 = !DILocation(line: 27, column: 16, scope: !6368)
!6383 = !DILocation(line: 27, column: 14, scope: !6368)
!6384 = !DILocation(line: 27, column: 11, scope: !6368)
!6385 = !DILocation(line: 27, column: 21, scope: !6368)
!6386 = !DILocation(line: 27, column: 55, scope: !6368)
!6387 = !DILocation(line: 27, column: 53, scope: !6368)
!6388 = !DILocation(line: 27, column: 8, scope: !6368)
!6389 = !DILocation(line: 27, column: 4, scope: !6368)
!6390 = !DILocation(line: 29, column: 9, scope: !6368)
!6391 = !DILocation(line: 30, column: 1, scope: !6368)
!6392 = !DILocation(line: 29, column: 2, scope: !6368)
!6393 = distinct !DISubprogram(name: "variable__ffs", scope: !6288, file: !6288, line: 250, type: !6370, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6394)
!6394 = !{!6395}
!6395 = !DILocalVariable(name: "word", arg: 1, scope: !6393, file: !6288, line: 250, type: !255)
!6396 = !DILocation(line: 250, column: 66, scope: !6393)
!6397 = !DILocation(line: 254, column: 11, scope: !6393)
!6398 = !DILocation(line: 252, column: 2, scope: !6393)
!6399 = !{i64 254386}
!6400 = !DILocation(line: 255, column: 9, scope: !6393)
!6401 = !DILocation(line: 255, column: 2, scope: !6393)
!6402 = distinct !DISubprogram(name: "get_alloc_page_size", scope: !3, file: !3, line: 81, type: !6403, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6405)
!6403 = !DISubroutineType(types: !6404)
!6404 = !{!536, !536}
!6405 = !{!6406}
!6406 = !DILocalVariable(name: "size", arg: 1, scope: !6402, file: !3, line: 81, type: !536)
!6407 = !DILocation(line: 81, column: 43, scope: !6402)
!6408 = !DILocation(line: 83, column: 6, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 83, column: 6)
!6410 = !DILocation(line: 83, column: 11, scope: !6409)
!6411 = !DILocation(line: 83, column: 6, scope: !6402)
!6412 = !DILocation(line: 84, column: 3, scope: !6409)
!6413 = !DILocation(line: 86, column: 6, scope: !6414)
!6414 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 86, column: 6)
!6415 = !DILocation(line: 86, column: 11, scope: !6414)
!6416 = !DILocation(line: 86, column: 6, scope: !6402)
!6417 = !DILocation(line: 87, column: 3, scope: !6414)
!6418 = !DILocation(line: 89, column: 2, scope: !6402)
!6419 = !DILocation(line: 90, column: 1, scope: !6402)
!6420 = distinct !DISubprogram(name: "v2_alloc_pte", scope: !3, file: !3, line: 135, type: !6421, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6423)
!6421 = !DISubroutineType(types: !6422)
!6422 = !{!5395, !147, !5395, !255, !255, !1232, !4042}
!6423 = !{!6424, !6425, !6426, !6427, !6428, !6429, !6430, !6431, !6432, !6433, !6434, !6436, !6437, !6441, !6444, !6445, !6446, !6447, !6452, !6455, !6456, !6457, !6458, !6461, !6463, !6466, !6467, !6468}
!6424 = !DILocalVariable(name: "nid", arg: 1, scope: !6420, file: !3, line: 135, type: !147)
!6425 = !DILocalVariable(name: "pgd", arg: 2, scope: !6420, file: !3, line: 135, type: !5395)
!6426 = !DILocalVariable(name: "iova", arg: 3, scope: !6420, file: !3, line: 135, type: !255)
!6427 = !DILocalVariable(name: "pg_size", arg: 4, scope: !6420, file: !3, line: 136, type: !255)
!6428 = !DILocalVariable(name: "gfp", arg: 5, scope: !6420, file: !3, line: 136, type: !1232)
!6429 = !DILocalVariable(name: "updated", arg: 6, scope: !6420, file: !3, line: 136, type: !4042)
!6430 = !DILocalVariable(name: "pte", scope: !6420, file: !3, line: 138, type: !5395)
!6431 = !DILocalVariable(name: "page", scope: !6420, file: !3, line: 138, type: !5395)
!6432 = !DILocalVariable(name: "level", scope: !6420, file: !3, line: 139, type: !147)
!6433 = !DILocalVariable(name: "end_level", scope: !6420, file: !3, line: 139, type: !147)
!6434 = !DILocalVariable(name: "__pte", scope: !6435, file: !3, line: 147, type: !536)
!6435 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 146, column: 29)
!6436 = !DILocalVariable(name: "__npte", scope: !6435, file: !3, line: 147, type: !536)
!6437 = !DILocalVariable(name: "__ai_ptr", scope: !6438, file: !3, line: 153, type: !5395)
!6438 = distinct !DILexicalBlock(scope: !6439, file: !3, line: 153, column: 4)
!6439 = distinct !DILexicalBlock(scope: !6440, file: !3, line: 151, column: 56)
!6440 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 151, column: 7)
!6441 = !DILocalVariable(name: "__ret", scope: !6442, file: !3, line: 153, type: !536)
!6442 = distinct !DILexicalBlock(scope: !6443, file: !3, line: 153, column: 4)
!6443 = distinct !DILexicalBlock(scope: !6438, file: !3, line: 153, column: 4)
!6444 = !DILocalVariable(name: "__old", scope: !6442, file: !3, line: 153, type: !536)
!6445 = !DILocalVariable(name: "__new", scope: !6442, file: !3, line: 153, type: !536)
!6446 = !DILocalVariable(name: "__ptr", scope: !6442, file: !3, line: 153, type: !5600)
!6447 = !DILocalVariable(name: "__ai_ptr", scope: !6448, file: !3, line: 165, type: !5395)
!6448 = distinct !DILexicalBlock(scope: !6449, file: !3, line: 165, column: 8)
!6449 = distinct !DILexicalBlock(scope: !6450, file: !3, line: 165, column: 8)
!6450 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 158, column: 34)
!6451 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 158, column: 7)
!6452 = !DILocalVariable(name: "__ret", scope: !6453, file: !3, line: 165, type: !536)
!6453 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 165, column: 8)
!6454 = distinct !DILexicalBlock(scope: !6448, file: !3, line: 165, column: 8)
!6455 = !DILocalVariable(name: "__old", scope: !6453, file: !3, line: 165, type: !536)
!6456 = !DILocalVariable(name: "__new", scope: !6453, file: !3, line: 165, type: !536)
!6457 = !DILocalVariable(name: "__ptr", scope: !6453, file: !3, line: 165, type: !5600)
!6458 = !DILocalVariable(name: "__pte", scope: !6459, file: !3, line: 180, type: !5395)
!6459 = distinct !DILexicalBlock(scope: !6460, file: !3, line: 179, column: 31)
!6460 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 179, column: 6)
!6461 = !DILocalVariable(name: "__ai_ptr", scope: !6462, file: !3, line: 184, type: !5395)
!6462 = distinct !DILexicalBlock(scope: !6459, file: !3, line: 184, column: 3)
!6463 = !DILocalVariable(name: "__ret", scope: !6464, file: !3, line: 184, type: !536)
!6464 = distinct !DILexicalBlock(scope: !6465, file: !3, line: 184, column: 3)
!6465 = distinct !DILexicalBlock(scope: !6462, file: !3, line: 184, column: 3)
!6466 = !DILocalVariable(name: "__old", scope: !6464, file: !3, line: 184, type: !536)
!6467 = !DILocalVariable(name: "__new", scope: !6464, file: !3, line: 184, type: !536)
!6468 = !DILocalVariable(name: "__ptr", scope: !6464, file: !3, line: 184, type: !5600)
!6469 = !DILocation(line: 135, column: 30, scope: !6420)
!6470 = !DILocation(line: 135, column: 40, scope: !6420)
!6471 = !DILocation(line: 135, column: 59, scope: !6420)
!6472 = !DILocation(line: 136, column: 19, scope: !6420)
!6473 = !DILocation(line: 136, column: 34, scope: !6420)
!6474 = !DILocation(line: 136, column: 45, scope: !6420)
!6475 = !DILocation(line: 138, column: 2, scope: !6420)
!6476 = !DILocation(line: 138, column: 7, scope: !6420)
!6477 = !DILocation(line: 138, column: 13, scope: !6420)
!6478 = !DILocation(line: 139, column: 2, scope: !6420)
!6479 = !DILocation(line: 139, column: 6, scope: !6420)
!6480 = !DILocation(line: 139, column: 13, scope: !6420)
!6481 = !DILocation(line: 141, column: 10, scope: !6420)
!6482 = !DILocation(line: 141, column: 30, scope: !6420)
!6483 = !DILocation(line: 141, column: 8, scope: !6420)
!6484 = !DILocation(line: 142, column: 33, scope: !6420)
!6485 = !DILocation(line: 142, column: 14, scope: !6420)
!6486 = !DILocation(line: 142, column: 12, scope: !6420)
!6487 = !DILocation(line: 143, column: 9, scope: !6420)
!6488 = !DILocation(line: 143, column: 13, scope: !6420)
!6489 = !DILocation(line: 143, column: 6, scope: !6420)
!6490 = !DILocation(line: 144, column: 9, scope: !6420)
!6491 = !DILocation(line: 144, column: 7, scope: !6420)
!6492 = !DILocation(line: 146, column: 2, scope: !6420)
!6493 = !DILocation(line: 146, column: 9, scope: !6420)
!6494 = !DILocation(line: 146, column: 18, scope: !6420)
!6495 = !DILocation(line: 146, column: 15, scope: !6420)
!6496 = !DILocation(line: 147, column: 3, scope: !6435)
!6497 = !DILocation(line: 147, column: 7, scope: !6435)
!6498 = !DILocation(line: 147, column: 14, scope: !6435)
!6499 = !DILocation(line: 149, column: 12, scope: !6435)
!6500 = !DILocation(line: 149, column: 11, scope: !6435)
!6501 = !DILocation(line: 149, column: 9, scope: !6435)
!6502 = !DILocation(line: 151, column: 7, scope: !6440)
!6503 = !DILocation(line: 151, column: 32, scope: !6440)
!6504 = !DILocation(line: 151, column: 48, scope: !6440)
!6505 = !DILocation(line: 151, column: 35, scope: !6440)
!6506 = !DILocation(line: 151, column: 7, scope: !6435)
!6507 = !DILocation(line: 153, column: 4, scope: !6438)
!6508 = !DILocation(line: 153, column: 4, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6438, file: !3, line: 153, column: 4)
!6510 = !DILocation(line: 153, column: 4, scope: !6443)
!6511 = !DILocation(line: 153, column: 4, scope: !6512)
!6512 = distinct !DILexicalBlock(scope: !6443, file: !3, line: 153, column: 4)
!6513 = !DILocation(line: 153, column: 4, scope: !6442)
!6514 = !{i64 2155357629, i64 2155357668, i64 2155357689, i64 2155357726, i64 2155357749, i64 2155357758}
!6515 = !DILocation(line: 153, column: 4, scope: !6439)
!6516 = !DILocation(line: 154, column: 5, scope: !6439)
!6517 = !DILocation(line: 154, column: 13, scope: !6439)
!6518 = !DILocation(line: 155, column: 4, scope: !6439)
!6519 = distinct !{!6519, !6492, !6520, !5924, !5925}
!6520 = !DILocation(line: 176, column: 2, scope: !6420)
!6521 = !DILocation(line: 158, column: 8, scope: !6451)
!6522 = !DILocation(line: 158, column: 7, scope: !6435)
!6523 = !DILocation(line: 159, column: 30, scope: !6450)
!6524 = !DILocation(line: 159, column: 35, scope: !6450)
!6525 = !DILocation(line: 159, column: 11, scope: !6450)
!6526 = !DILocation(line: 159, column: 9, scope: !6450)
!6527 = !DILocation(line: 160, column: 9, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6450, file: !3, line: 160, column: 8)
!6529 = !DILocation(line: 160, column: 8, scope: !6450)
!6530 = !DILocation(line: 161, column: 5, scope: !6528)
!6531 = !DILocation(line: 163, column: 30, scope: !6450)
!6532 = !DILocation(line: 163, column: 13, scope: !6450)
!6533 = !DILocation(line: 163, column: 11, scope: !6450)
!6534 = !DILocation(line: 165, column: 8, scope: !6448)
!6535 = !DILocation(line: 165, column: 8, scope: !6536)
!6536 = distinct !DILexicalBlock(scope: !6448, file: !3, line: 165, column: 8)
!6537 = !DILocation(line: 165, column: 8, scope: !6454)
!6538 = !DILocation(line: 165, column: 8, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 165, column: 8)
!6540 = !DILocation(line: 165, column: 8, scope: !6453)
!6541 = !{i64 2155361707, i64 2155361746, i64 2155361767, i64 2155361804, i64 2155361827, i64 2155361836}
!6542 = !DILocation(line: 165, column: 8, scope: !6449)
!6543 = !DILocation(line: 165, column: 41, scope: !6449)
!6544 = !DILocation(line: 165, column: 38, scope: !6449)
!6545 = !DILocation(line: 165, column: 8, scope: !6450)
!6546 = !DILocation(line: 166, column: 23, scope: !6449)
!6547 = !DILocation(line: 166, column: 5, scope: !6449)
!6548 = !DILocation(line: 167, column: 13, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6449, file: !3, line: 167, column: 13)
!6550 = !DILocation(line: 167, column: 13, scope: !6449)
!6551 = !DILocation(line: 168, column: 6, scope: !6549)
!6552 = !DILocation(line: 168, column: 14, scope: !6549)
!6553 = !DILocation(line: 168, column: 5, scope: !6549)
!6554 = !DILocation(line: 170, column: 4, scope: !6450)
!6555 = !DILocation(line: 173, column: 9, scope: !6435)
!6556 = !DILocation(line: 174, column: 25, scope: !6435)
!6557 = !DILocation(line: 174, column: 9, scope: !6435)
!6558 = !DILocation(line: 174, column: 7, scope: !6435)
!6559 = !DILocation(line: 175, column: 10, scope: !6435)
!6560 = !DILocation(line: 175, column: 14, scope: !6435)
!6561 = !DILocation(line: 175, column: 7, scope: !6435)
!6562 = !DILocation(line: 179, column: 6, scope: !6460)
!6563 = !DILocation(line: 179, column: 6, scope: !6420)
!6564 = !DILocation(line: 180, column: 3, scope: !6459)
!6565 = !DILocation(line: 180, column: 8, scope: !6459)
!6566 = !DILocation(line: 182, column: 4, scope: !6459)
!6567 = !DILocation(line: 182, column: 12, scope: !6459)
!6568 = !DILocation(line: 183, column: 28, scope: !6459)
!6569 = !DILocation(line: 183, column: 27, scope: !6459)
!6570 = !DILocation(line: 183, column: 11, scope: !6459)
!6571 = !DILocation(line: 183, column: 9, scope: !6459)
!6572 = !DILocation(line: 184, column: 3, scope: !6462)
!6573 = !DILocation(line: 184, column: 3, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6462, file: !3, line: 184, column: 3)
!6575 = !DILocation(line: 184, column: 3, scope: !6465)
!6576 = !DILocation(line: 184, column: 3, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6465, file: !3, line: 184, column: 3)
!6578 = !DILocation(line: 184, column: 3, scope: !6464)
!6579 = !{i64 2155365958, i64 2155365997, i64 2155366018, i64 2155366055, i64 2155366078, i64 2155366087}
!6580 = !DILocation(line: 184, column: 3, scope: !6459)
!6581 = !DILocation(line: 185, column: 7, scope: !6582)
!6582 = distinct !DILexicalBlock(scope: !6459, file: !3, line: 185, column: 7)
!6583 = !DILocation(line: 185, column: 15, scope: !6582)
!6584 = !DILocation(line: 185, column: 7, scope: !6459)
!6585 = !DILocation(line: 186, column: 17, scope: !6582)
!6586 = !DILocation(line: 186, column: 24, scope: !6582)
!6587 = !DILocation(line: 186, column: 34, scope: !6582)
!6588 = !DILocation(line: 186, column: 4, scope: !6582)
!6589 = !DILocation(line: 187, column: 12, scope: !6590)
!6590 = distinct !DILexicalBlock(scope: !6582, file: !3, line: 187, column: 12)
!6591 = !DILocation(line: 187, column: 20, scope: !6590)
!6592 = !DILocation(line: 187, column: 12, scope: !6582)
!6593 = !DILocation(line: 188, column: 22, scope: !6590)
!6594 = !DILocation(line: 188, column: 4, scope: !6590)
!6595 = !DILocation(line: 189, column: 2, scope: !6460)
!6596 = !DILocation(line: 189, column: 2, scope: !6459)
!6597 = !DILocation(line: 191, column: 9, scope: !6420)
!6598 = !DILocation(line: 191, column: 2, scope: !6420)
!6599 = !DILocation(line: 192, column: 1, scope: !6420)
!6600 = distinct !DISubprogram(name: "set_pte_attr", scope: !3, file: !3, line: 63, type: !6601, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6603)
!6601 = !DISubroutineType(types: !6602)
!6602 = !{!536, !536, !536, !147}
!6603 = !{!6604, !6605, !6606, !6607}
!6604 = !DILocalVariable(name: "paddr", arg: 1, scope: !6600, file: !3, line: 63, type: !536)
!6605 = !DILocalVariable(name: "pg_size", arg: 2, scope: !6600, file: !3, line: 63, type: !536)
!6606 = !DILocalVariable(name: "prot", arg: 3, scope: !6600, file: !3, line: 63, type: !147)
!6607 = !DILocalVariable(name: "pte", scope: !6600, file: !3, line: 65, type: !536)
!6608 = !DILocation(line: 63, column: 29, scope: !6600)
!6609 = !DILocation(line: 63, column: 40, scope: !6600)
!6610 = !DILocation(line: 63, column: 53, scope: !6600)
!6611 = !DILocation(line: 65, column: 2, scope: !6600)
!6612 = !DILocation(line: 65, column: 6, scope: !6600)
!6613 = !DILocation(line: 67, column: 8, scope: !6600)
!6614 = !DILocation(line: 67, column: 6, scope: !6600)
!6615 = !DILocation(line: 68, column: 6, scope: !6600)
!6616 = !DILocation(line: 69, column: 6, scope: !6600)
!6617 = !DILocation(line: 71, column: 6, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6600, file: !3, line: 71, column: 6)
!6619 = !DILocation(line: 71, column: 11, scope: !6618)
!6620 = !DILocation(line: 71, column: 6, scope: !6600)
!6621 = !DILocation(line: 72, column: 7, scope: !6618)
!6622 = !DILocation(line: 72, column: 3, scope: !6618)
!6623 = !DILocation(line: 75, column: 6, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6600, file: !3, line: 75, column: 6)
!6625 = !DILocation(line: 75, column: 14, scope: !6624)
!6626 = !DILocation(line: 75, column: 36, scope: !6624)
!6627 = !DILocation(line: 75, column: 39, scope: !6624)
!6628 = !DILocation(line: 75, column: 47, scope: !6624)
!6629 = !DILocation(line: 75, column: 6, scope: !6600)
!6630 = !DILocation(line: 76, column: 7, scope: !6624)
!6631 = !DILocation(line: 76, column: 3, scope: !6624)
!6632 = !DILocation(line: 78, column: 9, scope: !6600)
!6633 = !DILocation(line: 79, column: 1, scope: !6600)
!6634 = !DILocation(line: 78, column: 2, scope: !6600)
!6635 = !DISubprogram(name: "amd_iommu_flush_tlb", scope: !5758, file: !5758, line: 63, type: !6636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6636 = !DISubroutineType(types: !6637)
!6637 = !{!147, !4385, !532}
!6638 = !DISubprogram(name: "amd_iommu_flush_page", scope: !5758, file: !5758, line: 58, type: !6639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6639 = !DISubroutineType(types: !6640)
!6640 = !{!147, !4385, !532, !536}
!6641 = distinct !DISubprogram(name: "page_size_to_level", scope: !3, file: !3, line: 92, type: !6642, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6644)
!6642 = !DISubroutineType(types: !6643)
!6643 = !{!147, !536}
!6644 = !{!6645}
!6645 = !DILocalVariable(name: "pg_size", arg: 1, scope: !6641, file: !3, line: 92, type: !536)
!6646 = !DILocation(line: 92, column: 42, scope: !6641)
!6647 = !DILocation(line: 94, column: 6, scope: !6648)
!6648 = distinct !DILexicalBlock(scope: !6641, file: !3, line: 94, column: 6)
!6649 = !DILocation(line: 94, column: 14, scope: !6648)
!6650 = !DILocation(line: 94, column: 6, scope: !6641)
!6651 = !DILocation(line: 95, column: 3, scope: !6648)
!6652 = !DILocation(line: 96, column: 6, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6641, file: !3, line: 96, column: 6)
!6654 = !DILocation(line: 96, column: 14, scope: !6653)
!6655 = !DILocation(line: 96, column: 6, scope: !6641)
!6656 = !DILocation(line: 97, column: 3, scope: !6653)
!6657 = !DILocation(line: 99, column: 2, scope: !6641)
!6658 = !DILocation(line: 100, column: 1, scope: !6641)
!6659 = distinct !DISubprogram(name: "is_large_pte", scope: !3, file: !3, line: 43, type: !6660, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6662)
!6660 = !DISubroutineType(types: !6661)
!6661 = !{!260, !536}
!6662 = !{!6663}
!6663 = !DILocalVariable(name: "pte", arg: 1, scope: !6659, file: !3, line: 43, type: !536)
!6664 = !DILocation(line: 43, column: 37, scope: !6659)
!6665 = !DILocation(line: 45, column: 10, scope: !6659)
!6666 = !DILocation(line: 45, column: 14, scope: !6659)
!6667 = !DILocation(line: 45, column: 9, scope: !6659)
!6668 = !DILocation(line: 45, column: 2, scope: !6659)
!6669 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6271, file: !6271, line: 94, type: !6272, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6670)
!6670 = !{!6671, !6672}
!6671 = !DILocalVariable(name: "v", arg: 1, scope: !6669, file: !6271, line: 94, type: !6274)
!6672 = !DILocalVariable(name: "size", arg: 2, scope: !6669, file: !6271, line: 94, type: !276)
!6673 = !DILocation(line: 94, column: 79, scope: !6669)
!6674 = !DILocation(line: 94, column: 89, scope: !6669)
!6675 = !DILocation(line: 96, column: 20, scope: !6669)
!6676 = !DILocation(line: 96, column: 23, scope: !6669)
!6677 = !DILocation(line: 96, column: 2, scope: !6669)
!6678 = !DILocation(line: 97, column: 2, scope: !6669)
!6679 = !DILocation(line: 98, column: 1, scope: !6669)
!6680 = distinct !DISubprogram(name: "set_pgtable_attr", scope: !3, file: !3, line: 48, type: !6681, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6683)
!6681 = !DISubroutineType(types: !6682)
!6682 = !{!536, !5395}
!6683 = !{!6684, !6685}
!6684 = !DILocalVariable(name: "page", arg: 1, scope: !6680, file: !3, line: 48, type: !5395)
!6685 = !DILocalVariable(name: "prot", scope: !6680, file: !3, line: 50, type: !536)
!6686 = !DILocation(line: 48, column: 41, scope: !6680)
!6687 = !DILocation(line: 50, column: 2, scope: !6680)
!6688 = !DILocation(line: 50, column: 6, scope: !6680)
!6689 = !DILocation(line: 52, column: 7, scope: !6680)
!6690 = !DILocation(line: 53, column: 7, scope: !6680)
!6691 = !DILocation(line: 55, column: 29, scope: !6680)
!6692 = !DILocation(line: 55, column: 10, scope: !6680)
!6693 = !DILocation(line: 55, column: 37, scope: !6680)
!6694 = !DILocation(line: 55, column: 35, scope: !6680)
!6695 = !DILocation(line: 56, column: 1, scope: !6680)
!6696 = !DILocation(line: 55, column: 2, scope: !6680)
!6697 = distinct !DISubprogram(name: "get_pgtable_pte", scope: !3, file: !3, line: 58, type: !6698, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6700)
!6698 = !DISubroutineType(types: !6699)
!6699 = !{!246, !536}
!6700 = !{!6701}
!6701 = !DILocalVariable(name: "pte", arg: 1, scope: !6697, file: !3, line: 58, type: !536)
!6702 = !DILocation(line: 58, column: 41, scope: !6697)
!6703 = !DILocation(line: 60, column: 28, scope: !6697)
!6704 = !DILocation(line: 60, column: 32, scope: !6697)
!6705 = !DILocation(line: 60, column: 9, scope: !6697)
!6706 = !DILocation(line: 60, column: 2, scope: !6697)
!6707 = distinct !DISubprogram(name: "free_pgtable", scope: !3, file: !3, line: 107, type: !6708, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6710)
!6708 = !DISubroutineType(types: !6709)
!6709 = !{null, !5395, !147}
!6710 = !{!6711, !6712, !6713, !6714}
!6711 = !DILocalVariable(name: "pt", arg: 1, scope: !6707, file: !3, line: 107, type: !5395)
!6712 = !DILocalVariable(name: "level", arg: 2, scope: !6707, file: !3, line: 107, type: !147)
!6713 = !DILocalVariable(name: "p", scope: !6707, file: !3, line: 109, type: !5395)
!6714 = !DILocalVariable(name: "i", scope: !6707, file: !3, line: 110, type: !147)
!6715 = !DILocation(line: 107, column: 31, scope: !6707)
!6716 = !DILocation(line: 107, column: 39, scope: !6707)
!6717 = !DILocation(line: 109, column: 2, scope: !6707)
!6718 = !DILocation(line: 109, column: 7, scope: !6707)
!6719 = !DILocation(line: 110, column: 2, scope: !6707)
!6720 = !DILocation(line: 110, column: 6, scope: !6707)
!6721 = !DILocation(line: 112, column: 9, scope: !6722)
!6722 = distinct !DILexicalBlock(scope: !6707, file: !3, line: 112, column: 2)
!6723 = !DILocation(line: 112, column: 7, scope: !6722)
!6724 = !DILocation(line: 112, column: 14, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6722, file: !3, line: 112, column: 2)
!6726 = !DILocation(line: 112, column: 16, scope: !6725)
!6727 = !DILocation(line: 112, column: 2, scope: !6722)
!6728 = !DILocation(line: 114, column: 8, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6730, file: !3, line: 114, column: 7)
!6730 = distinct !DILexicalBlock(scope: !6725, file: !3, line: 112, column: 42)
!6731 = !DILocation(line: 114, column: 7, scope: !6730)
!6732 = !DILocation(line: 115, column: 4, scope: !6729)
!6733 = !DILocation(line: 117, column: 20, scope: !6734)
!6734 = distinct !DILexicalBlock(scope: !6730, file: !3, line: 117, column: 7)
!6735 = !DILocation(line: 117, column: 23, scope: !6734)
!6736 = !DILocation(line: 117, column: 7, scope: !6734)
!6737 = !DILocation(line: 117, column: 7, scope: !6730)
!6738 = !DILocation(line: 118, column: 4, scope: !6734)
!6739 = !DILocation(line: 124, column: 23, scope: !6730)
!6740 = !DILocation(line: 124, column: 26, scope: !6730)
!6741 = !DILocation(line: 124, column: 7, scope: !6730)
!6742 = !DILocation(line: 124, column: 5, scope: !6730)
!6743 = !DILocation(line: 125, column: 7, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6730, file: !3, line: 125, column: 7)
!6745 = !DILocation(line: 125, column: 13, scope: !6744)
!6746 = !DILocation(line: 125, column: 7, scope: !6730)
!6747 = !DILocation(line: 126, column: 17, scope: !6744)
!6748 = !DILocation(line: 126, column: 20, scope: !6744)
!6749 = !DILocation(line: 126, column: 26, scope: !6744)
!6750 = !DILocation(line: 126, column: 4, scope: !6744)
!6751 = !DILocation(line: 128, column: 22, scope: !6744)
!6752 = !DILocation(line: 128, column: 4, scope: !6744)
!6753 = !DILocation(line: 129, column: 2, scope: !6730)
!6754 = !DILocation(line: 112, column: 38, scope: !6725)
!6755 = !DILocation(line: 112, column: 2, scope: !6725)
!6756 = distinct !{!6756, !6727, !6757, !5924, !5925}
!6757 = !DILocation(line: 129, column: 2, scope: !6722)
!6758 = !DILocation(line: 131, column: 20, scope: !6707)
!6759 = !DILocation(line: 131, column: 2, scope: !6707)
!6760 = !DILocation(line: 132, column: 1, scope: !6707)
!6761 = distinct !DISubprogram(name: "kasan_check_write", scope: !6304, file: !6304, line: 44, type: !6305, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6762)
!6762 = !{!6763, !6764}
!6763 = !DILocalVariable(name: "p", arg: 1, scope: !6761, file: !6304, line: 44, type: !6274)
!6764 = !DILocalVariable(name: "size", arg: 2, scope: !6761, file: !6304, line: 44, type: !7)
!6765 = !DILocation(line: 44, column: 59, scope: !6761)
!6766 = !DILocation(line: 44, column: 75, scope: !6761)
!6767 = !DILocation(line: 46, column: 2, scope: !6761)
!6768 = distinct !DISubprogram(name: "iommu_phys_to_virt", scope: !5758, file: !5758, line: 100, type: !6769, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6771)
!6769 = !DISubroutineType(types: !6770)
!6770 = !{!246, !255}
!6771 = !{!6772}
!6772 = !DILocalVariable(name: "paddr", arg: 1, scope: !6768, file: !5758, line: 100, type: !255)
!6773 = !DILocation(line: 100, column: 54, scope: !6768)
!6774 = !DILocation(line: 102, column: 22, scope: !6768)
!6775 = !DILocation(line: 102, column: 9, scope: !6768)
!6776 = !DILocation(line: 102, column: 2, scope: !6768)
!6777 = distinct !DISubprogram(name: "phys_to_virt", scope: !6359, file: !6359, line: 147, type: !6778, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6780)
!6778 = !DISubroutineType(types: !6779)
!6779 = !{!246, !3326}
!6780 = !{!6781}
!6781 = !DILocalVariable(name: "address", arg: 1, scope: !6777, file: !6359, line: 147, type: !3326)
!6782 = !DILocation(line: 147, column: 46, scope: !6777)
!6783 = !DILocation(line: 149, column: 9, scope: !6777)
!6784 = !DILocation(line: 149, column: 2, scope: !6777)
!6785 = distinct !DISubprogram(name: "fetch_pte", scope: !3, file: !3, line: 198, type: !6786, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6788)
!6786 = !DISubroutineType(types: !6787)
!6787 = !{!5395, !247, !255, !1069}
!6788 = !{!6789, !6790, !6791, !6792, !6793}
!6789 = !DILocalVariable(name: "pgtable", arg: 1, scope: !6785, file: !3, line: 198, type: !247)
!6790 = !DILocalVariable(name: "iova", arg: 2, scope: !6785, file: !3, line: 199, type: !255)
!6791 = !DILocalVariable(name: "page_size", arg: 3, scope: !6785, file: !3, line: 199, type: !1069)
!6792 = !DILocalVariable(name: "pte", scope: !6785, file: !3, line: 201, type: !5395)
!6793 = !DILocalVariable(name: "level", scope: !6785, file: !3, line: 202, type: !147)
!6794 = !DILocation(line: 198, column: 46, scope: !6785)
!6795 = !DILocation(line: 199, column: 23, scope: !6785)
!6796 = !DILocation(line: 199, column: 44, scope: !6785)
!6797 = !DILocation(line: 201, column: 2, scope: !6785)
!6798 = !DILocation(line: 201, column: 7, scope: !6785)
!6799 = !DILocation(line: 202, column: 2, scope: !6785)
!6800 = !DILocation(line: 202, column: 6, scope: !6785)
!6801 = !DILocation(line: 204, column: 10, scope: !6785)
!6802 = !DILocation(line: 204, column: 30, scope: !6785)
!6803 = !DILocation(line: 204, column: 8, scope: !6785)
!6804 = !DILocation(line: 205, column: 9, scope: !6785)
!6805 = !DILocation(line: 205, column: 18, scope: !6785)
!6806 = !DILocation(line: 205, column: 22, scope: !6785)
!6807 = !DILocation(line: 205, column: 6, scope: !6785)
!6808 = !DILocation(line: 207, column: 3, scope: !6785)
!6809 = !DILocation(line: 207, column: 13, scope: !6785)
!6810 = !DILocation(line: 209, column: 2, scope: !6785)
!6811 = !DILocation(line: 209, column: 9, scope: !6785)
!6812 = !DILocation(line: 211, column: 8, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 211, column: 7)
!6814 = distinct !DILexicalBlock(scope: !6785, file: !3, line: 209, column: 16)
!6815 = !DILocation(line: 211, column: 7, scope: !6814)
!6816 = !DILocation(line: 212, column: 4, scope: !6813)
!6817 = !DILocation(line: 215, column: 26, scope: !6814)
!6818 = !DILocation(line: 215, column: 25, scope: !6814)
!6819 = !DILocation(line: 215, column: 9, scope: !6814)
!6820 = !DILocation(line: 215, column: 7, scope: !6814)
!6821 = !DILocation(line: 216, column: 10, scope: !6814)
!6822 = !DILocation(line: 216, column: 14, scope: !6814)
!6823 = !DILocation(line: 216, column: 7, scope: !6814)
!6824 = !DILocation(line: 219, column: 21, scope: !6825)
!6825 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 219, column: 7)
!6826 = !DILocation(line: 219, column: 20, scope: !6825)
!6827 = !DILocation(line: 219, column: 7, scope: !6825)
!6828 = !DILocation(line: 219, column: 7, scope: !6814)
!6829 = !DILocation(line: 220, column: 8, scope: !6830)
!6830 = distinct !DILexicalBlock(scope: !6831, file: !3, line: 220, column: 8)
!6831 = distinct !DILexicalBlock(scope: !6825, file: !3, line: 219, column: 27)
!6832 = !DILocation(line: 220, column: 14, scope: !6830)
!6833 = !DILocation(line: 220, column: 8, scope: !6831)
!6834 = !DILocation(line: 221, column: 6, scope: !6830)
!6835 = !DILocation(line: 221, column: 16, scope: !6830)
!6836 = !DILocation(line: 221, column: 5, scope: !6830)
!6837 = !DILocation(line: 222, column: 13, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6830, file: !3, line: 222, column: 13)
!6839 = !DILocation(line: 222, column: 19, scope: !6838)
!6840 = !DILocation(line: 222, column: 13, scope: !6830)
!6841 = !DILocation(line: 223, column: 6, scope: !6838)
!6842 = !DILocation(line: 223, column: 16, scope: !6838)
!6843 = !DILocation(line: 223, column: 5, scope: !6838)
!6844 = !DILocation(line: 225, column: 5, scope: !6838)
!6845 = !DILocation(line: 227, column: 4, scope: !6831)
!6846 = !DILocation(line: 230, column: 9, scope: !6814)
!6847 = distinct !{!6847, !6810, !6848, !5924, !5925}
!6848 = !DILocation(line: 231, column: 2, scope: !6785)
!6849 = !DILocation(line: 233, column: 9, scope: !6785)
!6850 = !DILocation(line: 233, column: 2, scope: !6785)
!6851 = !DILocation(line: 234, column: 1, scope: !6785)
!6852 = distinct !DISubprogram(name: "v2_tlb_flush_all", scope: !3, file: !3, line: 336, type: !270, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6853)
!6853 = !{!6854}
!6854 = !DILocalVariable(name: "cookie", arg: 1, scope: !6852, file: !3, line: 336, type: !246)
!6855 = !DILocation(line: 336, column: 36, scope: !6852)
!6856 = !DILocation(line: 338, column: 1, scope: !6852)
!6857 = distinct !DISubprogram(name: "v2_tlb_flush_walk", scope: !3, file: !3, line: 340, type: !274, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6858)
!6858 = !{!6859, !6860, !6861, !6862}
!6859 = !DILocalVariable(name: "iova", arg: 1, scope: !6857, file: !3, line: 340, type: !255)
!6860 = !DILocalVariable(name: "size", arg: 2, scope: !6857, file: !3, line: 340, type: !276)
!6861 = !DILocalVariable(name: "granule", arg: 3, scope: !6857, file: !3, line: 341, type: !276)
!6862 = !DILocalVariable(name: "cookie", arg: 4, scope: !6857, file: !3, line: 341, type: !246)
!6863 = !DILocation(line: 340, column: 45, scope: !6857)
!6864 = !DILocation(line: 340, column: 58, scope: !6857)
!6865 = !DILocation(line: 341, column: 17, scope: !6857)
!6866 = !DILocation(line: 341, column: 32, scope: !6857)
!6867 = !DILocation(line: 343, column: 1, scope: !6857)
!6868 = distinct !DISubprogram(name: "v2_tlb_add_page", scope: !3, file: !3, line: 345, type: !282, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6869)
!6869 = !{!6870, !6871, !6872, !6873}
!6870 = !DILocalVariable(name: "gather", arg: 1, scope: !6868, file: !3, line: 345, type: !284)
!6871 = !DILocalVariable(name: "iova", arg: 2, scope: !6868, file: !3, line: 346, type: !255)
!6872 = !DILocalVariable(name: "granule", arg: 3, scope: !6868, file: !3, line: 346, type: !276)
!6873 = !DILocalVariable(name: "cookie", arg: 4, scope: !6868, file: !3, line: 347, type: !246)
!6874 = !DILocation(line: 345, column: 56, scope: !6868)
!6875 = !DILocation(line: 346, column: 22, scope: !6868)
!6876 = !DILocation(line: 346, column: 35, scope: !6868)
!6877 = !DILocation(line: 347, column: 14, scope: !6868)
!6878 = !DILocation(line: 349, column: 1, scope: !6868)
!6879 = !DISubprogram(name: "free_pages", scope: !5605, file: !5605, line: 303, type: !6880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6880 = !DISubroutineType(types: !6881)
!6881 = !{null, !255, !7}
!6882 = !DISubprogram(name: "amd_iommu_domain_update", scope: !5758, file: !5758, line: 60, type: !6883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6883 = !DISubroutineType(types: !6884)
!6884 = !{null, !5582}
