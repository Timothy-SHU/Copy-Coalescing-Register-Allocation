; ModuleID = 'drivers/iommu/amd/io_pgtable.c'
source_filename = "drivers/iommu/amd/io_pgtable.c"
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
%struct.page = type { i64, %union.anon.28, %union.anon.37, %struct.atomic_t, [8 x i8] }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { %union.anon.30, ptr, %union.anon.32, i64 }
%union.anon.30 = type { %struct.list_head }
%union.anon.32 = type { i64 }
%union.anon.37 = type { %struct.atomic_t }

@io_pgtable_amd_iommu_v1_init_fns = hidden global %struct.io_pgtable_init_fns { ptr @v1_alloc_pgtable, ptr @v1_free_pgtable }, align 8, !dbg !0
@v1_flush_ops = internal constant %struct.iommu_flush_ops { ptr @v1_tlb_flush_all, ptr @v1_tlb_flush_walk, ptr @v1_tlb_add_page }, align 8, !dbg !5609
@.str = private unnamed_addr constant [31 x i8] c"drivers/iommu/amd/io_pgtable.c\00", align 1, !dbg !5611
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"\014AMD-Vi: %pGg allocation from offline node %d\0A\00", align 1, !dbg !5616
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"\014AMD-Vi: AMD-Vi: IOMMU pte changed since we read it\0A\00", align 1, !dbg !5622

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @amd_iommu_domain_set_pgtable(ptr noundef %domain, ptr noundef %root, i32 noundef %mode) #0 align 16 !dbg !5647 {
entry:
  %domain.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %pt_root = alloca i64, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !5651, metadata !DIExpression()), !dbg !5655
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5652, metadata !DIExpression()), !dbg !5656
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5653, metadata !DIExpression()), !dbg !5657
  call void @llvm.lifetime.start.p0(i64 8, ptr %pt_root) #11, !dbg !5658
  call void @llvm.dbg.declare(metadata ptr %pt_root, metadata !5654, metadata !DIExpression()), !dbg !5659
  %0 = load i32, ptr %mode.addr, align 4, !dbg !5660
  %and = and i32 %0, 7, !dbg !5661
  %conv = sext i32 %and to i64, !dbg !5660
  store i64 %conv, ptr %pt_root, align 8, !dbg !5662
  %1 = load ptr, ptr %root.addr, align 8, !dbg !5663
  %2 = ptrtoint ptr %1 to i64, !dbg !5664
  %3 = load i64, ptr %pt_root, align 8, !dbg !5665
  %or = or i64 %3, %2, !dbg !5665
  store i64 %or, ptr %pt_root, align 8, !dbg !5665
  %4 = load ptr, ptr %domain.addr, align 8, !dbg !5666
  %5 = load i64, ptr %pt_root, align 8, !dbg !5667
  call void @amd_iommu_domain_set_pt_root(ptr noundef %4, i64 noundef %5) #12, !dbg !5668
  call void @llvm.lifetime.end.p0(i64 8, ptr %pt_root) #11, !dbg !5669
  ret void, !dbg !5669
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd_iommu_domain_set_pt_root(ptr noundef %domain, i64 noundef %root) #3 align 16 !dbg !5670 {
entry:
  %domain.addr = alloca ptr, align 8
  %root.addr = alloca i64, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !5675, metadata !DIExpression()), !dbg !5677
  store i64 %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5676, metadata !DIExpression()), !dbg !5678
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !5679
  %iop = getelementptr inbounds %struct.protection_domain, ptr %0, i32 0, i32 2, !dbg !5680
  %pt_root = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop, i32 0, i32 4, !dbg !5681
  %1 = load i64, ptr %root.addr, align 8, !dbg !5682
  call void @atomic64_set(ptr noundef %pt_root, i64 noundef %1) #12, !dbg !5683
  %2 = load i64, ptr %root.addr, align 8, !dbg !5684
  %and = and i64 %2, -4096, !dbg !5685
  %3 = inttoptr i64 %and to ptr, !dbg !5686
  %4 = load ptr, ptr %domain.addr, align 8, !dbg !5687
  %iop1 = getelementptr inbounds %struct.protection_domain, ptr %4, i32 0, i32 2, !dbg !5688
  %root2 = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop1, i32 0, i32 3, !dbg !5689
  store ptr %3, ptr %root2, align 8, !dbg !5690
  %5 = load i64, ptr %root.addr, align 8, !dbg !5691
  %and3 = and i64 %5, 7, !dbg !5692
  %conv = trunc i64 %and3 to i32, !dbg !5691
  %6 = load ptr, ptr %domain.addr, align 8, !dbg !5693
  %iop4 = getelementptr inbounds %struct.protection_domain, ptr %6, i32 0, i32 2, !dbg !5694
  %mode = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop4, i32 0, i32 2, !dbg !5695
  store i32 %conv, ptr %mode, align 8, !dbg !5696
  ret void, !dbg !5697
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v1_alloc_pgtable(ptr noundef %cfg, ptr noundef %cookie) #0 align 16 !dbg !5698 {
entry:
  %cfg.addr = alloca ptr, align 8
  %cookie.addr = alloca ptr, align 8
  %pgtable = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %cfg, ptr %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cfg.addr, metadata !5700, metadata !DIExpression()), !dbg !5705
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !5701, metadata !DIExpression()), !dbg !5706
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgtable) #11, !dbg !5707
  call void @llvm.dbg.declare(metadata ptr %pgtable, metadata !5702, metadata !DIExpression()), !dbg !5708
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5709
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5703, metadata !DIExpression()), !dbg !5709
  %0 = load ptr, ptr %cfg.addr, align 8, !dbg !5709
  store ptr %0, ptr %__mptr, align 8, !dbg !5709
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5709
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5709
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5709
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5710
  %2 = load ptr, ptr %tmp, align 8, !dbg !5709
  store ptr %2, ptr %pgtable, align 8, !dbg !5708
  %3 = load ptr, ptr %cfg.addr, align 8, !dbg !5711
  %pgsize_bitmap = getelementptr inbounds %struct.io_pgtable_cfg, ptr %3, i32 0, i32 1, !dbg !5712
  store i64 -549755817984, ptr %pgsize_bitmap, align 8, !dbg !5713
  %4 = load ptr, ptr %cfg.addr, align 8, !dbg !5714
  %ias = getelementptr inbounds %struct.io_pgtable_cfg, ptr %4, i32 0, i32 2, !dbg !5715
  store i32 52, ptr %ias, align 8, !dbg !5716
  %5 = load ptr, ptr %cfg.addr, align 8, !dbg !5717
  %oas = getelementptr inbounds %struct.io_pgtable_cfg, ptr %5, i32 0, i32 3, !dbg !5718
  store i32 52, ptr %oas, align 4, !dbg !5719
  %6 = load ptr, ptr %cfg.addr, align 8, !dbg !5720
  %tlb = getelementptr inbounds %struct.io_pgtable_cfg, ptr %6, i32 0, i32 5, !dbg !5721
  store ptr @v1_flush_ops, ptr %tlb, align 8, !dbg !5722
  %7 = load ptr, ptr %pgtable, align 8, !dbg !5723
  %iop = getelementptr inbounds %struct.amd_io_pgtable, ptr %7, i32 0, i32 1, !dbg !5724
  %ops = getelementptr inbounds %struct.io_pgtable, ptr %iop, i32 0, i32 3, !dbg !5725
  %map_pages = getelementptr inbounds %struct.io_pgtable_ops, ptr %ops, i32 0, i32 0, !dbg !5726
  store ptr @iommu_v1_map_pages, ptr %map_pages, align 8, !dbg !5727
  %8 = load ptr, ptr %pgtable, align 8, !dbg !5728
  %iop1 = getelementptr inbounds %struct.amd_io_pgtable, ptr %8, i32 0, i32 1, !dbg !5729
  %ops2 = getelementptr inbounds %struct.io_pgtable, ptr %iop1, i32 0, i32 3, !dbg !5730
  %unmap_pages = getelementptr inbounds %struct.io_pgtable_ops, ptr %ops2, i32 0, i32 1, !dbg !5731
  store ptr @iommu_v1_unmap_pages, ptr %unmap_pages, align 8, !dbg !5732
  %9 = load ptr, ptr %pgtable, align 8, !dbg !5733
  %iop3 = getelementptr inbounds %struct.amd_io_pgtable, ptr %9, i32 0, i32 1, !dbg !5734
  %ops4 = getelementptr inbounds %struct.io_pgtable, ptr %iop3, i32 0, i32 3, !dbg !5735
  %iova_to_phys = getelementptr inbounds %struct.io_pgtable_ops, ptr %ops4, i32 0, i32 2, !dbg !5736
  store ptr @iommu_v1_iova_to_phys, ptr %iova_to_phys, align 8, !dbg !5737
  %10 = load ptr, ptr %pgtable, align 8, !dbg !5738
  %iop5 = getelementptr inbounds %struct.amd_io_pgtable, ptr %10, i32 0, i32 1, !dbg !5739
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgtable) #11, !dbg !5740
  ret ptr %iop5, !dbg !5741
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v1_free_pgtable(ptr noundef %iop) #0 align 16 !dbg !5742 {
entry:
  %iop.addr = alloca ptr, align 8
  %pgtable = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %dom = alloca ptr, align 8
  %freelist = alloca %struct.list_head, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %iop, ptr %iop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iop.addr, metadata !5744, metadata !DIExpression()), !dbg !5752
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgtable) #11, !dbg !5753
  call void @llvm.dbg.declare(metadata ptr %pgtable, metadata !5745, metadata !DIExpression()), !dbg !5754
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5755
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5746, metadata !DIExpression()), !dbg !5755
  %0 = load ptr, ptr %iop.addr, align 8, !dbg !5755
  store ptr %0, ptr %__mptr, align 8, !dbg !5755
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5755
  %add.ptr = getelementptr i8, ptr %1, i64 -88, !dbg !5755
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5755
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5756
  %2 = load ptr, ptr %tmp, align 8, !dbg !5755
  store ptr %2, ptr %pgtable, align 8, !dbg !5754
  call void @llvm.lifetime.start.p0(i64 8, ptr %dom) #11, !dbg !5757
  call void @llvm.dbg.declare(metadata ptr %dom, metadata !5748, metadata !DIExpression()), !dbg !5758
  call void @llvm.lifetime.start.p0(i64 16, ptr %freelist) #11, !dbg !5759
  call void @llvm.dbg.declare(metadata ptr %freelist, metadata !5749, metadata !DIExpression()), !dbg !5759
  %next = getelementptr inbounds %struct.list_head, ptr %freelist, i32 0, i32 0, !dbg !5759
  store ptr %freelist, ptr %next, align 8, !dbg !5759
  %prev = getelementptr inbounds %struct.list_head, ptr %freelist, i32 0, i32 1, !dbg !5759
  store ptr %freelist, ptr %prev, align 8, !dbg !5759
  %3 = load ptr, ptr %pgtable, align 8, !dbg !5760
  %mode = getelementptr inbounds %struct.amd_io_pgtable, ptr %3, i32 0, i32 2, !dbg !5762
  %4 = load i32, ptr %mode, align 8, !dbg !5762
  %cmp = icmp eq i32 %4, 0, !dbg !5763
  br i1 %cmp, label %if.then, label %if.end, !dbg !5764

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5765

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #11, !dbg !5766
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5750, metadata !DIExpression()), !dbg !5766
  %5 = load ptr, ptr %pgtable, align 8, !dbg !5766
  store ptr %5, ptr %__mptr1, align 8, !dbg !5766
  %6 = load ptr, ptr %__mptr1, align 8, !dbg !5766
  %add.ptr3 = getelementptr i8, ptr %6, i64 -104, !dbg !5766
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !5766
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #11, !dbg !5767
  %7 = load ptr, ptr %tmp2, align 8, !dbg !5766
  store ptr %7, ptr %dom, align 8, !dbg !5768
  br label %do.body, !dbg !5769

do.body:                                          ; preds = %if.end
  %8 = load ptr, ptr %pgtable, align 8, !dbg !5770
  %mode4 = getelementptr inbounds %struct.amd_io_pgtable, ptr %8, i32 0, i32 2, !dbg !5770
  %9 = load i32, ptr %mode4, align 8, !dbg !5770
  %cmp5 = icmp slt i32 %9, 0, !dbg !5770
  br i1 %cmp5, label %lor.end, label %lor.rhs, !dbg !5770

lor.rhs:                                          ; preds = %do.body
  %10 = load ptr, ptr %pgtable, align 8, !dbg !5770
  %mode6 = getelementptr inbounds %struct.amd_io_pgtable, ptr %10, i32 0, i32 2, !dbg !5770
  %11 = load i32, ptr %mode6, align 8, !dbg !5770
  %cmp7 = icmp sgt i32 %11, 6, !dbg !5770
  br label %lor.end, !dbg !5770

lor.end:                                          ; preds = %lor.rhs, %do.body
  %12 = phi i1 [ true, %do.body ], [ %cmp7, %lor.rhs ]
  %lnot = xor i1 %12, true, !dbg !5770
  %lnot8 = xor i1 %lnot, true, !dbg !5770
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5770
  %conv = sext i32 %lnot.ext to i64, !dbg !5770
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5770
  %tobool = icmp ne i64 %expval, 0, !dbg !5770
  br i1 %tobool, label %if.then9, label %if.end17, !dbg !5773

if.then9:                                         ; preds = %lor.end
  br label %do.body10, !dbg !5770

do.body10:                                        ; preds = %if.then9
  br label %do.body11, !dbg !5774

do.body11:                                        ; preds = %do.body10
  br label %do.cond, !dbg !5776

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !5776

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !5774

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 505, i32 0, i64 12) #11, !dbg !5778, !srcloc !5780
  br label %do.cond13, !dbg !5778

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5778

do.end14:                                         ; preds = %do.cond13
  unreachable, !dbg !5774

do.cond15:                                        ; No predecessors!
  br label %do.end16, !dbg !5774

do.end16:                                         ; preds = %do.cond15
  br label %if.end17, !dbg !5774

if.end17:                                         ; preds = %do.end16, %lor.end
  br label %do.cond18, !dbg !5773

do.cond18:                                        ; preds = %if.end17
  br label %do.end19, !dbg !5773

do.end19:                                         ; preds = %do.cond18
  %13 = load ptr, ptr %pgtable, align 8, !dbg !5781
  %root = getelementptr inbounds %struct.amd_io_pgtable, ptr %13, i32 0, i32 3, !dbg !5782
  %14 = load ptr, ptr %root, align 8, !dbg !5782
  %15 = load ptr, ptr %pgtable, align 8, !dbg !5783
  %mode20 = getelementptr inbounds %struct.amd_io_pgtable, ptr %15, i32 0, i32 2, !dbg !5784
  %16 = load i32, ptr %mode20, align 8, !dbg !5784
  call void @free_sub_pt(ptr noundef %14, i32 noundef %16, ptr noundef %freelist) #12, !dbg !5785
  %17 = load ptr, ptr %dom, align 8, !dbg !5786
  call void @amd_iommu_domain_clr_pt_root(ptr noundef %17) #12, !dbg !5787
  %18 = load ptr, ptr %dom, align 8, !dbg !5788
  call void @amd_iommu_domain_update(ptr noundef %18) #12, !dbg !5789
  call void @put_pages_list(ptr noundef %freelist) #12, !dbg !5790
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5791
  br label %cleanup, !dbg !5791

cleanup:                                          ; preds = %do.end19, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %freelist) #11, !dbg !5791
  call void @llvm.lifetime.end.p0(i64 8, ptr %dom) #11, !dbg !5791
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgtable) #11, !dbg !5791
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5791

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic64_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !5792 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5798, metadata !DIExpression()), !dbg !5800
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5799, metadata !DIExpression()), !dbg !5801
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5802
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #12, !dbg !5803
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5804
  %2 = load i64, ptr %i.addr, align 8, !dbg !5805
  call void @raw_atomic64_set(ptr noundef %1, i64 noundef %2) #12, !dbg !5806
  ret void, !dbg !5807
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5808 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5816, metadata !DIExpression()), !dbg !5818
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5817, metadata !DIExpression()), !dbg !5819
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5820
  %1 = load i64, ptr %size.addr, align 8, !dbg !5821
  %conv = trunc i64 %1 to i32, !dbg !5821
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !5822
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5823
  %3 = load i64, ptr %size.addr, align 8, !dbg !5823
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #12, !dbg !5823
  ret void, !dbg !5824
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !5825 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5828, metadata !DIExpression()), !dbg !5830
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5829, metadata !DIExpression()), !dbg !5831
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5832
  %1 = load i64, ptr %i.addr, align 8, !dbg !5833
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #12, !dbg !5834
  ret void, !dbg !5835
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5836 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5841, metadata !DIExpression()), !dbg !5843
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5842, metadata !DIExpression()), !dbg !5844
  ret i1 true, !dbg !5845
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5846 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5851, metadata !DIExpression()), !dbg !5854
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5852, metadata !DIExpression()), !dbg !5855
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5853, metadata !DIExpression()), !dbg !5856
  ret void, !dbg !5857
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !5858 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5861, metadata !DIExpression()), !dbg !5863
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5862, metadata !DIExpression()), !dbg !5864
  br label %do.body, !dbg !5865

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !5866
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5866
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !5866
  store volatile i64 %0, ptr %counter, align 8, !dbg !5866
  br label %do.end, !dbg !5866

do.end:                                           ; preds = %do.body
  ret void, !dbg !5868
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iommu_v1_map_pages(ptr noundef %ops, i64 noundef %iova, i64 noundef %paddr, i64 noundef %pgsize, i64 noundef %pgcount, i32 noundef %prot, i32 noundef %gfp, ptr noundef %mapped) #0 align 16 !dbg !5869 {
entry:
  %ops.addr = alloca ptr, align 8
  %iova.addr = alloca i64, align 8
  %paddr.addr = alloca i64, align 8
  %pgsize.addr = alloca i64, align 8
  %pgcount.addr = alloca i64, align 8
  %prot.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  %mapped.addr = alloca ptr, align 8
  %dom = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %freelist = alloca %struct.list_head, align 8
  %updated = alloca i8, align 1
  %__pte = alloca i64, align 8
  %pte = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp106 = alloca i32, align 4
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5871, metadata !DIExpression()), !dbg !5902
  store i64 %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !5872, metadata !DIExpression()), !dbg !5903
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !5873, metadata !DIExpression()), !dbg !5904
  store i64 %pgsize, ptr %pgsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgsize.addr, metadata !5874, metadata !DIExpression()), !dbg !5905
  store i64 %pgcount, ptr %pgcount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgcount.addr, metadata !5875, metadata !DIExpression()), !dbg !5906
  store i32 %prot, ptr %prot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prot.addr, metadata !5876, metadata !DIExpression()), !dbg !5907
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5877, metadata !DIExpression()), !dbg !5908
  store ptr %mapped, ptr %mapped.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapped.addr, metadata !5878, metadata !DIExpression()), !dbg !5909
  call void @llvm.lifetime.start.p0(i64 8, ptr %dom) #11, !dbg !5910
  call void @llvm.dbg.declare(metadata ptr %dom, metadata !5879, metadata !DIExpression()), !dbg !5911
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5912
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5880, metadata !DIExpression()), !dbg !5912
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #11, !dbg !5913
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5882, metadata !DIExpression()), !dbg !5913
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #11, !dbg !5914
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5884, metadata !DIExpression()), !dbg !5914
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !5914
  store ptr %0, ptr %__mptr2, align 8, !dbg !5914
  %1 = load ptr, ptr %__mptr2, align 8, !dbg !5914
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !5914
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #11, !dbg !5913
  %2 = load ptr, ptr %tmp, align 8, !dbg !5914
  store ptr %2, ptr %__mptr1, align 8, !dbg !5913
  %3 = load ptr, ptr %__mptr1, align 8, !dbg !5913
  %add.ptr4 = getelementptr i8, ptr %3, i64 -88, !dbg !5913
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !5913
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #11, !dbg !5912
  %4 = load ptr, ptr %tmp3, align 8, !dbg !5913
  store ptr %4, ptr %__mptr, align 8, !dbg !5912
  %5 = load ptr, ptr %__mptr, align 8, !dbg !5912
  %add.ptr6 = getelementptr i8, ptr %5, i64 -104, !dbg !5912
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !5912
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5915
  %6 = load ptr, ptr %tmp5, align 8, !dbg !5912
  store ptr %6, ptr %dom, align 8, !dbg !5911
  call void @llvm.lifetime.start.p0(i64 16, ptr %freelist) #11, !dbg !5916
  call void @llvm.dbg.declare(metadata ptr %freelist, metadata !5886, metadata !DIExpression()), !dbg !5916
  %next = getelementptr inbounds %struct.list_head, ptr %freelist, i32 0, i32 0, !dbg !5916
  store ptr %freelist, ptr %next, align 8, !dbg !5916
  %prev = getelementptr inbounds %struct.list_head, ptr %freelist, i32 0, i32 1, !dbg !5916
  store ptr %freelist, ptr %prev, align 8, !dbg !5916
  call void @llvm.lifetime.start.p0(i64 1, ptr %updated) #11, !dbg !5917
  call void @llvm.dbg.declare(metadata ptr %updated, metadata !5887, metadata !DIExpression()), !dbg !5918
  store i8 0, ptr %updated, align 1, !dbg !5918
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pte) #11, !dbg !5919
  call void @llvm.dbg.declare(metadata ptr %__pte, metadata !5888, metadata !DIExpression()), !dbg !5920
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #11, !dbg !5919
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !5889, metadata !DIExpression()), !dbg !5921
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !5922
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5890, metadata !DIExpression()), !dbg !5923
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !5922
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5891, metadata !DIExpression()), !dbg !5924
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #11, !dbg !5922
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5892, metadata !DIExpression()), !dbg !5925
  br label %do.body, !dbg !5926

do.body:                                          ; preds = %entry
  %7 = load i64, ptr %iova.addr, align 8, !dbg !5927
  %8 = load i64, ptr %pgsize.addr, align 8, !dbg !5927
  %sub = sub i64 %8, 1, !dbg !5927
  %and = and i64 %7, %sub, !dbg !5927
  %cmp = icmp eq i64 %and, 0, !dbg !5927
  %lnot = xor i1 %cmp, true, !dbg !5927
  %lnot7 = xor i1 %lnot, true, !dbg !5927
  %lnot8 = xor i1 %lnot7, true, !dbg !5927
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5927
  %conv = sext i32 %lnot.ext to i64, !dbg !5927
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5927
  %tobool = icmp ne i64 %expval, 0, !dbg !5927
  br i1 %tobool, label %if.then, label %if.end, !dbg !5930

if.then:                                          ; preds = %do.body
  br label %do.body9, !dbg !5927

do.body9:                                         ; preds = %if.then
  br label %do.body10, !dbg !5931

do.body10:                                        ; preds = %do.body9
  br label %do.cond, !dbg !5933

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !5933

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !5931

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 373, i32 0, i64 12) #11, !dbg !5935, !srcloc !5937
  br label %do.cond12, !dbg !5935

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5935

do.end13:                                         ; preds = %do.cond12
  unreachable, !dbg !5931

do.cond14:                                        ; No predecessors!
  br label %do.end15, !dbg !5931

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !5931

if.end:                                           ; preds = %do.end15, %do.body
  br label %do.cond16, !dbg !5930

do.cond16:                                        ; preds = %if.end
  br label %do.end17, !dbg !5930

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !5938

do.body18:                                        ; preds = %do.end17
  %9 = load i64, ptr %paddr.addr, align 8, !dbg !5939
  %10 = load i64, ptr %pgsize.addr, align 8, !dbg !5939
  %sub19 = sub i64 %10, 1, !dbg !5939
  %and20 = and i64 %9, %sub19, !dbg !5939
  %cmp21 = icmp eq i64 %and20, 0, !dbg !5939
  %lnot23 = xor i1 %cmp21, true, !dbg !5939
  %lnot25 = xor i1 %lnot23, true, !dbg !5939
  %lnot27 = xor i1 %lnot25, true, !dbg !5939
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5939
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5939
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5939
  %tobool31 = icmp ne i64 %expval30, 0, !dbg !5939
  br i1 %tobool31, label %if.then32, label %if.end42, !dbg !5942

if.then32:                                        ; preds = %do.body18
  br label %do.body33, !dbg !5939

do.body33:                                        ; preds = %if.then32
  br label %do.body34, !dbg !5943

do.body34:                                        ; preds = %do.body33
  br label %do.cond35, !dbg !5945

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5945

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5943

do.body37:                                        ; preds = %do.end36
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 374, i32 0, i64 12) #11, !dbg !5947, !srcloc !5949
  br label %do.cond38, !dbg !5947

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !5947

do.end39:                                         ; preds = %do.cond38
  unreachable, !dbg !5943

do.cond40:                                        ; No predecessors!
  br label %do.end41, !dbg !5943

do.end41:                                         ; preds = %do.cond40
  br label %if.end42, !dbg !5943

if.end42:                                         ; preds = %do.end41, %do.body18
  br label %do.cond43, !dbg !5942

do.cond43:                                        ; preds = %if.end42
  br label %do.end44, !dbg !5942

do.end44:                                         ; preds = %do.cond43
  store i32 -22, ptr %ret, align 4, !dbg !5950
  %11 = load i32, ptr %prot.addr, align 4, !dbg !5951
  %and45 = and i32 %11, 3, !dbg !5953
  %tobool46 = icmp ne i32 %and45, 0, !dbg !5953
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !5954

if.then47:                                        ; preds = %do.end44
  br label %out, !dbg !5955

if.end48:                                         ; preds = %do.end44
  br label %while.cond, !dbg !5956

while.cond:                                       ; preds = %if.end99, %if.end48
  %12 = load i64, ptr %pgcount.addr, align 8, !dbg !5957
  %cmp49 = icmp ugt i64 %12, 0, !dbg !5958
  br i1 %cmp49, label %while.body, label %while.end, !dbg !5956

while.body:                                       ; preds = %while.cond
  %13 = load i64, ptr %pgsize.addr, align 8, !dbg !5959
  %14 = call i1 @llvm.is.constant.i64(i64 %13), !dbg !5959
  br i1 %14, label %cond.true, label %cond.false, !dbg !5959

cond.true:                                        ; preds = %while.body
  %15 = load i64, ptr %pgsize.addr, align 8, !dbg !5959
  %16 = call i64 @llvm.cttz.i64(i64 %15, i1 true), !dbg !5959
  %cast = trunc i64 %16 to i32, !dbg !5959
  %conv51 = sext i32 %cast to i64, !dbg !5959
  br label %cond.end, !dbg !5959

cond.false:                                       ; preds = %while.body
  %17 = load i64, ptr %pgsize.addr, align 8, !dbg !5959
  %call = call i64 @variable__ffs(i64 noundef %17) #12, !dbg !5959
  br label %cond.end, !dbg !5959

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv51, %cond.true ], [ %call, %cond.false ], !dbg !5959
  %sub52 = sub i64 %cond, 12, !dbg !5959
  %rem = urem i64 %sub52, 9, !dbg !5959
  %shl = shl i64 1, %rem, !dbg !5959
  %conv53 = trunc i64 %shl to i32, !dbg !5959
  store i32 %conv53, ptr %count, align 4, !dbg !5961
  %18 = load ptr, ptr %dom, align 8, !dbg !5962
  %19 = load i64, ptr %iova.addr, align 8, !dbg !5963
  %20 = load i64, ptr %pgsize.addr, align 8, !dbg !5964
  %21 = load i32, ptr %gfp.addr, align 4, !dbg !5965
  %call54 = call ptr @alloc_pte(ptr noundef %18, i64 noundef %19, i64 noundef %20, ptr noundef null, i32 noundef %21, ptr noundef %updated) #12, !dbg !5966
  store ptr %call54, ptr %pte, align 8, !dbg !5967
  store i32 -12, ptr %ret, align 4, !dbg !5968
  %22 = load ptr, ptr %pte, align 8, !dbg !5969
  %tobool55 = icmp ne ptr %22, null, !dbg !5969
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !5971

if.then56:                                        ; preds = %cond.end
  br label %out, !dbg !5972

if.end57:                                         ; preds = %cond.end
  store i32 0, ptr %i, align 4, !dbg !5973
  br label %for.cond, !dbg !5975

for.cond:                                         ; preds = %for.inc, %if.end57
  %23 = load i32, ptr %i, align 4, !dbg !5976
  %24 = load i32, ptr %count, align 4, !dbg !5978
  %cmp58 = icmp slt i32 %23, %24, !dbg !5979
  br i1 %cmp58, label %for.body, label %for.end, !dbg !5980

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %pte, align 8, !dbg !5981
  %26 = load i32, ptr %i, align 4, !dbg !5982
  %idxprom = sext i32 %26 to i64, !dbg !5981
  %arrayidx = getelementptr i64, ptr %25, i64 %idxprom, !dbg !5981
  %27 = load ptr, ptr %pte, align 8, !dbg !5983
  %28 = load i32, ptr %i, align 4, !dbg !5984
  %idxprom60 = sext i32 %28 to i64, !dbg !5983
  %arrayidx61 = getelementptr i64, ptr %27, i64 %idxprom60, !dbg !5983
  %29 = load i64, ptr %arrayidx61, align 8, !dbg !5983
  call void @free_clear_pte(ptr noundef %arrayidx, i64 noundef %29, ptr noundef %freelist) #12, !dbg !5985
  br label %for.inc, !dbg !5985

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %i, align 4, !dbg !5986
  %inc = add i32 %30, 1, !dbg !5986
  store i32 %inc, ptr %i, align 4, !dbg !5986
  br label %for.cond, !dbg !5987, !llvm.loop !5988

for.end:                                          ; preds = %for.cond
  %call62 = call i32 @list_empty(ptr noundef %freelist) #12, !dbg !5992
  %tobool63 = icmp ne i32 %call62, 0, !dbg !5992
  br i1 %tobool63, label %if.end65, label %if.then64, !dbg !5994

if.then64:                                        ; preds = %for.end
  store i8 1, ptr %updated, align 1, !dbg !5995
  br label %if.end65, !dbg !5996

if.end65:                                         ; preds = %if.then64, %for.end
  %31 = load i32, ptr %count, align 4, !dbg !5997
  %cmp66 = icmp sgt i32 %31, 1, !dbg !5999
  br i1 %cmp66, label %if.then68, label %if.else, !dbg !6000

if.then68:                                        ; preds = %if.end65
  %32 = load i64, ptr %paddr.addr, align 8, !dbg !6001
  %33 = load i64, ptr %pgsize.addr, align 8, !dbg !6001
  %sub69 = sub i64 %33, 1, !dbg !6001
  %or = or i64 %32, %sub69, !dbg !6001
  %34 = load i64, ptr %pgsize.addr, align 8, !dbg !6001
  %shr = lshr i64 %34, 1, !dbg !6001
  %not = xor i64 %shr, -1, !dbg !6001
  %and70 = and i64 %or, %not, !dbg !6001
  %and71 = and i64 %and70, 4503599627366400, !dbg !6001
  store i64 %and71, ptr %__pte, align 8, !dbg !6003
  %35 = load i64, ptr %__pte, align 8, !dbg !6004
  %or72 = or i64 %35, 1152921504606850561, !dbg !6004
  store i64 %or72, ptr %__pte, align 8, !dbg !6004
  br label %if.end75, !dbg !6005

if.else:                                          ; preds = %if.end65
  %36 = load i64, ptr %paddr.addr, align 8, !dbg !6006
  %or73 = or i64 %36, 1, !dbg !6007
  %or74 = or i64 %or73, 1152921504606846976, !dbg !6008
  store i64 %or74, ptr %__pte, align 8, !dbg !6009
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.then68
  %37 = load i32, ptr %prot.addr, align 4, !dbg !6010
  %and76 = and i32 %37, 1, !dbg !6012
  %tobool77 = icmp ne i32 %and76, 0, !dbg !6012
  br i1 %tobool77, label %if.then78, label %if.end80, !dbg !6013

if.then78:                                        ; preds = %if.end75
  %38 = load i64, ptr %__pte, align 8, !dbg !6014
  %or79 = or i64 %38, 2305843009213693952, !dbg !6014
  store i64 %or79, ptr %__pte, align 8, !dbg !6014
  br label %if.end80, !dbg !6015

if.end80:                                         ; preds = %if.then78, %if.end75
  %39 = load i32, ptr %prot.addr, align 4, !dbg !6016
  %and81 = and i32 %39, 2, !dbg !6018
  %tobool82 = icmp ne i32 %and81, 0, !dbg !6018
  br i1 %tobool82, label %if.then83, label %if.end85, !dbg !6019

if.then83:                                        ; preds = %if.end80
  %40 = load i64, ptr %__pte, align 8, !dbg !6020
  %or84 = or i64 %40, 4611686018427387904, !dbg !6020
  store i64 %or84, ptr %__pte, align 8, !dbg !6020
  br label %if.end85, !dbg !6021

if.end85:                                         ; preds = %if.then83, %if.end80
  store i32 0, ptr %i, align 4, !dbg !6022
  br label %for.cond86, !dbg !6024

for.cond86:                                       ; preds = %for.inc92, %if.end85
  %41 = load i32, ptr %i, align 4, !dbg !6025
  %42 = load i32, ptr %count, align 4, !dbg !6027
  %cmp87 = icmp slt i32 %41, %42, !dbg !6028
  br i1 %cmp87, label %for.body89, label %for.end94, !dbg !6029

for.body89:                                       ; preds = %for.cond86
  %43 = load i64, ptr %__pte, align 8, !dbg !6030
  %44 = load ptr, ptr %pte, align 8, !dbg !6031
  %45 = load i32, ptr %i, align 4, !dbg !6032
  %idxprom90 = sext i32 %45 to i64, !dbg !6031
  %arrayidx91 = getelementptr i64, ptr %44, i64 %idxprom90, !dbg !6031
  store i64 %43, ptr %arrayidx91, align 8, !dbg !6033
  br label %for.inc92, !dbg !6031

for.inc92:                                        ; preds = %for.body89
  %46 = load i32, ptr %i, align 4, !dbg !6034
  %inc93 = add i32 %46, 1, !dbg !6034
  store i32 %inc93, ptr %i, align 4, !dbg !6034
  br label %for.cond86, !dbg !6035, !llvm.loop !6036

for.end94:                                        ; preds = %for.cond86
  %47 = load i64, ptr %pgsize.addr, align 8, !dbg !6038
  %48 = load i64, ptr %iova.addr, align 8, !dbg !6039
  %add = add i64 %48, %47, !dbg !6039
  store i64 %add, ptr %iova.addr, align 8, !dbg !6039
  %49 = load i64, ptr %pgsize.addr, align 8, !dbg !6040
  %50 = load i64, ptr %paddr.addr, align 8, !dbg !6041
  %add95 = add i64 %50, %49, !dbg !6041
  store i64 %add95, ptr %paddr.addr, align 8, !dbg !6041
  %51 = load i64, ptr %pgcount.addr, align 8, !dbg !6042
  %dec = add i64 %51, -1, !dbg !6042
  store i64 %dec, ptr %pgcount.addr, align 8, !dbg !6042
  %52 = load ptr, ptr %mapped.addr, align 8, !dbg !6043
  %tobool96 = icmp ne ptr %52, null, !dbg !6043
  br i1 %tobool96, label %if.then97, label %if.end99, !dbg !6045

if.then97:                                        ; preds = %for.end94
  %53 = load i64, ptr %pgsize.addr, align 8, !dbg !6046
  %54 = load ptr, ptr %mapped.addr, align 8, !dbg !6047
  %55 = load i64, ptr %54, align 8, !dbg !6048
  %add98 = add i64 %55, %53, !dbg !6048
  store i64 %add98, ptr %54, align 8, !dbg !6048
  br label %if.end99, !dbg !6049

if.end99:                                         ; preds = %if.then97, %for.end94
  br label %while.cond, !dbg !5956, !llvm.loop !6050

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %ret, align 4, !dbg !6052
  br label %out, !dbg !6053

out:                                              ; preds = %while.end, %if.then56, %if.then47
  call void @llvm.dbg.label(metadata !5893), !dbg !6054
  %56 = load i8, ptr %updated, align 1, !dbg !6055, !range !6056, !noundef !1010
  %tobool100 = trunc i8 %56 to i1, !dbg !6055
  br i1 %tobool100, label %if.then101, label %if.end114, !dbg !6057

if.then101:                                       ; preds = %out
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !6058
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5894, metadata !DIExpression()), !dbg !6059
  br label %do.body102, !dbg !6060

do.body102:                                       ; preds = %if.then101
  br label %do.body103, !dbg !6061

do.body103:                                       ; preds = %do.body102
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !6062
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5897, metadata !DIExpression()), !dbg !6062
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !6062
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5901, metadata !DIExpression()), !dbg !6062
  %cmp104 = icmp eq ptr %__dummy, %__dummy2, !dbg !6062
  %conv105 = zext i1 %cmp104 to i32, !dbg !6062
  store i32 1, ptr %tmp106, align 4, !dbg !6062
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !6063
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !6063
  %57 = load i32, ptr %tmp106, align 4, !dbg !6062
  %58 = load ptr, ptr %dom, align 8, !dbg !6063
  %lock = getelementptr inbounds %struct.protection_domain, ptr %58, i32 0, i32 3, !dbg !6063
  %call107 = call ptr @spinlock_check(ptr noundef %lock) #12, !dbg !6063
  %call108 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call107) #12, !dbg !6063
  store i64 %call108, ptr %flags, align 8, !dbg !6063
  br label %do.cond109, !dbg !6063

do.cond109:                                       ; preds = %do.body103
  br label %do.end110, !dbg !6063

do.end110:                                        ; preds = %do.cond109
  br label %do.cond111, !dbg !6061

do.cond111:                                       ; preds = %do.end110
  br label %do.end112, !dbg !6061

do.end112:                                        ; preds = %do.cond111
  %59 = load ptr, ptr %dom, align 8, !dbg !6064
  call void @amd_iommu_domain_flush_tlb_pde(ptr noundef %59) #12, !dbg !6065
  %60 = load ptr, ptr %dom, align 8, !dbg !6066
  call void @amd_iommu_domain_flush_complete(ptr noundef %60) #12, !dbg !6067
  %61 = load ptr, ptr %dom, align 8, !dbg !6068
  %lock113 = getelementptr inbounds %struct.protection_domain, ptr %61, i32 0, i32 3, !dbg !6069
  %62 = load i64, ptr %flags, align 8, !dbg !6070
  call void @spin_unlock_irqrestore(ptr noundef %lock113, i64 noundef %62) #12, !dbg !6071
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !6072
  br label %if.end114, !dbg !6073

if.end114:                                        ; preds = %do.end112, %out
  call void @put_pages_list(ptr noundef %freelist) #12, !dbg !6074
  %63 = load i32, ptr %ret, align 4, !dbg !6075
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #11, !dbg !6076
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !6076
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6076
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #11, !dbg !6076
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pte) #11, !dbg !6076
  call void @llvm.lifetime.end.p0(i64 1, ptr %updated) #11, !dbg !6076
  call void @llvm.lifetime.end.p0(i64 16, ptr %freelist) #11, !dbg !6076
  call void @llvm.lifetime.end.p0(i64 8, ptr %dom) #11, !dbg !6076
  ret i32 %63, !dbg !6077
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @iommu_v1_unmap_pages(ptr noundef %ops, i64 noundef %iova, i64 noundef %pgsize, i64 noundef %pgcount, ptr noundef %gather) #0 align 16 !dbg !6078 {
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
  %unmapped = alloca i64, align 8
  %unmap_size = alloca i64, align 8
  %pte = alloca ptr, align 8
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !6082, metadata !DIExpression()), !dbg !6101
  store i64 %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !6083, metadata !DIExpression()), !dbg !6102
  store i64 %pgsize, ptr %pgsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgsize.addr, metadata !6084, metadata !DIExpression()), !dbg !6103
  store i64 %pgcount, ptr %pgcount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgcount.addr, metadata !6085, metadata !DIExpression()), !dbg !6104
  store ptr %gather, ptr %gather.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gather.addr, metadata !6086, metadata !DIExpression()), !dbg !6105
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgtable) #11, !dbg !6106
  call void @llvm.dbg.declare(metadata ptr %pgtable, metadata !6087, metadata !DIExpression()), !dbg !6107
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !6108
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6088, metadata !DIExpression()), !dbg !6108
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #11, !dbg !6109
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6090, metadata !DIExpression()), !dbg !6109
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !6109
  store ptr %0, ptr %__mptr1, align 8, !dbg !6109
  %1 = load ptr, ptr %__mptr1, align 8, !dbg !6109
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !6109
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6109
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #11, !dbg !6108
  %2 = load ptr, ptr %tmp, align 8, !dbg !6109
  store ptr %2, ptr %__mptr, align 8, !dbg !6108
  %3 = load ptr, ptr %__mptr, align 8, !dbg !6108
  %add.ptr3 = getelementptr i8, ptr %3, i64 -88, !dbg !6108
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6108
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !6110
  %4 = load ptr, ptr %tmp2, align 8, !dbg !6108
  store ptr %4, ptr %pgtable, align 8, !dbg !6107
  call void @llvm.lifetime.start.p0(i64 8, ptr %unmapped) #11, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %unmapped, metadata !6092, metadata !DIExpression()), !dbg !6112
  call void @llvm.lifetime.start.p0(i64 8, ptr %unmap_size) #11, !dbg !6113
  call void @llvm.dbg.declare(metadata ptr %unmap_size, metadata !6093, metadata !DIExpression()), !dbg !6114
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #11, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6094, metadata !DIExpression()), !dbg !6116
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #11, !dbg !6117
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6095, metadata !DIExpression()), !dbg !6118
  %5 = load i64, ptr %pgcount.addr, align 8, !dbg !6119
  %6 = load i64, ptr %pgsize.addr, align 8, !dbg !6120
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6120
  br i1 %7, label %cond.true, label %cond.false, !dbg !6120

cond.true:                                        ; preds = %entry
  %8 = load i64, ptr %pgsize.addr, align 8, !dbg !6120
  %9 = call i64 @llvm.cttz.i64(i64 %8, i1 true), !dbg !6120
  %cast = trunc i64 %9 to i32, !dbg !6120
  %conv = sext i32 %cast to i64, !dbg !6120
  br label %cond.end, !dbg !6120

cond.false:                                       ; preds = %entry
  %10 = load i64, ptr %pgsize.addr, align 8, !dbg !6120
  %call = call i64 @variable__ffs(i64 noundef %10) #12, !dbg !6120
  br label %cond.end, !dbg !6120

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !6120
  %shl = shl i64 %5, %cond, !dbg !6121
  store i64 %shl, ptr %size, align 8, !dbg !6118
  br label %do.body, !dbg !6122

do.body:                                          ; preds = %cond.end
  %11 = load i64, ptr %pgsize.addr, align 8, !dbg !6123
  %call4 = call zeroext i1 @is_power_of_2(i64 noundef %11) #13, !dbg !6123
  %lnot = xor i1 %call4, true, !dbg !6123
  %lnot5 = xor i1 %lnot, true, !dbg !6123
  %lnot6 = xor i1 %lnot5, true, !dbg !6123
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6123
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6123
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6123
  %tobool = icmp ne i64 %expval, 0, !dbg !6123
  br i1 %tobool, label %if.then, label %if.end, !dbg !6126

if.then:                                          ; preds = %do.body
  br label %do.body8, !dbg !6123

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !6127

do.body9:                                         ; preds = %do.body8
  br label %do.cond, !dbg !6129

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6129

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !6127

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 449, i32 0, i64 12) #11, !dbg !6131, !srcloc !6133
  br label %do.cond11, !dbg !6131

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6131

do.end12:                                         ; preds = %do.cond11
  unreachable, !dbg !6127

do.cond13:                                        ; No predecessors!
  br label %do.end14, !dbg !6127

do.end14:                                         ; preds = %do.cond13
  br label %if.end, !dbg !6127

if.end:                                           ; preds = %do.end14, %do.body
  br label %do.cond15, !dbg !6126

do.cond15:                                        ; preds = %if.end
  br label %do.end16, !dbg !6126

do.end16:                                         ; preds = %do.cond15
  store i64 0, ptr %unmapped, align 8, !dbg !6134
  br label %while.cond, !dbg !6135

while.cond:                                       ; preds = %if.end32, %do.end16
  %12 = load i64, ptr %unmapped, align 8, !dbg !6136
  %13 = load i64, ptr %size, align 8, !dbg !6137
  %cmp = icmp ult i64 %12, %13, !dbg !6138
  br i1 %cmp, label %while.body, label %while.end, !dbg !6135

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %pgtable, align 8, !dbg !6139
  %15 = load i64, ptr %iova.addr, align 8, !dbg !6140
  %call18 = call ptr @fetch_pte(ptr noundef %14, i64 noundef %15, ptr noundef %unmap_size) #12, !dbg !6141
  store ptr %call18, ptr %pte, align 8, !dbg !6142
  %16 = load ptr, ptr %pte, align 8, !dbg !6143
  %tobool19 = icmp ne ptr %16, null, !dbg !6143
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !6144

if.then20:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !6145
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6096, metadata !DIExpression()), !dbg !6146
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #11, !dbg !6145
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6100, metadata !DIExpression()), !dbg !6147
  %17 = load i64, ptr %unmap_size, align 8, !dbg !6148
  %18 = call i1 @llvm.is.constant.i64(i64 %17), !dbg !6148
  br i1 %18, label %cond.true21, label %cond.false24, !dbg !6148

cond.true21:                                      ; preds = %if.then20
  %19 = load i64, ptr %unmap_size, align 8, !dbg !6148
  %20 = call i64 @llvm.cttz.i64(i64 %19, i1 true), !dbg !6148
  %cast22 = trunc i64 %20 to i32, !dbg !6148
  %conv23 = sext i32 %cast22 to i64, !dbg !6148
  br label %cond.end26, !dbg !6148

cond.false24:                                     ; preds = %if.then20
  %21 = load i64, ptr %unmap_size, align 8, !dbg !6148
  %call25 = call i64 @variable__ffs(i64 noundef %21) #12, !dbg !6148
  br label %cond.end26, !dbg !6148

cond.end26:                                       ; preds = %cond.false24, %cond.true21
  %cond27 = phi i64 [ %conv23, %cond.true21 ], [ %call25, %cond.false24 ], !dbg !6148
  %sub = sub i64 %cond27, 12, !dbg !6148
  %rem = urem i64 %sub, 9, !dbg !6148
  %shl28 = shl i64 1, %rem, !dbg !6148
  %conv29 = trunc i64 %shl28 to i32, !dbg !6148
  store i32 %conv29, ptr %count, align 4, !dbg !6149
  store i32 0, ptr %i, align 4, !dbg !6150
  br label %for.cond, !dbg !6152

for.cond:                                         ; preds = %for.inc, %cond.end26
  %22 = load i32, ptr %i, align 4, !dbg !6153
  %23 = load i32, ptr %count, align 4, !dbg !6155
  %cmp30 = icmp slt i32 %22, %23, !dbg !6156
  br i1 %cmp30, label %for.body, label %for.end, !dbg !6157

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %pte, align 8, !dbg !6158
  %25 = load i32, ptr %i, align 4, !dbg !6159
  %idxprom = sext i32 %25 to i64, !dbg !6158
  %arrayidx = getelementptr i64, ptr %24, i64 %idxprom, !dbg !6158
  store i64 0, ptr %arrayidx, align 8, !dbg !6160
  br label %for.inc, !dbg !6158

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4, !dbg !6161
  %inc = add i32 %26, 1, !dbg !6161
  store i32 %inc, ptr %i, align 4, !dbg !6161
  br label %for.cond, !dbg !6162, !llvm.loop !6163

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #11, !dbg !6165
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !6165
  br label %if.end32, !dbg !6166

if.else:                                          ; preds = %while.body
  %27 = load i64, ptr %unmapped, align 8, !dbg !6167
  store i64 %27, ptr %retval, align 8, !dbg !6169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6169

if.end32:                                         ; preds = %for.end
  %28 = load i64, ptr %iova.addr, align 8, !dbg !6170
  %29 = load i64, ptr %unmap_size, align 8, !dbg !6171
  %sub33 = sub i64 %29, 1, !dbg !6172
  %not = xor i64 %sub33, -1, !dbg !6173
  %and = and i64 %28, %not, !dbg !6174
  %30 = load i64, ptr %unmap_size, align 8, !dbg !6175
  %add = add i64 %and, %30, !dbg !6176
  store i64 %add, ptr %iova.addr, align 8, !dbg !6177
  %31 = load i64, ptr %unmap_size, align 8, !dbg !6178
  %32 = load i64, ptr %unmapped, align 8, !dbg !6179
  %add34 = add i64 %32, %31, !dbg !6179
  store i64 %add34, ptr %unmapped, align 8, !dbg !6179
  br label %while.cond, !dbg !6135, !llvm.loop !6180

while.end:                                        ; preds = %while.cond
  %33 = load i64, ptr %unmapped, align 8, !dbg !6182
  store i64 %33, ptr %retval, align 8, !dbg !6183
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6183

cleanup:                                          ; preds = %while.end, %if.else
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #11, !dbg !6184
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #11, !dbg !6184
  call void @llvm.lifetime.end.p0(i64 8, ptr %unmap_size) #11, !dbg !6184
  call void @llvm.lifetime.end.p0(i64 8, ptr %unmapped) #11, !dbg !6184
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgtable) #11, !dbg !6184
  %34 = load i64, ptr %retval, align 8, !dbg !6184
  ret i64 %34, !dbg !6184
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @iommu_v1_iova_to_phys(ptr noundef %ops, i64 noundef %iova) #0 align 16 !dbg !6185 {
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
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !6187, metadata !DIExpression()), !dbg !6198
  store i64 %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !6188, metadata !DIExpression()), !dbg !6199
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgtable) #11, !dbg !6200
  call void @llvm.dbg.declare(metadata ptr %pgtable, metadata !6189, metadata !DIExpression()), !dbg !6201
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !6202
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6190, metadata !DIExpression()), !dbg !6202
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #11, !dbg !6203
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6192, metadata !DIExpression()), !dbg !6203
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !6203
  store ptr %0, ptr %__mptr1, align 8, !dbg !6203
  %1 = load ptr, ptr %__mptr1, align 8, !dbg !6203
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !6203
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6203
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #11, !dbg !6202
  %2 = load ptr, ptr %tmp, align 8, !dbg !6203
  store ptr %2, ptr %__mptr, align 8, !dbg !6202
  %3 = load ptr, ptr %__mptr, align 8, !dbg !6202
  %add.ptr3 = getelementptr i8, ptr %3, i64 -88, !dbg !6202
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6202
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !6204
  %4 = load ptr, ptr %tmp2, align 8, !dbg !6202
  store ptr %4, ptr %pgtable, align 8, !dbg !6201
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset_mask) #11, !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %offset_mask, metadata !6194, metadata !DIExpression()), !dbg !6206
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte_pgsize) #11, !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %pte_pgsize, metadata !6195, metadata !DIExpression()), !dbg !6207
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #11, !dbg !6208
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6196, metadata !DIExpression()), !dbg !6209
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pte) #11, !dbg !6208
  call void @llvm.dbg.declare(metadata ptr %__pte, metadata !6197, metadata !DIExpression()), !dbg !6210
  %5 = load ptr, ptr %pgtable, align 8, !dbg !6211
  %6 = load i64, ptr %iova.addr, align 8, !dbg !6212
  %call = call ptr @fetch_pte(ptr noundef %5, i64 noundef %6, ptr noundef %pte_pgsize) #12, !dbg !6213
  store ptr %call, ptr %pte, align 8, !dbg !6214
  %7 = load ptr, ptr %pte, align 8, !dbg !6215
  %tobool = icmp ne ptr %7, null, !dbg !6215
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6217

lor.lhs.false:                                    ; preds = %entry
  %8 = load ptr, ptr %pte, align 8, !dbg !6218
  %9 = load i64, ptr %8, align 8, !dbg !6218
  %and = and i64 %9, 1, !dbg !6218
  %tobool4 = icmp ne i64 %and, 0, !dbg !6218
  br i1 %tobool4, label %if.end, label %if.then, !dbg !6219

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, ptr %retval, align 8, !dbg !6220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6220

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i64, ptr %pte_pgsize, align 8, !dbg !6221
  %sub = sub i64 %10, 1, !dbg !6222
  store i64 %sub, ptr %offset_mask, align 8, !dbg !6223
  %11 = load ptr, ptr %pte, align 8, !dbg !6224
  %12 = load i64, ptr %11, align 8, !dbg !6224
  %and5 = and i64 %12, 4503599627366400, !dbg !6224
  store i64 %and5, ptr %__pte, align 8, !dbg !6225
  %13 = load i64, ptr %__pte, align 8, !dbg !6226
  %14 = load i64, ptr %offset_mask, align 8, !dbg !6227
  %not = xor i64 %14, -1, !dbg !6228
  %and6 = and i64 %13, %not, !dbg !6229
  %15 = load i64, ptr %iova.addr, align 8, !dbg !6230
  %16 = load i64, ptr %offset_mask, align 8, !dbg !6231
  %and7 = and i64 %15, %16, !dbg !6232
  %or = or i64 %and6, %and7, !dbg !6233
  store i64 %or, ptr %retval, align 8, !dbg !6234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6234

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pte) #11, !dbg !6235
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #11, !dbg !6235
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte_pgsize) #11, !dbg !6235
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset_mask) #11, !dbg !6235
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgtable) #11, !dbg !6235
  %17 = load i64, ptr %retval, align 8, !dbg !6235
  ret i64 %17, !dbg !6235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v1_tlb_flush_all(ptr noundef %cookie) #0 align 16 !dbg !6236 {
entry:
  %cookie.addr = alloca ptr, align 8
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !6238, metadata !DIExpression()), !dbg !6239
  ret void, !dbg !6240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v1_tlb_flush_walk(i64 noundef %iova, i64 noundef %size, i64 noundef %granule, ptr noundef %cookie) #0 align 16 !dbg !6241 {
entry:
  %iova.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %granule.addr = alloca i64, align 8
  %cookie.addr = alloca ptr, align 8
  store i64 %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !6243, metadata !DIExpression()), !dbg !6247
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6244, metadata !DIExpression()), !dbg !6248
  store i64 %granule, ptr %granule.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %granule.addr, metadata !6245, metadata !DIExpression()), !dbg !6249
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !6246, metadata !DIExpression()), !dbg !6250
  ret void, !dbg !6251
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v1_tlb_add_page(ptr noundef %gather, i64 noundef %iova, i64 noundef %granule, ptr noundef %cookie) #0 align 16 !dbg !6252 {
entry:
  %gather.addr = alloca ptr, align 8
  %iova.addr = alloca i64, align 8
  %granule.addr = alloca i64, align 8
  %cookie.addr = alloca ptr, align 8
  store ptr %gather, ptr %gather.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gather.addr, metadata !6254, metadata !DIExpression()), !dbg !6258
  store i64 %iova, ptr %iova.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iova.addr, metadata !6255, metadata !DIExpression()), !dbg !6259
  store i64 %granule, ptr %granule.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %granule.addr, metadata !6256, metadata !DIExpression()), !dbg !6260
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !6257, metadata !DIExpression()), !dbg !6261
  ret void, !dbg !6262
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #4 align 16 !dbg !6263 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !6268, metadata !DIExpression()), !dbg !6269
  %0 = load i64, ptr %word.addr, align 8, !dbg !6270
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #14, !dbg !6271, !srcloc !6272
  store i64 %1, ptr %word.addr, align 8, !dbg !6271
  %2 = load i64, ptr %word.addr, align 8, !dbg !6273
  ret i64 %2, !dbg !6274
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_pte(ptr noundef %domain, i64 noundef %address, i64 noundef %page_size, ptr noundef %pte_page, i32 noundef %gfp, ptr noundef %updated) #0 align 16 !dbg !6275 {
entry:
  %retval = alloca ptr, align 8
  %domain.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %page_size.addr = alloca i64, align 8
  %pte_page.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  %updated.addr = alloca ptr, align 8
  %level = alloca i32, align 4
  %end_lvl = alloca i32, align 4
  %pte = alloca ptr, align 8
  %page = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pte = alloca i64, align 8
  %__npte = alloca i64, align 8
  %pte_level = alloca i32, align 4
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %lpte = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %tmp59 = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp60 = alloca i64, align 8
  %__ai_ptr78 = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp82 = alloca i64, align 8
  %tmp86 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old87 = alloca i64, align 8
  %__new88 = alloca i64, align 8
  %__ptr89 = alloca ptr, align 8
  %tmp103 = alloca i64, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !6280, metadata !DIExpression()), !dbg !6322
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6281, metadata !DIExpression()), !dbg !6323
  store i64 %page_size, ptr %page_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page_size.addr, metadata !6282, metadata !DIExpression()), !dbg !6324
  store ptr %pte_page, ptr %pte_page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte_page.addr, metadata !6283, metadata !DIExpression()), !dbg !6325
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !6284, metadata !DIExpression()), !dbg !6326
  store ptr %updated, ptr %updated.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %updated.addr, metadata !6285, metadata !DIExpression()), !dbg !6327
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #11, !dbg !6328
  call void @llvm.dbg.declare(metadata ptr %level, metadata !6286, metadata !DIExpression()), !dbg !6329
  call void @llvm.lifetime.start.p0(i64 4, ptr %end_lvl) #11, !dbg !6328
  call void @llvm.dbg.declare(metadata ptr %end_lvl, metadata !6287, metadata !DIExpression()), !dbg !6330
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #11, !dbg !6331
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6288, metadata !DIExpression()), !dbg !6332
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #11, !dbg !6331
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6289, metadata !DIExpression()), !dbg !6333
  br label %do.body, !dbg !6334

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %page_size.addr, align 8, !dbg !6335
  %call = call zeroext i1 @is_power_of_2(i64 noundef %0) #13, !dbg !6335
  %lnot = xor i1 %call, true, !dbg !6335
  %lnot1 = xor i1 %lnot, true, !dbg !6335
  %lnot2 = xor i1 %lnot1, true, !dbg !6335
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6335
  %conv = sext i32 %lnot.ext to i64, !dbg !6335
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6335
  %tobool = icmp ne i64 %expval, 0, !dbg !6335
  br i1 %tobool, label %if.then, label %if.end, !dbg !6338

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !6335

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !6339

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !6341

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !6341

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !6339

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 205, i32 0, i64 12) #11, !dbg !6343, !srcloc !6345
  br label %do.cond6, !dbg !6343

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6343

do.end7:                                          ; preds = %do.cond6
  unreachable, !dbg !6339

do.cond8:                                         ; No predecessors!
  br label %do.end9, !dbg !6339

do.end9:                                          ; preds = %do.cond8
  br label %if.end, !dbg !6339

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.cond10, !dbg !6338

do.cond10:                                        ; preds = %if.end
  br label %do.end11, !dbg !6338

do.end11:                                         ; preds = %do.cond10
  br label %while.cond, !dbg !6346

while.cond:                                       ; preds = %if.end19, %do.end11
  %1 = load i64, ptr %address.addr, align 8, !dbg !6347
  %2 = load ptr, ptr %domain.addr, align 8, !dbg !6348
  %iop = getelementptr inbounds %struct.protection_domain, ptr %2, i32 0, i32 2, !dbg !6348
  %mode = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop, i32 0, i32 2, !dbg !6348
  %3 = load i32, ptr %mode, align 8, !dbg !6348
  %cmp = icmp slt i32 %3, 6, !dbg !6348
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6348

cond.true:                                        ; preds = %while.cond
  %4 = load ptr, ptr %domain.addr, align 8, !dbg !6348
  %iop13 = getelementptr inbounds %struct.protection_domain, ptr %4, i32 0, i32 2, !dbg !6348
  %mode14 = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop13, i32 0, i32 2, !dbg !6348
  %5 = load i32, ptr %mode14, align 8, !dbg !6348
  %mul = mul i32 %5, 9, !dbg !6348
  %add = add i32 12, %mul, !dbg !6348
  %sh_prom = zext i32 %add to i64, !dbg !6348
  %shl = shl i64 1, %sh_prom, !dbg !6348
  %sub = sub i64 %shl, 1, !dbg !6348
  br label %cond.end, !dbg !6348

cond.false:                                       ; preds = %while.cond
  br label %cond.end, !dbg !6348

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ -1, %cond.false ], !dbg !6348
  %cmp15 = icmp ugt i64 %1, %cond, !dbg !6349
  br i1 %cmp15, label %while.body, label %while.end, !dbg !6346

while.body:                                       ; preds = %cond.end
  %6 = load ptr, ptr %domain.addr, align 8, !dbg !6350
  %7 = load i64, ptr %address.addr, align 8, !dbg !6353
  %8 = load i32, ptr %gfp.addr, align 4, !dbg !6354
  %call17 = call zeroext i1 @increase_address_space(ptr noundef %6, i64 noundef %7, i32 noundef %8) #12, !dbg !6355
  br i1 %call17, label %if.end19, label %if.then18, !dbg !6356

if.then18:                                        ; preds = %while.body
  store ptr null, ptr %retval, align 8, !dbg !6357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup141, !dbg !6357

if.end19:                                         ; preds = %while.body
  br label %while.cond, !dbg !6346, !llvm.loop !6358

while.end:                                        ; preds = %cond.end
  %9 = load ptr, ptr %domain.addr, align 8, !dbg !6360
  %iop20 = getelementptr inbounds %struct.protection_domain, ptr %9, i32 0, i32 2, !dbg !6361
  %mode21 = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop20, i32 0, i32 2, !dbg !6362
  %10 = load i32, ptr %mode21, align 8, !dbg !6362
  %sub22 = sub i32 %10, 1, !dbg !6363
  store i32 %sub22, ptr %level, align 4, !dbg !6364
  %11 = load ptr, ptr %domain.addr, align 8, !dbg !6365
  %iop23 = getelementptr inbounds %struct.protection_domain, ptr %11, i32 0, i32 2, !dbg !6366
  %root = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop23, i32 0, i32 3, !dbg !6367
  %12 = load ptr, ptr %root, align 8, !dbg !6367
  %13 = load i64, ptr %address.addr, align 8, !dbg !6368
  %14 = load i32, ptr %level, align 4, !dbg !6368
  %mul24 = mul i32 %14, 9, !dbg !6368
  %add25 = add i32 12, %mul24, !dbg !6368
  %sh_prom26 = zext i32 %add25 to i64, !dbg !6368
  %shr = lshr i64 %13, %sh_prom26, !dbg !6368
  %and = and i64 %shr, 511, !dbg !6368
  %arrayidx = getelementptr i64, ptr %12, i64 %and, !dbg !6365
  store ptr %arrayidx, ptr %pte, align 8, !dbg !6369
  %15 = load i64, ptr %address.addr, align 8, !dbg !6370
  %16 = load i64, ptr %page_size.addr, align 8, !dbg !6370
  %sub27 = sub i64 %16, 1, !dbg !6370
  %not = xor i64 %sub27, -1, !dbg !6370
  %and28 = and i64 %15, %not, !dbg !6370
  store i64 %and28, ptr %address.addr, align 8, !dbg !6371
  %17 = load i64, ptr %page_size.addr, align 8, !dbg !6372
  %18 = call i1 @llvm.is.constant.i64(i64 %17), !dbg !6372
  br i1 %18, label %cond.true29, label %cond.false31, !dbg !6372

cond.true29:                                      ; preds = %while.end
  %19 = load i64, ptr %page_size.addr, align 8, !dbg !6372
  %20 = call i64 @llvm.cttz.i64(i64 %19, i1 true), !dbg !6372
  %cast = trunc i64 %20 to i32, !dbg !6372
  %conv30 = sext i32 %cast to i64, !dbg !6372
  br label %cond.end33, !dbg !6372

cond.false31:                                     ; preds = %while.end
  %21 = load i64, ptr %page_size.addr, align 8, !dbg !6372
  %call32 = call i64 @variable__ffs(i64 noundef %21) #12, !dbg !6372
  br label %cond.end33, !dbg !6372

cond.end33:                                       ; preds = %cond.false31, %cond.true29
  %cond34 = phi i64 [ %conv30, %cond.true29 ], [ %call32, %cond.false31 ], !dbg !6372
  %sub35 = sub i64 %cond34, 12, !dbg !6372
  %div = udiv i64 %sub35, 9, !dbg !6372
  %conv36 = trunc i64 %div to i32, !dbg !6372
  store i32 %conv36, ptr %end_lvl, align 4, !dbg !6373
  br label %while.cond37, !dbg !6374

while.cond37:                                     ; preds = %cleanup.cont, %cleanup, %cond.end33
  %22 = load i32, ptr %level, align 4, !dbg !6375
  %23 = load i32, ptr %end_lvl, align 4, !dbg !6376
  %cmp38 = icmp sgt i32 %22, %23, !dbg !6377
  br i1 %cmp38, label %while.body40, label %while.end140, !dbg !6374

while.body40:                                     ; preds = %while.cond37
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pte) #11, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %__pte, metadata !6290, metadata !DIExpression()), !dbg !6379
  call void @llvm.lifetime.start.p0(i64 8, ptr %__npte) #11, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %__npte, metadata !6292, metadata !DIExpression()), !dbg !6380
  call void @llvm.lifetime.start.p0(i64 4, ptr %pte_level) #11, !dbg !6381
  call void @llvm.dbg.declare(metadata ptr %pte_level, metadata !6293, metadata !DIExpression()), !dbg !6382
  %24 = load ptr, ptr %pte, align 8, !dbg !6383
  %25 = load i64, ptr %24, align 8, !dbg !6384
  store i64 %25, ptr %__pte, align 8, !dbg !6385
  %26 = load i64, ptr %__pte, align 8, !dbg !6386
  %shr41 = lshr i64 %26, 9, !dbg !6386
  %and42 = and i64 %shr41, 7, !dbg !6386
  %conv43 = trunc i64 %and42 to i32, !dbg !6386
  store i32 %conv43, ptr %pte_level, align 4, !dbg !6387
  %27 = load i64, ptr %__pte, align 8, !dbg !6388
  %and44 = and i64 %27, 1, !dbg !6388
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6388
  br i1 %tobool45, label %land.lhs.true, label %if.end61, !dbg !6389

land.lhs.true:                                    ; preds = %while.body40
  %28 = load i32, ptr %pte_level, align 4, !dbg !6390
  %cmp46 = icmp eq i32 %28, 7, !dbg !6391
  br i1 %cmp46, label %if.then48, label %if.end61, !dbg !6392

if.then48:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #11, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6294, metadata !DIExpression()), !dbg !6394
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6297, metadata !DIExpression()), !dbg !6395
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpte) #11, !dbg !6396
  call void @llvm.dbg.declare(metadata ptr %lpte, metadata !6298, metadata !DIExpression()), !dbg !6397
  %29 = load ptr, ptr %pte, align 8, !dbg !6398
  %call49 = call ptr @first_pte_l7(ptr noundef %29, ptr noundef null, ptr noundef %count) #12, !dbg !6399
  store ptr %call49, ptr %lpte, align 8, !dbg !6400
  store i64 0, ptr %i, align 8, !dbg !6401
  br label %for.cond, !dbg !6402

for.cond:                                         ; preds = %for.inc, %if.then48
  %30 = load i64, ptr %i, align 8, !dbg !6403
  %31 = load i64, ptr %count, align 8, !dbg !6404
  %cmp50 = icmp ult i64 %30, %31, !dbg !6405
  br i1 %cmp50, label %for.body, label %for.end, !dbg !6406

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #11, !dbg !6407
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !6299, metadata !DIExpression()), !dbg !6407
  %32 = load ptr, ptr %lpte, align 8, !dbg !6407
  %33 = load i64, ptr %i, align 8, !dbg !6407
  %arrayidx52 = getelementptr i64, ptr %32, i64 %33, !dbg !6407
  store ptr %arrayidx52, ptr %__ai_ptr, align 8, !dbg !6407
  br label %do.body53, !dbg !6407

do.body53:                                        ; preds = %for.body
  br label %do.cond54, !dbg !6408

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !6408

do.end55:                                         ; preds = %do.cond54
  %34 = load ptr, ptr %__ai_ptr, align 8, !dbg !6407
  call void @instrument_atomic_read_write(ptr noundef %34, i64 noundef 8) #12, !dbg !6407
  br label %do.body56, !dbg !6410

do.body56:                                        ; preds = %do.end55
  br label %do.cond57, !dbg !6411

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !6411

do.end58:                                         ; preds = %do.cond57
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #11, !dbg !6413
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6303, metadata !DIExpression()), !dbg !6413
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #11, !dbg !6413
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !6306, metadata !DIExpression()), !dbg !6413
  %35 = load i64, ptr %__pte, align 8, !dbg !6413
  store i64 %35, ptr %__old, align 8, !dbg !6413
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #11, !dbg !6413
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !6307, metadata !DIExpression()), !dbg !6413
  store i64 0, ptr %__new, align 8, !dbg !6413
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !6413
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6308, metadata !DIExpression()), !dbg !6413
  %36 = load ptr, ptr %__ai_ptr, align 8, !dbg !6413
  store ptr %36, ptr %__ptr, align 8, !dbg !6413
  %37 = load ptr, ptr %__ptr, align 8, !dbg !6413
  %38 = load i64, ptr %__new, align 8, !dbg !6413
  %39 = load i64, ptr %__old, align 8, !dbg !6413
  %40 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %37, i64 %38, i64 %39, ptr elementtype(i64) %37) #11, !dbg !6413, !srcloc !6414
  store i64 %40, ptr %__ret, align 8, !dbg !6413
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !6413
  %41 = load i64, ptr %__ret, align 8, !dbg !6413
  store i64 %41, ptr %tmp60, align 8, !dbg !6413
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #11, !dbg !6410
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #11, !dbg !6410
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #11, !dbg !6410
  %42 = load i64, ptr %tmp60, align 8, !dbg !6413
  store i64 %42, ptr %tmp59, align 8, !dbg !6411
  %43 = load i64, ptr %tmp59, align 8, !dbg !6410
  store i64 %43, ptr %tmp, align 8, !dbg !6407
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #11, !dbg !6415
  %44 = load i64, ptr %tmp, align 8, !dbg !6407
  br label %for.inc, !dbg !6415

for.inc:                                          ; preds = %do.end58
  %45 = load i64, ptr %i, align 8, !dbg !6416
  %inc = add i64 %45, 1, !dbg !6416
  store i64 %inc, ptr %i, align 8, !dbg !6416
  br label %for.cond, !dbg !6417, !llvm.loop !6418

for.end:                                          ; preds = %for.cond
  %46 = load ptr, ptr %updated.addr, align 8, !dbg !6420
  store i8 1, ptr %46, align 1, !dbg !6421
  store i32 12, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpte) #11, !dbg !6422
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !6422
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #11, !dbg !6422
  br label %cleanup

if.end61:                                         ; preds = %land.lhs.true, %while.body40
  %47 = load i64, ptr %__pte, align 8, !dbg !6423
  %and62 = and i64 %47, 1, !dbg !6423
  %tobool63 = icmp ne i64 %and62, 0, !dbg !6423
  br i1 %tobool63, label %lor.lhs.false, label %if.then66, !dbg !6424

lor.lhs.false:                                    ; preds = %if.end61
  %48 = load i32, ptr %pte_level, align 4, !dbg !6425
  %cmp64 = icmp eq i32 %48, 0, !dbg !6426
  br i1 %cmp64, label %if.then66, label %if.end118, !dbg !6427

if.then66:                                        ; preds = %lor.lhs.false, %if.end61
  %49 = load ptr, ptr %domain.addr, align 8, !dbg !6428
  %nid = getelementptr inbounds %struct.protection_domain, ptr %49, i32 0, i32 6, !dbg !6429
  %50 = load i32, ptr %nid, align 4, !dbg !6429
  %51 = load i32, ptr %gfp.addr, align 4, !dbg !6430
  %call67 = call ptr @alloc_pgtable_page(i32 noundef %50, i32 noundef %51) #12, !dbg !6431
  store ptr %call67, ptr %page, align 8, !dbg !6432
  %52 = load ptr, ptr %page, align 8, !dbg !6433
  %tobool68 = icmp ne ptr %52, null, !dbg !6433
  br i1 %tobool68, label %if.end70, label %if.then69, !dbg !6435

if.then69:                                        ; preds = %if.then66
  store ptr null, ptr %retval, align 8, !dbg !6436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6436

if.end70:                                         ; preds = %if.then66
  %53 = load ptr, ptr %page, align 8, !dbg !6437
  %call71 = call i64 @iommu_virt_to_phys(ptr noundef %53) #12, !dbg !6437
  %54 = load i32, ptr %level, align 4, !dbg !6437
  %shl72 = shl i32 %54, 9, !dbg !6437
  %conv73 = sext i32 %shl72 to i64, !dbg !6437
  %and74 = and i64 %conv73, 3584, !dbg !6437
  %or = or i64 %call71, %and74, !dbg !6437
  %or75 = or i64 %or, 1, !dbg !6437
  %or76 = or i64 %or75, 2305843009213693952, !dbg !6437
  %or77 = or i64 %or76, 4611686018427387904, !dbg !6437
  store i64 %or77, ptr %__npte, align 8, !dbg !6438
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr78) #11, !dbg !6439
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr78, metadata !6309, metadata !DIExpression()), !dbg !6439
  %55 = load ptr, ptr %pte, align 8, !dbg !6439
  store ptr %55, ptr %__ai_ptr78, align 8, !dbg !6439
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #11, !dbg !6439
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !6314, metadata !DIExpression()), !dbg !6439
  store ptr %__pte, ptr %__ai_oldp, align 8, !dbg !6439
  br label %do.body79, !dbg !6439

do.body79:                                        ; preds = %if.end70
  br label %do.cond80, !dbg !6440

do.cond80:                                        ; preds = %do.body79
  br label %do.end81, !dbg !6440

do.end81:                                         ; preds = %do.cond80
  %56 = load ptr, ptr %__ai_ptr78, align 8, !dbg !6439
  call void @instrument_atomic_read_write(ptr noundef %56, i64 noundef 8) #12, !dbg !6439
  %57 = load ptr, ptr %__ai_oldp, align 8, !dbg !6439
  call void @instrument_read_write(ptr noundef %57, i64 noundef 8) #12, !dbg !6439
  br label %do.body83, !dbg !6442

do.body83:                                        ; preds = %do.end81
  br label %do.cond84, !dbg !6443

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !6443

do.end85:                                         ; preds = %do.cond84
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #11, !dbg !6445
  call void @llvm.dbg.declare(metadata ptr %success, metadata !6315, metadata !DIExpression()), !dbg !6445
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #11, !dbg !6445
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !6318, metadata !DIExpression()), !dbg !6445
  %58 = load ptr, ptr %__ai_oldp, align 8, !dbg !6445
  store ptr %58, ptr %_old, align 8, !dbg !6445
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old87) #11, !dbg !6445
  call void @llvm.dbg.declare(metadata ptr %__old87, metadata !6319, metadata !DIExpression()), !dbg !6445
  %59 = load ptr, ptr %_old, align 8, !dbg !6445
  %60 = load i64, ptr %59, align 8, !dbg !6445
  store i64 %60, ptr %__old87, align 8, !dbg !6445
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new88) #11, !dbg !6445
  call void @llvm.dbg.declare(metadata ptr %__new88, metadata !6320, metadata !DIExpression()), !dbg !6445
  %61 = load i64, ptr %__npte, align 8, !dbg !6445
  store i64 %61, ptr %__new88, align 8, !dbg !6445
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr89) #11, !dbg !6445
  call void @llvm.dbg.declare(metadata ptr %__ptr89, metadata !6321, metadata !DIExpression()), !dbg !6445
  %62 = load ptr, ptr %__ai_ptr78, align 8, !dbg !6445
  store ptr %62, ptr %__ptr89, align 8, !dbg !6445
  %63 = load ptr, ptr %__ptr89, align 8, !dbg !6445
  %64 = load i64, ptr %__old87, align 8, !dbg !6445
  %65 = load i64, ptr %__new88, align 8, !dbg !6445
  %66 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %63, i64 %65, ptr elementtype(i64) %63, i64 %64) #11, !dbg !6445, !srcloc !6446
  %asmresult = extractvalue { i8, i64 } %66, 0, !dbg !6445
  %asmresult90 = extractvalue { i8, i64 } %66, 1, !dbg !6445
  %67 = icmp ult i8 %asmresult, 2, !dbg !6445
  call void @llvm.assume(i1 %67), !dbg !6445
  store i8 %asmresult, ptr %success, align 1, !dbg !6445
  store i64 %asmresult90, ptr %__old87, align 8, !dbg !6445
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr89) #11, !dbg !6445
  %68 = load i8, ptr %success, align 1, !dbg !6447, !range !6056, !noundef !1010
  %tobool91 = trunc i8 %68 to i1, !dbg !6447
  %lnot92 = xor i1 %tobool91, true, !dbg !6447
  %lnot94 = xor i1 %lnot92, true, !dbg !6447
  %lnot96 = xor i1 %lnot94, true, !dbg !6447
  %lnot.ext97 = zext i1 %lnot96 to i32, !dbg !6447
  %conv98 = sext i32 %lnot.ext97 to i64, !dbg !6447
  %expval99 = call i64 @llvm.expect.i64(i64 %conv98, i64 0), !dbg !6447
  %tobool100 = icmp ne i64 %expval99, 0, !dbg !6447
  br i1 %tobool100, label %if.then101, label %if.end102, !dbg !6445

if.then101:                                       ; preds = %do.end85
  %69 = load i64, ptr %__old87, align 8, !dbg !6447
  %70 = load ptr, ptr %_old, align 8, !dbg !6447
  store i64 %69, ptr %70, align 8, !dbg !6447
  br label %if.end102, !dbg !6447

if.end102:                                        ; preds = %if.then101, %do.end85
  %71 = load i8, ptr %success, align 1, !dbg !6445, !range !6056, !noundef !1010
  %tobool104 = trunc i8 %71 to i1, !dbg !6445
  %lnot105 = xor i1 %tobool104, true, !dbg !6445
  %lnot107 = xor i1 %lnot105, true, !dbg !6445
  %lnot.ext108 = zext i1 %lnot107 to i32, !dbg !6445
  %conv109 = sext i32 %lnot.ext108 to i64, !dbg !6445
  %expval110 = call i64 @llvm.expect.i64(i64 %conv109, i64 1), !dbg !6445
  store i64 %expval110, ptr %tmp103, align 8, !dbg !6447
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new88) #11, !dbg !6442
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old87) #11, !dbg !6442
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #11, !dbg !6442
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #11, !dbg !6442
  %72 = load i64, ptr %tmp103, align 8, !dbg !6445
  store i64 %72, ptr %tmp86, align 8, !dbg !6443
  %73 = load i64, ptr %tmp86, align 8, !dbg !6442
  store i64 %73, ptr %tmp82, align 8, !dbg !6439
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #11, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr78) #11, !dbg !6449
  %74 = load i64, ptr %tmp82, align 8, !dbg !6439
  %tobool111 = icmp ne i64 %74, 0, !dbg !6449
  br i1 %tobool111, label %if.else, label %if.then112, !dbg !6450

if.then112:                                       ; preds = %if.end102
  %75 = load ptr, ptr %page, align 8, !dbg !6451
  %76 = ptrtoint ptr %75 to i64, !dbg !6451
  call void @free_pages(i64 noundef %76, i32 noundef 0) #12, !dbg !6451
  br label %if.end117, !dbg !6451

if.else:                                          ; preds = %if.end102
  %77 = load i64, ptr %__pte, align 8, !dbg !6452
  %and113 = and i64 %77, 1, !dbg !6452
  %tobool114 = icmp ne i64 %and113, 0, !dbg !6452
  br i1 %tobool114, label %if.then115, label %if.end116, !dbg !6454

if.then115:                                       ; preds = %if.else
  %78 = load ptr, ptr %updated.addr, align 8, !dbg !6455
  store i8 1, ptr %78, align 1, !dbg !6456
  br label %if.end116, !dbg !6457

if.end116:                                        ; preds = %if.then115, %if.else
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then112
  store i32 12, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6458, !llvm.loop !6459

if.end118:                                        ; preds = %lor.lhs.false
  %79 = load i32, ptr %pte_level, align 4, !dbg !6461
  %80 = load i32, ptr %level, align 4, !dbg !6463
  %cmp119 = icmp ne i32 %79, %80, !dbg !6464
  br i1 %cmp119, label %if.then121, label %if.end122, !dbg !6465

if.then121:                                       ; preds = %if.end118
  store ptr null, ptr %retval, align 8, !dbg !6466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6466

if.end122:                                        ; preds = %if.end118
  %81 = load i32, ptr %level, align 4, !dbg !6467
  %sub123 = sub i32 %81, 1, !dbg !6467
  store i32 %sub123, ptr %level, align 4, !dbg !6467
  %82 = load i64, ptr %__pte, align 8, !dbg !6468
  %and124 = and i64 %82, 4503599627366400, !dbg !6468
  %call125 = call ptr @iommu_phys_to_virt(i64 noundef %and124) #12, !dbg !6468
  store ptr %call125, ptr %pte, align 8, !dbg !6469
  %83 = load ptr, ptr %pte_page.addr, align 8, !dbg !6470
  %tobool126 = icmp ne ptr %83, null, !dbg !6470
  br i1 %tobool126, label %land.lhs.true127, label %if.end131, !dbg !6472

land.lhs.true127:                                 ; preds = %if.end122
  %84 = load i32, ptr %level, align 4, !dbg !6473
  %85 = load i32, ptr %end_lvl, align 4, !dbg !6474
  %cmp128 = icmp eq i32 %84, %85, !dbg !6475
  br i1 %cmp128, label %if.then130, label %if.end131, !dbg !6476

if.then130:                                       ; preds = %land.lhs.true127
  %86 = load ptr, ptr %pte, align 8, !dbg !6477
  %87 = load ptr, ptr %pte_page.addr, align 8, !dbg !6478
  store ptr %86, ptr %87, align 8, !dbg !6479
  br label %if.end131, !dbg !6480

if.end131:                                        ; preds = %if.then130, %land.lhs.true127, %if.end122
  %88 = load ptr, ptr %pte, align 8, !dbg !6481
  %89 = load i64, ptr %address.addr, align 8, !dbg !6482
  %90 = load i32, ptr %level, align 4, !dbg !6482
  %mul132 = mul i32 %90, 9, !dbg !6482
  %add133 = add i32 12, %mul132, !dbg !6482
  %sh_prom134 = zext i32 %add133 to i64, !dbg !6482
  %shr135 = lshr i64 %89, %sh_prom134, !dbg !6482
  %and136 = and i64 %shr135, 511, !dbg !6482
  %arrayidx137 = getelementptr i64, ptr %88, i64 %and136, !dbg !6481
  store ptr %arrayidx137, ptr %pte, align 8, !dbg !6483
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6460
  br label %cleanup, !dbg !6460

cleanup:                                          ; preds = %if.end131, %if.then121, %if.end117, %if.then69, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %pte_level) #11, !dbg !6460
  call void @llvm.lifetime.end.p0(i64 8, ptr %__npte) #11, !dbg !6460
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pte) #11, !dbg !6460
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup141 [
    i32 0, label %cleanup.cont
    i32 12, label %while.cond37
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond37, !dbg !6374, !llvm.loop !6459

while.end140:                                     ; preds = %while.cond37
  %91 = load ptr, ptr %pte, align 8, !dbg !6484
  store ptr %91, ptr %retval, align 8, !dbg !6485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup141, !dbg !6485

cleanup141:                                       ; preds = %while.end140, %cleanup, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #11, !dbg !6486
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #11, !dbg !6486
  call void @llvm.lifetime.end.p0(i64 4, ptr %end_lvl) #11, !dbg !6486
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #11, !dbg !6486
  %92 = load ptr, ptr %retval, align 8, !dbg !6486
  ret ptr %92, !dbg !6486
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_clear_pte(ptr noundef %pte, i64 noundef %pteval, ptr noundef %freelist) #0 align 16 !dbg !6487 {
entry:
  %pte.addr = alloca ptr, align 8
  %pteval.addr = alloca i64, align 8
  %freelist.addr = alloca ptr, align 8
  %pt = alloca ptr, align 8
  %mode = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp9 = alloca i64, align 8
  %tmp23 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !6491, metadata !DIExpression()), !dbg !6506
  store i64 %pteval, ptr %pteval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pteval.addr, metadata !6492, metadata !DIExpression()), !dbg !6507
  store ptr %freelist, ptr %freelist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %freelist.addr, metadata !6493, metadata !DIExpression()), !dbg !6508
  call void @llvm.lifetime.start.p0(i64 8, ptr %pt) #11, !dbg !6509
  call void @llvm.dbg.declare(metadata ptr %pt, metadata !6494, metadata !DIExpression()), !dbg !6510
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #11, !dbg !6511
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !6495, metadata !DIExpression()), !dbg !6512
  br label %while.cond, !dbg !6513

while.cond:                                       ; preds = %do.end22, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #11, !dbg !6514
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !6496, metadata !DIExpression()), !dbg !6514
  %0 = load ptr, ptr %pte.addr, align 8, !dbg !6514
  store ptr %0, ptr %__ai_ptr, align 8, !dbg !6514
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #11, !dbg !6514
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !6498, metadata !DIExpression()), !dbg !6514
  store ptr %pteval.addr, ptr %__ai_oldp, align 8, !dbg !6514
  br label %do.body, !dbg !6514

do.body:                                          ; preds = %while.cond
  br label %do.cond, !dbg !6515

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6515

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !6514
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #12, !dbg !6514
  %2 = load ptr, ptr %__ai_oldp, align 8, !dbg !6514
  call void @instrument_read_write(ptr noundef %2, i64 noundef 8) #12, !dbg !6514
  br label %do.body1, !dbg !6517

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !6518

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6518

do.end3:                                          ; preds = %do.cond2
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #11, !dbg !6520
  call void @llvm.dbg.declare(metadata ptr %success, metadata !6499, metadata !DIExpression()), !dbg !6520
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #11, !dbg !6520
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !6502, metadata !DIExpression()), !dbg !6520
  %3 = load ptr, ptr %__ai_oldp, align 8, !dbg !6520
  store ptr %3, ptr %_old, align 8, !dbg !6520
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #11, !dbg !6520
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !6503, metadata !DIExpression()), !dbg !6520
  %4 = load ptr, ptr %_old, align 8, !dbg !6520
  %5 = load i64, ptr %4, align 8, !dbg !6520
  store i64 %5, ptr %__old, align 8, !dbg !6520
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #11, !dbg !6520
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !6504, metadata !DIExpression()), !dbg !6520
  store i64 0, ptr %__new, align 8, !dbg !6520
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !6520
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6505, metadata !DIExpression()), !dbg !6520
  %6 = load ptr, ptr %__ai_ptr, align 8, !dbg !6520
  store ptr %6, ptr %__ptr, align 8, !dbg !6520
  %7 = load ptr, ptr %__ptr, align 8, !dbg !6520
  %8 = load i64, ptr %__old, align 8, !dbg !6520
  %9 = load i64, ptr %__new, align 8, !dbg !6520
  %10 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %7, i64 %9, ptr elementtype(i64) %7, i64 %8) #11, !dbg !6520, !srcloc !6521
  %asmresult = extractvalue { i8, i64 } %10, 0, !dbg !6520
  %asmresult5 = extractvalue { i8, i64 } %10, 1, !dbg !6520
  %11 = icmp ult i8 %asmresult, 2, !dbg !6520
  call void @llvm.assume(i1 %11), !dbg !6520
  store i8 %asmresult, ptr %success, align 1, !dbg !6520
  store i64 %asmresult5, ptr %__old, align 8, !dbg !6520
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !6520
  %12 = load i8, ptr %success, align 1, !dbg !6522, !range !6056, !noundef !1010
  %tobool = trunc i8 %12 to i1, !dbg !6522
  %lnot = xor i1 %tobool, true, !dbg !6522
  %lnot6 = xor i1 %lnot, true, !dbg !6522
  %lnot7 = xor i1 %lnot6, true, !dbg !6522
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !6522
  %conv = sext i32 %lnot.ext to i64, !dbg !6522
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6522
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6522
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6520

if.then:                                          ; preds = %do.end3
  %13 = load i64, ptr %__old, align 8, !dbg !6522
  %14 = load ptr, ptr %_old, align 8, !dbg !6522
  store i64 %13, ptr %14, align 8, !dbg !6522
  br label %if.end, !dbg !6522

if.end:                                           ; preds = %if.then, %do.end3
  %15 = load i8, ptr %success, align 1, !dbg !6520, !range !6056, !noundef !1010
  %tobool10 = trunc i8 %15 to i1, !dbg !6520
  %lnot11 = xor i1 %tobool10, true, !dbg !6520
  %lnot13 = xor i1 %lnot11, true, !dbg !6520
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !6520
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !6520
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 1), !dbg !6520
  store i64 %expval16, ptr %tmp9, align 8, !dbg !6522
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #11, !dbg !6517
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #11, !dbg !6517
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #11, !dbg !6517
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #11, !dbg !6517
  %16 = load i64, ptr %tmp9, align 8, !dbg !6520
  store i64 %16, ptr %tmp4, align 8, !dbg !6518
  %17 = load i64, ptr %tmp4, align 8, !dbg !6517
  store i64 %17, ptr %tmp, align 8, !dbg !6514
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #11, !dbg !6524
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #11, !dbg !6524
  %18 = load i64, ptr %tmp, align 8, !dbg !6514
  %tobool17 = icmp ne i64 %18, 0, !dbg !6525
  %lnot18 = xor i1 %tobool17, true, !dbg !6525
  br i1 %lnot18, label %while.body, label %while.end, !dbg !6513

while.body:                                       ; preds = %if.end
  br label %do.body20, !dbg !6526

do.body20:                                        ; preds = %while.body
  br label %do.cond21, !dbg !6528

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6528

do.end22:                                         ; preds = %do.cond21
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #15, !dbg !6526
  store i32 %call, ptr %tmp23, align 4, !dbg !6528
  %19 = load i32, ptr %tmp23, align 4, !dbg !6526
  br label %while.cond, !dbg !6513, !llvm.loop !6530

while.end:                                        ; preds = %if.end
  %20 = load i64, ptr %pteval.addr, align 8, !dbg !6532
  %and = and i64 %20, 1, !dbg !6532
  %tobool24 = icmp ne i64 %and, 0, !dbg !6532
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !6534

if.then25:                                        ; preds = %while.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6535

if.end26:                                         ; preds = %while.end
  %21 = load i64, ptr %pteval.addr, align 8, !dbg !6536
  %and27 = and i64 %21, 4503599627366400, !dbg !6536
  %call28 = call ptr @iommu_phys_to_virt(i64 noundef %and27) #12, !dbg !6536
  store ptr %call28, ptr %pt, align 8, !dbg !6537
  %22 = load i64, ptr %pteval.addr, align 8, !dbg !6538
  %shr = lshr i64 %22, 9, !dbg !6538
  %and29 = and i64 %shr, 7, !dbg !6538
  %conv30 = trunc i64 %and29 to i32, !dbg !6538
  store i32 %conv30, ptr %mode, align 4, !dbg !6539
  %23 = load ptr, ptr %pt, align 8, !dbg !6540
  %24 = load i32, ptr %mode, align 4, !dbg !6541
  %25 = load ptr, ptr %freelist.addr, align 8, !dbg !6542
  call void @free_sub_pt(ptr noundef %23, i32 noundef %24, ptr noundef %25) #12, !dbg !6543
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6544
  br label %cleanup, !dbg !6544

cleanup:                                          ; preds = %if.end26, %if.then25
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #11, !dbg !6544
  call void @llvm.lifetime.end.p0(i64 8, ptr %pt) #11, !dbg !6544
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6544

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !6545 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6552, metadata !DIExpression()), !dbg !6553
  br label %do.body, !dbg !6554

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6556

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6554
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6554
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6554
  store ptr %1, ptr %tmp, align 8, !dbg !6556
  %2 = load ptr, ptr %tmp, align 8, !dbg !6554
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6558
  %cmp = icmp eq ptr %2, %3, !dbg !6559
  %conv = zext i1 %cmp to i32, !dbg !6559
  ret i32 %conv, !dbg !6560
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6561 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #7 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !6566 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6571, metadata !DIExpression()), !dbg !6572
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6573
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6574
  ret ptr %1, !dbg !6575
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6576 dso_local void @amd_iommu_domain_flush_tlb_pde(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6579 dso_local void @amd_iommu_domain_flush_complete(ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !6580 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6584, metadata !DIExpression()), !dbg !6590
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6585, metadata !DIExpression()), !dbg !6591
  br label %do.body, !dbg !6592

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !6593
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6586, metadata !DIExpression()), !dbg !6593
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !6593
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6589, metadata !DIExpression()), !dbg !6593
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6593
  %conv = zext i1 %cmp to i32, !dbg !6593
  store i32 1, ptr %tmp, align 4, !dbg !6593
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !6594
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !6594
  %0 = load i32, ptr %tmp, align 4, !dbg !6593
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6594
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6594
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6594
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #12, !dbg !6594
  br label %do.end, !dbg !6594

do.end:                                           ; preds = %do.body
  ret void, !dbg !6595
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6596 dso_local void @put_pages_list(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #8 align 16 !dbg !6599 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6604, metadata !DIExpression()), !dbg !6605
  %0 = load i64, ptr %n.addr, align 8, !dbg !6606
  %cmp = icmp ne i64 %0, 0, !dbg !6607
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6608

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !6609
  %2 = load i64, ptr %n.addr, align 8, !dbg !6610
  %sub = sub i64 %2, 1, !dbg !6611
  %and = and i64 %1, %sub, !dbg !6612
  %cmp1 = icmp eq i64 %and, 0, !dbg !6613
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !6614
  ret i1 %3, !dbg !6615
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @increase_address_space(ptr noundef %domain, i64 noundef %address, i32 noundef %gfp) #0 align 16 !dbg !6616 {
entry:
  %retval = alloca i1, align 1
  %domain.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %ret = alloca i8, align 1
  %pte = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp40 = alloca i64, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !6620, metadata !DIExpression()), !dbg !6638
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6621, metadata !DIExpression()), !dbg !6639
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !6622, metadata !DIExpression()), !dbg !6640
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !6641
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6623, metadata !DIExpression()), !dbg !6642
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #11, !dbg !6643
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6624, metadata !DIExpression()), !dbg !6644
  store i8 1, ptr %ret, align 1, !dbg !6644
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #11, !dbg !6645
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6625, metadata !DIExpression()), !dbg !6646
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !6647
  %nid = getelementptr inbounds %struct.protection_domain, ptr %0, i32 0, i32 6, !dbg !6648
  %1 = load i32, ptr %nid, align 4, !dbg !6648
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !6649
  %call = call ptr @alloc_pgtable_page(i32 noundef %1, i32 noundef %2) #12, !dbg !6650
  store ptr %call, ptr %pte, align 8, !dbg !6651
  %3 = load ptr, ptr %pte, align 8, !dbg !6652
  %tobool = icmp ne ptr %3, null, !dbg !6652
  br i1 %tobool, label %if.end, label %if.then, !dbg !6654

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6655

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6656

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !6657

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !6658
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6626, metadata !DIExpression()), !dbg !6658
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !6658
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6630, metadata !DIExpression()), !dbg !6658
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6658
  %conv = zext i1 %cmp to i32, !dbg !6658
  store i32 1, ptr %tmp, align 4, !dbg !6658
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !6659
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !6659
  %4 = load i32, ptr %tmp, align 4, !dbg !6658
  %5 = load ptr, ptr %domain.addr, align 8, !dbg !6659
  %lock = getelementptr inbounds %struct.protection_domain, ptr %5, i32 0, i32 3, !dbg !6659
  %call2 = call ptr @spinlock_check(ptr noundef %lock) #12, !dbg !6659
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #12, !dbg !6659
  store i64 %call3, ptr %flags, align 8, !dbg !6659
  br label %do.cond, !dbg !6659

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6659

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !6657

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !6657

do.end5:                                          ; preds = %do.cond4
  %6 = load i64, ptr %address.addr, align 8, !dbg !6660
  %7 = load ptr, ptr %domain.addr, align 8, !dbg !6662
  %iop = getelementptr inbounds %struct.protection_domain, ptr %7, i32 0, i32 2, !dbg !6662
  %mode = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop, i32 0, i32 2, !dbg !6662
  %8 = load i32, ptr %mode, align 8, !dbg !6662
  %cmp6 = icmp slt i32 %8, 6, !dbg !6662
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !6662

cond.true:                                        ; preds = %do.end5
  %9 = load ptr, ptr %domain.addr, align 8, !dbg !6662
  %iop8 = getelementptr inbounds %struct.protection_domain, ptr %9, i32 0, i32 2, !dbg !6662
  %mode9 = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop8, i32 0, i32 2, !dbg !6662
  %10 = load i32, ptr %mode9, align 8, !dbg !6662
  %mul = mul i32 %10, 9, !dbg !6662
  %add = add i32 12, %mul, !dbg !6662
  %sh_prom = zext i32 %add to i64, !dbg !6662
  %shl = shl i64 1, %sh_prom, !dbg !6662
  %sub = sub i64 %shl, 1, !dbg !6662
  br label %cond.end, !dbg !6662

cond.false:                                       ; preds = %do.end5
  br label %cond.end, !dbg !6662

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ -1, %cond.false ], !dbg !6662
  %cmp10 = icmp ule i64 %6, %cond, !dbg !6663
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !6664

if.then12:                                        ; preds = %cond.end
  br label %out, !dbg !6665

if.end13:                                         ; preds = %cond.end
  store i8 0, ptr %ret, align 1, !dbg !6666
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6667
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6631, metadata !DIExpression()), !dbg !6667
  %11 = load ptr, ptr %domain.addr, align 8, !dbg !6667
  %iop14 = getelementptr inbounds %struct.protection_domain, ptr %11, i32 0, i32 2, !dbg !6667
  %mode15 = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop14, i32 0, i32 2, !dbg !6667
  %12 = load i32, ptr %mode15, align 8, !dbg !6667
  %cmp16 = icmp eq i32 %12, 6, !dbg !6667
  %lnot = xor i1 %cmp16, true, !dbg !6667
  %lnot18 = xor i1 %lnot, true, !dbg !6667
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !6667
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6667
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !6668
  %tobool19 = icmp ne i32 %13, 0, !dbg !6668
  %lnot20 = xor i1 %tobool19, true, !dbg !6668
  %lnot22 = xor i1 %lnot20, true, !dbg !6668
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6668
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6668
  %expval = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6668
  %tobool25 = icmp ne i64 %expval, 0, !dbg !6668
  br i1 %tobool25, label %if.then26, label %if.end39, !dbg !6667

if.then26:                                        ; preds = %if.end13
  br label %do.body27, !dbg !6668

do.body27:                                        ; preds = %if.then26
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !6669
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6634, metadata !DIExpression()), !dbg !6669
  store i32 2307, ptr %__flags, align 4, !dbg !6669
  br label %do.body28, !dbg !6669

do.body28:                                        ; preds = %do.body27
  br label %do.cond29, !dbg !6670

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !6670

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !6669

do.body31:                                        ; preds = %do.end30
  %14 = load i32, ptr %__flags, align 4, !dbg !6672
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 169, i32 %14, i64 12) #11, !dbg !6672, !srcloc !6674
  br label %do.cond32, !dbg !6672

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !6672

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !6669

do.body34:                                        ; preds = %do.end33
  br label %do.cond35, !dbg !6675

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6675

do.end36:                                         ; preds = %do.cond35
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !6668
  br label %do.cond37, !dbg !6669

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !6669

do.end38:                                         ; preds = %do.cond37
  br label %if.end39, !dbg !6669

if.end39:                                         ; preds = %do.end38, %if.end13
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !6667
  %tobool41 = icmp ne i32 %15, 0, !dbg !6667
  %lnot42 = xor i1 %tobool41, true, !dbg !6667
  %lnot44 = xor i1 %lnot42, true, !dbg !6667
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !6667
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !6667
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !6667
  store i64 %expval47, ptr %tmp40, align 8, !dbg !6668
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6677
  %16 = load i64, ptr %tmp40, align 8, !dbg !6667
  %tobool48 = icmp ne i64 %16, 0, !dbg !6677
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !6678

if.then49:                                        ; preds = %if.end39
  br label %out, !dbg !6679

if.end50:                                         ; preds = %if.end39
  %17 = load ptr, ptr %domain.addr, align 8, !dbg !6680
  %iop51 = getelementptr inbounds %struct.protection_domain, ptr %17, i32 0, i32 2, !dbg !6680
  %root = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop51, i32 0, i32 3, !dbg !6680
  %18 = load ptr, ptr %root, align 8, !dbg !6680
  %call52 = call i64 @iommu_virt_to_phys(ptr noundef %18) #12, !dbg !6680
  %19 = load ptr, ptr %domain.addr, align 8, !dbg !6680
  %iop53 = getelementptr inbounds %struct.protection_domain, ptr %19, i32 0, i32 2, !dbg !6680
  %mode54 = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop53, i32 0, i32 2, !dbg !6680
  %20 = load i32, ptr %mode54, align 8, !dbg !6680
  %shl55 = shl i32 %20, 9, !dbg !6680
  %conv56 = sext i32 %shl55 to i64, !dbg !6680
  %and = and i64 %conv56, 3584, !dbg !6680
  %or = or i64 %call52, %and, !dbg !6680
  %or57 = or i64 %or, 1, !dbg !6680
  %or58 = or i64 %or57, 2305843009213693952, !dbg !6680
  %or59 = or i64 %or58, 4611686018427387904, !dbg !6680
  %21 = load ptr, ptr %pte, align 8, !dbg !6681
  store i64 %or59, ptr %21, align 8, !dbg !6682
  %22 = load ptr, ptr %pte, align 8, !dbg !6683
  %23 = load ptr, ptr %domain.addr, align 8, !dbg !6684
  %iop60 = getelementptr inbounds %struct.protection_domain, ptr %23, i32 0, i32 2, !dbg !6685
  %root61 = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop60, i32 0, i32 3, !dbg !6686
  store ptr %22, ptr %root61, align 8, !dbg !6687
  %24 = load ptr, ptr %domain.addr, align 8, !dbg !6688
  %iop62 = getelementptr inbounds %struct.protection_domain, ptr %24, i32 0, i32 2, !dbg !6689
  %mode63 = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop62, i32 0, i32 2, !dbg !6690
  %25 = load i32, ptr %mode63, align 8, !dbg !6691
  %add64 = add i32 %25, 1, !dbg !6691
  store i32 %add64, ptr %mode63, align 8, !dbg !6691
  %26 = load ptr, ptr %domain.addr, align 8, !dbg !6692
  call void @amd_iommu_update_and_flush_device_table(ptr noundef %26) #12, !dbg !6693
  %27 = load ptr, ptr %domain.addr, align 8, !dbg !6694
  call void @amd_iommu_domain_flush_complete(ptr noundef %27) #12, !dbg !6695
  %28 = load ptr, ptr %domain.addr, align 8, !dbg !6696
  %29 = load ptr, ptr %pte, align 8, !dbg !6697
  %30 = load ptr, ptr %domain.addr, align 8, !dbg !6698
  %iop65 = getelementptr inbounds %struct.protection_domain, ptr %30, i32 0, i32 2, !dbg !6699
  %mode66 = getelementptr inbounds %struct.amd_io_pgtable, ptr %iop65, i32 0, i32 2, !dbg !6700
  %31 = load i32, ptr %mode66, align 8, !dbg !6700
  call void @amd_iommu_domain_set_pgtable(ptr noundef %28, ptr noundef %29, i32 noundef %31) #12, !dbg !6701
  store ptr null, ptr %pte, align 8, !dbg !6702
  store i8 1, ptr %ret, align 1, !dbg !6703
  br label %out, !dbg !6704

out:                                              ; preds = %if.end50, %if.then49, %if.then12
  call void @llvm.dbg.label(metadata !6637), !dbg !6705
  %32 = load ptr, ptr %domain.addr, align 8, !dbg !6706
  %lock67 = getelementptr inbounds %struct.protection_domain, ptr %32, i32 0, i32 3, !dbg !6707
  %33 = load i64, ptr %flags, align 8, !dbg !6708
  call void @spin_unlock_irqrestore(ptr noundef %lock67, i64 noundef %33) #12, !dbg !6709
  %34 = load ptr, ptr %pte, align 8, !dbg !6710
  %35 = ptrtoint ptr %34 to i64, !dbg !6710
  call void @free_pages(i64 noundef %35, i32 noundef 0) #12, !dbg !6710
  %36 = load i8, ptr %ret, align 1, !dbg !6711, !range !6056, !noundef !1010
  %tobool68 = trunc i8 %36 to i1, !dbg !6711
  store i1 %tobool68, ptr %retval, align 1, !dbg !6712
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6712

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #11, !dbg !6713
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #11, !dbg !6713
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !6713
  %37 = load i1, ptr %retval, align 1, !dbg !6713
  ret i1 %37, !dbg !6713
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @first_pte_l7(ptr noundef %pte, ptr noundef %page_size, ptr noundef %count) #0 align 16 !dbg !6714 {
entry:
  %pte.addr = alloca ptr, align 8
  %page_size.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  %pte_mask = alloca i64, align 8
  %pg_size = alloca i64, align 8
  %cnt = alloca i64, align 8
  %fpte = alloca ptr, align 8
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !6718, metadata !DIExpression()), !dbg !6725
  store ptr %page_size, ptr %page_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page_size.addr, metadata !6719, metadata !DIExpression()), !dbg !6726
  store ptr %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6720, metadata !DIExpression()), !dbg !6727
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte_mask) #11, !dbg !6728
  call void @llvm.dbg.declare(metadata ptr %pte_mask, metadata !6721, metadata !DIExpression()), !dbg !6729
  call void @llvm.lifetime.start.p0(i64 8, ptr %pg_size) #11, !dbg !6728
  call void @llvm.dbg.declare(metadata ptr %pg_size, metadata !6722, metadata !DIExpression()), !dbg !6730
  call void @llvm.lifetime.start.p0(i64 8, ptr %cnt) #11, !dbg !6728
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !6723, metadata !DIExpression()), !dbg !6731
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpte) #11, !dbg !6732
  call void @llvm.dbg.declare(metadata ptr %fpte, metadata !6724, metadata !DIExpression()), !dbg !6733
  %0 = load ptr, ptr %pte.addr, align 8, !dbg !6734
  %1 = load i64, ptr %0, align 8, !dbg !6734
  %or = or i64 %1, 4095, !dbg !6734
  %2 = call i1 @llvm.is.constant.i64(i64 %or), !dbg !6734
  br i1 %2, label %cond.true, label %cond.false, !dbg !6734

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %pte.addr, align 8, !dbg !6734
  %4 = load i64, ptr %3, align 8, !dbg !6734
  %or1 = or i64 %4, 4095, !dbg !6734
  %not = xor i64 %or1, -1, !dbg !6734
  %5 = call i64 @llvm.cttz.i64(i64 %not, i1 true), !dbg !6734
  %cast = trunc i64 %5 to i32, !dbg !6734
  %conv = sext i32 %cast to i64, !dbg !6734
  br label %cond.end, !dbg !6734

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %pte.addr, align 8, !dbg !6734
  %7 = load i64, ptr %6, align 8, !dbg !6734
  %or2 = or i64 %7, 4095, !dbg !6734
  %call = call i64 @variable_ffz(i64 noundef %or2) #12, !dbg !6734
  br label %cond.end, !dbg !6734

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !6734
  %add = add i64 1, %cond, !dbg !6734
  %shl = shl i64 1, %add, !dbg !6734
  store i64 %shl, ptr %pg_size, align 8, !dbg !6735
  %8 = load i64, ptr %pg_size, align 8, !dbg !6736
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6736
  br i1 %9, label %cond.true3, label %cond.false6, !dbg !6736

cond.true3:                                       ; preds = %cond.end
  %10 = load i64, ptr %pg_size, align 8, !dbg !6736
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !6736
  %cast4 = trunc i64 %11 to i32, !dbg !6736
  %conv5 = sext i32 %cast4 to i64, !dbg !6736
  br label %cond.end8, !dbg !6736

cond.false6:                                      ; preds = %cond.end
  %12 = load i64, ptr %pg_size, align 8, !dbg !6736
  %call7 = call i64 @variable__ffs(i64 noundef %12) #12, !dbg !6736
  br label %cond.end8, !dbg !6736

cond.end8:                                        ; preds = %cond.false6, %cond.true3
  %cond9 = phi i64 [ %conv5, %cond.true3 ], [ %call7, %cond.false6 ], !dbg !6736
  %sub = sub i64 %cond9, 12, !dbg !6736
  %rem = urem i64 %sub, 9, !dbg !6736
  %shl10 = shl i64 1, %rem, !dbg !6736
  store i64 %shl10, ptr %cnt, align 8, !dbg !6737
  %13 = load i64, ptr %cnt, align 8, !dbg !6738
  %shl11 = shl i64 %13, 3, !dbg !6739
  %sub12 = sub i64 %shl11, 1, !dbg !6740
  %not13 = xor i64 %sub12, -1, !dbg !6741
  store i64 %not13, ptr %pte_mask, align 8, !dbg !6742
  %14 = load ptr, ptr %pte.addr, align 8, !dbg !6743
  %15 = ptrtoint ptr %14 to i64, !dbg !6744
  %16 = load i64, ptr %pte_mask, align 8, !dbg !6745
  %and = and i64 %15, %16, !dbg !6746
  %17 = inttoptr i64 %and to ptr, !dbg !6747
  store ptr %17, ptr %fpte, align 8, !dbg !6748
  %18 = load ptr, ptr %page_size.addr, align 8, !dbg !6749
  %tobool = icmp ne ptr %18, null, !dbg !6749
  br i1 %tobool, label %if.then, label %if.end, !dbg !6751

if.then:                                          ; preds = %cond.end8
  %19 = load i64, ptr %pg_size, align 8, !dbg !6752
  %20 = load ptr, ptr %page_size.addr, align 8, !dbg !6753
  store i64 %19, ptr %20, align 8, !dbg !6754
  br label %if.end, !dbg !6755

if.end:                                           ; preds = %if.then, %cond.end8
  %21 = load ptr, ptr %count.addr, align 8, !dbg !6756
  %tobool14 = icmp ne ptr %21, null, !dbg !6756
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6758

if.then15:                                        ; preds = %if.end
  %22 = load i64, ptr %cnt, align 8, !dbg !6759
  %23 = load ptr, ptr %count.addr, align 8, !dbg !6760
  store i64 %22, ptr %23, align 8, !dbg !6761
  br label %if.end16, !dbg !6762

if.end16:                                         ; preds = %if.then15, %if.end
  %24 = load ptr, ptr %fpte, align 8, !dbg !6763
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpte) #11, !dbg !6764
  call void @llvm.lifetime.end.p0(i64 8, ptr %cnt) #11, !dbg !6764
  call void @llvm.lifetime.end.p0(i64 8, ptr %pg_size) #11, !dbg !6764
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte_mask) #11, !dbg !6764
  ret ptr %24, !dbg !6765
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6766 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6768, metadata !DIExpression()), !dbg !6770
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6769, metadata !DIExpression()), !dbg !6771
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6772
  %1 = load i64, ptr %size.addr, align 8, !dbg !6773
  %conv = trunc i64 %1 to i32, !dbg !6773
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !6774
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6775
  %3 = load i64, ptr %size.addr, align 8, !dbg !6775
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !6775
  ret void, !dbg !6776
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_pgtable_page(i32 noundef %nid, i32 noundef %gfp) #3 align 16 !dbg !6777 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6781, metadata !DIExpression()), !dbg !6784
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !6782, metadata !DIExpression()), !dbg !6785
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #11, !dbg !6786
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6783, metadata !DIExpression()), !dbg !6787
  %0 = load i32, ptr %nid.addr, align 4, !dbg !6788
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !6789
  %or = or i32 %1, 256, !dbg !6790
  %call = call ptr @alloc_pages_node(i32 noundef %0, i32 noundef %or, i32 noundef 0) #12, !dbg !6791
  store ptr %call, ptr %page, align 8, !dbg !6792
  %2 = load ptr, ptr %page, align 8, !dbg !6793
  %tobool = icmp ne ptr %2, null, !dbg !6793
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6793

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %page, align 8, !dbg !6794
  %call1 = call ptr @lowmem_page_address(ptr noundef %3) #12, !dbg !6794
  br label %cond.end, !dbg !6793

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6793

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call1, %cond.true ], [ null, %cond.false ], !dbg !6793
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #11, !dbg !6795
  ret ptr %cond, !dbg !6796
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @iommu_virt_to_phys(ptr noundef %vaddr) #3 align 16 !dbg !6797 {
entry:
  %vaddr.addr = alloca ptr, align 8
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !6801, metadata !DIExpression()), !dbg !6802
  %0 = load ptr, ptr %vaddr.addr, align 8, !dbg !6803
  %call = call i64 @virt_to_phys(ptr noundef %0) #12, !dbg !6803
  ret i64 %call, !dbg !6804
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6805 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6807, metadata !DIExpression()), !dbg !6809
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6808, metadata !DIExpression()), !dbg !6810
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6811
  %1 = load i64, ptr %size.addr, align 8, !dbg !6812
  %conv = trunc i64 %1 to i32, !dbg !6812
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !6813
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6814
  %3 = load i64, ptr %size.addr, align 8, !dbg !6814
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #12, !dbg !6814
  ret void, !dbg !6815
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6816 dso_local void @free_pages(i64 noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @iommu_phys_to_virt(i64 noundef %paddr) #3 align 16 !dbg !6819 {
entry:
  %paddr.addr = alloca i64, align 8
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !6823, metadata !DIExpression()), !dbg !6824
  %0 = load i64, ptr %paddr.addr, align 8, !dbg !6825
  %call = call ptr @phys_to_virt(i64 noundef %0) #12, !dbg !6826
  ret ptr %call, !dbg !6827
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6828 dso_local void @amd_iommu_update_and_flush_device_table(ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable_ffz(i64 noundef %word) #4 align 16 !dbg !6829 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !6831, metadata !DIExpression()), !dbg !6832
  %0 = load i64, ptr %word.addr, align 8, !dbg !6833
  %not = xor i64 %0, -1, !dbg !6834
  %1 = call i64 asm "rep; bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %not) #16, !dbg !6835, !srcloc !6836
  store i64 %1, ptr %word.addr, align 8, !dbg !6835
  %2 = load i64, ptr %word.addr, align 8, !dbg !6837
  ret i64 %2, !dbg !6838
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) #3 align 16 !dbg !6839 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6843, metadata !DIExpression()), !dbg !6846
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6844, metadata !DIExpression()), !dbg !6847
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !6845, metadata !DIExpression()), !dbg !6848
  %0 = load i32, ptr %nid.addr, align 4, !dbg !6849
  %cmp = icmp eq i32 %0, -1, !dbg !6851
  br i1 %cmp, label %if.then, label %if.end, !dbg !6852

if.then:                                          ; preds = %entry
  %call = call i32 @numa_mem_id() #12, !dbg !6853
  store i32 %call, ptr %nid.addr, align 4, !dbg !6854
  br label %if.end, !dbg !6855

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %nid.addr, align 4, !dbg !6856
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6857
  %3 = load i32, ptr %order.addr, align 4, !dbg !6858
  %call1 = call ptr @__alloc_pages_node(i32 noundef %1, i32 noundef %2, i32 noundef %3) #12, !dbg !6859
  ret ptr %call1, !dbg !6860
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #4 align 16 !dbg !6861 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6867, metadata !DIExpression()), !dbg !6868
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6869
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !6869
  %2 = inttoptr i64 %1 to ptr, !dbg !6869
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !6869
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !6869
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6869
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6869
  %shl = shl i64 %sub.ptr.div, 12, !dbg !6869
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !6869
  %add = add i64 %shl, %3, !dbg !6869
  %4 = inttoptr i64 %add to ptr, !dbg !6869
  ret ptr %4, !dbg !6870
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @numa_mem_id() #3 align 16 !dbg !6871 {
entry:
  %call = call i32 @numa_node_id() #12, !dbg !6873
  ret i32 %call, !dbg !6874
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) #3 align 16 !dbg !6875 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6877, metadata !DIExpression()), !dbg !6880
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6878, metadata !DIExpression()), !dbg !6881
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !6879, metadata !DIExpression()), !dbg !6882
  %0 = load i32, ptr %nid.addr, align 4, !dbg !6883
  %1 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6884
  call void @warn_if_node_offline(i32 noundef %0, i32 noundef %1) #12, !dbg !6885
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6886
  %3 = load i32, ptr %order.addr, align 4, !dbg !6887
  %4 = load i32, ptr %nid.addr, align 4, !dbg !6888
  %call = call ptr @__alloc_pages(i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null) #12, !dbg !6889
  ret ptr %call, !dbg !6890
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @numa_node_id() #3 align 16 !dbg !6891 {
entry:
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !6899
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6893, metadata !DIExpression()), !dbg !6899
  br label %do.body, !dbg !6899

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6900
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6895, metadata !DIExpression()), !dbg !6900
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6900
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6900
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6899
  br label %do.cond, !dbg !6900

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6900

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !6901
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6897, metadata !DIExpression()), !dbg !6901
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @numa_node) #14, !dbg !6901, !srcloc !6902
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6901
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6901
  %conv = zext i32 %2 to i64, !dbg !6901
  %conv1 = trunc i64 %conv to i32, !dbg !6901
  store i32 %conv1, ptr %tmp, align 4, !dbg !6901
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !6899
  %3 = load i32, ptr %tmp, align 4, !dbg !6901
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6899
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6899
  store i32 %4, ptr %tmp2, align 4, !dbg !6899
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !6903
  %5 = load i32, ptr %tmp2, align 4, !dbg !6899
  ret i32 %5, !dbg !6904
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @warn_if_node_offline(i32 noundef %this_node, i32 noundef %gfp_mask) #3 align 16 !dbg !6905 {
entry:
  %this_node.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %warn_gfp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %this_node, ptr %this_node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %this_node.addr, metadata !6909, metadata !DIExpression()), !dbg !6912
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6910, metadata !DIExpression()), !dbg !6913
  call void @llvm.lifetime.start.p0(i64 4, ptr %warn_gfp) #11, !dbg !6914
  call void @llvm.dbg.declare(metadata ptr %warn_gfp, metadata !6911, metadata !DIExpression()), !dbg !6915
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6916
  %and = and i32 %0, 2105344, !dbg !6917
  store i32 %and, ptr %warn_gfp, align 4, !dbg !6915
  %1 = load i32, ptr %warn_gfp, align 4, !dbg !6918
  %cmp = icmp ne i32 %1, 2105344, !dbg !6920
  br i1 %cmp, label %if.then, label %if.end, !dbg !6921

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6922

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %this_node.addr, align 4, !dbg !6923
  %call = call i32 @node_state(i32 noundef %2, i32 noundef 1) #12, !dbg !6923
  %tobool = icmp ne i32 %call, 0, !dbg !6923
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !6925

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6926

if.end2:                                          ; preds = %if.end
  br label %do.body, !dbg !6927

do.body:                                          ; preds = %if.end2
  br label %do.cond, !dbg !6929

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6929

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %this_node.addr, align 4, !dbg !6927
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %gfp_mask.addr, i32 noundef %3) #15, !dbg !6927
  store i32 %call3, ptr %tmp, align 4, !dbg !6929
  %4 = load i32, ptr %tmp, align 4, !dbg !6927
  call void @dump_stack() #15, !dbg !6931
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6932
  br label %cleanup, !dbg !6932

cleanup:                                          ; preds = %do.end, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %warn_gfp) #11, !dbg !6932
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6932

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6933 dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @node_state(i32 noundef %node, i32 noundef %state) #3 align 16 !dbg !6937 {
entry:
  %node.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6941, metadata !DIExpression()), !dbg !6943
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6942, metadata !DIExpression()), !dbg !6944
  %0 = load i32, ptr %node.addr, align 4, !dbg !6945
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6945
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6945

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %state.addr, align 4, !dbg !6945
  %idxprom = zext i32 %2 to i64, !dbg !6945
  %arrayidx = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom, !dbg !6945
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx, i32 0, i32 0, !dbg !6945
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6945
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !6945
  %cmp = icmp ne i64 %3, 0, !dbg !6945
  %conv = zext i1 %cmp to i32, !dbg !6945
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6945
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6945

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %state.addr, align 4, !dbg !6945
  %idxprom2 = zext i32 %5 to i64, !dbg !6945
  %arrayidx3 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom2, !dbg !6945
  %bits4 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx3, i32 0, i32 0, !dbg !6945
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %bits4, i64 0, i64 0, !dbg !6945
  %6 = ptrtoint ptr %arraydecay5 to i64, !dbg !6945
  %cmp6 = icmp ne i64 %6, 0, !dbg !6945
  br i1 %cmp6, label %land.lhs.true8, label %cond.false, !dbg !6945

land.lhs.true8:                                   ; preds = %land.lhs.true1
  %7 = load i32, ptr %state.addr, align 4, !dbg !6945
  %idxprom9 = zext i32 %7 to i64, !dbg !6945
  %arrayidx10 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom9, !dbg !6945
  %bits11 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx10, i32 0, i32 0, !dbg !6945
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %bits11, i64 0, i64 0, !dbg !6945
  %8 = load i64, ptr %arraydecay12, align 8, !dbg !6945
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6945
  br i1 %9, label %cond.true, label %cond.false, !dbg !6945

cond.true:                                        ; preds = %land.lhs.true8
  %10 = load i32, ptr %node.addr, align 4, !dbg !6945
  %conv13 = sext i32 %10 to i64, !dbg !6945
  %11 = load i32, ptr %state.addr, align 4, !dbg !6945
  %idxprom14 = zext i32 %11 to i64, !dbg !6945
  %arrayidx15 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom14, !dbg !6945
  %bits16 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx15, i32 0, i32 0, !dbg !6945
  %arraydecay17 = getelementptr inbounds [1 x i64], ptr %bits16, i64 0, i64 0, !dbg !6945
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv13, ptr noundef %arraydecay17) #12, !dbg !6945
  %conv18 = zext i1 %call to i32, !dbg !6945
  br label %cond.end, !dbg !6945

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %node.addr, align 4, !dbg !6945
  %conv19 = sext i32 %12 to i64, !dbg !6945
  %13 = load i32, ptr %state.addr, align 4, !dbg !6945
  %idxprom20 = zext i32 %13 to i64, !dbg !6945
  %arrayidx21 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom20, !dbg !6945
  %bits22 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx21, i32 0, i32 0, !dbg !6945
  %arraydecay23 = getelementptr inbounds [1 x i64], ptr %bits22, i64 0, i64 0, !dbg !6945
  %call24 = call zeroext i1 @_test_bit(i64 noundef %conv19, ptr noundef %arraydecay23) #12, !dbg !6945
  %conv25 = zext i1 %call24 to i32, !dbg !6945
  br label %cond.end, !dbg !6945

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %conv25, %cond.false ], !dbg !6945
  ret i32 %cond, !dbg !6946
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6947 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6951 dso_local void @dump_stack() #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6952 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6960, metadata !DIExpression()), !dbg !6965
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6961, metadata !DIExpression()), !dbg !6966
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !6967
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6962, metadata !DIExpression()), !dbg !6968
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6969
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6970
  %div = udiv i64 %1, 64, !dbg !6970
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6971
  store ptr %add.ptr, ptr %p, align 8, !dbg !6968
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !6972
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6963, metadata !DIExpression()), !dbg !6973
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6974
  %rem = urem i64 %2, 64, !dbg !6974
  %shl = shl i64 1, %rem, !dbg !6974
  store i64 %shl, ptr %mask, align 8, !dbg !6973
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !6975
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6964, metadata !DIExpression()), !dbg !6976
  %3 = load ptr, ptr %p, align 8, !dbg !6977
  %4 = load i64, ptr %3, align 8, !dbg !6978
  store i64 %4, ptr %val, align 8, !dbg !6976
  %5 = load i64, ptr %val, align 8, !dbg !6979
  %6 = load i64, ptr %mask, align 8, !dbg !6980
  %and = and i64 %5, %6, !dbg !6981
  %tobool = icmp ne i64 %and, 0, !dbg !6982
  %lnot = xor i1 %tobool, true, !dbg !6982
  %lnot1 = xor i1 %lnot, true, !dbg !6983
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !6984
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !6984
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !6984
  ret i1 %lnot1, !dbg !6985
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6986 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6989, metadata !DIExpression()), !dbg !6991
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6990, metadata !DIExpression()), !dbg !6992
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6993
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6994
  %div = udiv i64 %1, 64, !dbg !6994
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6995
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !6996
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6997
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6998
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !6999
  ret i1 %call, !dbg !7000
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !7001 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7003, metadata !DIExpression()), !dbg !7005
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7004, metadata !DIExpression()), !dbg !7006
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7007
  %1 = load i64, ptr %size.addr, align 8, !dbg !7008
  %conv = trunc i64 %1 to i32, !dbg !7008
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !7009
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7010
  %3 = load i64, ptr %size.addr, align 8, !dbg !7010
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !7010
  ret void, !dbg !7011
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7012 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7014, metadata !DIExpression()), !dbg !7016
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7015, metadata !DIExpression()), !dbg !7017
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7018
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7019
  br i1 %1, label %cond.true, label %cond.false, !dbg !7019

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7020
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7021
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !7022
  %conv = zext i1 %call to i32, !dbg !7022
  br label %cond.end, !dbg !7019

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7023
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7024
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !7025
  %conv2 = zext i1 %call1 to i32, !dbg !7025
  br label %cond.end, !dbg !7019

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7019
  %tobool = icmp ne i32 %cond, 0, !dbg !7019
  ret i1 %tobool, !dbg !7026
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7027 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7029, metadata !DIExpression()), !dbg !7031
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7030, metadata !DIExpression()), !dbg !7032
  ret i1 true, !dbg !7033
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7034 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7038, metadata !DIExpression()), !dbg !7040
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7039, metadata !DIExpression()), !dbg !7041
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7042
  %and = and i64 %0, 63, !dbg !7043
  %shl = shl i64 1, %and, !dbg !7044
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7045
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7046
  %shr = ashr i64 %2, 6, !dbg !7047
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7045
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7045
  %and1 = and i64 %shl, %3, !dbg !7048
  %cmp = icmp ne i64 %and1, 0, !dbg !7049
  ret i1 %cmp, !dbg !7050
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7051 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7053, metadata !DIExpression()), !dbg !7056
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7054, metadata !DIExpression()), !dbg !7057
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !7058
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7055, metadata !DIExpression()), !dbg !7059
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7060
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7061
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !7062, !srcloc !7063
  %3 = icmp ult i8 %2, 2, !dbg !7062
  call void @llvm.assume(i1 %3), !dbg !7062
  store i8 %2, ptr %oldbit, align 1, !dbg !7062
  %4 = load i8, ptr %oldbit, align 1, !dbg !7064, !range !6056, !noundef !1010
  %tobool = trunc i8 %4 to i1, !dbg !7064
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !7065
  ret i1 %tobool, !dbg !7066
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_to_phys(ptr noundef %address) #3 align 16 !dbg !7067 {
entry:
  %address.addr = alloca ptr, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7073, metadata !DIExpression()), !dbg !7074
  %0 = load ptr, ptr %address.addr, align 8, !dbg !7075
  %1 = ptrtoint ptr %0 to i64, !dbg !7075
  %call = call i64 @__phys_addr_nodebug(i64 noundef %1) #12, !dbg !7075
  ret i64 %call, !dbg !7076
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #4 align 16 !dbg !7077 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !7080, metadata !DIExpression()), !dbg !7082
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #11, !dbg !7083
  call void @llvm.dbg.declare(metadata ptr %y, metadata !7081, metadata !DIExpression()), !dbg !7084
  %0 = load i64, ptr %x.addr, align 8, !dbg !7085
  %sub = sub i64 %0, -2147483648, !dbg !7086
  store i64 %sub, ptr %y, align 8, !dbg !7084
  %1 = load i64, ptr %y, align 8, !dbg !7087
  %2 = load i64, ptr %x.addr, align 8, !dbg !7088
  %3 = load i64, ptr %y, align 8, !dbg !7089
  %cmp = icmp ugt i64 %2, %3, !dbg !7090
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7091

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !7092
  br label %cond.end, !dbg !7091

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !7093
  %sub1 = sub i64 -2147483648, %5, !dbg !7094
  br label %cond.end, !dbg !7091

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !7091
  %add = add i64 %1, %cond, !dbg !7095
  store i64 %add, ptr %x.addr, align 8, !dbg !7096
  %6 = load i64, ptr %x.addr, align 8, !dbg !7097
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #11, !dbg !7098
  ret i64 %6, !dbg !7099
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @phys_to_virt(i64 noundef %address) #3 align 16 !dbg !7100 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7104, metadata !DIExpression()), !dbg !7105
  %0 = load i64, ptr %address.addr, align 8, !dbg !7106
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !7106
  %add = add i64 %0, %1, !dbg !7106
  %2 = inttoptr i64 %add to ptr, !dbg !7106
  ret ptr %2, !dbg !7107
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_sub_pt(ptr noundef %root, i32 noundef %mode, ptr noundef %freelist) #0 align 16 !dbg !7108 {
entry:
  %root.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %freelist.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !7112, metadata !DIExpression()), !dbg !7115
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !7113, metadata !DIExpression()), !dbg !7116
  store ptr %freelist, ptr %freelist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %freelist.addr, metadata !7114, metadata !DIExpression()), !dbg !7117
  %0 = load i32, ptr %mode.addr, align 4, !dbg !7118
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 7, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb2
    i32 4, label %sw.bb2
    i32 5, label %sw.bb2
    i32 6, label %sw.bb2
  ], !dbg !7119

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog, !dbg !7120

sw.bb1:                                           ; preds = %entry
  %1 = load ptr, ptr %root.addr, align 8, !dbg !7122
  %2 = load ptr, ptr %freelist.addr, align 8, !dbg !7123
  call void @free_pt_page(ptr noundef %1, ptr noundef %2) #12, !dbg !7124
  br label %sw.epilog, !dbg !7125

sw.bb2:                                           ; preds = %entry, %entry, %entry, %entry, %entry
  %3 = load ptr, ptr %root.addr, align 8, !dbg !7126
  %4 = load ptr, ptr %freelist.addr, align 8, !dbg !7127
  %5 = load i32, ptr %mode.addr, align 4, !dbg !7128
  call void @free_pt_lvl(ptr noundef %3, ptr noundef %4, i32 noundef %5) #12, !dbg !7129
  br label %sw.epilog, !dbg !7130

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !7131

do.body:                                          ; preds = %sw.default
  br label %do.body3, !dbg !7132

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !7134

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !7132

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 130, i32 0, i64 12) #11, !dbg !7136, !srcloc !7138
  br label %do.end5, !dbg !7136

do.end5:                                          ; preds = %do.body4
  unreachable, !dbg !7132

do.end6:                                          ; No predecessors!
  br label %sw.epilog, !dbg !7139

sw.epilog:                                        ; preds = %do.end6, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !7140
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_pt_page(ptr noundef %pt, ptr noundef %freelist) #0 align 16 !dbg !7141 {
entry:
  %pt.addr = alloca ptr, align 8
  %freelist.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !7145, metadata !DIExpression()), !dbg !7148
  store ptr %freelist, ptr %freelist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %freelist.addr, metadata !7146, metadata !DIExpression()), !dbg !7149
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !7150
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7147, metadata !DIExpression()), !dbg !7151
  %0 = load i64, ptr @vmemmap_base, align 8, !dbg !7152
  %1 = inttoptr i64 %0 to ptr, !dbg !7152
  %2 = load ptr, ptr %pt.addr, align 8, !dbg !7152
  %3 = ptrtoint ptr %2 to i64, !dbg !7152
  %call = call i64 @__phys_addr_nodebug(i64 noundef %3) #12, !dbg !7152
  %shr = lshr i64 %call, 12, !dbg !7152
  %add.ptr = getelementptr %struct.page, ptr %1, i64 %shr, !dbg !7152
  store ptr %add.ptr, ptr %p, align 8, !dbg !7151
  %4 = load ptr, ptr %p, align 8, !dbg !7153
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, !dbg !7154
  %6 = getelementptr inbounds %struct.anon.29, ptr %5, i32 0, i32 0, !dbg !7154
  %7 = load ptr, ptr %freelist.addr, align 8, !dbg !7155
  call void @list_add_tail(ptr noundef %6, ptr noundef %7) #12, !dbg !7156
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !7157
  ret void, !dbg !7157
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_pt_lvl(ptr noundef %pt, ptr noundef %freelist, i32 noundef %lvl) #0 align 16 !dbg !7158 {
entry:
  %pt.addr = alloca ptr, align 8
  %freelist.addr = alloca ptr, align 8
  %lvl.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !7162, metadata !DIExpression()), !dbg !7167
  store ptr %freelist, ptr %freelist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %freelist.addr, metadata !7163, metadata !DIExpression()), !dbg !7168
  store i32 %lvl, ptr %lvl.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lvl.addr, metadata !7164, metadata !DIExpression()), !dbg !7169
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !7170
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7165, metadata !DIExpression()), !dbg !7171
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !7172
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7166, metadata !DIExpression()), !dbg !7173
  store i32 0, ptr %i, align 4, !dbg !7174
  br label %for.cond, !dbg !7176

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !7177
  %cmp = icmp slt i32 %0, 512, !dbg !7179
  br i1 %cmp, label %for.body, label %for.end, !dbg !7180

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %pt.addr, align 8, !dbg !7181
  %2 = load i32, ptr %i, align 4, !dbg !7181
  %idxprom = sext i32 %2 to i64, !dbg !7181
  %arrayidx = getelementptr i64, ptr %1, i64 %idxprom, !dbg !7181
  %3 = load i64, ptr %arrayidx, align 8, !dbg !7181
  %and = and i64 %3, 1, !dbg !7181
  %tobool = icmp ne i64 %and, 0, !dbg !7181
  br i1 %tobool, label %if.end, label %if.then, !dbg !7184

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !7185

if.end:                                           ; preds = %for.body
  %4 = load ptr, ptr %pt.addr, align 8, !dbg !7186
  %5 = load i32, ptr %i, align 4, !dbg !7186
  %idxprom1 = sext i32 %5 to i64, !dbg !7186
  %arrayidx2 = getelementptr i64, ptr %4, i64 %idxprom1, !dbg !7186
  %6 = load i64, ptr %arrayidx2, align 8, !dbg !7186
  %shr = lshr i64 %6, 9, !dbg !7186
  %and3 = and i64 %shr, 7, !dbg !7186
  %cmp4 = icmp eq i64 %and3, 0, !dbg !7188
  br i1 %cmp4, label %if.then10, label %lor.lhs.false, !dbg !7189

lor.lhs.false:                                    ; preds = %if.end
  %7 = load ptr, ptr %pt.addr, align 8, !dbg !7190
  %8 = load i32, ptr %i, align 4, !dbg !7190
  %idxprom5 = sext i32 %8 to i64, !dbg !7190
  %arrayidx6 = getelementptr i64, ptr %7, i64 %idxprom5, !dbg !7190
  %9 = load i64, ptr %arrayidx6, align 8, !dbg !7190
  %shr7 = lshr i64 %9, 9, !dbg !7190
  %and8 = and i64 %shr7, 7, !dbg !7190
  %cmp9 = icmp eq i64 %and8, 7, !dbg !7191
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7192

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  br label %for.inc, !dbg !7193

if.end11:                                         ; preds = %lor.lhs.false
  %10 = load ptr, ptr %pt.addr, align 8, !dbg !7194
  %11 = load i32, ptr %i, align 4, !dbg !7194
  %idxprom12 = sext i32 %11 to i64, !dbg !7194
  %arrayidx13 = getelementptr i64, ptr %10, i64 %idxprom12, !dbg !7194
  %12 = load i64, ptr %arrayidx13, align 8, !dbg !7194
  %and14 = and i64 %12, 4503599627366400, !dbg !7194
  %call = call ptr @iommu_phys_to_virt(i64 noundef %and14) #12, !dbg !7194
  store ptr %call, ptr %p, align 8, !dbg !7195
  %13 = load i32, ptr %lvl.addr, align 4, !dbg !7196
  %cmp15 = icmp sgt i32 %13, 2, !dbg !7198
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !7199

if.then16:                                        ; preds = %if.end11
  %14 = load ptr, ptr %p, align 8, !dbg !7200
  %15 = load ptr, ptr %freelist.addr, align 8, !dbg !7201
  %16 = load i32, ptr %lvl.addr, align 4, !dbg !7202
  %sub = sub i32 %16, 1, !dbg !7203
  call void @free_pt_lvl(ptr noundef %14, ptr noundef %15, i32 noundef %sub) #12, !dbg !7204
  br label %if.end17, !dbg !7204

if.else:                                          ; preds = %if.end11
  %17 = load ptr, ptr %p, align 8, !dbg !7205
  %18 = load ptr, ptr %freelist.addr, align 8, !dbg !7206
  call void @free_pt_page(ptr noundef %17, ptr noundef %18) #12, !dbg !7207
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  br label %for.inc, !dbg !7208

for.inc:                                          ; preds = %if.end17, %if.then10, %if.then
  %19 = load i32, ptr %i, align 4, !dbg !7209
  %inc = add i32 %19, 1, !dbg !7209
  store i32 %inc, ptr %i, align 4, !dbg !7209
  br label %for.cond, !dbg !7210, !llvm.loop !7211

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %pt.addr, align 8, !dbg !7213
  %21 = load ptr, ptr %freelist.addr, align 8, !dbg !7214
  call void @free_pt_page(ptr noundef %20, ptr noundef %21) #12, !dbg !7215
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !7216
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !7216
  ret void, !dbg !7216
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !7217 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7221, metadata !DIExpression()), !dbg !7223
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7222, metadata !DIExpression()), !dbg !7224
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7225
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7226
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7227
  %2 = load ptr, ptr %prev, align 8, !dbg !7227
  %3 = load ptr, ptr %head.addr, align 8, !dbg !7228
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #12, !dbg !7229
  ret void, !dbg !7230
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !7231 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7235, metadata !DIExpression()), !dbg !7238
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7236, metadata !DIExpression()), !dbg !7239
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7237, metadata !DIExpression()), !dbg !7240
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7241
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7243
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7244
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12, !dbg !7245
  br i1 %call, label %if.end, label %if.then, !dbg !7246

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7247

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7248
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7249
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7250
  store ptr %3, ptr %prev1, align 8, !dbg !7251
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7252
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7253
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7254
  store ptr %5, ptr %next2, align 8, !dbg !7255
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7256
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7257
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7258
  store ptr %7, ptr %prev3, align 8, !dbg !7259
  br label %do.body, !dbg !7260

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7261

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7263

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7261

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7265
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7265
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7265
  store volatile ptr %9, ptr %next6, align 8, !dbg !7265
  br label %do.end7, !dbg !7265

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7261

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7267
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !7268 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7272, metadata !DIExpression()), !dbg !7275
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7273, metadata !DIExpression()), !dbg !7276
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7274, metadata !DIExpression()), !dbg !7277
  ret i1 true, !dbg !7278
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7279 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #7 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fetch_pte(ptr noundef %pgtable, i64 noundef %address, ptr noundef %page_size) #0 align 16 !dbg !7282 {
entry:
  %retval = alloca ptr, align 8
  %pgtable.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %page_size.addr = alloca ptr, align 8
  %level = alloca i32, align 4
  %pte = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pgtable, ptr %pgtable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !7286, metadata !DIExpression()), !dbg !7291
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7287, metadata !DIExpression()), !dbg !7292
  store ptr %page_size, ptr %page_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page_size.addr, metadata !7288, metadata !DIExpression()), !dbg !7293
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #11, !dbg !7294
  call void @llvm.dbg.declare(metadata ptr %level, metadata !7289, metadata !DIExpression()), !dbg !7295
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #11, !dbg !7296
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7290, metadata !DIExpression()), !dbg !7297
  %0 = load ptr, ptr %page_size.addr, align 8, !dbg !7298
  store i64 0, ptr %0, align 8, !dbg !7299
  %1 = load i64, ptr %address.addr, align 8, !dbg !7300
  %2 = load ptr, ptr %pgtable.addr, align 8, !dbg !7302
  %mode = getelementptr inbounds %struct.amd_io_pgtable, ptr %2, i32 0, i32 2, !dbg !7302
  %3 = load i32, ptr %mode, align 8, !dbg !7302
  %cmp = icmp slt i32 %3, 6, !dbg !7302
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7302

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %pgtable.addr, align 8, !dbg !7302
  %mode1 = getelementptr inbounds %struct.amd_io_pgtable, ptr %4, i32 0, i32 2, !dbg !7302
  %5 = load i32, ptr %mode1, align 8, !dbg !7302
  %mul = mul i32 %5, 9, !dbg !7302
  %add = add i32 12, %mul, !dbg !7302
  %sh_prom = zext i32 %add to i64, !dbg !7302
  %shl = shl i64 1, %sh_prom, !dbg !7302
  %sub = sub i64 %shl, 1, !dbg !7302
  br label %cond.end, !dbg !7302

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !7302

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ -1, %cond.false ], !dbg !7302
  %cmp2 = icmp ugt i64 %1, %cond, !dbg !7303
  br i1 %cmp2, label %if.then, label %if.end, !dbg !7304

if.then:                                          ; preds = %cond.end
  store ptr null, ptr %retval, align 8, !dbg !7305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7305

if.end:                                           ; preds = %cond.end
  %6 = load ptr, ptr %pgtable.addr, align 8, !dbg !7306
  %mode3 = getelementptr inbounds %struct.amd_io_pgtable, ptr %6, i32 0, i32 2, !dbg !7307
  %7 = load i32, ptr %mode3, align 8, !dbg !7307
  %sub4 = sub i32 %7, 1, !dbg !7308
  store i32 %sub4, ptr %level, align 4, !dbg !7309
  %8 = load ptr, ptr %pgtable.addr, align 8, !dbg !7310
  %root = getelementptr inbounds %struct.amd_io_pgtable, ptr %8, i32 0, i32 3, !dbg !7311
  %9 = load ptr, ptr %root, align 8, !dbg !7311
  %10 = load i64, ptr %address.addr, align 8, !dbg !7312
  %11 = load i32, ptr %level, align 4, !dbg !7312
  %mul5 = mul i32 %11, 9, !dbg !7312
  %add6 = add i32 12, %mul5, !dbg !7312
  %sh_prom7 = zext i32 %add6 to i64, !dbg !7312
  %shr = lshr i64 %10, %sh_prom7, !dbg !7312
  %and = and i64 %shr, 511, !dbg !7312
  %arrayidx = getelementptr i64, ptr %9, i64 %and, !dbg !7310
  store ptr %arrayidx, ptr %pte, align 8, !dbg !7313
  %12 = load i32, ptr %level, align 4, !dbg !7314
  %mul8 = mul i32 9, %12, !dbg !7314
  %add9 = add i32 12, %mul8, !dbg !7314
  %sh_prom10 = zext i32 %add9 to i64, !dbg !7314
  %shl11 = shl i64 1, %sh_prom10, !dbg !7314
  %13 = load ptr, ptr %page_size.addr, align 8, !dbg !7315
  store i64 %shl11, ptr %13, align 8, !dbg !7316
  br label %while.cond, !dbg !7317

while.cond:                                       ; preds = %if.end29, %if.end
  %14 = load i32, ptr %level, align 4, !dbg !7318
  %cmp12 = icmp sgt i32 %14, 0, !dbg !7319
  br i1 %cmp12, label %while.body, label %while.end, !dbg !7317

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr %pte, align 8, !dbg !7320
  %16 = load i64, ptr %15, align 8, !dbg !7320
  %and13 = and i64 %16, 1, !dbg !7320
  %tobool = icmp ne i64 %and13, 0, !dbg !7320
  br i1 %tobool, label %if.end15, label %if.then14, !dbg !7323

if.then14:                                        ; preds = %while.body
  store ptr null, ptr %retval, align 8, !dbg !7324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7324

if.end15:                                         ; preds = %while.body
  %17 = load ptr, ptr %pte, align 8, !dbg !7325
  %18 = load i64, ptr %17, align 8, !dbg !7325
  %shr16 = lshr i64 %18, 9, !dbg !7325
  %and17 = and i64 %shr16, 7, !dbg !7325
  %cmp18 = icmp eq i64 %and17, 7, !dbg !7327
  br i1 %cmp18, label %if.then22, label %lor.lhs.false, !dbg !7328

lor.lhs.false:                                    ; preds = %if.end15
  %19 = load ptr, ptr %pte, align 8, !dbg !7329
  %20 = load i64, ptr %19, align 8, !dbg !7329
  %shr19 = lshr i64 %20, 9, !dbg !7329
  %and20 = and i64 %shr19, 7, !dbg !7329
  %cmp21 = icmp eq i64 %and20, 0, !dbg !7330
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7331

if.then22:                                        ; preds = %lor.lhs.false, %if.end15
  br label %while.end, !dbg !7332

if.end23:                                         ; preds = %lor.lhs.false
  %21 = load ptr, ptr %pte, align 8, !dbg !7333
  %22 = load i64, ptr %21, align 8, !dbg !7333
  %shr24 = lshr i64 %22, 9, !dbg !7333
  %and25 = and i64 %shr24, 7, !dbg !7333
  %23 = load i32, ptr %level, align 4, !dbg !7335
  %conv = sext i32 %23 to i64, !dbg !7335
  %cmp26 = icmp ne i64 %and25, %conv, !dbg !7336
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !7337

if.then28:                                        ; preds = %if.end23
  store ptr null, ptr %retval, align 8, !dbg !7338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7338

if.end29:                                         ; preds = %if.end23
  %24 = load i32, ptr %level, align 4, !dbg !7339
  %sub30 = sub i32 %24, 1, !dbg !7339
  store i32 %sub30, ptr %level, align 4, !dbg !7339
  %25 = load ptr, ptr %pte, align 8, !dbg !7340
  %26 = load i64, ptr %25, align 8, !dbg !7340
  %and31 = and i64 %26, 4503599627366400, !dbg !7340
  %call = call ptr @iommu_phys_to_virt(i64 noundef %and31) #12, !dbg !7340
  store ptr %call, ptr %pte, align 8, !dbg !7341
  %27 = load ptr, ptr %pte, align 8, !dbg !7342
  %28 = load i64, ptr %address.addr, align 8, !dbg !7343
  %29 = load i32, ptr %level, align 4, !dbg !7343
  %mul32 = mul i32 %29, 9, !dbg !7343
  %add33 = add i32 12, %mul32, !dbg !7343
  %sh_prom34 = zext i32 %add33 to i64, !dbg !7343
  %shr35 = lshr i64 %28, %sh_prom34, !dbg !7343
  %and36 = and i64 %shr35, 511, !dbg !7343
  %arrayidx37 = getelementptr i64, ptr %27, i64 %and36, !dbg !7342
  store ptr %arrayidx37, ptr %pte, align 8, !dbg !7344
  %30 = load i32, ptr %level, align 4, !dbg !7345
  %mul38 = mul i32 9, %30, !dbg !7345
  %add39 = add i32 12, %mul38, !dbg !7345
  %sh_prom40 = zext i32 %add39 to i64, !dbg !7345
  %shl41 = shl i64 1, %sh_prom40, !dbg !7345
  %31 = load ptr, ptr %page_size.addr, align 8, !dbg !7346
  store i64 %shl41, ptr %31, align 8, !dbg !7347
  br label %while.cond, !dbg !7317, !llvm.loop !7348

while.end:                                        ; preds = %if.then22, %while.cond
  %32 = load ptr, ptr %pte, align 8, !dbg !7350
  %33 = load i64, ptr %32, align 8, !dbg !7350
  %shr42 = lshr i64 %33, 9, !dbg !7350
  %and43 = and i64 %shr42, 7, !dbg !7350
  %cmp44 = icmp eq i64 %and43, 7, !dbg !7352
  br i1 %cmp44, label %if.then46, label %if.end48, !dbg !7353

if.then46:                                        ; preds = %while.end
  %34 = load ptr, ptr %pte, align 8, !dbg !7354
  %35 = load ptr, ptr %page_size.addr, align 8, !dbg !7355
  %call47 = call ptr @first_pte_l7(ptr noundef %34, ptr noundef %35, ptr noundef null) #12, !dbg !7356
  store ptr %call47, ptr %pte, align 8, !dbg !7357
  br label %if.end48, !dbg !7358

if.end48:                                         ; preds = %if.then46, %while.end
  %36 = load ptr, ptr %pte, align 8, !dbg !7359
  store ptr %36, ptr %retval, align 8, !dbg !7360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7360

cleanup:                                          ; preds = %if.end48, %if.then28, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #11, !dbg !7361
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #11, !dbg !7361
  %37 = load ptr, ptr %retval, align 8, !dbg !7361
  ret ptr %37, !dbg !7361
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd_iommu_domain_clr_pt_root(ptr noundef %domain) #3 align 16 !dbg !7362 {
entry:
  %domain.addr = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !7364, metadata !DIExpression()), !dbg !7365
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !7366
  call void @amd_iommu_domain_set_pt_root(ptr noundef %0, i64 noundef 0) #12, !dbg !7367
  ret void, !dbg !7368
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7369 dso_local void @amd_iommu_domain_update(ptr noundef) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { noredzone nounwind willreturn memory(none) }
attributes #14 = { nounwind memory(read) }
attributes #15 = { cold noredzone }
attributes #16 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5638, !5639, !5640, !5641, !5642, !5643, !5644, !5645}
!llvm.ident = !{!5646}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "io_pgtable_amd_iommu_v1_init_fns", scope: !2, file: !3, line: 534, type: !5627, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/iommu/amd/.io_pgtable.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/iommu/amd/io_pgtable\22 -D KBUILD_BASENAME=\22io_pgtable\22 -D KBUILD_MODNAME=\22io_pgtable\22 -D __KBUILD_MODNAME=kmod_io_pgtable -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/iommu/amd/io_pgtable.ll drivers/iommu/amd/io_pgtable.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !245, globals: !5608, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/iommu/amd/io_pgtable.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d743baf2a92a6281bc885fb74af4c13a")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !101, !107, !111, !118, !126, !134, !153, !160, !168, !174, !184, !193, !198, !203, !209, !215, !229, !234}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
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
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iommu_cap", file: !94, line: 121, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/iommu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f65f238ea6d814b0cb3e9a685bbbfc5")
!95 = !{!96, !97, !98, !99, !100}
!96 = !DIEnumerator(name: "IOMMU_CAP_CACHE_COHERENCY", value: 0)
!97 = !DIEnumerator(name: "IOMMU_CAP_NOEXEC", value: 1)
!98 = !DIEnumerator(name: "IOMMU_CAP_PRE_BOOT_PROTECTION", value: 2)
!99 = !DIEnumerator(name: "IOMMU_CAP_ENFORCE_CACHE_COHERENCY", value: 3)
!100 = !DIEnumerator(name: "IOMMU_CAP_DEFERRED_FLUSH", value: 4)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !102, line: 30, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!103 = !{!104, !105, !106}
!104 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!105 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!106 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iommu_dev_features", file: !94, line: 194, baseType: !7, size: 32, elements: !108)
!108 = !{!109, !110}
!109 = !DIEnumerator(name: "IOMMU_DEV_FEAT_SVA", value: 0)
!110 = !DIEnumerator(name: "IOMMU_DEV_FEAT_IOPF", value: 1)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !112, line: 487, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!113 = !{!114, !115, !116, !117}
!114 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!115 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!116 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!117 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !119, line: 620, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!120 = !{!121, !122, !123, !124, !125}
!121 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!122 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!123 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!124 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!125 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !119, line: 597, baseType: !127, size: 32, elements: !128)
!127 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!128 = !{!129, !130, !131, !132, !133}
!129 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!130 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!131 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!132 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!133 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !135, line: 12, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/irqdomain_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "168aa78cd6535dbcc4cf99c0f8004653")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!137 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0)
!138 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1)
!139 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2)
!140 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3)
!141 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4)
!142 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5)
!143 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6)
!144 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7)
!145 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8)
!146 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9)
!147 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10)
!148 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSI", value: 11)
!149 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSIX", value: 12)
!150 = !DIEnumerator(name: "DOMAIN_BUS_DMAR", value: 13)
!151 = !DIEnumerator(name: "DOMAIN_BUS_AMDVI", value: 14)
!152 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_IMS", value: 15)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !154, line: 497, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!155 = !{!156, !157, !158, !159}
!156 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0)
!157 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1)
!158 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2)
!159 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !161, line: 1094, baseType: !7, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!162 = !{!163, !164, !165, !166, !167}
!163 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1)
!164 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2)
!165 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4)
!166 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8)
!167 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !169, line: 11, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!170 = !{!171, !172, !173}
!171 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!172 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!173 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_alloc_type", file: !175, line: 36, baseType: !7, size: 32, elements: !176)
!175 = !DIFile(filename: "./arch/x86/include/asm/hw_irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "63f4463629042f334374af478f7e7db8")
!176 = !{!177, !178, !179, !180, !181, !182, !183}
!177 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_IOAPIC", value: 1)
!178 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_HPET", value: 2)
!179 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_PCI_MSI", value: 3)
!180 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_PCI_MSIX", value: 4)
!181 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_DMAR", value: 5)
!182 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_AMDVI", value: 6)
!183 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_UV", value: 7)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !112, line: 547, baseType: !7, size: 32, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192}
!186 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!187 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!188 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!189 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!190 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!191 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!192 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !112, line: 564, baseType: !7, size: 32, elements: !194)
!194 = !{!195, !196, !197}
!195 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!196 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!197 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !112, line: 577, baseType: !7, size: 32, elements: !199)
!199 = !{!200, !201, !202}
!200 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!201 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!202 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !112, line: 503, baseType: !7, size: 32, elements: !204)
!204 = !{!205, !206, !207, !208}
!205 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!206 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!207 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!208 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iommu_page_response_code", file: !210, line: 134, baseType: !7, size: 32, elements: !211)
!210 = !DIFile(filename: "./include/uapi/linux/iommu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e3653d45113ea4f03fbf4351dacc583")
!211 = !{!212, !213, !214}
!212 = !DIEnumerator(name: "IOMMU_PAGE_RESP_SUCCESS", value: 0)
!213 = !DIEnumerator(name: "IOMMU_PAGE_RESP_INVALID", value: 1)
!214 = !DIEnumerator(name: "IOMMU_PAGE_RESP_FAILURE", value: 2)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "io_pgtable_fmt", file: !216, line: 11, baseType: !7, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/io-pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "879e921f06b647447a151538e0332d0b")
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228}
!218 = !DIEnumerator(name: "ARM_32_LPAE_S1", value: 0)
!219 = !DIEnumerator(name: "ARM_32_LPAE_S2", value: 1)
!220 = !DIEnumerator(name: "ARM_64_LPAE_S1", value: 2)
!221 = !DIEnumerator(name: "ARM_64_LPAE_S2", value: 3)
!222 = !DIEnumerator(name: "ARM_V7S", value: 4)
!223 = !DIEnumerator(name: "ARM_MALI_LPAE", value: 5)
!224 = !DIEnumerator(name: "AMD_IOMMU_V1", value: 6)
!225 = !DIEnumerator(name: "AMD_IOMMU_V2", value: 7)
!226 = !DIEnumerator(name: "APPLE_DART", value: 8)
!227 = !DIEnumerator(name: "APPLE_DART2", value: 9)
!228 = !DIEnumerator(name: "IO_PGTABLE_NUM_FMTS", value: 10)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !230, line: 10, baseType: !7, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!231 = !{!232, !233}
!232 = !DIEnumerator(name: "false", value: 0)
!233 = !DIEnumerator(name: "true", value: 1)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !235, line: 398, baseType: !7, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244}
!237 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!238 = !DIEnumerator(name: "N_ONLINE", value: 1)
!239 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!240 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!241 = !DIEnumerator(name: "N_MEMORY", value: 3)
!242 = !DIEnumerator(name: "N_CPU", value: 4)
!243 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!244 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!245 = !{!246, !251, !252, !257, !258, !5584, !5585, !266, !3329, !5600, !1235, !850, !127, !5602, !5603, !1072, !2273, !5604, !5606}
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !247, line: 23, baseType: !248)
!247 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !249, line: 31, baseType: !250)
!249 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!250 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !247, line: 22, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !249, line: 30, baseType: !256)
!256 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_io_pgtable", file: !260, line: 542, size: 1984, elements: !261)
!260 = !DIFile(filename: "drivers/iommu/amd/amd_iommu_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f2de0f65dd4f5bb2fd01d3250cd1a81")
!261 = !{!262, !5558, !5580, !5581, !5582, !5583}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pgtbl_cfg", scope: !259, file: !260, line: 543, baseType: !263, size: 704)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_pgtable_cfg", file: !216, line: 64, size: 704, elements: !264)
!264 = !{!265, !267, !268, !269, !270, !274, !308, !5509}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !263, file: !216, line: 95, baseType: !266, size: 64)
!266 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "pgsize_bitmap", scope: !263, file: !216, line: 96, baseType: !266, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "ias", scope: !263, file: !216, line: 97, baseType: !7, size: 32, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "oas", scope: !263, file: !216, line: 98, baseType: !7, size: 32, offset: 160)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_walk", scope: !263, file: !216, line: 99, baseType: !271, size: 8, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !272, line: 35, baseType: !273)
!272 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!273 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tlb", scope: !263, file: !216, line: 100, baseType: !275, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_flush_ops", file: !216, line: 41, size: 192, elements: !278)
!278 = !{!279, !283, !291}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_all", scope: !277, file: !216, line: 42, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !257}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_walk", scope: !277, file: !216, line: 43, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !266, !287, !287, !257}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !272, line: 61, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !289, line: 72, baseType: !290)
!289 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !289, line: 16, baseType: !266)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_add_page", scope: !277, file: !216, line: 45, baseType: !292, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295, !266, !287, !257}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_iotlb_gather", file: !94, line: 222, size: 384, elements: !297)
!297 = !{!298, !299, !300, !301, !307}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !296, file: !94, line: 223, baseType: !266, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !296, file: !94, line: 224, baseType: !266, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "pgsize", scope: !296, file: !94, line: 225, baseType: !287, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !296, file: !94, line: 226, baseType: !302, size: 128, offset: 192)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !272, line: 190, size: 128, elements: !303)
!303 = !{!304, !306}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !272, line: 191, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !302, file: !272, line: 191, baseType: !305, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "queued", scope: !296, file: !94, line: 227, baseType: !271, size: 8, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_dev", scope: !263, file: !216, line: 101, baseType: !309, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !112, line: 705, size: 5824, elements: !311)
!311 = !{!312, !4233, !4234, !4237, !4238, !4291, !4711, !4712, !4713, !4714, !4715, !4722, !4814, !4827, !5393, !5397, !5398, !5399, !5400, !5404, !5411, !5412, !5415, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5455, !5456, !5457, !5458, !5494, !5503, !5504, !5505, !5506, !5507, !5508}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !310, file: !112, line: 706, baseType: !313, size: 512)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !314, line: 64, size: 512, elements: !315)
!314 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!315 = !{!316, !320, !321, !323, !410, !4119, !4223, !4228, !4229, !4230, !4231, !4232}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !313, file: !314, line: 65, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !313, file: !314, line: 66, baseType: !302, size: 128, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !313, file: !314, line: 67, baseType: !322, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !313, file: !314, line: 68, baseType: !324, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !314, line: 168, size: 768, elements: !326)
!326 = !{!327, !328, !369, !370}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !325, file: !314, line: 169, baseType: !302, size: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !325, file: !314, line: 170, baseType: !329, size: 32, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !330, line: 29, baseType: !331)
!330 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !330, line: 17, size: 32, elements: !332)
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !330, line: 18, baseType: !334, size: 32)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !330, line: 18, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !334, file: !330, line: 19, baseType: !337, size: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !338, line: 14, size: 32, elements: !339)
!338 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !337, file: !338, line: 15, baseType: !341, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !342, line: 44, baseType: !343)
!342 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !342, line: 14, size: 32, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !342, line: 15, baseType: !346, size: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !342, line: 15, size: 32, elements: !347)
!347 = !{!348, !353, !361}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !346, file: !342, line: 16, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !272, line: 174, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 172, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !350, file: !272, line: 173, baseType: !127, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !342, line: 24, baseType: !354, size: 16)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !342, line: 24, size: 16, elements: !355)
!355 = !{!356, !360}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !354, file: !342, line: 25, baseType: !357, size: 8)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !247, line: 17, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !249, line: 21, baseType: !359)
!359 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !354, file: !342, line: 26, baseType: !357, size: 8, offset: 8)
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !342, line: 28, baseType: !362, size: 32)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !342, line: 28, size: 32, elements: !363)
!363 = !{!364, !368}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !362, file: !342, line: 29, baseType: !365, size: 16)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !247, line: 19, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !249, line: 24, baseType: !367)
!367 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !362, file: !342, line: 30, baseType: !365, size: 16, offset: 16)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !325, file: !314, line: 171, baseType: !313, size: 512, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !325, file: !314, line: 172, baseType: !371, size: 64, offset: 704)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !314, line: 133, size: 192, elements: !374)
!374 = !{!375, !382, !387}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !373, file: !314, line: 134, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!127, !380}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !314, line: 135, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!317, !380}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !373, file: !314, line: 136, baseType: !388, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!127, !380, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !314, line: 125, size: 20736, elements: !394)
!394 = !{!395, !400, !404, !405, !409}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !393, file: !314, line: 126, baseType: !396, size: 192)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 192, elements: !398)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!398 = !{!399}
!399 = !DISubrange(count: 3)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !393, file: !314, line: 127, baseType: !401, size: 4096, offset: 192)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 4096, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !393, file: !314, line: 128, baseType: !127, size: 32, offset: 4288)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !393, file: !314, line: 129, baseType: !406, size: 16384, offset: 4320)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 16384, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 2048)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !393, file: !314, line: 130, baseType: !127, size: 32, offset: 20704)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !313, file: !314, line: 69, baseType: !411, size: 64, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !314, line: 116, size: 384, elements: !414)
!414 = !{!415, !419, !443, !4081, !4109, !4113}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !413, file: !314, line: 117, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !322}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !413, file: !314, line: 118, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !423, line: 254, size: 128, elements: !424)
!423 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!424 = !{!425, !439}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !422, file: !423, line: 255, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!429, !322, !433, !397}
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !272, line: 66, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !289, line: 73, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !289, line: 15, baseType: !432)
!432 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !423, line: 30, size: 128, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !434, file: !423, line: 31, baseType: !317, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !434, file: !423, line: 32, baseType: !438, size: 16, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !272, line: 24, baseType: !367)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !422, file: !423, line: 256, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!429, !322, !433, !317, !287}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !413, file: !314, line: 119, baseType: !444, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !423, line: 84, size: 320, elements: !448)
!448 = !{!449, !450, !454, !4077, !4079}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !447, file: !423, line: 85, baseType: !317, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !447, file: !423, line: 86, baseType: !451, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!438, !322, !433, !127}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !447, file: !423, line: 88, baseType: !455, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!438, !322, !458, !127}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !423, line: 175, size: 512, elements: !460)
!460 = !{!461, !462, !463, !464, !4068, !4072, !4073}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !459, file: !423, line: 176, baseType: !434, size: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !459, file: !423, line: 177, baseType: !287, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !459, file: !423, line: 178, baseType: !257, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !459, file: !423, line: 179, baseType: !465, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !470)
!470 = !{!471, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !4062, !4063, !4064, !4065, !4066, !4067}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !469, file: !14, line: 473, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !474)
!474 = !{!475, !476, !477, !485, !486, !493, !494, !497, !498, !3841, !3842, !3843, !3844, !3845, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3885, !3888, !3889, !3890, !3899, !3900, !3901, !3902}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !473, file: !14, line: 642, baseType: !438, size: 16)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !473, file: !14, line: 643, baseType: !367, size: 16, offset: 16)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !473, file: !14, line: 644, baseType: !478, size: 32, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !479, line: 23, baseType: !480)
!479 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !479, line: 21, size: 32, elements: !481)
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !480, file: !479, line: 22, baseType: !483, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !272, line: 37, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !289, line: 49, baseType: !7)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !473, file: !14, line: 645, baseType: !302, size: 128, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !473, file: !14, line: 646, baseType: !487, size: 32, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !479, line: 28, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !479, line: 26, size: 32, elements: !489)
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !488, file: !479, line: 27, baseType: !491, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !272, line: 38, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !289, line: 50, baseType: !7)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !473, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !473, file: !14, line: 650, baseType: !495, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !473, file: !14, line: 651, baseType: !495, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !473, file: !14, line: 654, baseType: !499, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !502)
!502 = !{!503, !3669, !3679, !3683, !3687, !3691, !3695, !3699, !3703, !3707, !3711, !3712, !3716, !3720, !3757, !3786, !3790, !3796, !3800, !3804, !3808, !3812, !3816, !3822, !3826}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !501, file: !14, line: 1967, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!507, !472, !507, !7}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !509, line: 82, size: 1536, elements: !510)
!509 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!510 = !{!511, !512, !522, !530, !531, !548, !549, !553, !566, !3652, !3653, !3654, !3655, !3661, !3662, !3663}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !508, file: !509, line: 84, baseType: !7, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !508, file: !509, line: 85, baseType: !513, size: 32, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !514, line: 275, baseType: !515)
!514 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !514, line: 275, size: 32, elements: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !515, file: !514, line: 275, baseType: !518, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !514, line: 69, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !514, line: 64, size: 32, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !519, file: !514, line: 65, baseType: !7, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !508, file: !509, line: 86, baseType: !523, size: 128, offset: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !524, line: 38, size: 128, elements: !525)
!524 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!525 = !{!526, !528}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !523, file: !524, line: 39, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !523, file: !524, line: 39, baseType: !529, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !508, file: !509, line: 87, baseType: !507, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !508, file: !509, line: 88, baseType: !532, size: 128, offset: 256)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !509, line: 49, size: 128, elements: !533)
!533 = !{!534, !545}
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !509, line: 50, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !509, line: 50, size: 64, elements: !536)
!536 = !{!537, !544}
!537 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !509, line: 51, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !509, line: 51, size: 64, elements: !539)
!539 = !{!540, !543}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !538, file: !509, line: 52, baseType: !541, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !247, line: 21, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !249, line: 27, baseType: !7)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !538, file: !509, line: 52, baseType: !541, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !535, file: !509, line: 54, baseType: !246, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !532, file: !509, line: 56, baseType: !546, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !508, file: !509, line: 89, baseType: !472, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !508, file: !509, line: 91, baseType: !550, size: 256, offset: 448)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 256, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !508, file: !509, line: 94, baseType: !554, size: 64, offset: 704)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !555, line: 25, size: 64, elements: !556)
!555 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, scope: !554, file: !555, line: 26, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !554, file: !555, line: 26, size: 64, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !558, file: !555, line: 28, baseType: !248, size: 64, align: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !555, line: 30, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !558, file: !555, line: 30, size: 64, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !562, file: !555, line: 31, baseType: !329, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !562, file: !555, line: 32, baseType: !127, size: 32, offset: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !508, file: !509, line: 95, baseType: !567, size: 64, offset: 768)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !509, line: 128, size: 1024, align: 512, elements: !570)
!570 = !{!571, !575, !576, !583, !589, !593, !597, !601, !602, !606, !610, !3642, !3646}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !569, file: !509, line: 129, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!127, !507, !7}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !569, file: !509, line: 130, baseType: !572, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !569, file: !509, line: 131, baseType: !577, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!127, !580, !582}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !569, file: !509, line: 132, baseType: !584, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!127, !580, !7, !317, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !569, file: !509, line: 134, baseType: !590, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!127, !580}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !569, file: !509, line: 135, baseType: !594, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!127, !507}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !569, file: !509, line: 136, baseType: !598, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !507}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !569, file: !509, line: 137, baseType: !598, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !569, file: !509, line: 138, baseType: !603, size: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !507, !472}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !569, file: !509, line: 139, baseType: !607, size: 64, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!397, !507, !397, !127}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !569, file: !509, line: 140, baseType: !611, size: 64, offset: 640)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!614, !3641}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !616, line: 70, size: 256, elements: !617)
!616 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!617 = !{!618, !619, !3637, !3638}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !615, file: !616, line: 71, baseType: !507, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !615, file: !616, line: 72, baseType: !620, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !622)
!622 = !{!623, !624, !627, !628, !629, !632, !1104, !1244, !1284, !1374, !1378, !1379, !1380, !1381, !1382, !1391, !1392, !1393, !1394, !1399, !1403, !1404, !1407, !1410, !1413, !1416, !1417, !1418, !1459, !3570, !3571, !3572, !3573, !3574, !3575, !3578, !3580, !3587, !3588, !3589, !3590, !3591, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !621, file: !14, line: 1191, baseType: !302, size: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !621, file: !14, line: 1192, baseType: !625, size: 32, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !272, line: 21, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !272, line: 18, baseType: !541)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !621, file: !14, line: 1193, baseType: !359, size: 8, offset: 160)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !621, file: !14, line: 1194, baseType: !266, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !621, file: !14, line: 1195, baseType: !630, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !272, line: 52, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !289, line: 88, baseType: !256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !621, file: !14, line: 1196, baseType: !633, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !635)
!635 = !{!636, !637, !638, !644, !648, !652, !656, !1089, !1090, !1094, !1096, !1097, !1098, !1100, !1101, !1102, !1103}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !634, file: !14, line: 2367, baseType: !317, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !634, file: !14, line: 2368, baseType: !127, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !634, file: !14, line: 2376, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!127, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !616, line: 21, flags: DIFlagFwdDecl)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !634, file: !14, line: 2377, baseType: !645, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !634, file: !14, line: 2378, baseType: !649, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!507, !633, !127, !317, !257}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !634, file: !14, line: 2380, baseType: !653, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !620}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !634, file: !14, line: 2381, baseType: !657, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !659)
!659 = !{!660, !661, !662, !666, !688, !714, !715, !716, !717, !721, !726, !727, !745, !798, !799, !800, !801, !802, !803, !804, !805, !813, !817, !844, !865, !866, !867, !868, !877, !900, !901, !904, !907, !908, !909, !910, !911, !912, !913, !918, !919, !1047, !1055, !1056, !1057, !1059, !1063, !1064, !1068, !1069, !1070, !1071, !1073, !1074, !1075, !1082, !1083, !1084, !1088}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !658, file: !6, line: 403, baseType: !5, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !658, file: !6, line: 406, baseType: !302, size: 128, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !658, file: !6, line: 409, baseType: !663, size: 448, offset: 192)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 448, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 56)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !658, file: !6, line: 417, baseType: !667, size: 768, offset: 640)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !668)
!668 = !{!669, !670, !671, !672, !675}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !667, file: !6, line: 46, baseType: !313, size: 512)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !667, file: !6, line: 47, baseType: !657, size: 64, offset: 512)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !667, file: !6, line: 48, baseType: !322, size: 64, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !667, file: !6, line: 49, baseType: !673, size: 64, offset: 640)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !667, file: !6, line: 50, baseType: !676, size: 64, offset: 704)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !678, line: 26, size: 256, elements: !679)
!678 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !677, file: !678, line: 27, baseType: !7, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !677, file: !678, line: 28, baseType: !682, size: 192, offset: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !683, line: 43, size: 192, elements: !684)
!683 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!684 = !{!685, !687}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !682, file: !683, line: 44, baseType: !686, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !338, line: 23, baseType: !337)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !682, file: !683, line: 45, baseType: !302, size: 128, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !658, file: !6, line: 418, baseType: !689, size: 64, offset: 1408)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !691)
!691 = !{!692, !693, !698, !702, !706, !710}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !690, file: !6, line: 54, baseType: !434, size: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !690, file: !6, line: 55, baseType: !694, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!429, !689, !697, !397}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !690, file: !6, line: 57, baseType: !699, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!429, !689, !697, !317, !287}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !690, file: !6, line: 59, baseType: !703, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !657, !317}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !690, file: !6, line: 60, baseType: !707, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!127, !657}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !690, file: !6, line: 61, baseType: !711, size: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !657}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !658, file: !6, line: 419, baseType: !317, size: 64, offset: 1472)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !658, file: !6, line: 420, baseType: !317, size: 64, offset: 1536)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !658, file: !6, line: 421, baseType: !322, size: 64, offset: 1600)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !658, file: !6, line: 424, baseType: !718, size: 64, offset: 1664)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !658, file: !6, line: 425, baseType: !722, size: 64, offset: 1728)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !247, line: 20, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !249, line: 26, baseType: !127)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !658, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !658, file: !6, line: 435, baseType: !728, size: 256, offset: 1856)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !729, line: 66, size: 256, elements: !730)
!729 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!730 = !{!731, !738, !739, !744}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !728, file: !729, line: 67, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !733, line: 13, baseType: !734)
!733 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !272, line: 181, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 179, size: 64, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !735, file: !272, line: 180, baseType: !254, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !728, file: !729, line: 68, baseType: !686, size: 32, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !728, file: !729, line: 70, baseType: !740, size: 32, offset: 96)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !741, line: 15, size: 32, elements: !742)
!741 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !740, file: !741, line: 20, baseType: !349, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !728, file: !729, line: 72, baseType: !302, size: 128, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !658, file: !6, line: 437, baseType: !746, size: 64, offset: 2112)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !748, line: 69, size: 320, elements: !749)
!748 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!749 = !{!750, !751, !752, !769, !771, !775, !776}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !747, file: !748, line: 70, baseType: !317, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !747, file: !748, line: 71, baseType: !657, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !747, file: !748, line: 72, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !748, line: 47, size: 256, elements: !756)
!756 = !{!757, !758, !764, !768}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !748, line: 49, baseType: !7, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !755, file: !748, line: 51, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!127, !317, !762}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !755, file: !748, line: 53, baseType: !765, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!127, !397, !762}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !755, file: !748, line: 55, baseType: !280, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !747, file: !748, line: 73, baseType: !770, size: 16, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !747, file: !748, line: 74, baseType: !772, size: 8, offset: 208)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !247, line: 16, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !249, line: 20, baseType: !774)
!774 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !748, line: 75, baseType: !357, size: 8, offset: 216)
!776 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !748, line: 76, baseType: !777, size: 64, offset: 256)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !747, file: !748, line: 76, size: 64, elements: !778)
!778 = !{!779, !780, !787}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !777, file: !748, line: 77, baseType: !257, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !777, file: !748, line: 78, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !748, line: 86, size: 128, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !783, file: !748, line: 87, baseType: !7, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !783, file: !748, line: 88, baseType: !397, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !777, file: !748, line: 79, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !748, line: 92, size: 256, elements: !791)
!791 = !{!792, !793, !794, !796, !797}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !790, file: !748, line: 94, baseType: !7, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !790, file: !748, line: 95, baseType: !7, size: 32, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !790, file: !748, line: 96, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !790, file: !748, line: 97, baseType: !753, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !790, file: !748, line: 98, baseType: !257, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !658, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !658, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !658, file: !6, line: 442, baseType: !718, size: 64, offset: 2240)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !658, file: !6, line: 443, baseType: !722, size: 64, offset: 2304)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !658, file: !6, line: 444, baseType: !271, size: 8, offset: 2368)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !658, file: !6, line: 451, baseType: !271, size: 8, offset: 2376)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !658, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !658, file: !6, line: 455, baseType: !806, size: 64, offset: 2432)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !808, line: 23, size: 96, elements: !809)
!808 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !807, file: !808, line: 24, baseType: !127, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !807, file: !808, line: 24, baseType: !127, size: 32, offset: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !807, file: !808, line: 24, baseType: !127, size: 32, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !658, file: !6, line: 458, baseType: !814, size: 64, offset: 2496)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!127}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !658, file: !6, line: 460, baseType: !818, size: 4032, align: 512, offset: 2560)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 4032, elements: !842)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !820)
!820 = !{!821, !822, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !819, file: !6, line: 363, baseType: !257, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !819, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !819, file: !6, line: 367, baseType: !824, size: 448, offset: 128)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !824, file: !6, line: 320, baseType: !657, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !824, file: !6, line: 321, baseType: !828, size: 384, offset: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !829, line: 40, size: 384, elements: !830)
!829 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!830 = !{!831}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !828, file: !829, line: 41, baseType: !832, size: 384, align: 64)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !833, size: 384, align: 64, elements: !840)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !834, line: 5, size: 192, align: 64, elements: !835)
!834 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!835 = !{!836, !837, !839}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !833, file: !834, line: 6, baseType: !266, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !833, file: !834, line: 7, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !833, file: !834, line: 8, baseType: !838, size: 64, offset: 128)
!840 = !{!841}
!841 = !DISubrange(count: 2)
!842 = !{!843}
!843 = !DISubrange(count: 7)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !658, file: !6, line: 463, baseType: !845, size: 192, offset: 6592)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !846, line: 8, size: 192, elements: !847)
!846 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!847 = !{!848, !849, !851}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !845, file: !846, line: 10, baseType: !7, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !845, file: !846, line: 11, baseType: !850, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !845, file: !846, line: 12, baseType: !852, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !854, line: 59, size: 48, elements: !855)
!854 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!855 = !{!856, !860, !861, !862, !863, !864}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !853, file: !854, line: 60, baseType: !857, size: 16)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !247, line: 18, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !249, line: 23, baseType: !859)
!859 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !853, file: !854, line: 61, baseType: !857, size: 16, offset: 16)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !853, file: !854, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !853, file: !854, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !853, file: !854, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !853, file: !854, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !658, file: !6, line: 465, baseType: !266, size: 64, offset: 6784)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !658, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !658, file: !6, line: 470, baseType: !302, size: 128, offset: 6912)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !658, file: !6, line: 471, baseType: !869, size: 64, offset: 7040)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !871, line: 33, size: 96, elements: !872)
!871 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!872 = !{!873, !874, !875, !876}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !870, file: !871, line: 37, baseType: !127, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !870, file: !871, line: 43, baseType: !127, size: 32, offset: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !870, file: !871, line: 45, baseType: !367, size: 16, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !870, file: !871, line: 47, baseType: !367, size: 16, offset: 80)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !658, file: !6, line: 476, baseType: !878, size: 64, offset: 7104)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !880)
!880 = !{!881, !897, !898, !899}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !879, file: !6, line: 379, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !884, line: 204, baseType: !885)
!884 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !884, line: 197, size: 192, elements: !886)
!886 = !{!887, !889, !890, !891, !893, !895}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !885, file: !884, line: 198, baseType: !888, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !884, line: 21, baseType: !542)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !885, file: !884, line: 199, baseType: !359, size: 8, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !885, file: !884, line: 200, baseType: !359, size: 8, offset: 40)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !885, file: !884, line: 201, baseType: !892, size: 16, offset: 48)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !884, line: 17, baseType: !366)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !885, file: !884, line: 202, baseType: !894, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !884, line: 16, baseType: !248)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !885, file: !884, line: 203, baseType: !896, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !884, line: 22, baseType: !248)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !879, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !879, file: !6, line: 381, baseType: !397, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !879, file: !6, line: 382, baseType: !397, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !658, file: !6, line: 477, baseType: !879, size: 256, offset: 7168)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !658, file: !6, line: 480, baseType: !902, size: 64, offset: 7424)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !658, file: !6, line: 483, baseType: !905, size: 64, offset: 7488)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !658, file: !6, line: 488, baseType: !397, size: 64, offset: 7552)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !658, file: !6, line: 492, baseType: !257, size: 64, offset: 7616)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !658, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !658, file: !6, line: 495, baseType: !257, size: 64, offset: 7744)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !658, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !658, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !658, file: !6, line: 500, baseType: !914, size: 64, offset: 7872)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !916, line: 45, baseType: !917)
!916 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !658, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !658, file: !6, line: 504, baseType: !920, size: 64, offset: 8000)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !923, line: 96, size: 192, elements: !924)
!923 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!924 = !{!925, !926, !1007, !1011}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !922, file: !923, line: 97, baseType: !7, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !922, file: !923, line: 98, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !923, line: 24, size: 3072, elements: !929)
!929 = !{!930, !932, !933, !934, !935, !959, !960, !961, !962, !980, !992, !993, !1004, !1005, !1006}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !928, file: !923, line: 26, baseType: !931, size: 128)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 128, elements: !840)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !928, file: !923, line: 27, baseType: !931, size: 128, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !928, file: !923, line: 28, baseType: !127, size: 32, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !928, file: !923, line: 31, baseType: !329, size: 32, align: 512, offset: 512)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !928, file: !923, line: 32, baseType: !936, size: 960, offset: 576)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !937, line: 206, size: 960, elements: !938)
!937 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!938 = !{!939, !948, !953, !955, !956, !958}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !936, file: !937, line: 207, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !272, line: 232, size: 128, align: 64, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !941, file: !272, line: 233, baseType: !940, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !941, file: !272, line: 234, baseType: !945, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !940}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !936, file: !937, line: 208, baseType: !949, size: 256, offset: 64)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, size: 256, elements: !951)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!951 = !{!952}
!952 = !DISubrange(count: 4)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !936, file: !937, line: 209, baseType: !954, size: 256, offset: 320)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 256, elements: !951)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !936, file: !937, line: 213, baseType: !432, size: 64, offset: 576)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !936, file: !937, line: 215, baseType: !957, size: 256, offset: 640)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 256, elements: !951)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !936, file: !937, line: 216, baseType: !357, size: 8, offset: 896)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !928, file: !923, line: 33, baseType: !266, size: 64, offset: 1536)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !928, file: !923, line: 34, baseType: !266, size: 64, offset: 1600)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !928, file: !923, line: 35, baseType: !271, size: 8, offset: 1664)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !928, file: !923, line: 36, baseType: !963, size: 320, offset: 1728)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !964, line: 11, size: 320, elements: !965)
!964 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!965 = !{!966, !973, !974, !979}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !963, file: !964, line: 16, baseType: !967, size: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !272, line: 198, size: 128, elements: !968)
!968 = !{!969, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !967, file: !272, line: 199, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !967, file: !272, line: 199, baseType: !972, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !963, file: !964, line: 17, baseType: !266, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !963, file: !964, line: 18, baseType: !975, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !978}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !963, file: !964, line: 19, baseType: !541, size: 32, offset: 256)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !928, file: !923, line: 37, baseType: !981, size: 256, offset: 2048)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !982, line: 98, size: 256, elements: !983)
!982 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!983 = !{!984, !985, !986}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !981, file: !982, line: 99, baseType: !732, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !981, file: !982, line: 100, baseType: !302, size: 128, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !981, file: !982, line: 101, baseType: !987, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !982, line: 21, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !991}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !928, file: !923, line: 38, baseType: !941, size: 128, align: 64, offset: 2304)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !928, file: !923, line: 39, baseType: !994, size: 64, offset: 2432)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !923, line: 49, size: 768, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1003}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !995, file: !923, line: 50, baseType: !329, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !995, file: !923, line: 51, baseType: !954, size: 256, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !995, file: !923, line: 53, baseType: !954, size: 256, offset: 320)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !995, file: !923, line: 54, baseType: !266, size: 64, offset: 576)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !995, file: !923, line: 55, baseType: !994, size: 64, offset: 640)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !995, file: !923, line: 56, baseType: !127, size: 32, offset: 704)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !995, file: !923, line: 57, baseType: !127, size: 32, offset: 736)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !928, file: !923, line: 40, baseType: !266, size: 64, offset: 2496)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !928, file: !923, line: 42, baseType: !127, size: 32, offset: 2560)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !928, file: !923, line: 43, baseType: !921, size: 64, offset: 2624)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !922, file: !923, line: 99, baseType: !1008, offset: 128)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1009, line: 211, elements: !1010)
!1009 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1010 = !{}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !922, file: !923, line: 100, baseType: !1012, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !923, line: 63, size: 3008, elements: !1014)
!1014 = !{!1015, !1016, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1046}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1013, file: !923, line: 64, baseType: !994, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1013, file: !923, line: 65, baseType: !1017, size: 192, offset: 64)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !994, size: 192, elements: !398)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1013, file: !923, line: 67, baseType: !127, size: 32, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1013, file: !923, line: 68, baseType: !728, size: 256, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1013, file: !923, line: 69, baseType: !329, size: 32, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1013, file: !923, line: 70, baseType: !728, size: 256, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1013, file: !923, line: 71, baseType: !266, size: 64, offset: 896)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1013, file: !923, line: 72, baseType: !266, size: 64, offset: 960)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1013, file: !923, line: 73, baseType: !266, size: 64, offset: 1024)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1013, file: !923, line: 74, baseType: !266, size: 64, offset: 1088)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1013, file: !923, line: 75, baseType: !266, size: 64, offset: 1152)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1013, file: !923, line: 76, baseType: !266, size: 64, offset: 1216)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1013, file: !923, line: 77, baseType: !266, size: 64, offset: 1280)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1013, file: !923, line: 78, baseType: !266, size: 64, offset: 1344)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1013, file: !923, line: 79, baseType: !271, size: 8, offset: 1408)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1013, file: !923, line: 80, baseType: !266, size: 64, offset: 1472)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1013, file: !923, line: 81, baseType: !728, size: 256, offset: 1536)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1013, file: !923, line: 82, baseType: !677, size: 256, offset: 1792)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1013, file: !923, line: 84, baseType: !349, size: 32, offset: 2048)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1013, file: !923, line: 87, baseType: !266, size: 64, offset: 2112)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1013, file: !923, line: 88, baseType: !266, size: 64, offset: 2176)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1013, file: !923, line: 89, baseType: !1038, size: 704, offset: 2240)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !982, line: 111, size: 704, elements: !1039)
!1039 = !{!1040, !1041, !1042, !1045}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1038, file: !982, line: 112, baseType: !981, size: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1038, file: !982, line: 113, baseType: !963, size: 320, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1038, file: !982, line: 116, baseType: !1043, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !982, line: 18, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1038, file: !982, line: 117, baseType: !127, size: 32, offset: 640)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1013, file: !923, line: 90, baseType: !921, size: 64, offset: 2944)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !658, file: !6, line: 515, baseType: !1048, size: 64, offset: 8064)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1050, line: 117, size: 128, elements: !1051)
!1050 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1051 = !{!1052, !1053, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1049, file: !1050, line: 118, baseType: !724, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1049, file: !1050, line: 119, baseType: !724, size: 32, offset: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1049, file: !1050, line: 120, baseType: !432, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !658, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !658, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !658, file: !6, line: 520, baseType: !1058, size: 64, offset: 8192)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !658, file: !6, line: 523, baseType: !1060, size: 64, offset: 8256)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !658, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !658, file: !6, line: 525, baseType: !1065, size: 64, offset: 8384)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !658, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !658, file: !6, line: 533, baseType: !257, size: 64, offset: 8512)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !658, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !658, file: !6, line: 535, baseType: !1072, size: 64, offset: 8640)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !658, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !658, file: !6, line: 539, baseType: !127, size: 32, offset: 8736)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !658, file: !6, line: 540, baseType: !1076, size: 64, offset: 8768)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1078, line: 32, size: 64, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1077, file: !1078, line: 33, baseType: !724, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1077, file: !1078, line: 34, baseType: !724, size: 32, offset: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !658, file: !6, line: 563, baseType: !302, size: 128, offset: 8832)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !658, file: !6, line: 565, baseType: !302, size: 128, offset: 8960)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !658, file: !6, line: 568, baseType: !1085, size: 64, offset: 9088)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !658, file: !6, line: 570, baseType: !349, size: 32, offset: 9152)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !634, file: !14, line: 2382, baseType: !633, size: 64, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !634, file: !14, line: 2383, baseType: !1091, size: 64, offset: 512)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !272, line: 194, size: 64, elements: !1092)
!1092 = !{!1093}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1091, file: !272, line: 195, baseType: !970, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !634, file: !14, line: 2385, baseType: !1095, offset: 576)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1009, line: 206, elements: !1010)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !634, file: !14, line: 2386, baseType: !1095, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !634, file: !14, line: 2387, baseType: !1095, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !634, file: !14, line: 2388, baseType: !1099, offset: 576)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1095, elements: !398)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !634, file: !14, line: 2390, baseType: !1095, offset: 576)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !634, file: !14, line: 2391, baseType: !1095, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !634, file: !14, line: 2392, baseType: !1095, offset: 576)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !634, file: !14, line: 2393, baseType: !1095, offset: 576)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !621, file: !14, line: 1197, baseType: !1105, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1108)
!1108 = !{!1109, !1113, !1117, !1118, !1122, !1128, !1132, !1133, !1134, !1138, !1142, !1146, !1147, !1148, !1154, !1158, !1159, !1166, !1167, !1168, !1169, !1173, !1177, !1226, !1242, !1243}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1107, file: !14, line: 2058, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!472, !620}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1107, file: !14, line: 2059, baseType: !1114, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !472}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1107, file: !14, line: 2060, baseType: !1114, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1107, file: !14, line: 2062, baseType: !1119, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !472, !127}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1107, file: !14, line: 2063, baseType: !1123, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!127, !472, !1126}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1107, file: !14, line: 2064, baseType: !1129, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!127, !472}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1107, file: !14, line: 2065, baseType: !1114, size: 64, offset: 384)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1107, file: !14, line: 2066, baseType: !653, size: 64, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1107, file: !14, line: 2067, baseType: !1135, size: 64, offset: 512)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!127, !620, !127}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1107, file: !14, line: 2068, baseType: !1139, size: 64, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!127, !620, !13}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1107, file: !14, line: 2069, baseType: !1143, size: 64, offset: 640)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!127, !620}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1107, file: !14, line: 2070, baseType: !1139, size: 64, offset: 704)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1107, file: !14, line: 2071, baseType: !1143, size: 64, offset: 768)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1107, file: !14, line: 2072, baseType: !1149, size: 64, offset: 832)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!127, !507, !1152}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1107, file: !14, line: 2073, baseType: !1155, size: 64, offset: 896)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!127, !620, !850, !397}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1107, file: !14, line: 2074, baseType: !653, size: 64, offset: 960)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1107, file: !14, line: 2076, baseType: !1160, size: 64, offset: 1024)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!127, !1163, !507}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1165, line: 66, flags: DIFlagFwdDecl)
!1165 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1107, file: !14, line: 2077, baseType: !1160, size: 64, offset: 1088)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1107, file: !14, line: 2078, baseType: !1160, size: 64, offset: 1152)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1107, file: !14, line: 2079, baseType: !1160, size: 64, offset: 1216)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1107, file: !14, line: 2081, baseType: !1170, size: 64, offset: 1280)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!429, !620, !127, !397, !287, !630}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1107, file: !14, line: 2082, baseType: !1174, size: 64, offset: 1344)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!429, !620, !127, !317, !287, !630}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1107, file: !14, line: 2083, baseType: !1178, size: 64, offset: 1408)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!1181, !472}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1209, !1210, !1211}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1183, file: !19, line: 297, baseType: !967, size: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1183, file: !19, line: 298, baseType: !302, size: 128, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1183, file: !19, line: 299, baseType: !302, size: 128, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1183, file: !19, line: 300, baseType: !302, size: 128, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1183, file: !19, line: 301, baseType: !728, size: 256, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1183, file: !19, line: 302, baseType: !329, size: 32, offset: 768)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1183, file: !19, line: 303, baseType: !349, size: 32, offset: 800)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1183, file: !19, line: 304, baseType: !620, size: 64, offset: 832)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1183, file: !19, line: 305, baseType: !1194, size: 64, offset: 896)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1195)
!1195 = !{!1196, !1208}
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !19, line: 69, baseType: !1197, size: 32)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !19, line: 69, size: 32, elements: !1198)
!1198 = !{!1199, !1200, !1201}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1197, file: !19, line: 70, baseType: !478, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1197, file: !19, line: 71, baseType: !487, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1197, file: !19, line: 72, baseType: !1202, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1203, line: 24, baseType: !1204)
!1203 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1203, line: 22, size: 32, elements: !1205)
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1204, file: !1203, line: 23, baseType: !1207, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1203, line: 20, baseType: !484)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1194, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1183, file: !19, line: 306, baseType: !630, size: 64, offset: 960)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1183, file: !19, line: 307, baseType: !266, size: 64, offset: 1024)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1183, file: !19, line: 308, baseType: !1212, size: 576, offset: 1088)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1213)
!1213 = !{!1214, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1225}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1212, file: !19, line: 206, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1212, file: !19, line: 207, baseType: !1215, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1212, file: !19, line: 208, baseType: !1215, size: 64, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1212, file: !19, line: 209, baseType: !1215, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1212, file: !19, line: 210, baseType: !1215, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1212, file: !19, line: 211, baseType: !1215, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1212, file: !19, line: 212, baseType: !1215, size: 64, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1212, file: !19, line: 213, baseType: !1223, size: 64, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1224, line: 8, baseType: !255)
!1224 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1212, file: !19, line: 214, baseType: !1223, size: 64, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1107, file: !14, line: 2085, baseType: !1227, size: 64, offset: 1472)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!432, !620, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1232, line: 15, size: 256, elements: !1233)
!1232 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1233 = !{!1234, !1236, !1237, !1238, !1239}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1231, file: !1232, line: 16, baseType: !1235, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !272, line: 154, baseType: !7)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1231, file: !1232, line: 19, baseType: !127, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1231, file: !1232, line: 26, baseType: !266, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1231, file: !1232, line: 33, baseType: !266, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1231, file: !1232, line: 36, baseType: !1240, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1107, file: !14, line: 2087, baseType: !1227, size: 64, offset: 1536)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1107, file: !14, line: 2089, baseType: !653, size: 64, offset: 1600)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !621, file: !14, line: 1198, baseType: !1245, size: 64, offset: 448)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1248)
!1248 = !{!1249, !1253, !1257, !1261, !1262, !1263, !1264, !1265, !1270, !1275, !1279}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1247, file: !19, line: 325, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!127, !1182}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1247, file: !19, line: 326, baseType: !1254, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!1182, !620, !127}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1247, file: !19, line: 327, baseType: !1258, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !1182}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1247, file: !19, line: 328, baseType: !1250, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1247, file: !19, line: 329, baseType: !1250, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1247, file: !19, line: 330, baseType: !1250, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1247, file: !19, line: 331, baseType: !1135, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1247, file: !19, line: 334, baseType: !1266, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!1269, !472}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1247, file: !19, line: 335, baseType: !1271, size: 64, offset: 512)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!127, !472, !1274}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1247, file: !19, line: 337, baseType: !1276, size: 64, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!127, !472, !1269}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1247, file: !19, line: 339, baseType: !1280, size: 64, offset: 640)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!127, !620, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !621, file: !14, line: 1199, baseType: !1285, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1288)
!1288 = !{!1289, !1300, !1301, !1305, !1306, !1307, !1322, !1345, !1349, !1350, !1373}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1287, file: !19, line: 431, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!127, !620, !127, !127, !1293}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1296, line: 8, size: 128, elements: !1297)
!1296 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1295, file: !1296, line: 9, baseType: !614, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1295, file: !1296, line: 10, baseType: !507, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1287, file: !19, line: 432, baseType: !1135, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1287, file: !19, line: 433, baseType: !1302, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!127, !620, !7}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1287, file: !19, line: 434, baseType: !1302, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1287, file: !19, line: 435, baseType: !1135, size: 64, offset: 256)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1287, file: !19, line: 436, baseType: !1308, size: 64, offset: 320)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!127, !620, !127, !1311}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1312, file: !19, line: 418, baseType: !127, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1312, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1312, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1312, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1312, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1312, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1312, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1312, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1287, file: !19, line: 437, baseType: !1323, size: 64, offset: 384)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!127, !620, !1194, !1326}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1328)
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1327, file: !19, line: 346, baseType: !127, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1327, file: !19, line: 347, baseType: !246, size: 64, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1327, file: !19, line: 348, baseType: !246, size: 64, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1327, file: !19, line: 349, baseType: !246, size: 64, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1327, file: !19, line: 350, baseType: !246, size: 64, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1327, file: !19, line: 351, baseType: !246, size: 64, offset: 320)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1327, file: !19, line: 352, baseType: !246, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1327, file: !19, line: 353, baseType: !254, size: 64, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1327, file: !19, line: 355, baseType: !254, size: 64, offset: 512)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1327, file: !19, line: 356, baseType: !127, size: 32, offset: 576)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1327, file: !19, line: 357, baseType: !127, size: 32, offset: 608)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1327, file: !19, line: 358, baseType: !246, size: 64, offset: 640)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1327, file: !19, line: 359, baseType: !246, size: 64, offset: 704)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1327, file: !19, line: 360, baseType: !246, size: 64, offset: 768)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1327, file: !19, line: 361, baseType: !254, size: 64, offset: 832)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1327, file: !19, line: 362, baseType: !127, size: 32, offset: 896)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1287, file: !19, line: 438, baseType: !1346, size: 64, offset: 448)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!127, !620, !1283, !1326}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1287, file: !19, line: 440, baseType: !1323, size: 64, offset: 512)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1287, file: !19, line: 441, baseType: !1351, size: 64, offset: 576)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!127, !620, !1354}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1355, file: !19, line: 412, baseType: !7, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1355, file: !19, line: 413, baseType: !1359, size: 1344, offset: 64)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, size: 1344, elements: !398)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1361)
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1372}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1360, file: !19, line: 398, baseType: !7, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1360, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1360, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1360, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1360, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1360, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1360, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1360, file: !19, line: 406, baseType: !250, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1360, file: !19, line: 407, baseType: !1371, size: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !272, line: 132, baseType: !246)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1360, file: !19, line: 408, baseType: !1371, size: 64, offset: 384)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1287, file: !19, line: 442, baseType: !1302, size: 64, offset: 640)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !621, file: !14, line: 1200, baseType: !1375, size: 64, offset: 576)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1377)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !621, file: !14, line: 1201, baseType: !266, size: 64, offset: 640)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !621, file: !14, line: 1202, baseType: !266, size: 64, offset: 704)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !621, file: !14, line: 1203, baseType: !266, size: 64, offset: 768)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !621, file: !14, line: 1204, baseType: !507, size: 64, offset: 832)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !621, file: !14, line: 1205, baseType: !1383, size: 320, offset: 896)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1384, line: 48, size: 320, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1385 = !{!1386, !1387, !1388, !1389, !1390}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1383, file: !1384, line: 49, baseType: !732, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1383, file: !1384, line: 55, baseType: !732, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1383, file: !1384, line: 57, baseType: !740, size: 32, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1383, file: !1384, line: 59, baseType: !686, size: 32, offset: 160)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1383, file: !1384, line: 60, baseType: !302, size: 128, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !621, file: !14, line: 1206, baseType: !127, size: 32, offset: 1216)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !621, file: !14, line: 1207, baseType: !349, size: 32, offset: 1248)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !621, file: !14, line: 1209, baseType: !257, size: 64, offset: 1280)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !621, file: !14, line: 1211, baseType: !1395, size: 64, offset: 1344)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1398)
!1398 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !621, file: !14, line: 1223, baseType: !1400, size: 64, offset: 1408)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !524, line: 34, size: 64, elements: !1401)
!1401 = !{!1402}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1400, file: !524, line: 35, baseType: !527, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !621, file: !14, line: 1224, baseType: !302, size: 128, offset: 1472)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !621, file: !14, line: 1225, baseType: !1405, size: 64, offset: 1600)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !621, file: !14, line: 1226, baseType: !1408, size: 64, offset: 1664)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !621, file: !14, line: 1227, baseType: !1411, size: 64, offset: 1728)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !621, file: !14, line: 1228, baseType: !1414, size: 64, offset: 1792)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !621, file: !14, line: 1229, baseType: !967, size: 128, offset: 1856)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !621, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !621, file: !14, line: 1231, baseType: !1419, size: 2496, offset: 2048)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1425, !1457}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1419, file: !19, line: 522, baseType: !7, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1419, file: !19, line: 523, baseType: !1383, size: 320, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1419, file: !19, line: 524, baseType: !1424, size: 192, offset: 384)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 192, elements: !398)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1419, file: !19, line: 525, baseType: !1426, size: 1728, offset: 576)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1427, size: 1728, elements: !398)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1428)
!1428 = !{!1429, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1427, file: !19, line: 223, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1432)
!1432 = !{!1433, !1434, !1447, !1448}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1431, file: !19, line: 446, baseType: !127, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1431, file: !19, line: 447, baseType: !1435, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1438)
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1437, file: !19, line: 313, baseType: !1135, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1437, file: !19, line: 314, baseType: !1135, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1437, file: !19, line: 315, baseType: !1135, size: 64, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1437, file: !19, line: 316, baseType: !1135, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1437, file: !19, line: 317, baseType: !1250, size: 64, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1437, file: !19, line: 318, baseType: !1250, size: 64, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1437, file: !19, line: 319, baseType: !1250, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1437, file: !19, line: 320, baseType: !1280, size: 64, offset: 448)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1431, file: !19, line: 448, baseType: !657, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1431, file: !19, line: 449, baseType: !1430, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1427, file: !19, line: 224, baseType: !127, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1427, file: !19, line: 226, baseType: !302, size: 128, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1427, file: !19, line: 227, baseType: !266, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1427, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1427, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1427, file: !19, line: 230, baseType: !1215, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1427, file: !19, line: 231, baseType: !1215, size: 64, offset: 448)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1427, file: !19, line: 232, baseType: !257, size: 64, offset: 512)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1419, file: !19, line: 526, baseType: !1458, size: 192, offset: 2304)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1435, size: 192, elements: !398)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !621, file: !14, line: 1233, baseType: !1460, size: 2368, offset: 4544)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1461)
!1461 = !{!1462, !1463, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1460, file: !14, line: 1185, baseType: !367, size: 16)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1460, file: !14, line: 1186, baseType: !367, size: 16, offset: 16)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1460, file: !14, line: 1187, baseType: !1465, size: 2304, offset: 64)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1466, size: 2304, elements: !398)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1467, line: 12, size: 768, elements: !1468)
!1467 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1468 = !{!1469, !1483, !1484, !3568, !3569}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1466, file: !1467, line: 13, baseType: !1470, size: 384)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1471, line: 17, size: 384, elements: !1472)
!1471 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1472 = !{!1473, !1474, !1475, !1482}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1470, file: !1471, line: 18, baseType: !127, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1470, file: !1471, line: 19, baseType: !127, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1470, file: !1471, line: 20, baseType: !1476, size: 192, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1477, line: 41, baseType: !1478)
!1477 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1477, line: 37, size: 192, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1478, file: !1477, line: 38, baseType: !329, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1478, file: !1477, line: 39, baseType: !302, size: 128, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1470, file: !1471, line: 22, baseType: !941, size: 128, align: 64, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1466, file: !1467, line: 14, baseType: !795, size: 64, offset: 384)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1466, file: !1467, line: 15, baseType: !1485, size: 64, offset: 448)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1486, line: 16, size: 64, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1487 = !{!1488}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1485, file: !1486, line: 17, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1165, line: 746, size: 58368, elements: !1491)
!1491 = !{!1492, !1500, !1501, !1502, !1508, !1509, !1510, !1511, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1582, !1593, !1688, !1692, !1695, !1726, !1727, !1728, !1729, !1740, !1742, !1743, !1744, !1745, !1746, !1747, !1758, !1759, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1776, !1777, !1784, !1785, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2743, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2791, !2797, !2798, !2799, !2800, !2801, !2805, !2808, !2815, !2820, !2823, !2826, !2829, !2832, !2970, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3008, !3009, !3010, !3019, !3027, !3028, !3029, !3030, !3031, !3036, !3037, !3038, !3041, !3042, !3045, !3048, !3051, !3059, !3062, !3063, !3149, !3150, !3151, !3152, !3153, !3158, !3159, !3160, !3161, !3164, !3165, !3168, !3171, !3172, !3175, !3176, !3177, !3180, !3181, !3182, !3183, !3184, !3185, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3217, !3218, !3224, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3236, !3308, !3310, !3311, !3312, !3313, !3314, !3315, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3345, !3346, !3347}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1490, file: !1165, line: 752, baseType: !1493, size: 192)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1494, line: 56, size: 192, elements: !1495)
!1494 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1495 = !{!1496, !1497, !1498, !1499}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1493, file: !1494, line: 57, baseType: !266, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1493, file: !1494, line: 58, baseType: !266, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1493, file: !1494, line: 59, baseType: !541, size: 32, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1493, file: !1494, line: 61, baseType: !541, size: 32, offset: 160)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1490, file: !1165, line: 754, baseType: !7, size: 32, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1490, file: !1165, line: 767, baseType: !257, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1490, file: !1165, line: 768, baseType: !1503, size: 32, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1504, line: 113, baseType: !1505)
!1504 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1504, line: 111, size: 32, elements: !1506)
!1506 = !{!1507}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1505, file: !1504, line: 112, baseType: !349, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1490, file: !1165, line: 770, baseType: !7, size: 32, offset: 352)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1490, file: !1165, line: 771, baseType: !7, size: 32, offset: 384)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1490, file: !1165, line: 774, baseType: !127, size: 32, offset: 416)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1490, file: !1165, line: 775, baseType: !1512, size: 128, offset: 448)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1513, line: 58, size: 128, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1514 = !{!1515, !1521, !1526, !1527}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1512, file: !1513, line: 59, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1517, line: 60, size: 64, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1518 = !{!1519}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1516, file: !1517, line: 61, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !1513, line: 60, baseType: !1522, size: 32, offset: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1512, file: !1513, line: 60, size: 32, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1522, file: !1513, line: 61, baseType: !7, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1522, file: !1513, line: 62, baseType: !349, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1512, file: !1513, line: 65, baseType: !365, size: 16, offset: 96)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1512, file: !1513, line: 65, baseType: !365, size: 16, offset: 112)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1490, file: !1165, line: 776, baseType: !7, size: 32, offset: 576)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1490, file: !1165, line: 777, baseType: !266, size: 64, offset: 640)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1490, file: !1165, line: 778, baseType: !1489, size: 64, offset: 704)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1490, file: !1165, line: 787, baseType: !127, size: 32, offset: 768)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1490, file: !1165, line: 788, baseType: !127, size: 32, offset: 800)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1490, file: !1165, line: 790, baseType: !127, size: 32, offset: 832)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1490, file: !1165, line: 792, baseType: !127, size: 32, offset: 864)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1490, file: !1165, line: 793, baseType: !127, size: 32, offset: 896)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1490, file: !1165, line: 794, baseType: !127, size: 32, offset: 928)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1490, file: !1165, line: 795, baseType: !7, size: 32, offset: 960)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1490, file: !1165, line: 797, baseType: !1539, size: 2048, offset: 1024)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1165, line: 551, size: 2048, elements: !1540)
!1540 = !{!1541, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1561, !1564, !1565, !1566}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1539, file: !1165, line: 553, baseType: !1542, size: 128)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1165, line: 411, size: 128, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1542, file: !1165, line: 412, baseType: !266, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1542, file: !1165, line: 413, baseType: !541, size: 32, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1539, file: !1165, line: 554, baseType: !833, size: 192, align: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1539, file: !1165, line: 555, baseType: !246, size: 64, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1539, file: !1165, line: 556, baseType: !246, size: 64, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1539, file: !1165, line: 558, baseType: !302, size: 128, offset: 448)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1539, file: !1165, line: 559, baseType: !7, size: 32, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1539, file: !1165, line: 561, baseType: !246, size: 64, offset: 640)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1539, file: !1165, line: 562, baseType: !246, size: 64, offset: 704)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1539, file: !1165, line: 563, baseType: !246, size: 64, offset: 768)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1539, file: !1165, line: 564, baseType: !246, size: 64, offset: 832)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1539, file: !1165, line: 565, baseType: !254, size: 64, offset: 896)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1539, file: !1165, line: 566, baseType: !246, size: 64, offset: 960)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1539, file: !1165, line: 568, baseType: !246, size: 64, offset: 1024)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1539, file: !1165, line: 571, baseType: !127, size: 32, offset: 1088)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1539, file: !1165, line: 572, baseType: !1560, size: 64, offset: 1152)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1539, file: !1165, line: 574, baseType: !1562, size: 64, offset: 1216)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1165, line: 49, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1539, file: !1165, line: 576, baseType: !1562, size: 64, offset: 1280)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1539, file: !1165, line: 578, baseType: !266, size: 64, offset: 1344)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1539, file: !1165, line: 588, baseType: !1567, size: 512, align: 512, offset: 1536)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1165, line: 497, size: 512, align: 512, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1567, file: !1165, line: 498, baseType: !246, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1567, file: !1165, line: 499, baseType: !246, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1567, file: !1165, line: 500, baseType: !246, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1567, file: !1165, line: 501, baseType: !541, size: 32, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1567, file: !1165, line: 502, baseType: !541, size: 32, offset: 224)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1567, file: !1165, line: 503, baseType: !266, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1567, file: !1165, line: 504, baseType: !266, size: 64, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1567, file: !1165, line: 505, baseType: !266, size: 64, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1567, file: !1165, line: 506, baseType: !1578, size: 64, align: 64, offset: 448)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1165, line: 445, size: 64, align: 64, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1578, file: !1165, line: 446, baseType: !7, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1578, file: !1165, line: 447, baseType: !7, size: 32, offset: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1490, file: !1165, line: 798, baseType: !1583, size: 384, offset: 3072)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1165, line: 592, size: 384, elements: !1584)
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1590, !1591}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1583, file: !1165, line: 593, baseType: !302, size: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1583, file: !1165, line: 594, baseType: !266, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1583, file: !1165, line: 595, baseType: !266, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1583, file: !1165, line: 596, baseType: !7, size: 32, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1583, file: !1165, line: 597, baseType: !367, size: 16, offset: 288)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1583, file: !1165, line: 598, baseType: !367, size: 16, offset: 304)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1583, file: !1165, line: 600, baseType: !1592, size: 64, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1490, file: !1165, line: 799, baseType: !1594, size: 1792, offset: 3456)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1165, line: 610, size: 1792, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1685, !1686}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1594, file: !1165, line: 611, baseType: !833, size: 192, align: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1594, file: !1165, line: 618, baseType: !246, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1594, file: !1165, line: 619, baseType: !246, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1594, file: !1165, line: 620, baseType: !246, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1594, file: !1165, line: 621, baseType: !246, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1594, file: !1165, line: 622, baseType: !246, size: 64, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1594, file: !1165, line: 629, baseType: !254, size: 64, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1594, file: !1165, line: 630, baseType: !246, size: 64, offset: 576)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1594, file: !1165, line: 631, baseType: !7, size: 32, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1594, file: !1165, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1594, file: !1165, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1594, file: !1165, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1594, file: !1165, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1594, file: !1165, line: 662, baseType: !1610, size: 512, offset: 704)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1611)
!1611 = !{!1612, !1620, !1621, !1626, !1681, !1682, !1683, !1684}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1610, file: !25, line: 119, baseType: !1613, size: 256)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1614, line: 9, size: 256, elements: !1615)
!1614 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1613, file: !1614, line: 10, baseType: !833, size: 192, align: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1613, file: !1614, line: 11, baseType: !1618, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1619, line: 29, baseType: !254)
!1619 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1610, file: !25, line: 120, baseType: !1618, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1610, file: !25, line: 121, baseType: !1622, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!24, !1625}
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1610, file: !25, line: 122, baseType: !1627, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1629)
!1629 = !{!1630, !1655, !1656, !1659, !1664, !1665, !1676, !1680}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1628, file: !25, line: 160, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1633)
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1632, file: !25, line: 216, baseType: !686, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1632, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1632, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1632, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1632, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1632, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1632, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1632, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1632, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1632, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1632, file: !25, line: 227, baseType: !367, size: 16, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1632, file: !25, line: 228, baseType: !367, size: 16, offset: 208)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1632, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1632, file: !25, line: 235, baseType: !1618, size: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1632, file: !25, line: 236, baseType: !1625, size: 64, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1632, file: !25, line: 237, baseType: !1618, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1632, file: !25, line: 238, baseType: !1625, size: 64, offset: 448)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1632, file: !25, line: 239, baseType: !1652, size: 4096, align: 512, offset: 512)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1628, size: 4096, align: 512, elements: !1653)
!1653 = !{!1654}
!1654 = !DISubrange(count: 8)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1628, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1628, file: !25, line: 162, baseType: !1657, size: 32, offset: 96)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !272, line: 32, baseType: !1658)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !289, line: 96, baseType: !127)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1628, file: !25, line: 163, baseType: !1660, size: 32, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !514, line: 274, baseType: !1661)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !514, line: 274, size: 32, elements: !1662)
!1662 = !{!1663}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1661, file: !514, line: 274, baseType: !518, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1628, file: !25, line: 164, baseType: !1625, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1628, file: !25, line: 165, baseType: !1666, size: 128, offset: 256)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1614, line: 14, size: 128, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1666, file: !1614, line: 15, baseType: !1669, size: 128)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !834, line: 26, size: 128, elements: !1670)
!1670 = !{!1671, !1675}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1669, file: !834, line: 27, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !834, line: 12, size: 64, elements: !1673)
!1673 = !{!1674}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1672, file: !834, line: 13, baseType: !838, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1669, file: !834, line: 28, baseType: !838, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1628, file: !25, line: 166, baseType: !1677, size: 64, offset: 384)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!1618}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1628, file: !25, line: 167, baseType: !1618, size: 64, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1610, file: !25, line: 123, baseType: !357, size: 8, offset: 448)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1610, file: !25, line: 124, baseType: !357, size: 8, offset: 456)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1610, file: !25, line: 125, baseType: !357, size: 8, offset: 464)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1610, file: !25, line: 126, baseType: !357, size: 8, offset: 472)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1594, file: !1165, line: 671, baseType: !1610, size: 512, offset: 1216)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1594, file: !1165, line: 679, baseType: !1687, size: 64, offset: 1728)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1490, file: !1165, line: 800, baseType: !1689, size: 64, offset: 5248)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1165, line: 800, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1490, file: !1165, line: 809, baseType: !1693, size: 64, offset: 5312)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1165, line: 70, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1490, file: !1165, line: 825, baseType: !1696, size: 2048, align: 512, offset: 5632)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1165, line: 509, size: 2048, align: 512, elements: !1697)
!1697 = !{!1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1696, file: !1165, line: 511, baseType: !246, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1696, file: !1165, line: 512, baseType: !246, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1696, file: !1165, line: 513, baseType: !246, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1696, file: !1165, line: 514, baseType: !246, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1696, file: !1165, line: 515, baseType: !246, size: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1696, file: !1165, line: 516, baseType: !246, size: 64, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1696, file: !1165, line: 518, baseType: !246, size: 64, offset: 384)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1696, file: !1165, line: 519, baseType: !246, size: 64, offset: 448)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1696, file: !1165, line: 520, baseType: !254, size: 64, offset: 512)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1696, file: !1165, line: 522, baseType: !246, size: 64, offset: 576)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1696, file: !1165, line: 523, baseType: !246, size: 64, offset: 640)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1696, file: !1165, line: 524, baseType: !254, size: 64, offset: 704)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1696, file: !1165, line: 526, baseType: !254, size: 64, offset: 768)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1696, file: !1165, line: 527, baseType: !246, size: 64, offset: 832)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1696, file: !1165, line: 529, baseType: !246, size: 64, offset: 896)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1696, file: !1165, line: 530, baseType: !246, size: 64, offset: 960)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1696, file: !1165, line: 531, baseType: !246, size: 64, offset: 1024)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1696, file: !1165, line: 532, baseType: !246, size: 64, offset: 1088)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1696, file: !1165, line: 533, baseType: !246, size: 64, offset: 1152)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1696, file: !1165, line: 535, baseType: !246, size: 64, offset: 1216)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1696, file: !1165, line: 536, baseType: !246, size: 64, offset: 1280)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1696, file: !1165, line: 537, baseType: !246, size: 64, offset: 1344)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1696, file: !1165, line: 538, baseType: !246, size: 64, offset: 1408)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1696, file: !1165, line: 539, baseType: !246, size: 64, offset: 1472)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1696, file: !1165, line: 540, baseType: !246, size: 64, offset: 1536)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1696, file: !1165, line: 541, baseType: !246, size: 64, offset: 1600)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1696, file: !1165, line: 542, baseType: !246, size: 64, offset: 1664)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1696, file: !1165, line: 543, baseType: !246, size: 64, offset: 1728)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1490, file: !1165, line: 833, baseType: !7, size: 32, offset: 7680)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1490, file: !1165, line: 836, baseType: !7, size: 32, offset: 7712)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1490, file: !1165, line: 837, baseType: !127, size: 32, offset: 7744)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1490, file: !1165, line: 838, baseType: !1730, size: 64, offset: 7808)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1732)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1733, line: 19, baseType: !1734)
!1733 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1733, line: 19, size: 64, elements: !1735)
!1735 = !{!1736}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1734, file: !1733, line: 19, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !1738)
!1738 = !{!1739}
!1739 = !DISubrange(count: 1)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1490, file: !1165, line: 839, baseType: !1741, size: 64, offset: 7872)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1490, file: !1165, line: 840, baseType: !1732, size: 64, offset: 7936)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1490, file: !1165, line: 841, baseType: !257, size: 64, offset: 8000)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1490, file: !1165, line: 843, baseType: !367, size: 16, offset: 8064)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1490, file: !1165, line: 845, baseType: !367, size: 16, offset: 8080)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1490, file: !1165, line: 848, baseType: !127, size: 32, offset: 8096)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1490, file: !1165, line: 849, baseType: !1748, size: 32, offset: 8128)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1165, line: 718, size: 32, elements: !1749)
!1749 = !{!1750, !1757}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1748, file: !1165, line: 724, baseType: !1751, size: 32)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1748, file: !1165, line: 719, size: 32, elements: !1752)
!1752 = !{!1753, !1754, !1755, !1756}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1751, file: !1165, line: 720, baseType: !357, size: 8)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1751, file: !1165, line: 721, baseType: !357, size: 8, offset: 8)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1751, file: !1165, line: 722, baseType: !357, size: 8, offset: 16)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1751, file: !1165, line: 723, baseType: !357, size: 8, offset: 24)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1748, file: !1165, line: 725, baseType: !541, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1490, file: !1165, line: 850, baseType: !302, size: 128, offset: 8192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1490, file: !1165, line: 851, baseType: !1760, size: 64, offset: 8320)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1165, line: 60, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1490, file: !1165, line: 855, baseType: !266, size: 64, offset: 8384)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1490, file: !1165, line: 856, baseType: !357, size: 8, offset: 8448)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1490, file: !1165, line: 857, baseType: !357, size: 8, offset: 8456)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1490, file: !1165, line: 858, baseType: !127, size: 32, offset: 8480)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1490, file: !1165, line: 859, baseType: !302, size: 128, offset: 8512)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1490, file: !1165, line: 860, baseType: !127, size: 32, offset: 8640)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1490, file: !1165, line: 861, baseType: !302, size: 128, offset: 8704)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1490, file: !1165, line: 873, baseType: !1770, size: 256, offset: 8832)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1165, line: 376, size: 256, elements: !1771)
!1771 = !{!1772, !1773, !1774, !1775}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1770, file: !1165, line: 381, baseType: !266, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1770, file: !1165, line: 384, baseType: !250, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1770, file: !1165, line: 389, baseType: !250, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1770, file: !1165, line: 392, baseType: !250, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1490, file: !1165, line: 875, baseType: !302, size: 128, offset: 9088)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1490, file: !1165, line: 877, baseType: !1778, size: 320, offset: 9216)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1779, line: 86, size: 320, elements: !1780)
!1779 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1780 = !{!1781, !1782, !1783}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1778, file: !1779, line: 87, baseType: !127, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1778, file: !1779, line: 88, baseType: !302, size: 128, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1778, file: !1779, line: 89, baseType: !302, size: 128, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1490, file: !1165, line: 878, baseType: !833, size: 192, align: 64, offset: 9536)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1490, file: !1165, line: 881, baseType: !1786, size: 64, offset: 9728)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1788)
!1788 = !{!1789, !2662}
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !38, line: 734, baseType: !1790, size: 10240)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1787, file: !38, line: 734, size: 10240, elements: !1791)
!1791 = !{!1792, !1796, !1809, !2539, !2540, !2541, !2542, !2543, !2544, !2551, !2552, !2553, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2592, !2594, !2597, !2642, !2643, !2644, !2647, !2648, !2649, !2652, !2653, !2654, !2660, !2661}
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !38, line: 739, baseType: !1793, size: 512, align: 512)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !38, line: 739, size: 512, align: 512, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1793, file: !38, line: 747, baseType: !349, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1790, file: !38, line: 750, baseType: !1797, size: 128, offset: 512)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1798, line: 218, size: 128, elements: !1799)
!1798 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1799 = !{!1800, !1807, !1808}
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1797, file: !1798, line: 219, baseType: !1801, size: 32)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1797, file: !1798, line: 219, size: 32, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1801, file: !1798, line: 220, baseType: !329, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1801, file: !1798, line: 221, baseType: !1805)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1798, line: 197, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1798, line: 197, elements: !1010)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1797, file: !1798, line: 223, baseType: !7, size: 32, offset: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1797, file: !1798, line: 224, baseType: !257, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1790, file: !38, line: 752, baseType: !1810, size: 64, offset: 640)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!266, !1813, !266, !266, !266, !266}
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1815)
!1815 = !{!1816, !1822, !1823, !1825, !1826, !1827, !1828, !1829, !1879, !2069, !2078, !2079, !2080, !2529, !2530, !2531, !2532, !2534, !2535, !2538}
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1814, file: !14, line: 995, baseType: !1817, size: 128)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1814, file: !14, line: 995, size: 128, elements: !1818)
!1818 = !{!1819, !1820, !1821}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1817, file: !14, line: 996, baseType: !1516, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1817, file: !14, line: 997, baseType: !941, size: 128, align: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1817, file: !14, line: 998, baseType: !7, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1814, file: !14, line: 1005, baseType: !329, size: 32, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1814, file: !14, line: 1006, baseType: !1824, size: 32, offset: 160)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !272, line: 156, baseType: !7)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1814, file: !14, line: 1007, baseType: !732, size: 64, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1814, file: !14, line: 1008, baseType: !728, size: 256, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1814, file: !14, line: 1009, baseType: !630, size: 64, offset: 512)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1814, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1814, file: !14, line: 1011, baseType: !1830, size: 256, offset: 640)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1831)
!1831 = !{!1832, !1853, !1875, !1876, !1877, !1878}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1830, file: !14, line: 949, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1834, line: 34, baseType: !1835)
!1834 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1834, line: 25, size: 64, elements: !1836)
!1836 = !{!1837}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1835, file: !1834, line: 26, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1839, line: 27, baseType: !1840)
!1839 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1839, line: 13, size: 64, elements: !1841)
!1841 = !{!1842, !1852}
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1840, file: !1839, line: 14, baseType: !1843, size: 32)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1840, file: !1839, line: 14, size: 32, elements: !1844)
!1844 = !{!1845, !1846}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1843, file: !1839, line: 15, baseType: !349, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, scope: !1843, file: !1839, line: 16, baseType: !1847, size: 32)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1843, file: !1839, line: 16, size: 32, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1847, file: !1839, line: 18, baseType: !357, size: 8)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1847, file: !1839, line: 19, baseType: !1851, size: 24, offset: 8)
!1851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 24, elements: !398)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1840, file: !1839, line: 26, baseType: !341, size: 32, offset: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1830, file: !14, line: 950, baseType: !1854, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1856)
!1856 = !{!1857, !1858, !1859, !1860, !1862, !1863, !1864, !1865}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1855, file: !30, line: 61, baseType: !1503, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1855, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1855, file: !30, line: 63, baseType: !329, size: 32, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1855, file: !30, line: 65, baseType: !1861, size: 256, offset: 128)
!1861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1091, size: 256, elements: !951)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1855, file: !30, line: 66, baseType: !1091, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1855, file: !30, line: 68, baseType: !1476, size: 192, offset: 448)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1855, file: !30, line: 69, baseType: !941, size: 128, align: 64, offset: 640)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1855, file: !30, line: 70, baseType: !1866, offset: 768)
!1866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1867, elements: !1873)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1868)
!1868 = !{!1869, !1870}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1867, file: !30, line: 55, baseType: !127, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1867, file: !30, line: 56, baseType: !1871, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1873 = !{!1874}
!1874 = !DISubrange(count: -1)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1830, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1830, file: !14, line: 952, baseType: !478, size: 32, offset: 160)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1830, file: !14, line: 952, baseType: !478, size: 32, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1830, file: !14, line: 953, baseType: !127, size: 32, offset: 224)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1814, file: !14, line: 1012, baseType: !1880, size: 64, offset: 896)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1882)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1883, line: 110, size: 1472, elements: !1884)
!1883 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1901, !1902, !1903, !1904, !1905, !1906, !2014, !2015, !2016, !2017, !2018, !2049, !2052, !2056, !2064}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1882, file: !1883, line: 111, baseType: !732, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1882, file: !1883, line: 112, baseType: !478, size: 32, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1882, file: !1883, line: 113, baseType: !487, size: 32, offset: 96)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1882, file: !1883, line: 114, baseType: !478, size: 32, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1882, file: !1883, line: 115, baseType: !487, size: 32, offset: 160)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1882, file: !1883, line: 116, baseType: !478, size: 32, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1882, file: !1883, line: 117, baseType: !487, size: 32, offset: 224)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1882, file: !1883, line: 118, baseType: !478, size: 32, offset: 256)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1882, file: !1883, line: 119, baseType: !487, size: 32, offset: 288)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1882, file: !1883, line: 120, baseType: !7, size: 32, offset: 320)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1882, file: !1883, line: 121, baseType: !1896, size: 64, offset: 384)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1897, line: 24, baseType: !1898)
!1897 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1897, line: 24, size: 64, elements: !1899)
!1899 = !{!1900}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1898, file: !1897, line: 24, baseType: !246, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1882, file: !1883, line: 122, baseType: !1896, size: 64, offset: 448)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1882, file: !1883, line: 123, baseType: !1896, size: 64, offset: 512)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1882, file: !1883, line: 124, baseType: !1896, size: 64, offset: 576)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1882, file: !1883, line: 125, baseType: !1896, size: 64, offset: 640)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1882, file: !1883, line: 127, baseType: !359, size: 8, offset: 704)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1882, file: !1883, line: 129, baseType: !1907, size: 64, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1909, line: 195, size: 1728, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1910 = !{!1911, !1912, !1915, !1920, !1921, !1924, !1925, !1930, !1931, !1932, !1933, !1936, !1937, !1938, !1939, !1940, !1978, !1999}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1908, file: !1909, line: 196, baseType: !1503, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1908, file: !1909, line: 197, baseType: !1913, size: 32, offset: 32)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1909, line: 28, baseType: !1914)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !272, line: 104, baseType: !724)
!1915 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1909, line: 198, baseType: !1916, size: 192, offset: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !1909, line: 198, size: 192, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1916, file: !1909, line: 199, baseType: !302, size: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1916, file: !1909, line: 200, baseType: !833, size: 192, align: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1908, file: !1909, line: 205, baseType: !1383, size: 320, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1908, file: !1909, line: 206, baseType: !1922, size: 64, offset: 576)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1909, line: 206, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1908, file: !1909, line: 207, baseType: !257, size: 64, offset: 640)
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1909, line: 208, baseType: !1926, size: 64, offset: 704)
!1926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !1909, line: 208, size: 64, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1926, file: !1909, line: 209, baseType: !1223, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1926, file: !1909, line: 210, baseType: !1223, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1908, file: !1909, line: 212, baseType: !1223, size: 64, offset: 768)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1908, file: !1909, line: 213, baseType: !478, size: 32, offset: 832)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1908, file: !1909, line: 214, baseType: !487, size: 32, offset: 864)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1908, file: !1909, line: 215, baseType: !1934, size: 32, offset: 896)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1909, line: 31, baseType: !1935)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !272, line: 110, baseType: !541)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1908, file: !1909, line: 216, baseType: !367, size: 16, offset: 928)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1908, file: !1909, line: 217, baseType: !367, size: 16, offset: 944)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1908, file: !1909, line: 221, baseType: !859, size: 16, offset: 960)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1908, file: !1909, line: 228, baseType: !266, size: 64, offset: 1024)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1909, line: 245, baseType: !1941, size: 320, offset: 1088)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !1909, line: 245, size: 320, elements: !1942)
!1942 = !{!1943, !1970}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1941, file: !1909, line: 246, baseType: !1944, size: 320)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1909, line: 114, size: 320, elements: !1945)
!1945 = !{!1946, !1947, !1959, !1962, !1969}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1944, file: !1909, line: 116, baseType: !266, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, scope: !1944, file: !1909, line: 117, baseType: !1948, size: 64, offset: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1944, file: !1909, line: 117, size: 64, elements: !1949)
!1949 = !{!1950, !1958}
!1950 = !DIDerivedType(tag: DW_TAG_member, scope: !1948, file: !1909, line: 118, baseType: !1951, size: 64)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1948, file: !1909, line: 118, size: 64, elements: !1952)
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1951, file: !1909, line: 120, baseType: !365, size: 16)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1951, file: !1909, line: 121, baseType: !1955, size: 48, offset: 16)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 48, elements: !1956)
!1956 = !{!1957}
!1957 = !DISubrange(count: 6)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1948, file: !1909, line: 127, baseType: !266, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1944, file: !1909, line: 129, baseType: !1960, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1909, line: 102, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1944, file: !1909, line: 130, baseType: !1963, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1909, line: 108, size: 192, elements: !1965)
!1965 = !{!1966, !1967, !1968}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1964, file: !1909, line: 109, baseType: !941, size: 128, align: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1964, file: !1909, line: 110, baseType: !1503, size: 32, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1964, file: !1909, line: 111, baseType: !271, size: 8, offset: 160)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1944, file: !1909, line: 131, baseType: !317, size: 64, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !1909, line: 247, baseType: !1971, size: 320)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1941, file: !1909, line: 247, size: 320, elements: !1972)
!1972 = !{!1973, !1974, !1975, !1976, !1977}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1971, file: !1909, line: 248, baseType: !266, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1971, file: !1909, line: 249, baseType: !266, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1971, file: !1909, line: 250, baseType: !1960, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1971, file: !1909, line: 251, baseType: !1963, size: 64, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1971, file: !1909, line: 252, baseType: !397, size: 64, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1909, line: 260, baseType: !1979, size: 256, offset: 1408)
!1979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !1909, line: 260, size: 256, elements: !1980)
!1980 = !{!1981, !1987}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1979, file: !1909, line: 261, baseType: !1982, size: 256)
!1982 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1909, line: 134, size: 256, elements: !1983)
!1983 = !{!1984, !1985}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1982, file: !1909, line: 135, baseType: !257, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1982, file: !1909, line: 136, baseType: !1986, size: 256)
!1986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 256, elements: !951)
!1987 = !DIDerivedType(tag: DW_TAG_member, scope: !1979, file: !1909, line: 262, baseType: !1988, size: 256)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1909, line: 262, size: 256, elements: !1989)
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1988, file: !1909, line: 264, baseType: !302, size: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1988, file: !1909, line: 265, baseType: !1992, size: 128, offset: 128)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1993, line: 22, size: 128, elements: !1994)
!1993 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1994 = !{!1995, !1998}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1992, file: !1993, line: 23, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1993, line: 23, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1992, file: !1993, line: 24, baseType: !266, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1908, file: !1909, line: 280, baseType: !2000, size: 64, offset: 1664)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1909, line: 176, size: 192, elements: !2002)
!2002 = !{!2003, !2012, !2013}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2001, file: !1909, line: 177, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1909, line: 171, baseType: !2005)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!127, !1907, !2008, !2010, !1907}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1961)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1982)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2001, file: !1909, line: 178, baseType: !1907, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2001, file: !1909, line: 179, baseType: !1960, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1882, file: !1883, line: 130, baseType: !1907, size: 64, offset: 832)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1882, file: !1883, line: 131, baseType: !1907, size: 64, offset: 896)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1882, file: !1883, line: 132, baseType: !1907, size: 64, offset: 960)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1882, file: !1883, line: 135, baseType: !257, size: 64, offset: 1024)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1882, file: !1883, line: 137, baseType: !2019, size: 64, offset: 1088)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2021, line: 14, size: 1088, elements: !2022)
!2021 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2022 = !{!2023, !2024, !2033, !2034, !2035, !2036, !2037, !2038}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2020, file: !2021, line: 15, baseType: !1503, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2020, file: !2021, line: 17, baseType: !2025, size: 320, offset: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2026, line: 22, size: 320, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2027 = !{!2028, !2029, !2030, !2031}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2025, file: !2026, line: 23, baseType: !686, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2025, file: !2026, line: 24, baseType: !254, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2025, file: !2026, line: 26, baseType: !302, size: 128, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2025, file: !2026, line: 28, baseType: !2032, size: 64, offset: 256)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2020, file: !2021, line: 19, baseType: !266, size: 64, offset: 384)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2020, file: !2021, line: 20, baseType: !732, size: 64, offset: 448)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2020, file: !2021, line: 23, baseType: !967, size: 128, offset: 512)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2020, file: !2021, line: 24, baseType: !478, size: 32, offset: 640)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2020, file: !2021, line: 29, baseType: !732, size: 64, offset: 704)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2020, file: !2021, line: 36, baseType: !2039, size: 320, offset: 768)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2040, line: 15, size: 320, elements: !2041)
!2040 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2041 = !{!2042, !2043, !2044, !2045, !2046, !2047, !2048}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2039, file: !2040, line: 16, baseType: !686, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2039, file: !2040, line: 18, baseType: !127, size: 32, offset: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2039, file: !2040, line: 19, baseType: !127, size: 32, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2039, file: !2040, line: 20, baseType: !127, size: 32, offset: 96)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2039, file: !2040, line: 21, baseType: !127, size: 32, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2039, file: !2040, line: 22, baseType: !266, size: 64, offset: 192)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2039, file: !2040, line: 23, baseType: !266, size: 64, offset: 256)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1882, file: !1883, line: 138, baseType: !2050, size: 64, offset: 1152)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1882, file: !1883, line: 139, baseType: !2053, size: 64, offset: 1216)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2055, line: 16, flags: DIFlagFwdDecl)
!2055 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1882, file: !1883, line: 140, baseType: !2057, size: 64, offset: 1280)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1883, line: 25, size: 64, elements: !2059)
!2059 = !{!2060, !2061, !2062}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2058, file: !1883, line: 26, baseType: !349, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2058, file: !1883, line: 27, baseType: !127, size: 32, offset: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2058, file: !1883, line: 28, baseType: !2063, offset: 64)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, elements: !1873)
!2064 = !DIDerivedType(tag: DW_TAG_member, scope: !1882, file: !1883, line: 142, baseType: !2065, size: 128, offset: 1344)
!2065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1882, file: !1883, line: 142, size: 128, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2065, file: !1883, line: 143, baseType: !127, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2065, file: !1883, line: 144, baseType: !941, size: 128, align: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1814, file: !14, line: 1013, baseType: !2070, size: 256, offset: 960)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2071)
!2071 = !{!2072, !2073, !2074, !2075, !2076, !2077}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2070, file: !14, line: 971, baseType: !266, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2070, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2070, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2070, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2070, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2070, file: !14, line: 976, baseType: !630, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1814, file: !14, line: 1014, baseType: !1295, size: 128, offset: 1216)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1814, file: !14, line: 1015, baseType: !472, size: 64, offset: 1344)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1814, file: !14, line: 1016, baseType: !2081, size: 64, offset: 1408)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2084)
!2084 = !{!2085, !2086, !2090, !2095, !2099, !2127, !2128, !2134, !2147, !2155, !2159, !2160, !2451, !2452, !2456, !2461, !2462, !2466, !2470, !2476, !2477, !2481, !2482, !2488, !2492, !2496, !2502, !2506, !2510, !2514, !2518, !2519, !2525}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2083, file: !14, line: 1915, baseType: !657, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2083, file: !14, line: 1916, baseType: !2087, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!630, !1813, !630, !127}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2083, file: !14, line: 1917, baseType: !2091, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!429, !1813, !397, !287, !2094}
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2083, file: !14, line: 1918, baseType: !2096, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!429, !1813, !317, !287, !2094}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2083, file: !14, line: 1919, baseType: !2100, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!429, !2103, !2125}
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2105)
!2105 = !{!2106, !2107, !2108, !2112, !2113, !2114, !2115}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2104, file: !14, line: 374, baseType: !1813, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2104, file: !14, line: 375, baseType: !630, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2104, file: !14, line: 376, baseType: !2109, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !2103, !432}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2104, file: !14, line: 377, baseType: !257, size: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2104, file: !14, line: 378, baseType: !127, size: 32, offset: 256)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2104, file: !14, line: 379, baseType: !365, size: 16, offset: 288)
!2115 = !DIDerivedType(tag: DW_TAG_member, scope: !2104, file: !14, line: 380, baseType: !2116, size: 64, offset: 320)
!2116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2104, file: !14, line: 380, size: 64, elements: !2117)
!2117 = !{!2118, !2121}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2116, file: !14, line: 386, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2116, file: !14, line: 395, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!429, !257}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2083, file: !14, line: 1920, baseType: !2100, size: 64, offset: 320)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2083, file: !14, line: 1921, baseType: !2129, size: 64, offset: 384)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!127, !2103, !2132, !7}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2083, file: !14, line: 1923, baseType: !2135, size: 64, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!127, !1813, !2138}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2140)
!2140 = !{!2141, !2146}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2139, file: !14, line: 1859, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2143)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!271, !2138, !317, !127, !630, !246, !7}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2139, file: !14, line: 1860, baseType: !630, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2083, file: !14, line: 1924, baseType: !2148, size: 64, offset: 512)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!2151, !1813, !2153}
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2152, line: 59, baseType: !7)
!2152 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2083, file: !14, line: 1925, baseType: !2156, size: 64, offset: 576)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!432, !1813, !7, !266}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2083, file: !14, line: 1926, baseType: !2156, size: 64, offset: 640)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2083, file: !14, line: 1927, baseType: !2161, size: 64, offset: 704)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!127, !1813, !2164}
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2166)
!2166 = !{!2167, !2176, !2177, !2185, !2192, !2193, !2198, !2199, !2204, !2205, !2208, !2444, !2445, !2446, !2447, !2448, !2449}
!2167 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !38, line: 628, baseType: !2168, size: 128)
!2168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2165, file: !38, line: 628, size: 128, elements: !2169)
!2169 = !{!2170, !2175}
!2170 = !DIDerivedType(tag: DW_TAG_member, scope: !2168, file: !38, line: 629, baseType: !2171, size: 128)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2168, file: !38, line: 629, size: 128, elements: !2172)
!2172 = !{!2173, !2174}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2171, file: !38, line: 631, baseType: !266, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2171, file: !38, line: 632, baseType: !266, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2168, file: !38, line: 635, baseType: !941, size: 128, align: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2165, file: !38, line: 639, baseType: !1786, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2165, file: !38, line: 640, baseType: !2178, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2179, line: 297, baseType: !2180)
!2179 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2179, line: 297, size: 64, elements: !2181)
!2181 = !{!2182}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2180, file: !2179, line: 297, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2184, line: 19, baseType: !266)
!2184 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !38, line: 646, baseType: !2186, size: 64, offset: 256)
!2186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2165, file: !38, line: 646, size: 64, elements: !2187)
!2187 = !{!2188, !2191}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2186, file: !38, line: 647, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2190)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !266)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2186, file: !38, line: 648, baseType: !2190, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2165, file: !38, line: 666, baseType: !127, size: 32, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2165, file: !38, line: 667, baseType: !2194, size: 64, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2196)
!2196 = !{!2197}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2195, file: !38, line: 580, baseType: !1383, size: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2165, file: !38, line: 670, baseType: !271, size: 8, offset: 448)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2165, file: !38, line: 681, baseType: !2200, size: 256, offset: 512)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2165, file: !38, line: 678, size: 256, elements: !2201)
!2201 = !{!2202, !2203}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2200, file: !38, line: 679, baseType: !833, size: 192, align: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2200, file: !38, line: 680, baseType: !266, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2165, file: !38, line: 689, baseType: !302, size: 128, offset: 768)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2165, file: !38, line: 691, baseType: !2206, size: 64, offset: 896)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2165, file: !38, line: 694, baseType: !2209, size: 64, offset: 960)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2211)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2212, line: 563, size: 1024, elements: !2213)
!2212 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2213 = !{!2214, !2218, !2219, !2223, !2227, !2231, !2408, !2412, !2416, !2420, !2421, !2422, !2426, !2430, !2436, !2440}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2211, file: !2212, line: 564, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{null, !2164}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2211, file: !2212, line: 569, baseType: !2215, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2211, file: !2212, line: 571, baseType: !2220, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!127, !2164, !266}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2211, file: !2212, line: 572, baseType: !2224, size: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!127, !2164}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2211, file: !2212, line: 578, baseType: !2228, size: 64, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!127, !2164, !266, !266, !266}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2211, file: !2212, line: 580, baseType: !2232, size: 64, offset: 320)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!2235, !2236}
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2212, line: 512, size: 896, elements: !2238)
!2238 = !{!2239, !2247, !2248, !2255, !2262, !2272, !2401, !2402, !2404, !2406}
!2239 = !DIDerivedType(tag: DW_TAG_member, scope: !2237, file: !2212, line: 513, baseType: !2240, size: 320)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2237, file: !2212, line: 513, size: 320, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245, !2246}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2240, file: !2212, line: 514, baseType: !2164, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2240, file: !2212, line: 515, baseType: !1235, size: 32, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2240, file: !2212, line: 516, baseType: !266, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2240, file: !2212, line: 517, baseType: !266, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2240, file: !2212, line: 518, baseType: !266, size: 64, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2237, file: !2212, line: 520, baseType: !37, size: 32, offset: 320)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2237, file: !2212, line: 522, baseType: !2249, size: 64, offset: 384)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2184, line: 22, baseType: !2251)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2184, line: 22, size: 64, elements: !2252)
!2252 = !{!2253}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2251, file: !2184, line: 22, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2184, line: 15, baseType: !266)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2237, file: !2212, line: 524, baseType: !2256, size: 64, offset: 448)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2179, line: 372, baseType: !2258)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2179, line: 372, size: 64, elements: !2259)
!2259 = !{!2260}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2258, file: !2179, line: 372, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2184, line: 16, baseType: !266)
!2262 = !DIDerivedType(tag: DW_TAG_member, scope: !2237, file: !2212, line: 527, baseType: !2263, size: 64, offset: 512)
!2263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2237, file: !2212, line: 527, size: 64, elements: !2264)
!2264 = !{!2265, !2271}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2263, file: !2212, line: 528, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2184, line: 21, baseType: !2267)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2184, line: 21, size: 64, elements: !2268)
!2268 = !{!2269}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2267, file: !2184, line: 21, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2184, line: 14, baseType: !266)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2263, file: !2212, line: 529, baseType: !2250, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2237, file: !2212, line: 534, baseType: !2273, size: 64, offset: 576)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2275)
!2275 = !{!2276, !2277, !2395, !2400}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2274, file: !38, line: 75, baseType: !266, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2274, file: !38, line: 83, baseType: !2278, size: 320, offset: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2274, file: !38, line: 83, size: 320, elements: !2279)
!2279 = !{!2280, !2301, !2315, !2319, !2394}
!2280 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !38, line: 84, baseType: !2281, size: 320)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !38, line: 84, size: 320, elements: !2282)
!2282 = !{!2283, !2294, !2295, !2300}
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !38, line: 90, baseType: !2284, size: 128)
!2284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !38, line: 90, size: 128, elements: !2285)
!2285 = !{!2286, !2287, !2292, !2293}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2284, file: !38, line: 91, baseType: !302, size: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !38, line: 94, baseType: !2288, size: 128)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2284, file: !38, line: 94, size: 128, elements: !2289)
!2289 = !{!2290, !2291}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2288, file: !38, line: 96, baseType: !257, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2288, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2284, file: !38, line: 102, baseType: !302, size: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2284, file: !38, line: 103, baseType: !302, size: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2281, file: !38, line: 106, baseType: !468, size: 64, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !38, line: 107, baseType: !2296, size: 64, offset: 192)
!2296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !38, line: 107, size: 64, elements: !2297)
!2297 = !{!2298, !2299}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2296, file: !38, line: 108, baseType: !266, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2296, file: !38, line: 109, baseType: !266, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2281, file: !38, line: 117, baseType: !266, size: 64, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !38, line: 119, baseType: !2302, size: 320)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !38, line: 119, size: 320, elements: !2303)
!2303 = !{!2304, !2305, !2308, !2309, !2310}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2302, file: !38, line: 124, baseType: !266, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2302, file: !38, line: 125, baseType: !2306, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2302, file: !38, line: 126, baseType: !266, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2302, file: !38, line: 127, baseType: !266, size: 64, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, scope: !2302, file: !38, line: 128, baseType: !2311, size: 64, offset: 256)
!2311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2302, file: !38, line: 128, size: 64, elements: !2312)
!2312 = !{!2313, !2314}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2311, file: !38, line: 133, baseType: !266, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2311, file: !38, line: 138, baseType: !732, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !38, line: 141, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !38, line: 141, size: 64, elements: !2317)
!2317 = !{!2318}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2316, file: !38, line: 142, baseType: !266, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !38, line: 144, baseType: !2320, size: 128)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !38, line: 144, size: 128, elements: !2321)
!2321 = !{!2322, !2393}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2320, file: !38, line: 146, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2325)
!2325 = !{!2326, !2336, !2357, !2358, !2359, !2360, !2361, !2375, !2376, !2377}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2324, file: !54, line: 127, baseType: !2327, size: 384)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2328)
!2328 = !{!2329, !2330, !2332, !2333, !2334, !2335}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2327, file: !54, line: 22, baseType: !266, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2327, file: !54, line: 23, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2327, file: !54, line: 24, baseType: !2331, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2327, file: !54, line: 25, baseType: !266, size: 64, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2327, file: !54, line: 26, baseType: !266, size: 64, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2327, file: !54, line: 27, baseType: !266, size: 64, offset: 320)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2324, file: !54, line: 128, baseType: !2337, size: 128, offset: 384)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2338, line: 105, size: 128, elements: !2339)
!2338 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2339 = !{!2340, !2341}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2337, file: !2338, line: 110, baseType: !266, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2337, file: !2338, line: 118, baseType: !2342, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2338, line: 95, size: 448, elements: !2344)
!2344 = !{!2345, !2346, !2352, !2353, !2354, !2355, !2356}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2343, file: !2338, line: 96, baseType: !732, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2343, file: !2338, line: 97, baseType: !2347, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2338, line: 60, baseType: !2349)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{null, !2351}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2343, file: !2338, line: 98, baseType: !2347, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2343, file: !2338, line: 99, baseType: !271, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2343, file: !2338, line: 100, baseType: !271, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2343, file: !2338, line: 101, baseType: !941, size: 128, align: 64, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2343, file: !2338, line: 102, baseType: !2351, size: 64, offset: 384)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2324, file: !54, line: 129, baseType: !677, size: 256, offset: 512)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2324, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2324, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2324, file: !54, line: 132, baseType: !266, size: 64, offset: 832)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2324, file: !54, line: 133, baseType: !2362, size: 64, offset: 896)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2364)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2365)
!2365 = !{!2366, !2370, !2371}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2364, file: !54, line: 83, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !2273}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2364, file: !54, line: 89, baseType: !2232, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2364, file: !54, line: 100, baseType: !2372, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!127, !2323, !266, !266, !127}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2324, file: !54, line: 134, baseType: !257, size: 64, offset: 960)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2324, file: !54, line: 135, baseType: !127, size: 32, offset: 1024)
!2377 = !DIDerivedType(tag: DW_TAG_member, scope: !2324, file: !54, line: 136, baseType: !2378, size: 128, offset: 1088)
!2378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2324, file: !54, line: 136, size: 128, elements: !2379)
!2379 = !{!2380, !2386}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2378, file: !54, line: 137, baseType: !2381, size: 128)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2382, line: 6, size: 128, elements: !2383)
!2382 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2383 = !{!2384, !2385}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2381, file: !2382, line: 7, baseType: !246, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2381, file: !2382, line: 8, baseType: !246, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !2378, file: !54, line: 138, baseType: !2387)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2378, file: !54, line: 138, elements: !2388)
!2388 = !{!2389, !2391}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2387, file: !54, line: 138, baseType: !2390)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2387, file: !54, line: 138, elements: !1010)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2387, file: !54, line: 138, baseType: !2392)
!2392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2381, elements: !1873)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2320, file: !38, line: 147, baseType: !257, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2278, file: !38, line: 161, baseType: !941, size: 128, align: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, scope: !2274, file: !38, line: 164, baseType: !2396, size: 32, offset: 384)
!2396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2274, file: !38, line: 164, size: 32, elements: !2397)
!2397 = !{!2398, !2399}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2396, file: !38, line: 169, baseType: !349, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2396, file: !38, line: 177, baseType: !7, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2274, file: !38, line: 181, baseType: !349, size: 32, offset: 416)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2237, file: !2212, line: 535, baseType: !2273, size: 64, offset: 640)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2237, file: !2212, line: 541, baseType: !2403, size: 64, offset: 704)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2237, file: !2212, line: 545, baseType: !2405, size: 64, offset: 768)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2237, file: !2212, line: 549, baseType: !2407, size: 64, offset: 832)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2179, line: 520, baseType: !2273)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2211, file: !2212, line: 581, baseType: !2409, size: 64, offset: 384)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!2235, !2236, !7}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2211, file: !2212, line: 582, baseType: !2413, size: 64, offset: 448)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!2235, !2236, !266, !266}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2211, file: !2212, line: 584, baseType: !2417, size: 64, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!266, !2164}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2211, file: !2212, line: 588, baseType: !2232, size: 64, offset: 576)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2211, file: !2212, line: 591, baseType: !2232, size: 64, offset: 640)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2211, file: !2212, line: 597, baseType: !2423, size: 64, offset: 704)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!127, !2164, !266, !257, !127, !127}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2211, file: !2212, line: 603, baseType: !2427, size: 64, offset: 768)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!317, !2164}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2211, file: !2212, line: 613, baseType: !2431, size: 64, offset: 832)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!127, !2164, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2211, file: !2212, line: 625, baseType: !2437, size: 64, offset: 896)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!2434, !2164, !266}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2211, file: !2212, line: 633, baseType: !2441, size: 64, offset: 960)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!2273, !2164, !266}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2165, file: !38, line: 697, baseType: !266, size: 64, offset: 1024)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2165, file: !38, line: 699, baseType: !1813, size: 64, offset: 1088)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2165, file: !38, line: 700, baseType: !257, size: 64, offset: 1152)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2165, file: !38, line: 711, baseType: !732, size: 64, offset: 1216)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2165, file: !38, line: 717, baseType: !2434, size: 64, offset: 1280)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2165, file: !38, line: 722, baseType: !2450, offset: 1344)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1010)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2083, file: !14, line: 1928, baseType: !266, size: 64, offset: 768)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2083, file: !14, line: 1929, baseType: !2453, size: 64, offset: 832)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!127, !472, !1813}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2083, file: !14, line: 1930, baseType: !2457, size: 64, offset: 896)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!127, !1813, !2460}
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !257)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2083, file: !14, line: 1931, baseType: !2453, size: 64, offset: 960)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2083, file: !14, line: 1932, baseType: !2463, size: 64, offset: 1024)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!127, !1813, !630, !630, !127}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2083, file: !14, line: 1933, baseType: !2467, size: 64, offset: 1088)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!127, !127, !1813, !127}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2083, file: !14, line: 1934, baseType: !2471, size: 64, offset: 1152)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!127, !1813, !127, !2474}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2083, file: !14, line: 1935, baseType: !1810, size: 64, offset: 1216)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2083, file: !14, line: 1936, baseType: !2478, size: 64, offset: 1280)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!127, !127}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2083, file: !14, line: 1937, baseType: !2471, size: 64, offset: 1344)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2083, file: !14, line: 1938, baseType: !2483, size: 64, offset: 1408)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!429, !2486, !1813, !2094, !287, !7}
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1165, line: 59, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2083, file: !14, line: 1939, baseType: !2489, size: 64, offset: 1472)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!429, !1813, !2094, !2486, !287, !7}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2083, file: !14, line: 1940, baseType: !2493, size: 64, offset: 1536)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{null, !1813}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2083, file: !14, line: 1941, baseType: !2497, size: 64, offset: 1600)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!127, !1813, !127, !2500, !2501}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2083, file: !14, line: 1942, baseType: !2503, size: 64, offset: 1664)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!432, !1813, !127, !630, !630}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2083, file: !14, line: 1944, baseType: !2507, size: 64, offset: 1728)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{null, !1163, !1813}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2083, file: !14, line: 1948, baseType: !2511, size: 64, offset: 1792)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!429, !1813, !630, !1813, !630, !287, !7}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2083, file: !14, line: 1950, baseType: !2515, size: 64, offset: 1856)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!630, !1813, !630, !1813, !630, !630, !7}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2083, file: !14, line: 1953, baseType: !2463, size: 64, offset: 1920)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2083, file: !14, line: 1954, baseType: !2520, size: 64, offset: 1984)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!127, !2523, !7}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2083, file: !14, line: 1955, baseType: !2526, size: 64, offset: 2048)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!127, !2523, !2132, !7}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1814, file: !14, line: 1018, baseType: !246, size: 64, offset: 1472)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1814, file: !14, line: 1020, baseType: !257, size: 64, offset: 1536)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1814, file: !14, line: 1023, baseType: !257, size: 64, offset: 1600)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1814, file: !14, line: 1027, baseType: !2533, size: 64, offset: 1664)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1814, file: !14, line: 1029, baseType: !468, size: 64, offset: 1728)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1814, file: !14, line: 1030, baseType: !2536, size: 32, offset: 1792)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2537, line: 8, baseType: !541)
!2537 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1814, file: !14, line: 1031, baseType: !2536, size: 32, offset: 1824)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1790, file: !38, line: 756, baseType: !266, size: 64, offset: 704)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1790, file: !38, line: 757, baseType: !266, size: 64, offset: 768)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1790, file: !38, line: 760, baseType: !266, size: 64, offset: 832)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1790, file: !38, line: 761, baseType: !266, size: 64, offset: 896)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1790, file: !38, line: 763, baseType: !266, size: 64, offset: 960)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1790, file: !38, line: 764, baseType: !2545, size: 64, offset: 1024)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2179, line: 299, baseType: !2547)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2179, line: 299, size: 64, elements: !2548)
!2548 = !{!2549}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2547, file: !2179, line: 299, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2184, line: 18, baseType: !266)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1790, file: !38, line: 773, baseType: !349, size: 32, offset: 1088)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1790, file: !38, line: 785, baseType: !349, size: 32, offset: 1120)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1790, file: !38, line: 795, baseType: !2554, size: 64, offset: 1152)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2556)
!2556 = !{!2557, !2558}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2555, file: !38, line: 727, baseType: !246, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2555, file: !38, line: 728, baseType: !127, size: 32, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1790, file: !38, line: 801, baseType: !266, size: 64, offset: 1216)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1790, file: !38, line: 804, baseType: !732, size: 64, offset: 1280)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1790, file: !38, line: 806, baseType: !127, size: 32, offset: 1344)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1790, file: !38, line: 808, baseType: !329, size: 32, offset: 1376)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1790, file: !38, line: 823, baseType: !1383, size: 320, offset: 1408)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1790, file: !38, line: 825, baseType: !302, size: 128, offset: 1728)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1790, file: !38, line: 845, baseType: !127, size: 32, offset: 1856)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1790, file: !38, line: 849, baseType: !266, size: 64, offset: 1920)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1790, file: !38, line: 850, baseType: !266, size: 64, offset: 1984)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1790, file: !38, line: 852, baseType: !266, size: 64, offset: 2048)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1790, file: !38, line: 853, baseType: !266, size: 64, offset: 2112)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1790, file: !38, line: 854, baseType: !734, size: 64, offset: 2176)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1790, file: !38, line: 855, baseType: !266, size: 64, offset: 2240)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1790, file: !38, line: 856, baseType: !266, size: 64, offset: 2304)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1790, file: !38, line: 857, baseType: !266, size: 64, offset: 2368)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1790, file: !38, line: 858, baseType: !266, size: 64, offset: 2432)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1790, file: !38, line: 865, baseType: !518, size: 32, offset: 2496)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1790, file: !38, line: 867, baseType: !329, size: 32, offset: 2528)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1790, file: !38, line: 869, baseType: !266, size: 64, offset: 2560)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1790, file: !38, line: 869, baseType: !266, size: 64, offset: 2624)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1790, file: !38, line: 869, baseType: !266, size: 64, offset: 2688)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1790, file: !38, line: 869, baseType: !266, size: 64, offset: 2752)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1790, file: !38, line: 870, baseType: !266, size: 64, offset: 2816)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1790, file: !38, line: 870, baseType: !266, size: 64, offset: 2880)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1790, file: !38, line: 870, baseType: !266, size: 64, offset: 2944)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1790, file: !38, line: 871, baseType: !266, size: 64, offset: 3008)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1790, file: !38, line: 871, baseType: !266, size: 64, offset: 3072)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1790, file: !38, line: 871, baseType: !266, size: 64, offset: 3136)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1790, file: !38, line: 871, baseType: !266, size: 64, offset: 3200)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1790, file: !38, line: 873, baseType: !2589, size: 3328, offset: 3264)
!2589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 3328, elements: !2590)
!2590 = !{!2591}
!2591 = !DISubrange(count: 52)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1790, file: !38, line: 875, baseType: !2593, size: 1280, offset: 6592)
!2593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2025, size: 1280, elements: !951)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1790, file: !38, line: 877, baseType: !2595, size: 64, offset: 7872)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1790, file: !38, line: 880, baseType: !2598, size: 1088, offset: 7936)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2599, line: 72, baseType: !2600)
!2599 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2599, line: 23, size: 1088, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2609, !2610, !2611, !2612, !2639, !2640, !2641}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2600, file: !2599, line: 28, baseType: !246, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2600, file: !2599, line: 38, baseType: !734, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2600, file: !2599, line: 40, baseType: !266, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2600, file: !2599, line: 43, baseType: !1383, size: 320, offset: 192)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2600, file: !2599, line: 44, baseType: !2607, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2599, line: 44, flags: DIFlagFwdDecl)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2600, file: !2599, line: 48, baseType: !266, size: 64, offset: 576)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2600, file: !2599, line: 59, baseType: !728, size: 256, offset: 640)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2600, file: !2599, line: 60, baseType: !257, size: 64, offset: 896)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2600, file: !2599, line: 61, baseType: !2613, size: 64, offset: 960)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2615)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2616, line: 13, size: 1216, elements: !2617)
!2616 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2617 = !{!2618, !2619, !2620, !2621, !2622, !2623, !2624, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2615, file: !2616, line: 14, baseType: !257, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2615, file: !2616, line: 15, baseType: !266, size: 64, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2615, file: !2616, line: 17, baseType: !266, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2615, file: !2616, line: 17, baseType: !266, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2615, file: !2616, line: 18, baseType: !266, size: 64, offset: 256)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2615, file: !2616, line: 18, baseType: !266, size: 64, offset: 320)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2615, file: !2616, line: 19, baseType: !2625, size: 64, offset: 384)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2615, file: !2616, line: 21, baseType: !432, size: 64, offset: 448)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2615, file: !2616, line: 23, baseType: !432, size: 64, offset: 512)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2615, file: !2616, line: 24, baseType: !432, size: 64, offset: 576)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2615, file: !2616, line: 25, baseType: !432, size: 64, offset: 640)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2615, file: !2616, line: 26, baseType: !432, size: 64, offset: 704)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2615, file: !2616, line: 27, baseType: !432, size: 64, offset: 768)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2615, file: !2616, line: 28, baseType: !432, size: 64, offset: 832)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2615, file: !2616, line: 29, baseType: !432, size: 64, offset: 896)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2615, file: !2616, line: 30, baseType: !432, size: 64, offset: 960)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2615, file: !2616, line: 31, baseType: !432, size: 64, offset: 1024)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2615, file: !2616, line: 32, baseType: !432, size: 64, offset: 1088)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2615, file: !2616, line: 33, baseType: !432, size: 64, offset: 1152)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2600, file: !2599, line: 63, baseType: !349, size: 32, offset: 1024)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2600, file: !2599, line: 69, baseType: !365, size: 16, offset: 1056)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2600, file: !2599, line: 70, baseType: !857, size: 16, offset: 1072)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1790, file: !38, line: 882, baseType: !266, size: 64, offset: 9024)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1790, file: !38, line: 885, baseType: !329, size: 32, offset: 9088)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1790, file: !38, line: 886, baseType: !2645, size: 64, offset: 9152)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1790, file: !38, line: 901, baseType: !2050, size: 64, offset: 9216)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1790, file: !38, line: 904, baseType: !1813, size: 64, offset: 9280)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1790, file: !38, line: 906, baseType: !2650, size: 64, offset: 9344)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1790, file: !38, line: 930, baseType: !349, size: 32, offset: 9408)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1790, file: !38, line: 933, baseType: !349, size: 32, offset: 9440)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1790, file: !38, line: 935, baseType: !2655, size: 64, offset: 9472)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2656)
!2656 = !{!2657}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2655, file: !68, line: 104, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1790, file: !38, line: 940, baseType: !732, size: 64, offset: 9536)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1790, file: !38, line: 942, baseType: !981, size: 256, offset: 9600)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1787, file: !38, line: 986, baseType: !2663, offset: 10240)
!2663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, elements: !1873)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1490, file: !1165, line: 882, baseType: !1786, size: 64, offset: 9792)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1490, file: !1165, line: 884, baseType: !127, size: 32, offset: 9856)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1490, file: !1165, line: 885, baseType: !127, size: 32, offset: 9888)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1490, file: !1165, line: 886, baseType: !127, size: 32, offset: 9920)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1490, file: !1165, line: 888, baseType: !127, size: 32, offset: 9952)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1490, file: !1165, line: 890, baseType: !266, size: 64, offset: 9984)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1490, file: !1165, line: 893, baseType: !7, size: 32, offset: 10048)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1490, file: !1165, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1490, file: !1165, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1490, file: !1165, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1490, file: !1165, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1490, file: !1165, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1490, file: !1165, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1490, file: !1165, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1490, file: !1165, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1490, file: !1165, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1490, file: !1165, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1490, file: !1165, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1490, file: !1165, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1490, file: !1165, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1490, file: !1165, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1490, file: !1165, line: 969, baseType: !266, size: 64, offset: 10176)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1490, file: !1165, line: 971, baseType: !2687, size: 448, offset: 10240)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2688)
!2688 = !{!2689, !2690, !2695}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2687, file: !62, line: 26, baseType: !266, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2687, file: !62, line: 27, baseType: !2691, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!432, !2694}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, scope: !2687, file: !62, line: 28, baseType: !2696, size: 320, offset: 128)
!2696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2687, file: !62, line: 28, size: 320, elements: !2697)
!2697 = !{!2698, !2708, !2733}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2696, file: !62, line: 37, baseType: !2699, size: 320)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2696, file: !62, line: 30, size: 320, elements: !2700)
!2700 = !{!2701, !2703, !2704, !2705, !2706, !2707}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2699, file: !62, line: 31, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2699, file: !62, line: 32, baseType: !541, size: 32, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2699, file: !62, line: 33, baseType: !541, size: 32, offset: 96)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2699, file: !62, line: 34, baseType: !541, size: 32, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2699, file: !62, line: 35, baseType: !246, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2699, file: !62, line: 36, baseType: !2702, size: 64, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2696, file: !62, line: 47, baseType: !2709, size: 192)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2696, file: !62, line: 39, size: 192, elements: !2710)
!2710 = !{!2711, !2712, !2713, !2732}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2709, file: !62, line: 40, baseType: !1657, size: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2709, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, scope: !2709, file: !62, line: 42, baseType: !2714, size: 64, offset: 64)
!2714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2709, file: !62, line: 42, size: 64, elements: !2715)
!2715 = !{!2716, !2724}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2714, file: !62, line: 43, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2719, line: 7, size: 128, elements: !2720)
!2719 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2720 = !{!2721, !2723}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2718, file: !2719, line: 8, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !289, line: 93, baseType: !256)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2718, file: !2719, line: 9, baseType: !256, size: 64, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2714, file: !62, line: 44, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2727, line: 7, size: 64, elements: !2728)
!2727 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2728 = !{!2729, !2731}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2726, file: !2727, line: 8, baseType: !2730, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2727, line: 5, baseType: !724)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2726, file: !2727, line: 9, baseType: !724, size: 32, offset: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2709, file: !62, line: 46, baseType: !246, size: 64, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2696, file: !62, line: 55, baseType: !2734, size: 256)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2696, file: !62, line: 49, size: 256, elements: !2735)
!2735 = !{!2736, !2739, !2740, !2741, !2742}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2734, file: !62, line: 50, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2734, file: !62, line: 51, baseType: !127, size: 32, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2734, file: !62, line: 52, baseType: !127, size: 32, offset: 96)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2734, file: !62, line: 53, baseType: !266, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2734, file: !62, line: 54, baseType: !266, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1490, file: !1165, line: 973, baseType: !2744, size: 32, offset: 10688)
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !272, line: 27, baseType: !2745)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !289, line: 28, baseType: !127)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1490, file: !1165, line: 974, baseType: !2744, size: 32, offset: 10720)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1490, file: !1165, line: 978, baseType: !266, size: 64, offset: 10752)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1490, file: !1165, line: 987, baseType: !1489, size: 64, offset: 10816)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1490, file: !1165, line: 990, baseType: !1489, size: 64, offset: 10880)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1490, file: !1165, line: 995, baseType: !302, size: 128, offset: 10944)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1490, file: !1165, line: 996, baseType: !302, size: 128, offset: 11072)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1490, file: !1165, line: 997, baseType: !1489, size: 64, offset: 11200)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1490, file: !1165, line: 1005, baseType: !302, size: 128, offset: 11264)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1490, file: !1165, line: 1006, baseType: !302, size: 128, offset: 11392)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1490, file: !1165, line: 1009, baseType: !1854, size: 64, offset: 11520)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1490, file: !1165, line: 1010, baseType: !2757, size: 512, offset: 11584)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !967, size: 512, elements: !951)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1490, file: !1165, line: 1011, baseType: !302, size: 128, offset: 12096)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1490, file: !1165, line: 1012, baseType: !302, size: 128, offset: 12224)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1490, file: !1165, line: 1014, baseType: !676, size: 64, offset: 12352)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1490, file: !1165, line: 1017, baseType: !850, size: 64, offset: 12416)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1490, file: !1165, line: 1020, baseType: !850, size: 64, offset: 12480)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1490, file: !1165, line: 1023, baseType: !257, size: 64, offset: 12544)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1490, file: !1165, line: 1025, baseType: !246, size: 64, offset: 12608)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1490, file: !1165, line: 1026, baseType: !246, size: 64, offset: 12672)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1490, file: !1165, line: 1031, baseType: !246, size: 64, offset: 12736)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1490, file: !1165, line: 1032, baseType: !2768, size: 192, offset: 12800)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1165, line: 324, size: 192, elements: !2769)
!2769 = !{!2770, !2771, !2772}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2768, file: !1165, line: 326, baseType: !246, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2768, file: !1165, line: 327, baseType: !246, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2768, file: !1165, line: 328, baseType: !686, size: 32, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1490, file: !1165, line: 1041, baseType: !266, size: 64, offset: 12992)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1490, file: !1165, line: 1042, baseType: !266, size: 64, offset: 13056)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1490, file: !1165, line: 1045, baseType: !246, size: 64, offset: 13120)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1490, file: !1165, line: 1048, baseType: !246, size: 64, offset: 13184)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1490, file: !1165, line: 1051, baseType: !266, size: 64, offset: 13248)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1490, file: !1165, line: 1052, baseType: !266, size: 64, offset: 13312)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1490, file: !1165, line: 1055, baseType: !2780, size: 640, offset: 13376)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2781, line: 132, size: 640, elements: !2782)
!2781 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2782 = !{!2783, !2789, !2790}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2780, file: !2781, line: 133, baseType: !2784, size: 576)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2785, size: 576, elements: !398)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2781, line: 117, size: 192, elements: !2786)
!2786 = !{!2787, !2788}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2785, file: !2781, line: 118, baseType: !246, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2785, file: !2781, line: 119, baseType: !1666, size: 128, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2780, file: !2781, line: 134, baseType: !7, size: 32, offset: 576)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2780, file: !2781, line: 135, baseType: !7, size: 32, offset: 608)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1490, file: !1165, line: 1058, baseType: !2792, size: 448, offset: 14016)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2781, line: 144, size: 448, elements: !2793)
!2793 = !{!2794, !2795, !2796}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2792, file: !2781, line: 145, baseType: !941, size: 128, align: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2792, file: !2781, line: 146, baseType: !728, size: 256, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2792, file: !2781, line: 147, baseType: !7, size: 32, offset: 384)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1490, file: !1165, line: 1064, baseType: !1880, size: 64, offset: 14464)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1490, file: !1165, line: 1067, baseType: !1880, size: 64, offset: 14528)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1490, file: !1165, line: 1070, baseType: !1880, size: 64, offset: 14592)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1490, file: !1165, line: 1074, baseType: !1907, size: 64, offset: 14656)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1490, file: !1165, line: 1084, baseType: !2802, size: 128, offset: 14720)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 128, elements: !2803)
!2803 = !{!2804}
!2804 = !DISubrange(count: 16)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1490, file: !1165, line: 1086, baseType: !2806, size: 64, offset: 14848)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1165, line: 55, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1490, file: !1165, line: 1089, baseType: !2809, size: 64, offset: 14912)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2810, line: 12, size: 64, elements: !2811)
!2810 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2811 = !{!2812}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2809, file: !2810, line: 13, baseType: !2813, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2810, line: 8, flags: DIFlagFwdDecl)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1490, file: !1165, line: 1090, baseType: !2816, size: 128, offset: 14976)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2817, line: 13, size: 128, elements: !2818)
!2817 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2818 = !{!2819}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2816, file: !2817, line: 14, baseType: !302, size: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1490, file: !1165, line: 1097, baseType: !2821, size: 64, offset: 15104)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1165, line: 50, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1490, file: !1165, line: 1100, baseType: !2824, size: 64, offset: 15168)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1165, line: 1100, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1490, file: !1165, line: 1103, baseType: !2827, size: 64, offset: 15232)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1165, line: 53, flags: DIFlagFwdDecl)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1490, file: !1165, line: 1107, baseType: !2830, size: 64, offset: 15296)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1165, line: 56, flags: DIFlagFwdDecl)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1490, file: !1165, line: 1110, baseType: !2833, size: 64, offset: 15360)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2835, line: 93, size: 8768, elements: !2836)
!2835 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2884, !2893, !2894, !2896, !2897, !2898, !2901, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2939, !2940, !2947, !2957, !2960, !2961, !2964, !2965, !2966, !2967, !2968, !2969}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2834, file: !2835, line: 94, baseType: !1503, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2834, file: !2835, line: 95, baseType: !349, size: 32, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2834, file: !2835, line: 96, baseType: !127, size: 32, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2834, file: !2835, line: 97, baseType: !127, size: 32, offset: 96)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2834, file: !2835, line: 98, baseType: !302, size: 128, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2834, file: !2835, line: 100, baseType: !1476, size: 192, offset: 256)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2834, file: !2835, line: 103, baseType: !1489, size: 64, offset: 448)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2834, file: !2835, line: 106, baseType: !2845, size: 192, offset: 512)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2055, line: 32, size: 192, elements: !2846)
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2845, file: !2055, line: 33, baseType: !302, size: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2845, file: !2055, line: 34, baseType: !2849, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2850, line: 25, baseType: !2851)
!2850 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2850, line: 23, size: 64, elements: !2852)
!2852 = !{!2853}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2851, file: !2850, line: 24, baseType: !1737, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2834, file: !2835, line: 109, baseType: !1091, size: 64, offset: 704)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2834, file: !2835, line: 112, baseType: !127, size: 32, offset: 768)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2834, file: !2835, line: 114, baseType: !127, size: 32, offset: 800)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2834, file: !2835, line: 115, baseType: !1489, size: 64, offset: 832)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2834, file: !2835, line: 118, baseType: !127, size: 32, offset: 896)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2834, file: !2835, line: 119, baseType: !7, size: 32, offset: 928)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2834, file: !2835, line: 121, baseType: !2861, size: 64, offset: 960)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2835, line: 80, size: 448, elements: !2863)
!2863 = !{!2864, !2865, !2871}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2862, file: !2835, line: 81, baseType: !349, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2862, file: !2835, line: 82, baseType: !2866, size: 128, offset: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2835, line: 75, size: 128, elements: !2867)
!2867 = !{!2868, !2869}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2866, file: !2835, line: 76, baseType: !1489, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2866, file: !2835, line: 77, baseType: !2870, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2862, file: !2835, line: 83, baseType: !677, size: 256, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2834, file: !2835, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2834, file: !2835, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2834, file: !2835, line: 138, baseType: !7, size: 32, offset: 1056)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2834, file: !2835, line: 139, baseType: !302, size: 128, offset: 1088)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2834, file: !2835, line: 142, baseType: !1610, size: 512, offset: 1216)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2834, file: !2835, line: 143, baseType: !1618, size: 64, offset: 1728)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2834, file: !2835, line: 150, baseType: !2879, size: 256, offset: 1792)
!2879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2880, size: 256, elements: !840)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2835, line: 38, size: 128, elements: !2881)
!2881 = !{!2882, !2883}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2880, file: !2835, line: 39, baseType: !246, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2880, file: !2835, line: 40, baseType: !246, size: 64, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2834, file: !2835, line: 156, baseType: !2885, size: 192, offset: 2048)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2835, line: 66, size: 192, elements: !2886)
!2886 = !{!2887}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2885, file: !2835, line: 67, baseType: !2888, size: 192)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2835, line: 47, size: 192, elements: !2889)
!2889 = !{!2890, !2891, !2892}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2888, file: !2835, line: 48, baseType: !734, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2888, file: !2835, line: 49, baseType: !734, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2888, file: !2835, line: 50, baseType: !734, size: 64, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2834, file: !2835, line: 160, baseType: !2780, size: 640, offset: 2240)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2834, file: !2835, line: 163, baseType: !2895, size: 256, offset: 2880)
!2895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1854, size: 256, elements: !951)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2834, file: !2835, line: 169, baseType: !1854, size: 64, offset: 3136)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2834, file: !2835, line: 172, baseType: !127, size: 32, offset: 3200)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2834, file: !2835, line: 174, baseType: !2899, size: 64, offset: 3264)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2835, line: 174, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2834, file: !2835, line: 185, baseType: !2902, size: 64, offset: 3328)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !514, line: 860, baseType: !2903)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !514, line: 853, size: 64, elements: !2904)
!2904 = !{!2905, !2906}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2903, file: !514, line: 858, baseType: !513, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2903, file: !514, line: 859, baseType: !329, size: 32, offset: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2834, file: !2835, line: 186, baseType: !246, size: 64, offset: 3392)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2834, file: !2835, line: 186, baseType: !246, size: 64, offset: 3456)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2834, file: !2835, line: 186, baseType: !246, size: 64, offset: 3520)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2834, file: !2835, line: 186, baseType: !246, size: 64, offset: 3584)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2834, file: !2835, line: 187, baseType: !246, size: 64, offset: 3648)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2834, file: !2835, line: 188, baseType: !246, size: 64, offset: 3712)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2834, file: !2835, line: 189, baseType: !2768, size: 192, offset: 3776)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2834, file: !2835, line: 190, baseType: !266, size: 64, offset: 3968)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2834, file: !2835, line: 190, baseType: !266, size: 64, offset: 4032)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2834, file: !2835, line: 190, baseType: !266, size: 64, offset: 4096)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2834, file: !2835, line: 190, baseType: !266, size: 64, offset: 4160)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2834, file: !2835, line: 191, baseType: !266, size: 64, offset: 4224)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2834, file: !2835, line: 191, baseType: !266, size: 64, offset: 4288)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2834, file: !2835, line: 191, baseType: !266, size: 64, offset: 4352)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2834, file: !2835, line: 191, baseType: !266, size: 64, offset: 4416)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2834, file: !2835, line: 192, baseType: !266, size: 64, offset: 4480)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2834, file: !2835, line: 192, baseType: !266, size: 64, offset: 4544)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2834, file: !2835, line: 192, baseType: !266, size: 64, offset: 4608)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2834, file: !2835, line: 192, baseType: !266, size: 64, offset: 4672)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2834, file: !2835, line: 193, baseType: !266, size: 64, offset: 4736)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2834, file: !2835, line: 193, baseType: !266, size: 64, offset: 4800)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2834, file: !2835, line: 194, baseType: !2929, size: 448, offset: 4864)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2930, line: 12, size: 448, elements: !2931)
!2930 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2931 = !{!2932, !2933, !2934, !2935, !2936, !2937, !2938}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2929, file: !2930, line: 15, baseType: !246, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2929, file: !2930, line: 17, baseType: !246, size: 64, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2929, file: !2930, line: 19, baseType: !246, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2929, file: !2930, line: 21, baseType: !246, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2929, file: !2930, line: 29, baseType: !246, size: 64, offset: 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2929, file: !2930, line: 35, baseType: !246, size: 64, offset: 320)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2929, file: !2930, line: 44, baseType: !246, size: 64, offset: 384)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2834, file: !2835, line: 202, baseType: !250, size: 64, offset: 5312)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2834, file: !2835, line: 213, baseType: !2941, size: 2048, offset: 5376)
!2941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2942, size: 2048, elements: !2803)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2943, line: 43, size: 128, elements: !2944)
!2943 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2944 = !{!2945, !2946}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2942, file: !2943, line: 44, baseType: !290, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2942, file: !2943, line: 45, baseType: !290, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2834, file: !2835, line: 216, baseType: !2948, size: 448, offset: 7424)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2835, line: 30, size: 448, elements: !2949)
!2949 = !{!2950, !2951, !2952, !2953, !2954, !2955, !2956}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2948, file: !2835, line: 31, baseType: !127, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2948, file: !2835, line: 32, baseType: !432, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2948, file: !2835, line: 33, baseType: !266, size: 64, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2948, file: !2835, line: 34, baseType: !246, size: 64, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2948, file: !2835, line: 34, baseType: !246, size: 64, offset: 256)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2948, file: !2835, line: 35, baseType: !266, size: 64, offset: 320)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2948, file: !2835, line: 35, baseType: !266, size: 64, offset: 384)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2834, file: !2835, line: 219, baseType: !2958, size: 64, offset: 7872)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2835, line: 219, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2834, file: !2835, line: 222, baseType: !7, size: 32, offset: 7936)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2834, file: !2835, line: 223, baseType: !2962, size: 64, offset: 8000)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2835, line: 223, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2834, file: !2835, line: 230, baseType: !271, size: 8, offset: 8064)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2834, file: !2835, line: 231, baseType: !859, size: 16, offset: 8080)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2834, file: !2835, line: 232, baseType: !859, size: 16, offset: 8096)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2834, file: !2835, line: 234, baseType: !1786, size: 64, offset: 8128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2834, file: !2835, line: 237, baseType: !728, size: 256, offset: 8192)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2834, file: !2835, line: 243, baseType: !1383, size: 320, offset: 8448)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1490, file: !1165, line: 1111, baseType: !2971, size: 64, offset: 15424)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2835, line: 20, size: 16640, elements: !2973)
!2973 = !{!2974, !2975, !2976, !2977}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2972, file: !2835, line: 21, baseType: !329, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2972, file: !2835, line: 22, baseType: !1503, size: 32, offset: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2972, file: !2835, line: 23, baseType: !1476, size: 192, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2972, file: !2835, line: 24, baseType: !2978, size: 16384, offset: 256)
!2978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2979, size: 16384, elements: !402)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2055, line: 51, size: 256, elements: !2980)
!2980 = !{!2981}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2979, file: !2055, line: 52, baseType: !2982, size: 256)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2055, line: 37, size: 256, elements: !2983)
!2983 = !{!2984, !2991, !2992, !2996}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2982, file: !2055, line: 39, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2986, line: 83, baseType: !2987)
!2986 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2986, line: 82, baseType: !2989)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !127}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2982, file: !2055, line: 40, baseType: !266, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2982, file: !2055, line: 46, baseType: !2993, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2986, line: 86, baseType: !2994)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2986, line: 85, baseType: !1086)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2982, file: !2055, line: 48, baseType: !2849, size: 64, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1490, file: !1165, line: 1112, baseType: !2849, size: 64, offset: 15488)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1490, file: !1165, line: 1113, baseType: !2849, size: 64, offset: 15552)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1490, file: !1165, line: 1115, baseType: !2849, size: 64, offset: 15616)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1490, file: !1165, line: 1116, baseType: !2845, size: 192, offset: 15680)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1490, file: !1165, line: 1117, baseType: !266, size: 64, offset: 15872)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1490, file: !1165, line: 1118, baseType: !287, size: 64, offset: 15936)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1490, file: !1165, line: 1119, baseType: !7, size: 32, offset: 16000)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1490, file: !1165, line: 1121, baseType: !940, size: 64, offset: 16064)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1490, file: !1165, line: 1125, baseType: !3006, size: 64, offset: 16128)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1165, line: 43, flags: DIFlagFwdDecl)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1490, file: !1165, line: 1127, baseType: !478, size: 32, offset: 16192)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1490, file: !1165, line: 1128, baseType: !7, size: 32, offset: 16224)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1490, file: !1165, line: 1130, baseType: !3011, size: 128, offset: 16256)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3012, line: 37, size: 128, elements: !3013)
!3012 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3013 = !{!3014, !3015, !3016}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3011, file: !3012, line: 38, baseType: !127, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3011, file: !3012, line: 39, baseType: !349, size: 32, offset: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3011, file: !3012, line: 40, baseType: !3017, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3012, line: 24, flags: DIFlagFwdDecl)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1490, file: !1165, line: 1131, baseType: !3020, size: 256, offset: 16384)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3021, line: 12, size: 256, elements: !3022)
!3021 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3022 = !{!3023, !3024, !3025, !3026}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3020, file: !3021, line: 13, baseType: !397, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3020, file: !3021, line: 14, baseType: !266, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3020, file: !3021, line: 15, baseType: !266, size: 64, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3020, file: !3021, line: 16, baseType: !271, size: 8, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1490, file: !1165, line: 1134, baseType: !246, size: 64, offset: 16640)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1490, file: !1165, line: 1135, baseType: !246, size: 64, offset: 16704)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1490, file: !1165, line: 1138, baseType: !329, size: 32, offset: 16768)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1490, file: !1165, line: 1141, baseType: !686, size: 32, offset: 16800)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1490, file: !1165, line: 1143, baseType: !3032, size: 64, offset: 16832)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1165, line: 735, size: 64, elements: !3033)
!3033 = !{!3034}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3032, file: !1165, line: 736, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1490, file: !1165, line: 1147, baseType: !1669, size: 128, offset: 16896)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1490, file: !1165, line: 1149, baseType: !1489, size: 64, offset: 17024)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1490, file: !1165, line: 1151, baseType: !3039, size: 64, offset: 17088)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1165, line: 1151, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1490, file: !1165, line: 1188, baseType: !257, size: 64, offset: 17152)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1490, file: !1165, line: 1191, baseType: !3043, size: 64, offset: 17216)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1165, line: 44, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1490, file: !1165, line: 1194, baseType: !3046, size: 64, offset: 17280)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1165, line: 45, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1490, file: !1165, line: 1197, baseType: !3049, size: 64, offset: 17344)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1165, line: 61, flags: DIFlagFwdDecl)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1490, file: !1165, line: 1199, baseType: !3052, size: 64, offset: 17408)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3054, line: 99, size: 128, elements: !3055)
!3054 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3055 = !{!3056, !3057, !3058}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3053, file: !3054, line: 100, baseType: !732, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3053, file: !3054, line: 101, baseType: !349, size: 32, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3053, file: !3054, line: 103, baseType: !367, size: 16, offset: 96)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1490, file: !1165, line: 1202, baseType: !3060, size: 64, offset: 17472)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1165, line: 48, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1490, file: !1165, line: 1205, baseType: !266, size: 64, offset: 17536)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1490, file: !1165, line: 1206, baseType: !3064, size: 64, offset: 17600)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2055, line: 14, baseType: !3066)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2055, line: 12, size: 384, elements: !3067)
!3067 = !{!3068}
!3068 = !DIDerivedType(tag: DW_TAG_member, scope: !3066, file: !2055, line: 13, baseType: !3069, size: 384)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3066, file: !2055, line: 13, size: 384, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3074}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3069, file: !2055, line: 13, baseType: !127, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3069, file: !2055, line: 13, baseType: !127, size: 32, offset: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3069, file: !2055, line: 13, baseType: !127, size: 32, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3069, file: !2055, line: 13, baseType: !3075, size: 256, offset: 128)
!3075 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3076, line: 37, size: 256, elements: !3077)
!3076 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3077 = !{!3078, !3083, !3096, !3102, !3111, !3138, !3143}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3075, file: !3076, line: 42, baseType: !3079, size: 64)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3076, line: 39, size: 64, elements: !3080)
!3080 = !{!3081, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3079, file: !3076, line: 40, baseType: !2745, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3079, file: !3076, line: 41, baseType: !484, size: 32, offset: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3075, file: !3076, line: 50, baseType: !3084, size: 192)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3076, line: 45, size: 192, elements: !3085)
!3085 = !{!3086, !3088, !3089, !3095}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3084, file: !3076, line: 46, baseType: !3087, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !289, line: 95, baseType: !127)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3084, file: !3076, line: 47, baseType: !127, size: 32, offset: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3084, file: !3076, line: 48, baseType: !3090, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3076, line: 11, baseType: !3091)
!3091 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3076, line: 8, size: 64, elements: !3092)
!3092 = !{!3093, !3094}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3091, file: !3076, line: 9, baseType: !127, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3091, file: !3076, line: 10, baseType: !257, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3084, file: !3076, line: 49, baseType: !127, size: 32, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3075, file: !3076, line: 57, baseType: !3097, size: 128)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3076, line: 53, size: 128, elements: !3098)
!3098 = !{!3099, !3100, !3101}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3097, file: !3076, line: 54, baseType: !2745, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3097, file: !3076, line: 55, baseType: !484, size: 32, offset: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3097, file: !3076, line: 56, baseType: !3090, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3075, file: !3076, line: 66, baseType: !3103, size: 256)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3076, line: 60, size: 256, elements: !3104)
!3104 = !{!3105, !3106, !3107, !3108, !3110}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3103, file: !3076, line: 61, baseType: !2745, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3103, file: !3076, line: 62, baseType: !484, size: 32, offset: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3103, file: !3076, line: 63, baseType: !127, size: 32, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3103, file: !3076, line: 64, baseType: !3109, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !289, line: 94, baseType: !431)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3103, file: !3076, line: 65, baseType: !3109, size: 64, offset: 192)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3075, file: !3076, line: 105, baseType: !3112, size: 256)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3076, line: 69, size: 256, elements: !3113)
!3113 = !{!3114, !3115}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3112, file: !3076, line: 70, baseType: !257, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, scope: !3112, file: !3076, line: 79, baseType: !3116, size: 192, offset: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3112, file: !3076, line: 79, size: 192, elements: !3117)
!3117 = !{!3118, !3119, !3120, !3127, !3132}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3116, file: !3076, line: 81, baseType: !127, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3116, file: !3076, line: 86, baseType: !859, size: 16)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3116, file: !3076, line: 92, baseType: !3121, size: 192)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3076, line: 88, size: 192, elements: !3122)
!3122 = !{!3123, !3125, !3126}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3121, file: !3076, line: 89, baseType: !3124, size: 64)
!3124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 64, elements: !1653)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3121, file: !3076, line: 90, baseType: !257, size: 64, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3121, file: !3076, line: 91, baseType: !257, size: 64, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3116, file: !3076, line: 97, baseType: !3128, size: 96)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3076, line: 94, size: 96, elements: !3129)
!3129 = !{!3130, !3131}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3128, file: !3076, line: 95, baseType: !3124, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3128, file: !3076, line: 96, baseType: !542, size: 32, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3116, file: !3076, line: 103, baseType: !3133, size: 128)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3076, line: 99, size: 128, elements: !3134)
!3134 = !{!3135, !3136, !3137}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3133, file: !3076, line: 100, baseType: !266, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3133, file: !3076, line: 101, baseType: !542, size: 32, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3133, file: !3076, line: 102, baseType: !542, size: 32, offset: 96)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3075, file: !3076, line: 111, baseType: !3139, size: 128)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3076, line: 108, size: 128, elements: !3140)
!3140 = !{!3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3139, file: !3076, line: 109, baseType: !432, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3139, file: !3076, line: 110, baseType: !127, size: 32, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3075, file: !3076, line: 118, baseType: !3144, size: 128)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3076, line: 114, size: 128, elements: !3145)
!3145 = !{!3146, !3147, !3148}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3144, file: !3076, line: 115, baseType: !257, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3144, file: !3076, line: 116, baseType: !127, size: 32, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3144, file: !3076, line: 117, baseType: !7, size: 32, offset: 96)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1490, file: !1165, line: 1208, baseType: !2929, size: 448, offset: 17664)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1490, file: !1165, line: 1215, baseType: !246, size: 64, offset: 18112)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1490, file: !1165, line: 1217, baseType: !246, size: 64, offset: 18176)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1490, file: !1165, line: 1219, baseType: !246, size: 64, offset: 18240)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1490, file: !1165, line: 1223, baseType: !3154, size: 64, offset: 18304)
!3154 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !235, line: 99, baseType: !3155)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !235, line: 99, size: 64, elements: !3156)
!3156 = !{!3157}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3155, file: !235, line: 99, baseType: !1737, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1490, file: !1165, line: 1225, baseType: !513, size: 32, offset: 18368)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1490, file: !1165, line: 1226, baseType: !127, size: 32, offset: 18400)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1490, file: !1165, line: 1227, baseType: !127, size: 32, offset: 18432)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1490, file: !1165, line: 1231, baseType: !3162, size: 64, offset: 18496)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1165, line: 1231, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1490, file: !1165, line: 1233, baseType: !302, size: 128, offset: 18560)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1490, file: !1165, line: 1240, baseType: !3166, size: 64, offset: 18688)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1165, line: 62, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1490, file: !1165, line: 1242, baseType: !3169, size: 64, offset: 18752)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1165, line: 1242, flags: DIFlagFwdDecl)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1490, file: !1165, line: 1244, baseType: !302, size: 128, offset: 18816)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1490, file: !1165, line: 1245, baseType: !3173, size: 64, offset: 18944)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1165, line: 51, flags: DIFlagFwdDecl)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1490, file: !1165, line: 1246, baseType: !728, size: 256, offset: 19008)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1490, file: !1165, line: 1247, baseType: !7, size: 32, offset: 19264)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1490, file: !1165, line: 1250, baseType: !3178, size: 64, offset: 19328)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1165, line: 57, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1490, file: !1165, line: 1251, baseType: !728, size: 256, offset: 19392)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1490, file: !1165, line: 1252, baseType: !302, size: 128, offset: 19648)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1490, file: !1165, line: 1259, baseType: !2434, size: 64, offset: 19776)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1490, file: !1165, line: 1260, baseType: !859, size: 16, offset: 19840)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1490, file: !1165, line: 1261, baseType: !859, size: 16, offset: 19856)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1490, file: !1165, line: 1314, baseType: !3186, size: 64, offset: 19904)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3188, line: 62, size: 256, align: 256, elements: !3189)
!3188 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3189 = !{!3190, !3191, !3192, !3193, !3194, !3195, !3196}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3187, file: !3188, line: 75, baseType: !542, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3187, file: !3188, line: 90, baseType: !542, size: 32, offset: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3187, file: !3188, line: 112, baseType: !248, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3187, file: !3188, line: 132, baseType: !542, size: 32, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3187, file: !3188, line: 140, baseType: !542, size: 32, offset: 160)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3187, file: !3188, line: 149, baseType: !542, size: 32, offset: 192)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3187, file: !3188, line: 154, baseType: !3197, offset: 224)
!3197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, elements: !1873)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1490, file: !1165, line: 1315, baseType: !541, size: 32, offset: 19968)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1490, file: !1165, line: 1316, baseType: !541, size: 32, offset: 20000)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1490, file: !1165, line: 1321, baseType: !266, size: 64, offset: 20032)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1490, file: !1165, line: 1325, baseType: !127, size: 32, offset: 20096)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1490, file: !1165, line: 1326, baseType: !127, size: 32, offset: 20128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1490, file: !1165, line: 1327, baseType: !127, size: 32, offset: 20160)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1490, file: !1165, line: 1328, baseType: !127, size: 32, offset: 20192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1490, file: !1165, line: 1329, baseType: !941, size: 128, align: 64, offset: 20224)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1490, file: !1165, line: 1332, baseType: !3207, size: 128, offset: 20352)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3208, line: 51, size: 128, elements: !3209)
!3208 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3209 = !{!3210, !3215, !3216}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3207, file: !3208, line: 60, baseType: !3211, size: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3212, line: 7, size: 64, elements: !3213)
!3212 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3213 = !{!3214}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3211, file: !3212, line: 12, baseType: !1734, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3207, file: !3208, line: 63, baseType: !271, size: 8, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3207, file: !3208, line: 70, baseType: !271, size: 8, offset: 72)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1490, file: !1165, line: 1335, baseType: !2486, size: 64, offset: 20480)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1490, file: !1165, line: 1337, baseType: !3219, size: 128, offset: 20544)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3208, line: 39, size: 128, elements: !3220)
!3220 = !{!3221, !3222, !3223}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3219, file: !3208, line: 40, baseType: !2273, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3219, file: !3208, line: 42, baseType: !542, size: 32, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3219, file: !3208, line: 43, baseType: !542, size: 32, offset: 96)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1490, file: !1165, line: 1340, baseType: !3225, size: 64, offset: 20672)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1165, line: 69, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1490, file: !1165, line: 1351, baseType: !127, size: 32, offset: 20736)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1490, file: !1165, line: 1352, baseType: !127, size: 32, offset: 20768)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1490, file: !1165, line: 1354, baseType: !266, size: 64, offset: 20800)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1490, file: !1165, line: 1364, baseType: !246, size: 64, offset: 20864)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1490, file: !1165, line: 1365, baseType: !246, size: 64, offset: 20928)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1490, file: !1165, line: 1412, baseType: !266, size: 64, offset: 20992)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1490, file: !1165, line: 1453, baseType: !3234, size: 64, offset: 21056)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1165, line: 1453, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1490, file: !1165, line: 1457, baseType: !3237, size: 64, offset: 21120)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3239)
!3239 = !{!3240, !3241, !3260, !3263, !3264, !3297, !3307}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3238, file: !68, line: 62, baseType: !67, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, scope: !3238, file: !68, line: 64, baseType: !3242, size: 192, offset: 64)
!3242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3238, file: !68, line: 64, size: 192, elements: !3243)
!3243 = !{!3244, !3255}
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3242, file: !68, line: 65, baseType: !3245, size: 192)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3242, file: !68, line: 65, size: 192, elements: !3246)
!3246 = !{!3247, !3254}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3245, file: !68, line: 66, baseType: !3248, size: 128)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3249, line: 50, size: 128, elements: !3250)
!3249 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3250 = !{!3251, !3252, !3253}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3248, file: !3249, line: 52, baseType: !266, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3248, file: !3249, line: 54, baseType: !7, size: 32, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3248, file: !3249, line: 55, baseType: !7, size: 32, offset: 96)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3245, file: !68, line: 67, baseType: !266, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, scope: !3242, file: !68, line: 70, baseType: !3256, size: 192)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3242, file: !68, line: 70, size: 192, elements: !3257)
!3257 = !{!3258, !3259}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3256, file: !68, line: 71, baseType: !941, size: 128, align: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3256, file: !68, line: 72, baseType: !266, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3238, file: !68, line: 76, baseType: !3261, size: 64, offset: 256)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3238, file: !68, line: 77, baseType: !266, size: 64, offset: 320)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3238, file: !68, line: 79, baseType: !3265, size: 64, offset: 384)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3249, line: 25, size: 256, elements: !3267)
!3267 = !{!3268, !3274, !3278}
!3268 = !DIDerivedType(tag: DW_TAG_member, scope: !3266, file: !3249, line: 26, baseType: !3269, size: 128)
!3269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3266, file: !3249, line: 26, size: 128, elements: !3270)
!3270 = !{!3271, !3273}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3269, file: !3249, line: 27, baseType: !3272, size: 128)
!3272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 128, elements: !2803)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3269, file: !3249, line: 28, baseType: !3272, size: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3266, file: !3249, line: 31, baseType: !3275, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3277)
!3277 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3249, line: 23, flags: DIFlagFwdDecl)
!3278 = !DIDerivedType(tag: DW_TAG_member, scope: !3266, file: !3249, line: 33, baseType: !3279, size: 64, offset: 192)
!3279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3266, file: !3249, line: 33, size: 64, elements: !3280)
!3280 = !{!3281, !3287, !3292}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3279, file: !3249, line: 38, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3279, file: !3249, line: 34, size: 64, elements: !3283)
!3283 = !{!3284, !3285, !3286}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3282, file: !3249, line: 35, baseType: !724, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3282, file: !3249, line: 36, baseType: !357, size: 8, offset: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3282, file: !3249, line: 37, baseType: !357, size: 8, offset: 40)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3279, file: !3249, line: 42, baseType: !3288, size: 16)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3279, file: !3249, line: 39, size: 16, elements: !3289)
!3289 = !{!3290, !3291}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3288, file: !3249, line: 40, baseType: !357, size: 8)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3288, file: !3249, line: 41, baseType: !357, size: 8, offset: 8)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3279, file: !3249, line: 46, baseType: !3293, size: 16)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3279, file: !3249, line: 43, size: 16, elements: !3294)
!3294 = !{!3295, !3296}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3293, file: !3249, line: 44, baseType: !357, size: 8)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3293, file: !3249, line: 45, baseType: !357, size: 8, offset: 8)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3238, file: !68, line: 81, baseType: !3298, size: 64, offset: 448)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3300)
!3300 = !{!3301, !3302, !3303, !3304, !3305, !3306}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3299, file: !68, line: 86, baseType: !3261, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3299, file: !68, line: 87, baseType: !266, size: 64, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3299, file: !68, line: 88, baseType: !266, size: 64, offset: 128)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3299, file: !68, line: 89, baseType: !266, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3299, file: !68, line: 90, baseType: !271, size: 8, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3299, file: !68, line: 92, baseType: !3298, size: 64, offset: 320)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3238, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1490, file: !1165, line: 1463, baseType: !3309, offset: 21184)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1165, line: 739, elements: !1010)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1490, file: !1165, line: 1470, baseType: !941, size: 128, align: 64, offset: 21184)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1490, file: !1165, line: 1471, baseType: !1503, size: 32, offset: 21312)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1490, file: !1165, line: 1472, baseType: !127, size: 32, offset: 21344)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1490, file: !1165, line: 1474, baseType: !1489, size: 64, offset: 21376)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1490, file: !1165, line: 1475, baseType: !963, size: 320, offset: 21440)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1490, file: !1165, line: 1478, baseType: !3316, size: 64, offset: 21760)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3318, line: 49, size: 512, elements: !3319)
!3318 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3319 = !{!3320, !3321, !3322, !3323, !3324, !3326, !3327, !3328, !3330}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3317, file: !3318, line: 50, baseType: !3316, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3317, file: !3318, line: 51, baseType: !257, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3317, file: !3318, line: 52, baseType: !266, size: 64, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3317, file: !3318, line: 53, baseType: !266, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3317, file: !3318, line: 54, baseType: !3325, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3317, file: !3318, line: 56, baseType: !7, size: 32, offset: 320)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3317, file: !3318, line: 58, baseType: !7, size: 32, offset: 352)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3317, file: !3318, line: 59, baseType: !3329, size: 64, offset: 384)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !272, line: 159, baseType: !246)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3317, file: !3318, line: 60, baseType: !2625, size: 64, offset: 448)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1490, file: !1165, line: 1482, baseType: !1503, size: 32, offset: 21824)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1490, file: !1165, line: 1489, baseType: !257, size: 64, offset: 21888)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1490, file: !1165, line: 1504, baseType: !257, size: 64, offset: 21952)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1490, file: !1165, line: 1505, baseType: !248, size: 64, offset: 22016)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1490, file: !1165, line: 1506, baseType: !246, size: 64, offset: 22080)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1490, file: !1165, line: 1507, baseType: !248, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1490, file: !1165, line: 1508, baseType: !248, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1490, file: !1165, line: 1509, baseType: !248, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1490, file: !1165, line: 1510, baseType: !941, size: 128, align: 64, offset: 22208)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1490, file: !1165, line: 1511, baseType: !127, size: 32, offset: 22336)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1490, file: !1165, line: 1515, baseType: !3342, size: 64, offset: 22400)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1517, line: 56, size: 64, elements: !3343)
!3343 = !{!3344}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3342, file: !1517, line: 57, baseType: !1520, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1490, file: !1165, line: 1518, baseType: !3342, size: 64, offset: 22464)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1490, file: !1165, line: 1528, baseType: !941, size: 128, align: 64, offset: 22528)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1490, file: !1165, line: 1552, baseType: !3348, size: 35328, offset: 23040)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3349, line: 430, size: 35328, elements: !3350)
!3349 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3350 = !{!3351, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3380, !3381, !3382, !3383, !3384, !3385, !3388, !3389, !3390, !3391}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3348, file: !3349, line: 432, baseType: !3352, size: 192)
!3352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3353, size: 192, elements: !398)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3354, line: 16, size: 64, elements: !3355)
!3354 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3353, file: !3354, line: 17, baseType: !365, size: 16)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3353, file: !3354, line: 18, baseType: !365, size: 16, offset: 16)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3353, file: !3354, line: 19, baseType: !365, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3353, file: !3354, line: 19, baseType: !365, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3353, file: !3354, line: 19, baseType: !365, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3353, file: !3354, line: 19, baseType: !365, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3353, file: !3354, line: 19, baseType: !365, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3353, file: !3354, line: 20, baseType: !365, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3353, file: !3354, line: 20, baseType: !365, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3353, file: !3354, line: 20, baseType: !365, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3353, file: !3354, line: 20, baseType: !365, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3353, file: !3354, line: 20, baseType: !365, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3353, file: !3354, line: 20, baseType: !365, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3348, file: !3349, line: 436, baseType: !266, size: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3348, file: !3349, line: 440, baseType: !367, size: 16, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3348, file: !3349, line: 441, baseType: !367, size: 16, offset: 272)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3348, file: !3349, line: 442, baseType: !367, size: 16, offset: 288)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3348, file: !3349, line: 443, baseType: !367, size: 16, offset: 304)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3348, file: !3349, line: 447, baseType: !266, size: 64, offset: 320)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3348, file: !3349, line: 448, baseType: !266, size: 64, offset: 384)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3348, file: !3349, line: 459, baseType: !3377, size: 256, offset: 448)
!3377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3378, size: 256, elements: !951)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3349, line: 428, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3348, file: !3349, line: 461, baseType: !266, size: 64, offset: 704)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3348, file: !3349, line: 463, baseType: !266, size: 64, offset: 768)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3348, file: !3349, line: 465, baseType: !266, size: 64, offset: 832)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3348, file: !3349, line: 466, baseType: !266, size: 64, offset: 896)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3348, file: !3349, line: 467, baseType: !266, size: 64, offset: 960)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3348, file: !3349, line: 473, baseType: !3386, size: 64, offset: 1024)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3349, line: 10, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3348, file: !3349, line: 480, baseType: !266, size: 64, offset: 1088)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3348, file: !3349, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3348, file: !3349, line: 491, baseType: !541, size: 32, offset: 1184)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3348, file: !3349, line: 501, baseType: !3392, size: 33792, offset: 1536)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3393, line: 448, size: 33792, elements: !3394)
!3393 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3394 = !{!3395, !3396, !3397, !3559, !3560, !3566, !3567}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3392, file: !3393, line: 461, baseType: !7, size: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3392, file: !3393, line: 468, baseType: !266, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3392, file: !3393, line: 476, baseType: !3398, size: 64, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3393, line: 356, size: 33280, align: 512, elements: !3400)
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3399, file: !3393, line: 358, baseType: !7, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3399, file: !3393, line: 361, baseType: !7, size: 32, offset: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3399, file: !3393, line: 364, baseType: !246, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3399, file: !3393, line: 367, baseType: !246, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3399, file: !3393, line: 370, baseType: !246, size: 64, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3399, file: !3393, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3399, file: !3393, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3399, file: !3393, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3399, file: !3393, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3399, file: !3393, line: 397, baseType: !3411, size: 32768, offset: 512)
!3411 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3393, line: 348, size: 32768, elements: !3412)
!3412 = !{!3413, !3428, !3465, !3542, !3555}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3411, file: !3393, line: 349, baseType: !3414, size: 896)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3393, line: 12, size: 896, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3427}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3414, file: !3393, line: 13, baseType: !541, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3414, file: !3393, line: 14, baseType: !541, size: 32, offset: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3414, file: !3393, line: 15, baseType: !541, size: 32, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3414, file: !3393, line: 16, baseType: !541, size: 32, offset: 96)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3414, file: !3393, line: 17, baseType: !541, size: 32, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3414, file: !3393, line: 18, baseType: !541, size: 32, offset: 160)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3414, file: !3393, line: 19, baseType: !541, size: 32, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3414, file: !3393, line: 22, baseType: !3424, size: 640, offset: 224)
!3424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 640, elements: !3425)
!3425 = !{!3426}
!3426 = !DISubrange(count: 20)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3414, file: !3393, line: 25, baseType: !541, size: 32, offset: 864)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3411, file: !3393, line: 350, baseType: !3429, size: 4096, align: 128)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3393, line: 34, size: 4096, align: 128, elements: !3430)
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3450, !3451, !3452, !3454, !3456, !3460}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3429, file: !3393, line: 35, baseType: !365, size: 16)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3429, file: !3393, line: 36, baseType: !365, size: 16, offset: 16)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3429, file: !3393, line: 37, baseType: !365, size: 16, offset: 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3429, file: !3393, line: 38, baseType: !365, size: 16, offset: 48)
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !3429, file: !3393, line: 39, baseType: !3436, size: 128, offset: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3429, file: !3393, line: 39, size: 128, elements: !3437)
!3437 = !{!3438, !3443}
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !3393, line: 40, baseType: !3439, size: 128)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3436, file: !3393, line: 40, size: 128, elements: !3440)
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3439, file: !3393, line: 41, baseType: !246, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3439, file: !3393, line: 42, baseType: !246, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !3393, line: 44, baseType: !3444, size: 128)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3436, file: !3393, line: 44, size: 128, elements: !3445)
!3445 = !{!3446, !3447, !3448, !3449}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3444, file: !3393, line: 45, baseType: !541, size: 32)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3444, file: !3393, line: 46, baseType: !541, size: 32, offset: 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3444, file: !3393, line: 47, baseType: !541, size: 32, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3444, file: !3393, line: 48, baseType: !541, size: 32, offset: 96)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3429, file: !3393, line: 51, baseType: !541, size: 32, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3429, file: !3393, line: 52, baseType: !541, size: 32, offset: 224)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3429, file: !3393, line: 55, baseType: !3453, size: 1024, offset: 256)
!3453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 1024, elements: !551)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3429, file: !3393, line: 58, baseType: !3455, size: 2048, offset: 1280)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 2048, elements: !402)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3429, file: !3393, line: 60, baseType: !3457, size: 384, offset: 3328)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 384, elements: !3458)
!3458 = !{!3459}
!3459 = !DISubrange(count: 12)
!3460 = !DIDerivedType(tag: DW_TAG_member, scope: !3429, file: !3393, line: 62, baseType: !3461, size: 384, offset: 3712)
!3461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3429, file: !3393, line: 62, size: 384, elements: !3462)
!3462 = !{!3463, !3464}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3461, file: !3393, line: 63, baseType: !3457, size: 384)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3461, file: !3393, line: 64, baseType: !3457, size: 384)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3411, file: !3393, line: 351, baseType: !3466, size: 1088)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3393, line: 79, size: 1088, elements: !3467)
!3467 = !{!3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3541}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3466, file: !3393, line: 80, baseType: !541, size: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3466, file: !3393, line: 81, baseType: !541, size: 32, offset: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3466, file: !3393, line: 82, baseType: !541, size: 32, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3466, file: !3393, line: 83, baseType: !541, size: 32, offset: 96)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3466, file: !3393, line: 84, baseType: !541, size: 32, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3466, file: !3393, line: 85, baseType: !541, size: 32, offset: 160)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3466, file: !3393, line: 86, baseType: !541, size: 32, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3466, file: !3393, line: 88, baseType: !3424, size: 640, offset: 224)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3466, file: !3393, line: 89, baseType: !357, size: 8, offset: 864)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3466, file: !3393, line: 90, baseType: !357, size: 8, offset: 872)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3466, file: !3393, line: 91, baseType: !357, size: 8, offset: 880)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3466, file: !3393, line: 92, baseType: !357, size: 8, offset: 888)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3466, file: !3393, line: 93, baseType: !357, size: 8, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3466, file: !3393, line: 94, baseType: !357, size: 8, offset: 904)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3466, file: !3393, line: 95, baseType: !3483, size: 64, offset: 960)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3485, line: 11, size: 128, elements: !3486)
!3485 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3486 = !{!3487, !3488}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3484, file: !3485, line: 12, baseType: !432, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3484, file: !3485, line: 13, baseType: !3489, size: 64, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3491, line: 103, size: 1344, elements: !3492)
!3491 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3521, !3522, !3523}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3490, file: !3491, line: 109, baseType: !266, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3490, file: !3491, line: 110, baseType: !266, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3490, file: !3491, line: 111, baseType: !266, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3490, file: !3491, line: 112, baseType: !266, size: 64, offset: 192)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3490, file: !3491, line: 113, baseType: !266, size: 64, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3490, file: !3491, line: 114, baseType: !266, size: 64, offset: 320)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3490, file: !3491, line: 117, baseType: !266, size: 64, offset: 384)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3490, file: !3491, line: 118, baseType: !266, size: 64, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3490, file: !3491, line: 119, baseType: !266, size: 64, offset: 512)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3490, file: !3491, line: 120, baseType: !266, size: 64, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3490, file: !3491, line: 121, baseType: !266, size: 64, offset: 640)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3490, file: !3491, line: 122, baseType: !266, size: 64, offset: 704)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3490, file: !3491, line: 123, baseType: !266, size: 64, offset: 768)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3490, file: !3491, line: 124, baseType: !266, size: 64, offset: 832)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3490, file: !3491, line: 125, baseType: !266, size: 64, offset: 896)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3490, file: !3491, line: 139, baseType: !266, size: 64, offset: 960)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3490, file: !3491, line: 142, baseType: !266, size: 64, offset: 1024)
!3510 = !DIDerivedType(tag: DW_TAG_member, scope: !3490, file: !3491, line: 144, baseType: !3511, size: 64, offset: 1088)
!3511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3490, file: !3491, line: 144, size: 64, elements: !3512)
!3512 = !{!3513, !3514, !3515}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3511, file: !3491, line: 146, baseType: !365, size: 16)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3511, file: !3491, line: 148, baseType: !246, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3511, file: !3491, line: 150, baseType: !3516, size: 64)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3491, line: 59, size: 64, elements: !3517)
!3517 = !{!3518, !3519, !3520}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3516, file: !3491, line: 61, baseType: !246, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3516, file: !3491, line: 63, baseType: !246, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3516, file: !3491, line: 65, baseType: !246, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3490, file: !3491, line: 153, baseType: !266, size: 64, offset: 1152)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3490, file: !3491, line: 154, baseType: !266, size: 64, offset: 1216)
!3523 = !DIDerivedType(tag: DW_TAG_member, scope: !3490, file: !3491, line: 156, baseType: !3524, size: 64, offset: 1280)
!3524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3490, file: !3491, line: 156, size: 64, elements: !3525)
!3525 = !{!3526, !3527, !3528}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3524, file: !3491, line: 158, baseType: !365, size: 16)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3524, file: !3491, line: 160, baseType: !246, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3524, file: !3491, line: 162, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3491, line: 69, size: 64, elements: !3530)
!3530 = !{!3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3529, file: !3491, line: 71, baseType: !246, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3529, file: !3491, line: 73, baseType: !246, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3529, file: !3491, line: 75, baseType: !246, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3529, file: !3491, line: 77, baseType: !246, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3529, file: !3491, line: 80, baseType: !246, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3529, file: !3491, line: 83, baseType: !246, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3529, file: !3491, line: 86, baseType: !246, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3529, file: !3491, line: 88, baseType: !246, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3529, file: !3491, line: 93, baseType: !246, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3529, file: !3491, line: 100, baseType: !246, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3466, file: !3393, line: 96, baseType: !541, size: 32, offset: 1024)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3411, file: !3393, line: 352, baseType: !3543, size: 4608, align: 512)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3393, line: 333, size: 4608, align: 512, elements: !3544)
!3544 = !{!3545, !3546, !3553}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3543, file: !3393, line: 334, baseType: !3429, size: 4096, align: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3543, file: !3393, line: 335, baseType: !3547, size: 512, offset: 4096)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3393, line: 312, size: 512, elements: !3548)
!3548 = !{!3549, !3550, !3551}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3547, file: !3393, line: 313, baseType: !246, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3547, file: !3393, line: 314, baseType: !246, size: 64, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3547, file: !3393, line: 315, baseType: !3552, size: 384, offset: 128)
!3552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 384, elements: !1956)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3543, file: !3393, line: 336, baseType: !3554, offset: 4608)
!3554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, elements: !1873)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3411, file: !3393, line: 353, baseType: !3556, size: 32768)
!3556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 32768, elements: !3557)
!3557 = !{!3558}
!3558 = !DISubrange(count: 4096)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3392, file: !3393, line: 484, baseType: !3398, size: 64, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3392, file: !3393, line: 491, baseType: !3561, size: 128, offset: 256)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3393, line: 404, size: 128, elements: !3562)
!3562 = !{!3563, !3564, !3565}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3561, file: !3393, line: 424, baseType: !246, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3561, file: !3393, line: 432, baseType: !7, size: 32, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3561, file: !3393, line: 440, baseType: !7, size: 32, offset: 96)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3392, file: !3393, line: 498, baseType: !3561, size: 128, offset: 384)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3392, file: !3393, line: 508, baseType: !3399, size: 33280, align: 512, offset: 512)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1466, file: !1467, line: 16, baseType: !1476, size: 192, offset: 512)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1466, file: !1467, line: 17, baseType: !349, size: 32, offset: 704)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !621, file: !14, line: 1240, baseType: !257, size: 64, offset: 6912)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !621, file: !14, line: 1243, baseType: !541, size: 32, offset: 6976)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !621, file: !14, line: 1245, baseType: !1223, size: 64, offset: 7040)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !621, file: !14, line: 1246, baseType: !1223, size: 64, offset: 7104)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !621, file: !14, line: 1248, baseType: !542, size: 32, offset: 7168)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !621, file: !14, line: 1249, baseType: !3576, size: 64, offset: 7232)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !621, file: !14, line: 1252, baseType: !3579, size: 256, offset: 7296)
!3579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 256, elements: !551)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !621, file: !14, line: 1253, baseType: !3581, size: 128, offset: 7552)
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3582, line: 21, baseType: !3583)
!3582 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3582, line: 19, size: 128, elements: !3584)
!3584 = !{!3585}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3583, file: !3582, line: 20, baseType: !3586, size: 128)
!3586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 128, elements: !2803)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !621, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !621, file: !14, line: 1261, baseType: !728, size: 256, offset: 7744)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !621, file: !14, line: 1267, baseType: !317, size: 64, offset: 8000)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !621, file: !14, line: 1269, baseType: !567, size: 64, offset: 8064)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !621, file: !14, line: 1271, baseType: !3592, size: 448, offset: 8128)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1232, line: 63, size: 448, elements: !3593)
!3593 = !{!3594, !3599, !3600, !3601, !3602, !3603, !3604}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3592, file: !1232, line: 64, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!266, !3598, !1230}
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3592, file: !1232, line: 66, baseType: !3595, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3592, file: !1232, line: 69, baseType: !432, size: 64, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3592, file: !1232, line: 70, baseType: !127, size: 32, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3592, file: !1232, line: 71, baseType: !7, size: 32, offset: 224)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3592, file: !1232, line: 74, baseType: !302, size: 128, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3592, file: !1232, line: 85, baseType: !3605, size: 64, offset: 384)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !621, file: !14, line: 1274, baseType: !732, size: 64, offset: 8576)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !621, file: !14, line: 1280, baseType: !732, size: 64, offset: 8640)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !621, file: !14, line: 1283, baseType: !127, size: 32, offset: 8704)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !621, file: !14, line: 1286, baseType: !2536, size: 32, offset: 8736)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !621, file: !14, line: 1289, baseType: !1043, size: 64, offset: 8768)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !621, file: !14, line: 1290, baseType: !1091, size: 64, offset: 8832)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !621, file: !14, line: 1297, baseType: !2050, size: 64, offset: 8896)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !621, file: !14, line: 1304, baseType: !3614, size: 64, offset: 8960)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3615, line: 49, size: 64, elements: !3616)
!3615 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3616 = !{!3617}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3614, file: !3615, line: 50, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3615, line: 41, size: 512, align: 512, elements: !3620)
!3620 = !{!3621, !3622, !3627}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3619, file: !3615, line: 43, baseType: !329, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3619, file: !3615, line: 45, baseType: !3623, size: 192, offset: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3615, line: 29, size: 192, elements: !3624)
!3624 = !{!3625, !3626}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3623, file: !3615, line: 30, baseType: !302, size: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3623, file: !3615, line: 32, baseType: !432, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3619, file: !3615, line: 46, baseType: !432, size: 64, offset: 256)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !621, file: !14, line: 1305, baseType: !3614, size: 64, offset: 9024)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !621, file: !14, line: 1306, baseType: !941, size: 128, align: 64, offset: 9088)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !621, file: !14, line: 1307, baseType: !981, size: 256, offset: 9216)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !621, file: !14, line: 1309, baseType: !728, size: 256, offset: 9472)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !621, file: !14, line: 1314, baseType: !127, size: 32, offset: 9728)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !621, file: !14, line: 1317, baseType: !329, size: 32, align: 512, offset: 10240)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !621, file: !14, line: 1318, baseType: !302, size: 128, offset: 10304)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !621, file: !14, line: 1320, baseType: !329, size: 32, offset: 10432)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !621, file: !14, line: 1321, baseType: !302, size: 128, offset: 10496)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !615, file: !616, line: 73, baseType: !127, size: 32, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !615, file: !616, line: 74, baseType: !3639, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1897, line: 42, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !569, file: !509, line: 141, baseType: !3643, size: 64, offset: 704)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!127, !1293, !271}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !569, file: !509, line: 142, baseType: !3647, size: 64, offset: 768)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!507, !507, !3650}
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !508, file: !509, line: 96, baseType: !620, size: 64, offset: 832)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !508, file: !509, line: 97, baseType: !266, size: 64, offset: 896)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !508, file: !509, line: 98, baseType: !257, size: 64, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !509, line: 100, baseType: !3656, size: 128, offset: 1024)
!3656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !509, line: 100, size: 128, elements: !3657)
!3657 = !{!3658, !3659}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3656, file: !509, line: 101, baseType: !302, size: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3656, file: !509, line: 102, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !508, file: !509, line: 104, baseType: !302, size: 128, offset: 1152)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !508, file: !509, line: 105, baseType: !302, size: 128, offset: 1280)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !508, file: !509, line: 113, baseType: !3664, size: 128, offset: 1408)
!3664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !509, line: 109, size: 128, elements: !3665)
!3665 = !{!3666, !3667, !3668}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3664, file: !509, line: 110, baseType: !967, size: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3664, file: !509, line: 111, baseType: !523, size: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3664, file: !509, line: 112, baseType: !941, size: 128, align: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !501, file: !14, line: 1968, baseType: !3670, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!317, !507, !472, !3673}
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3675, line: 10, size: 128, elements: !3676)
!3675 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3676 = !{!3677, !3678}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3674, file: !3675, line: 11, baseType: !280, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3674, file: !3675, line: 12, baseType: !257, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !501, file: !14, line: 1969, baseType: !3680, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!127, !3639, !472, !127}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !501, file: !14, line: 1970, baseType: !3684, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!495, !472, !127, !271}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !501, file: !14, line: 1972, baseType: !3688, size: 64, offset: 256)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!127, !507, !397, !127}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !501, file: !14, line: 1974, baseType: !3692, size: 64, offset: 320)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!127, !3639, !472, !507, !438, !271}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !501, file: !14, line: 1976, baseType: !3696, size: 64, offset: 384)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!127, !507, !472, !507}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !501, file: !14, line: 1977, baseType: !3700, size: 64, offset: 448)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!127, !472, !507}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !501, file: !14, line: 1978, baseType: !3704, size: 64, offset: 512)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!127, !3639, !472, !507, !317}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !501, file: !14, line: 1980, baseType: !3708, size: 64, offset: 576)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!127, !3639, !472, !507, !438}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !501, file: !14, line: 1982, baseType: !3700, size: 64, offset: 640)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !501, file: !14, line: 1983, baseType: !3713, size: 64, offset: 704)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!127, !3639, !472, !507, !438, !625}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !501, file: !14, line: 1985, baseType: !3717, size: 64, offset: 768)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!127, !3639, !472, !507, !472, !507, !7}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !501, file: !14, line: 1987, baseType: !3721, size: 64, offset: 832)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!127, !3639, !507, !3724}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3726)
!3726 = !{!3727, !3728, !3729, !3739, !3748, !3749, !3754, !3755, !3756}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3725, file: !14, line: 227, baseType: !7, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3725, file: !14, line: 228, baseType: !438, size: 16, offset: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, scope: !3725, file: !14, line: 241, baseType: !3730, size: 32, offset: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3725, file: !14, line: 241, size: 32, elements: !3731)
!3731 = !{!3732, !3733}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3730, file: !14, line: 242, baseType: !478, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3730, file: !14, line: 243, baseType: !3734, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3735, line: 16, baseType: !3736)
!3735 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3735, line: 14, size: 32, elements: !3737)
!3737 = !{!3738}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3736, file: !3735, line: 15, baseType: !483, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, scope: !3725, file: !14, line: 245, baseType: !3740, size: 32, offset: 96)
!3740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3725, file: !14, line: 245, size: 32, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3740, file: !14, line: 246, baseType: !487, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3740, file: !14, line: 247, baseType: !3744, size: 32)
!3744 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3735, line: 20, baseType: !3745)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3735, line: 18, size: 32, elements: !3746)
!3746 = !{!3747}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3745, file: !3735, line: 19, baseType: !491, size: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3725, file: !14, line: 249, baseType: !630, size: 64, offset: 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3725, file: !14, line: 250, baseType: !3750, size: 128, offset: 192)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1224, line: 13, size: 128, elements: !3751)
!3751 = !{!3752, !3753}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3750, file: !1224, line: 14, baseType: !1223, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3750, file: !1224, line: 15, baseType: !432, size: 64, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3725, file: !14, line: 251, baseType: !3750, size: 128, offset: 320)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3725, file: !14, line: 252, baseType: !3750, size: 128, offset: 448)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3725, file: !14, line: 259, baseType: !1813, size: 64, offset: 576)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !501, file: !14, line: 1988, baseType: !3758, size: 64, offset: 896)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!127, !3639, !1293, !3761, !541, !7}
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3763, line: 22, size: 1280, elements: !3764)
!3763 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3764 = !{!3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3762, file: !3763, line: 23, baseType: !541, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3762, file: !3763, line: 24, baseType: !438, size: 16, offset: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3762, file: !3763, line: 25, baseType: !7, size: 32, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3762, file: !3763, line: 26, baseType: !1935, size: 32, offset: 96)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3762, file: !3763, line: 27, baseType: !246, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3762, file: !3763, line: 28, baseType: !246, size: 64, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3762, file: !3763, line: 41, baseType: !246, size: 64, offset: 256)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3762, file: !3763, line: 42, baseType: !625, size: 32, offset: 320)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3762, file: !3763, line: 43, baseType: !625, size: 32, offset: 352)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3762, file: !3763, line: 44, baseType: !478, size: 32, offset: 384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3762, file: !3763, line: 45, baseType: !487, size: 32, offset: 416)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3762, file: !3763, line: 46, baseType: !630, size: 64, offset: 448)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3762, file: !3763, line: 47, baseType: !3750, size: 128, offset: 512)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3762, file: !3763, line: 48, baseType: !3750, size: 128, offset: 640)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3762, file: !3763, line: 49, baseType: !3750, size: 128, offset: 768)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3762, file: !3763, line: 50, baseType: !3750, size: 128, offset: 896)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3762, file: !3763, line: 51, baseType: !246, size: 64, offset: 1024)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3762, file: !3763, line: 52, baseType: !246, size: 64, offset: 1088)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3762, file: !3763, line: 53, baseType: !541, size: 32, offset: 1152)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3762, file: !3763, line: 54, baseType: !541, size: 32, offset: 1184)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3762, file: !3763, line: 55, baseType: !246, size: 64, offset: 1216)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !501, file: !14, line: 1990, baseType: !3787, size: 64, offset: 960)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!429, !507, !397, !287}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !501, file: !14, line: 1991, baseType: !3791, size: 64, offset: 1024)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!127, !472, !3794, !246, !246}
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !501, file: !14, line: 1993, baseType: !3797, size: 64, offset: 1088)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!127, !472, !127}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !501, file: !14, line: 1994, baseType: !3801, size: 64, offset: 1152)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!127, !472, !507, !1813, !7, !438}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !501, file: !14, line: 1997, baseType: !3805, size: 64, offset: 1216)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!127, !3639, !472, !1813, !438}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !501, file: !14, line: 1999, baseType: !3809, size: 64, offset: 1280)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!495, !3639, !507, !127}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !501, file: !14, line: 2001, baseType: !3813, size: 64, offset: 1344)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!127, !3639, !507, !495, !127}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !501, file: !14, line: 2003, baseType: !3817, size: 64, offset: 1408)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!127, !3639, !507, !3820}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !501, file: !14, line: 2005, baseType: !3823, size: 64, offset: 1472)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!127, !507, !3820}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !501, file: !14, line: 2006, baseType: !3827, size: 64, offset: 1536)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!3830, !472}
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3832)
!3832 = !{!3833, !3840}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3831, file: !14, line: 3193, baseType: !3834, size: 128)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3835, line: 296, size: 128, elements: !3836)
!3835 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3836 = !{!3837, !3838, !3839}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3834, file: !3835, line: 297, baseType: !329, size: 32)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3834, file: !3835, line: 299, baseType: !1235, size: 32, offset: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3834, file: !3835, line: 300, baseType: !257, size: 64, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3831, file: !14, line: 3194, baseType: !541, size: 32, offset: 128)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !473, file: !14, line: 655, baseType: !620, size: 64, offset: 448)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !473, file: !14, line: 656, baseType: !468, size: 64, offset: 512)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !473, file: !14, line: 659, baseType: !257, size: 64, offset: 576)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !473, file: !14, line: 663, baseType: !266, size: 64, offset: 640)
!3845 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !14, line: 671, baseType: !3846, size: 32, offset: 704)
!3846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !14, line: 671, size: 32, elements: !3847)
!3847 = !{!3848, !3850}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3846, file: !14, line: 672, baseType: !3849, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3846, file: !14, line: 673, baseType: !7, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !473, file: !14, line: 675, baseType: !625, size: 32, offset: 736)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !473, file: !14, line: 676, baseType: !630, size: 64, offset: 768)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !473, file: !14, line: 677, baseType: !3750, size: 128, offset: 832)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !473, file: !14, line: 678, baseType: !3750, size: 128, offset: 960)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !473, file: !14, line: 679, baseType: !3750, size: 128, offset: 1088)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !473, file: !14, line: 680, baseType: !329, size: 32, offset: 1216)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !473, file: !14, line: 681, baseType: !367, size: 16, offset: 1248)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !473, file: !14, line: 682, baseType: !357, size: 8, offset: 1264)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !473, file: !14, line: 683, baseType: !357, size: 8, offset: 1272)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !473, file: !14, line: 684, baseType: !1371, size: 64, offset: 1280)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !473, file: !14, line: 691, baseType: !266, size: 64, offset: 1344)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !473, file: !14, line: 692, baseType: !1383, size: 320, offset: 1408)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !473, file: !14, line: 694, baseType: !266, size: 64, offset: 1728)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !473, file: !14, line: 695, baseType: !266, size: 64, offset: 1792)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !473, file: !14, line: 697, baseType: !967, size: 128, offset: 1856)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !473, file: !14, line: 698, baseType: !302, size: 128, offset: 1984)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !473, file: !14, line: 707, baseType: !302, size: 128, offset: 2112)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !473, file: !14, line: 708, baseType: !302, size: 128, offset: 2240)
!3869 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !14, line: 709, baseType: !3870, size: 128, offset: 2368)
!3870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !14, line: 709, size: 128, elements: !3871)
!3871 = !{!3872, !3873}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3870, file: !14, line: 710, baseType: !1091, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3870, file: !14, line: 711, baseType: !941, size: 128, align: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !473, file: !14, line: 713, baseType: !734, size: 64, offset: 2496)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !473, file: !14, line: 714, baseType: !734, size: 64, offset: 2560)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !473, file: !14, line: 715, baseType: !349, size: 32, offset: 2624)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !473, file: !14, line: 716, baseType: !349, size: 32, offset: 2656)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !473, file: !14, line: 717, baseType: !349, size: 32, offset: 2688)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !473, file: !14, line: 719, baseType: !349, size: 32, offset: 2720)
!3880 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !14, line: 721, baseType: !3881, size: 64, offset: 2752)
!3881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !14, line: 721, size: 64, elements: !3882)
!3882 = !{!3883, !3884}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3881, file: !14, line: 722, baseType: !2081, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3881, file: !14, line: 723, baseType: !1114, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !473, file: !14, line: 725, baseType: !3886, size: 64, offset: 2816)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !473, file: !14, line: 726, baseType: !469, size: 1536, align: 64, offset: 2880)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !473, file: !14, line: 727, baseType: !302, size: 128, offset: 4416)
!3890 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !14, line: 728, baseType: !3891, size: 64, offset: 4544)
!3891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !14, line: 728, size: 64, elements: !3892)
!3892 = !{!3893, !3894, !3897, !3898}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3891, file: !14, line: 729, baseType: !2486, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3891, file: !14, line: 730, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3891, file: !14, line: 731, baseType: !397, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3891, file: !14, line: 732, baseType: !7, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !473, file: !14, line: 735, baseType: !542, size: 32, offset: 4608)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !473, file: !14, line: 738, baseType: !542, size: 32, offset: 4640)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !473, file: !14, line: 739, baseType: !3576, size: 64, offset: 4672)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !473, file: !14, line: 750, baseType: !257, size: 64, offset: 4736)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !469, file: !14, line: 474, baseType: !3834, size: 128, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !469, file: !14, line: 475, baseType: !1383, size: 320, offset: 192)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !469, file: !14, line: 476, baseType: !1235, size: 32, offset: 512)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !469, file: !14, line: 477, baseType: !349, size: 32, offset: 544)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !469, file: !14, line: 482, baseType: !1669, size: 128, offset: 576)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !469, file: !14, line: 483, baseType: !266, size: 64, offset: 704)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !469, file: !14, line: 484, baseType: !266, size: 64, offset: 768)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !469, file: !14, line: 485, baseType: !3911, size: 64, offset: 832)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3913)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3914)
!3914 = !{!3915, !3919, !3989, !3993, !3997, !4003, !4007, !4011, !4016, !4020, !4024, !4028, !4029, !4033, !4037, !4041, !4046, !4050, !4057, !4058}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3913, file: !14, line: 405, baseType: !3916, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!127, !2273, !1126}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3913, file: !14, line: 406, baseType: !3920, size: 64, offset: 64)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!127, !1813, !3923}
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3925)
!3925 = !{!3926, !3956, !3970}
!3926 = !DIDerivedType(tag: DW_TAG_member, scope: !3924, file: !38, line: 295, baseType: !3927, size: 512)
!3927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3924, file: !38, line: 295, size: 512, elements: !3928)
!3928 = !{!3929, !3955}
!3929 = !DIDerivedType(tag: DW_TAG_member, scope: !3927, file: !38, line: 296, baseType: !3930, size: 448)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3927, file: !38, line: 296, size: 448, elements: !3931)
!3931 = !{!3932, !3933, !3942, !3943, !3944, !3953, !3954}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3930, file: !38, line: 298, baseType: !266, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !38, line: 299, baseType: !3934, size: 128, offset: 64)
!3934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3930, file: !38, line: 299, size: 128, elements: !3935)
!3935 = !{!3936, !3937}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3934, file: !38, line: 300, baseType: !302, size: 128)
!3937 = !DIDerivedType(tag: DW_TAG_member, scope: !3934, file: !38, line: 302, baseType: !3938, size: 128)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3934, file: !38, line: 302, size: 128, elements: !3939)
!3939 = !{!3940, !3941}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3938, file: !38, line: 303, baseType: !257, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3938, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3930, file: !38, line: 310, baseType: !468, size: 64, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3930, file: !38, line: 311, baseType: !266, size: 64, offset: 256)
!3944 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !38, line: 312, baseType: !3945, size: 64, offset: 320)
!3945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3930, file: !38, line: 312, size: 64, elements: !3946)
!3946 = !{!3947, !3948}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3945, file: !38, line: 313, baseType: !257, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3945, file: !38, line: 314, baseType: !3949, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3950)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3951)
!3951 = !{!3952}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3950, file: !38, line: 256, baseType: !266, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3930, file: !38, line: 316, baseType: !349, size: 32, offset: 384)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3930, file: !38, line: 317, baseType: !349, size: 32, offset: 416)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3927, file: !38, line: 323, baseType: !2274, size: 512, align: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, scope: !3924, file: !38, line: 325, baseType: !3957, size: 512, offset: 512)
!3957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3924, file: !38, line: 325, size: 512, elements: !3958)
!3958 = !{!3959, !3969}
!3959 = !DIDerivedType(tag: DW_TAG_member, scope: !3957, file: !38, line: 326, baseType: !3960, size: 320)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3957, file: !38, line: 326, size: 320, elements: !3961)
!3961 = !{!3962, !3963, !3964, !3965, !3966, !3967, !3968}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3960, file: !38, line: 327, baseType: !266, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3960, file: !38, line: 328, baseType: !266, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3960, file: !38, line: 329, baseType: !266, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3960, file: !38, line: 331, baseType: !349, size: 32, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3960, file: !38, line: 332, baseType: !349, size: 32, offset: 224)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3960, file: !38, line: 333, baseType: !349, size: 32, offset: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3960, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3957, file: !38, line: 339, baseType: !2274, size: 512, align: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, scope: !3924, file: !38, line: 341, baseType: !3971, size: 512, offset: 1024)
!3971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3924, file: !38, line: 341, size: 512, elements: !3972)
!3972 = !{!3973, !3982, !3988}
!3973 = !DIDerivedType(tag: DW_TAG_member, scope: !3971, file: !38, line: 342, baseType: !3974, size: 384)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3971, file: !38, line: 342, size: 384, elements: !3975)
!3975 = !{!3976, !3977, !3978, !3979, !3980, !3981}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3974, file: !38, line: 343, baseType: !266, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3974, file: !38, line: 344, baseType: !266, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3974, file: !38, line: 346, baseType: !257, size: 64, offset: 128)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3974, file: !38, line: 347, baseType: !257, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3974, file: !38, line: 348, baseType: !257, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3974, file: !38, line: 349, baseType: !257, size: 64, offset: 320)
!3982 = !DIDerivedType(tag: DW_TAG_member, scope: !3971, file: !38, line: 352, baseType: !3983, size: 256)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3971, file: !38, line: 352, size: 256, elements: !3984)
!3984 = !{!3985, !3986, !3987}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3983, file: !38, line: 353, baseType: !266, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3983, file: !38, line: 354, baseType: !266, size: 64, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3983, file: !38, line: 356, baseType: !302, size: 128, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3971, file: !38, line: 359, baseType: !2274, size: 512, align: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3913, file: !14, line: 409, baseType: !3990, size: 64, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!127, !468, !1126}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3913, file: !14, line: 412, baseType: !3994, size: 64, offset: 192)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!271, !468, !3923}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3913, file: !14, line: 414, baseType: !3998, size: 64, offset: 256)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{null, !4001}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3913, file: !14, line: 416, baseType: !4004, size: 64, offset: 320)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!127, !1813, !468, !630, !7, !3325, !2501}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3913, file: !14, line: 419, baseType: !4008, size: 64, offset: 384)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!127, !1813, !468, !630, !7, !7, !2273, !257}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3913, file: !14, line: 424, baseType: !4012, size: 64, offset: 448)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!4015, !468, !4015}
!4015 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !272, line: 131, baseType: !246)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3913, file: !14, line: 425, baseType: !4017, size: 64, offset: 512)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{null, !3923, !287, !287}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3913, file: !14, line: 426, baseType: !4021, size: 64, offset: 576)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!271, !3923, !1235}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3913, file: !14, line: 427, baseType: !4025, size: 64, offset: 640)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{null, !3923}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3913, file: !14, line: 428, baseType: !2100, size: 64, offset: 704)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3913, file: !14, line: 433, baseType: !4030, size: 64, offset: 768)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!127, !468, !3923, !3923, !74}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3913, file: !14, line: 435, baseType: !4034, size: 64, offset: 832)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!127, !3923}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3913, file: !14, line: 436, baseType: !4038, size: 64, offset: 896)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!271, !3923, !287, !287}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3913, file: !14, line: 438, baseType: !4042, size: 64, offset: 960)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{null, !3923, !4045, !4045}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3913, file: !14, line: 439, baseType: !4047, size: 64, offset: 1024)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!127, !468, !2273}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3913, file: !14, line: 442, baseType: !4051, size: 64, offset: 1088)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!127, !4054, !1813, !4056}
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3913, file: !14, line: 444, baseType: !2493, size: 64, offset: 1152)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3913, file: !14, line: 445, baseType: !4059, size: 64, offset: 1216)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!127, !2103, !2125}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !14, line: 486, baseType: !266, size: 64, offset: 896)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !469, file: !14, line: 487, baseType: !1383, size: 320, offset: 960)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !469, file: !14, line: 488, baseType: !2536, size: 32, offset: 1280)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !469, file: !14, line: 489, baseType: !329, size: 32, offset: 1312)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !469, file: !14, line: 490, baseType: !302, size: 128, offset: 1344)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !469, file: !14, line: 491, baseType: !257, size: 64, offset: 1472)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !459, file: !423, line: 180, baseType: !4069, size: 64, offset: 320)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!429, !1813, !322, !458, !397, !630, !287}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !459, file: !423, line: 182, baseType: !4069, size: 64, offset: 384)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !459, file: !423, line: 184, baseType: !4074, size: 64, offset: 448)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!127, !1813, !322, !458, !2164}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !447, file: !423, line: 90, baseType: !4078, size: 64, offset: 192)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !447, file: !423, line: 91, baseType: !4080, size: 64, offset: 256)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !413, file: !314, line: 120, baseType: !4082, size: 64, offset: 192)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!4085, !380}
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4087)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4088)
!4088 = !{!4089, !4090, !4094, !4098, !4104, !4108}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4087, file: !82, line: 40, baseType: !81, size: 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4087, file: !82, line: 41, baseType: !4091, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!271}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4087, file: !82, line: 42, baseType: !4095, size: 64, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!257}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4087, file: !82, line: 43, baseType: !4099, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!2625, !4102}
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4087, file: !82, line: 44, baseType: !4105, size: 64, offset: 256)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!2625}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4087, file: !82, line: 45, baseType: !280, size: 64, offset: 320)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !413, file: !314, line: 121, baseType: !4110, size: 64, offset: 256)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!2625, !380}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !413, file: !314, line: 122, baseType: !4114, size: 64, offset: 320)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{null, !380, !4117, !4118}
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !313, file: !314, line: 70, baseType: !4120, size: 64, offset: 384)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4122, line: 190, size: 1152, elements: !4123)
!4122 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4123 = !{!4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4215, !4216, !4217, !4218, !4219, !4222}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4121, file: !4122, line: 191, baseType: !349, size: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4121, file: !4122, line: 192, baseType: !349, size: 32, offset: 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4121, file: !4122, line: 202, baseType: !4120, size: 64, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4121, file: !4122, line: 203, baseType: !317, size: 64, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4121, file: !4122, line: 205, baseType: !833, size: 192, align: 64, offset: 192)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4121, file: !4122, line: 207, baseType: !2625, size: 64, offset: 384)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4121, file: !4122, line: 208, baseType: !7, size: 32, offset: 448)
!4131 = !DIDerivedType(tag: DW_TAG_member, scope: !4121, file: !4122, line: 209, baseType: !4132, size: 256, offset: 512)
!4132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4121, file: !4122, line: 209, size: 256, elements: !4133)
!4133 = !{!4134, !4143, !4147}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4132, file: !4122, line: 210, baseType: !4135, size: 256)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4122, line: 153, size: 256, elements: !4136)
!4136 = !{!4137, !4138, !4139, !4142}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4135, file: !4122, line: 154, baseType: !266, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4135, file: !4122, line: 156, baseType: !1672, size: 64, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4135, file: !4122, line: 162, baseType: !4140, size: 64, offset: 128)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4122, line: 162, flags: DIFlagFwdDecl)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4135, file: !4122, line: 167, baseType: !266, size: 64, offset: 192)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4132, file: !4122, line: 211, baseType: !4144, size: 64)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4122, line: 170, size: 64, elements: !4145)
!4145 = !{!4146}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4144, file: !4122, line: 171, baseType: !4120, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4132, file: !4122, line: 212, baseType: !4148, size: 256)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4122, line: 174, size: 256, elements: !4149)
!4149 = !{!4150, !4210, !4213, !4214}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4148, file: !4122, line: 175, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4153)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4122, line: 271, size: 768, elements: !4154)
!4154 = !{!4155, !4175, !4179, !4183, !4187, !4191, !4195, !4199, !4200, !4201, !4202, !4206}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4153, file: !4122, line: 276, baseType: !4156, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!127, !4159}
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4122, line: 251, size: 1216, elements: !4161)
!4161 = !{!4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4160, file: !4122, line: 253, baseType: !4120, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4160, file: !4122, line: 254, baseType: !1813, size: 64, offset: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4160, file: !4122, line: 255, baseType: !1163, size: 64, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4160, file: !4122, line: 256, baseType: !257, size: 64, offset: 192)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4160, file: !4122, line: 259, baseType: !728, size: 256, offset: 256)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4160, file: !4122, line: 260, baseType: !728, size: 256, offset: 512)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4160, file: !4122, line: 261, baseType: !127, size: 32, offset: 768)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4160, file: !4122, line: 262, baseType: !302, size: 128, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4160, file: !4122, line: 263, baseType: !397, size: 64, offset: 960)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4160, file: !4122, line: 265, baseType: !287, size: 64, offset: 1024)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4160, file: !4122, line: 266, baseType: !271, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4160, file: !4122, line: 267, baseType: !271, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4160, file: !4122, line: 268, baseType: !2209, size: 64, offset: 1152)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4153, file: !4122, line: 277, baseType: !4176, size: 64, offset: 64)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{null, !4159}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4153, file: !4122, line: 290, baseType: !4180, size: 64, offset: 128)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!127, !1163, !257}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4153, file: !4122, line: 292, baseType: !4184, size: 64, offset: 192)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!257, !1163, !2094}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4153, file: !4122, line: 293, baseType: !4188, size: 64, offset: 256)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!257, !1163, !257, !2094}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4153, file: !4122, line: 294, baseType: !4192, size: 64, offset: 320)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{null, !1163, !257}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4153, file: !4122, line: 296, baseType: !4196, size: 64, offset: 384)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!429, !4159, !397, !287, !630}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4153, file: !4122, line: 306, baseType: !287, size: 64, offset: 448)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4153, file: !4122, line: 313, baseType: !271, size: 8, offset: 512)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4153, file: !4122, line: 314, baseType: !4196, size: 64, offset: 576)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4153, file: !4122, line: 317, baseType: !4203, size: 64, offset: 640)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!2151, !4159, !2153}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4153, file: !4122, line: 320, baseType: !4207, size: 64, offset: 704)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!127, !4159, !2164}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4148, file: !4122, line: 176, baseType: !4211, size: 64, offset: 64)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4122, line: 35, flags: DIFlagFwdDecl)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4148, file: !4122, line: 177, baseType: !630, size: 64, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4148, file: !4122, line: 178, baseType: !4120, size: 64, offset: 192)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4121, file: !4122, line: 215, baseType: !257, size: 64, offset: 768)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4121, file: !4122, line: 221, baseType: !246, size: 64, offset: 832)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4121, file: !4122, line: 223, baseType: !367, size: 16, offset: 896)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4121, file: !4122, line: 224, baseType: !438, size: 16, offset: 912)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4121, file: !4122, line: 225, baseType: !4220, size: 64, offset: 960)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4122, line: 36, flags: DIFlagFwdDecl)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4121, file: !4122, line: 227, baseType: !941, size: 128, align: 64, offset: 1024)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !313, file: !314, line: 71, baseType: !4224, size: 32, offset: 448)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4225, line: 19, size: 32, elements: !4226)
!4225 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4226 = !{!4227}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4224, file: !4225, line: 20, baseType: !1503, size: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !313, file: !314, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !313, file: !314, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !313, file: !314, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !313, file: !314, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !313, file: !314, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !310, file: !112, line: 707, baseType: !309, size: 64, offset: 512)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !310, file: !112, line: 709, baseType: !4235, size: 64, offset: 576)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !112, line: 37, flags: DIFlagFwdDecl)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !310, file: !112, line: 711, baseType: !317, size: 64, offset: 640)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !310, file: !112, line: 712, baseType: !4239, size: 64, offset: 704)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4241)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !112, line: 89, size: 384, elements: !4242)
!4242 = !{!4243, !4244, !4245, !4251, !4256, !4260}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4241, file: !112, line: 90, baseType: !317, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4241, file: !112, line: 91, baseType: !444, size: 64, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4241, file: !112, line: 92, baseType: !4246, size: 64, offset: 128)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!127, !4249, !392}
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4241, file: !112, line: 93, baseType: !4252, size: 64, offset: 192)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!397, !4249, !4255, !4117, !4118}
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4241, file: !112, line: 95, baseType: !4257, size: 64, offset: 256)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !309}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4241, file: !112, line: 97, baseType: !4261, size: 64, offset: 320)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4263)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !119, line: 286, size: 1472, elements: !4264)
!4264 = !{!4265, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4263, file: !119, line: 287, baseType: !4266, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!127, !309}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4263, file: !119, line: 288, baseType: !4257, size: 64, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4263, file: !119, line: 289, baseType: !4266, size: 64, offset: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4263, file: !119, line: 290, baseType: !4266, size: 64, offset: 192)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4263, file: !119, line: 291, baseType: !4266, size: 64, offset: 256)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4263, file: !119, line: 292, baseType: !4266, size: 64, offset: 320)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4263, file: !119, line: 293, baseType: !4266, size: 64, offset: 384)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4263, file: !119, line: 294, baseType: !4266, size: 64, offset: 448)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4263, file: !119, line: 295, baseType: !4266, size: 64, offset: 512)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4263, file: !119, line: 296, baseType: !4266, size: 64, offset: 576)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4263, file: !119, line: 297, baseType: !4266, size: 64, offset: 640)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4263, file: !119, line: 298, baseType: !4266, size: 64, offset: 704)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4263, file: !119, line: 299, baseType: !4266, size: 64, offset: 768)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4263, file: !119, line: 300, baseType: !4266, size: 64, offset: 832)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4263, file: !119, line: 301, baseType: !4266, size: 64, offset: 896)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4263, file: !119, line: 302, baseType: !4266, size: 64, offset: 960)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4263, file: !119, line: 303, baseType: !4266, size: 64, offset: 1024)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4263, file: !119, line: 304, baseType: !4266, size: 64, offset: 1088)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4263, file: !119, line: 305, baseType: !4266, size: 64, offset: 1152)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4263, file: !119, line: 306, baseType: !4266, size: 64, offset: 1216)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4263, file: !119, line: 307, baseType: !4266, size: 64, offset: 1280)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4263, file: !119, line: 308, baseType: !4266, size: 64, offset: 1344)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4263, file: !119, line: 309, baseType: !4266, size: 64, offset: 1408)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !310, file: !112, line: 714, baseType: !4292, size: 64, offset: 768)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4294)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4295, line: 80, size: 1344, elements: !4296)
!4295 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4710}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4294, file: !4295, line: 81, baseType: !317, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4294, file: !4295, line: 82, baseType: !317, size: 64, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4294, file: !4295, line: 83, baseType: !444, size: 64, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4294, file: !4295, line: 84, baseType: !444, size: 64, offset: 192)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4294, file: !4295, line: 85, baseType: !444, size: 64, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4294, file: !4295, line: 87, baseType: !4303, size: 64, offset: 320)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!127, !309, !4306}
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4308)
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4314, !4315, !4328, !4338, !4339, !4340, !4341, !4342, !4350, !4351, !4352, !4353, !4354, !4355}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4307, file: !88, line: 97, baseType: !317, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4307, file: !88, line: 98, baseType: !4292, size: 64, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4307, file: !88, line: 100, baseType: !657, size: 64, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4307, file: !88, line: 101, baseType: !317, size: 64, offset: 192)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4307, file: !88, line: 103, baseType: !271, size: 8, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4307, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4307, file: !88, line: 106, baseType: !4316, size: 64, offset: 320)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4318)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4319, line: 282, size: 1600, elements: !4320)
!4319 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4320 = !{!4321, !4322, !4323, !4327}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4318, file: !4319, line: 283, baseType: !3579, size: 256)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4318, file: !4319, line: 284, baseType: !3579, size: 256, offset: 256)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4318, file: !4319, line: 285, baseType: !4324, size: 1024, offset: 512)
!4324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 1024, elements: !4325)
!4325 = !{!4326}
!4326 = !DISubrange(count: 128)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4318, file: !4319, line: 286, baseType: !2625, size: 64, offset: 1536)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4307, file: !88, line: 107, baseType: !4329, size: 64, offset: 384)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4331)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4319, line: 217, size: 256, elements: !4332)
!4332 = !{!4333, !4334, !4336, !4337}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4331, file: !4319, line: 218, baseType: !3586, size: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4331, file: !4319, line: 219, baseType: !4335, size: 64, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4319, line: 15, baseType: !266)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4331, file: !4319, line: 220, baseType: !542, size: 32, offset: 192)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4331, file: !4319, line: 221, baseType: !542, size: 32, offset: 224)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4307, file: !88, line: 109, baseType: !4266, size: 64, offset: 448)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4307, file: !88, line: 110, baseType: !4257, size: 64, offset: 512)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4307, file: !88, line: 111, baseType: !4266, size: 64, offset: 576)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4307, file: !88, line: 112, baseType: !4257, size: 64, offset: 640)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4307, file: !88, line: 113, baseType: !4343, size: 64, offset: 704)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!127, !309, !4346}
!4346 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !119, line: 60, baseType: !4347)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !119, line: 58, size: 32, elements: !4348)
!4348 = !{!4349}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4347, file: !119, line: 59, baseType: !127, size: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4307, file: !88, line: 114, baseType: !4266, size: 64, offset: 768)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4307, file: !88, line: 115, baseType: !444, size: 64, offset: 832)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4307, file: !88, line: 116, baseType: !444, size: 64, offset: 896)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4307, file: !88, line: 118, baseType: !4261, size: 64, offset: 960)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4307, file: !88, line: 119, baseType: !4257, size: 64, offset: 1024)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4307, file: !88, line: 121, baseType: !4356, size: 64, offset: 1088)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4294, file: !4295, line: 88, baseType: !4246, size: 64, offset: 384)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4294, file: !4295, line: 89, baseType: !4266, size: 64, offset: 448)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4294, file: !4295, line: 90, baseType: !4257, size: 64, offset: 512)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4294, file: !4295, line: 91, baseType: !4257, size: 64, offset: 576)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4294, file: !4295, line: 92, baseType: !4257, size: 64, offset: 640)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4294, file: !4295, line: 94, baseType: !4266, size: 64, offset: 704)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4294, file: !4295, line: 95, baseType: !4266, size: 64, offset: 768)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4294, file: !4295, line: 97, baseType: !4343, size: 64, offset: 832)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4294, file: !4295, line: 98, baseType: !4266, size: 64, offset: 896)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4294, file: !4295, line: 100, baseType: !4266, size: 64, offset: 960)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4294, file: !4295, line: 102, baseType: !4266, size: 64, offset: 1024)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4294, file: !4295, line: 103, baseType: !4257, size: 64, offset: 1088)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4294, file: !4295, line: 105, baseType: !4261, size: 64, offset: 1152)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4294, file: !4295, line: 107, baseType: !4372, size: 64, offset: 1216)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4374)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !94, line: 264, size: 1216, elements: !4375)
!4375 = !{!4376, !4380, !4384, !4514, !4628, !4629, !4630, !4631, !4637, !4641, !4675, !4679, !4683, !4684, !4702, !4703, !4707, !4708, !4709}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "capable", scope: !4374, file: !94, line: 265, baseType: !4377, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!271, !309, !93}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "hw_info", scope: !4374, file: !94, line: 266, baseType: !4381, size: 64, offset: 64)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!257, !309, !2702, !2702}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "domain_alloc", scope: !4374, file: !94, line: 269, baseType: !4385, size: 64, offset: 128)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!4388, !7}
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_domain", file: !94, line: 95, size: 704, elements: !4390)
!4390 = !{!4391, !4392, !4453, !4454, !4460, !4463, !4496, !4497}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4389, file: !94, line: 96, baseType: !7, size: 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4389, file: !94, line: 97, baseType: !4393, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4395)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_domain_ops", file: !94, line: 332, size: 896, elements: !4396)
!4396 = !{!4397, !4401, !4406, !4410, !4415, !4419, !4423, !4427, !4431, !4435, !4440, !4444, !4448, !4452}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "attach_dev", scope: !4395, file: !94, line: 333, baseType: !4398, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!127, !4388, !309}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "set_dev_pasid", scope: !4395, file: !94, line: 334, baseType: !4402, size: 64, offset: 64)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!127, !4388, !309, !4405}
!4405 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioasid_t", file: !94, line: 202, baseType: !7)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4395, file: !94, line: 337, baseType: !4407, size: 64, offset: 128)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!127, !4388, !266, !3329, !287, !127, !1235}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !4395, file: !94, line: 339, baseType: !4411, size: 64, offset: 192)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!127, !4388, !266, !3329, !287, !287, !127, !1235, !4414}
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4395, file: !94, line: 342, baseType: !4416, size: 64, offset: 256)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!287, !4388, !266, !287, !295}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_pages", scope: !4395, file: !94, line: 344, baseType: !4420, size: 64, offset: 320)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!287, !4388, !266, !287, !287, !295}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "flush_iotlb_all", scope: !4395, file: !94, line: 348, baseType: !4424, size: 64, offset: 384)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{null, !4388}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "iotlb_sync_map", scope: !4395, file: !94, line: 349, baseType: !4428, size: 64, offset: 448)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{null, !4388, !266, !287}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "iotlb_sync", scope: !4395, file: !94, line: 351, baseType: !4432, size: 64, offset: 512)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{null, !4388, !295}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "iova_to_phys", scope: !4395, file: !94, line: 354, baseType: !4436, size: 64, offset: 576)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!3329, !4388, !4439}
!4439 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !272, line: 149, baseType: !246)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "enforce_cache_coherency", scope: !4395, file: !94, line: 357, baseType: !4441, size: 64, offset: 640)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!271, !4388}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "enable_nesting", scope: !4395, file: !94, line: 358, baseType: !4445, size: 64, offset: 704)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!127, !4388}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "set_pgtable_quirks", scope: !4395, file: !94, line: 359, baseType: !4449, size: 64, offset: 768)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!127, !4388, !266}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4395, file: !94, line: 362, baseType: !4424, size: 64, offset: 832)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "pgsize_bitmap", scope: !4389, file: !94, line: 98, baseType: !266, size: 64, offset: 128)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !4389, file: !94, line: 99, baseType: !4455, size: 192, offset: 192)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_domain_geometry", file: !94, line: 53, size: 192, elements: !4456)
!4456 = !{!4457, !4458, !4459}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_start", scope: !4455, file: !94, line: 54, baseType: !4439, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_end", scope: !4455, file: !94, line: 55, baseType: !4439, size: 64, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "force_aperture", scope: !4455, file: !94, line: 56, baseType: !271, size: 8, offset: 128)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "iova_cookie", scope: !4389, file: !94, line: 100, baseType: !4461, size: 64, offset: 384)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_dma_cookie", file: !94, line: 43, flags: DIFlagFwdDecl)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "iopf_handler", scope: !4389, file: !94, line: 101, baseType: !4464, size: 64, offset: 448)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!209, !4467, !257}
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault", file: !210, line: 115, size: 512, elements: !4469)
!4469 = !{!4470, !4471, !4472}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4468, file: !210, line: 116, baseType: !542, size: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4468, file: !210, line: 117, baseType: !542, size: 32, offset: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, scope: !4468, file: !210, line: 118, baseType: !4473, size: 448, offset: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4468, file: !210, line: 118, size: 448, elements: !4474)
!4474 = !{!4475, !4484, !4494}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4473, file: !210, line: 119, baseType: !4476, size: 256)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_unrecoverable", file: !210, line: 69, size: 256, elements: !4477)
!4477 = !{!4478, !4479, !4480, !4481, !4482, !4483}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !4476, file: !210, line: 70, baseType: !542, size: 32)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4476, file: !210, line: 74, baseType: !542, size: 32, offset: 32)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !4476, file: !210, line: 75, baseType: !542, size: 32, offset: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4476, file: !210, line: 76, baseType: !542, size: 32, offset: 96)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4476, file: !210, line: 77, baseType: !248, size: 64, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "fetch_addr", scope: !4476, file: !210, line: 78, baseType: !248, size: 64, offset: 192)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "prm", scope: !4473, file: !210, line: 120, baseType: !4485, size: 320)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_page_request", file: !210, line: 94, size: 320, elements: !4486)
!4486 = !{!4487, !4488, !4489, !4490, !4491, !4492}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4485, file: !210, line: 99, baseType: !542, size: 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !4485, file: !210, line: 100, baseType: !542, size: 32, offset: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "grpid", scope: !4485, file: !210, line: 101, baseType: !542, size: 32, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4485, file: !210, line: 102, baseType: !542, size: 32, offset: 96)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4485, file: !210, line: 103, baseType: !248, size: 64, offset: 128)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4485, file: !210, line: 104, baseType: !4493, size: 128, offset: 192)
!4493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 128, elements: !840)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !4473, file: !210, line: 121, baseType: !4495, size: 448)
!4495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 448, elements: !664)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "fault_data", scope: !4389, file: !94, line: 103, baseType: !257, size: 64, offset: 512)
!4497 = !DIDerivedType(tag: DW_TAG_member, scope: !4389, file: !94, line: 104, baseType: !4498, size: 128, offset: 576)
!4498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4389, file: !94, line: 104, size: 128, elements: !4499)
!4499 = !{!4500, !4509}
!4500 = !DIDerivedType(tag: DW_TAG_member, scope: !4498, file: !94, line: 105, baseType: !4501, size: 128)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4498, file: !94, line: 105, size: 128, elements: !4502)
!4502 = !{!4503, !4508}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4501, file: !94, line: 106, baseType: !4504, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_typedef, name: "iommu_fault_handler_t", file: !94, line: 49, baseType: !4505)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!127, !4388, !309, !266, !127, !257}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "handler_token", scope: !4501, file: !94, line: 107, baseType: !257, size: 64, offset: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, scope: !4498, file: !94, line: 109, baseType: !4510, size: 128)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4498, file: !94, line: 109, size: 128, elements: !4511)
!4511 = !{!4512, !4513}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !4510, file: !94, line: 110, baseType: !1786, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4510, file: !94, line: 111, baseType: !127, size: 32, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "probe_device", scope: !4374, file: !94, line: 271, baseType: !4515, size: 64, offset: 192)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!4518, !309}
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_device", file: !94, line: 373, size: 384, elements: !4520)
!4520 = !{!4521, !4522, !4523, !4626, !4627}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4519, file: !94, line: 374, baseType: !302, size: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4519, file: !94, line: 375, baseType: !4372, size: 64, offset: 128)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4519, file: !94, line: 376, baseType: !4524, size: 64, offset: 192)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4526, line: 41, size: 512, elements: !4527)
!4526 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4527 = !{!4528, !4529, !4622, !4623, !4624, !4625}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4525, file: !4526, line: 42, baseType: !4524, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4525, file: !4526, line: 43, baseType: !4530, size: 64, offset: 64)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4532)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4526, line: 125, size: 1408, elements: !4533)
!4533 = !{!4534, !4538, !4542, !4548, !4552, !4553, !4557, !4561, !4565, !4569, !4573, !4574, !4578, !4582, !4586, !4597, !4598, !4599, !4600, !4610, !4614, !4618}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4532, file: !4526, line: 126, baseType: !4535, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!4524, !4524}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4532, file: !4526, line: 127, baseType: !4539, size: 64, offset: 64)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{null, !4524}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4532, file: !4526, line: 128, baseType: !4543, size: 64, offset: 128)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!271, !4546}
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4525)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4532, file: !4526, line: 129, baseType: !4549, size: 64, offset: 192)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!2625, !4546, !4249}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4532, file: !4526, line: 131, baseType: !4543, size: 64, offset: 256)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4532, file: !4526, line: 133, baseType: !4554, size: 64, offset: 320)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!101, !4546}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4532, file: !4526, line: 134, baseType: !4558, size: 64, offset: 384)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!271, !4546, !317}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4532, file: !4526, line: 136, baseType: !4562, size: 64, offset: 448)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!127, !4546, !317, !7, !257, !287}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4532, file: !4526, line: 141, baseType: !4566, size: 64, offset: 512)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!127, !4546, !317, !1058, !287}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4532, file: !4526, line: 144, baseType: !4570, size: 64, offset: 576)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!317, !4546}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4532, file: !4526, line: 145, baseType: !4570, size: 64, offset: 640)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4532, file: !4526, line: 146, baseType: !4575, size: 64, offset: 704)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!4524, !4546}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4532, file: !4526, line: 148, baseType: !4579, size: 64, offset: 768)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!4524, !4546, !4524}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4532, file: !4526, line: 151, baseType: !4583, size: 64, offset: 832)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!4524, !4546, !317}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4532, file: !4526, line: 153, baseType: !4587, size: 64, offset: 896)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!127, !4546, !317, !317, !7, !7, !4590}
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4526, line: 94, size: 640, elements: !4592)
!4592 = !{!4593, !4594, !4595}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4591, file: !4526, line: 95, baseType: !4524, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4591, file: !4526, line: 96, baseType: !7, size: 32, offset: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4591, file: !4526, line: 97, baseType: !4596, size: 512, offset: 128)
!4596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 512, elements: !1653)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4532, file: !4526, line: 158, baseType: !4579, size: 64, offset: 960)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4532, file: !4526, line: 161, baseType: !4575, size: 64, offset: 1024)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4532, file: !4526, line: 163, baseType: !4535, size: 64, offset: 1088)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4532, file: !4526, line: 164, baseType: !4601, size: 64, offset: 1152)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!127, !4546, !4604}
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4526, line: 73, size: 128, elements: !4606)
!4606 = !{!4607, !4608, !4609}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4605, file: !4526, line: 74, baseType: !7, size: 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4605, file: !4526, line: 75, baseType: !7, size: 32, offset: 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4605, file: !4526, line: 76, baseType: !4546, size: 64, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4532, file: !4526, line: 166, baseType: !4611, size: 64, offset: 1216)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!257, !4524, !127}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4532, file: !4526, line: 167, baseType: !4615, size: 64, offset: 1280)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!127, !4546, !7}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4532, file: !4526, line: 168, baseType: !4619, size: 64, offset: 1344)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!127, !4524}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4525, file: !4526, line: 44, baseType: !309, size: 64, offset: 128)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4525, file: !4526, line: 45, baseType: !302, size: 128, offset: 192)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4525, file: !4526, line: 46, baseType: !302, size: 128, offset: 320)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4525, file: !4526, line: 47, baseType: !357, size: 8, offset: 448)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4519, file: !94, line: 377, baseType: !309, size: 64, offset: 256)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "max_pasids", scope: !4519, file: !94, line: 378, baseType: !541, size: 32, offset: 320)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "release_device", scope: !4374, file: !94, line: 272, baseType: !4257, size: 64, offset: 256)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "probe_finalize", scope: !4374, file: !94, line: 273, baseType: !4257, size: 64, offset: 320)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "set_platform_dma_ops", scope: !4374, file: !94, line: 274, baseType: !4257, size: 64, offset: 384)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "device_group", scope: !4374, file: !94, line: 275, baseType: !4632, size: 64, offset: 448)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!4635, !309}
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !112, line: 46, flags: DIFlagFwdDecl)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "get_resv_regions", scope: !4374, file: !94, line: 278, baseType: !4638, size: 64, offset: 512)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{null, !309, !305}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "of_xlate", scope: !4374, file: !94, line: 280, baseType: !4642, size: 64, offset: 576)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!127, !309, !4645}
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !4647, line: 71, size: 640, elements: !4648)
!4647 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!4648 = !{!4649, !4672, !4673}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !4646, file: !4647, line: 72, baseType: !4650, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4647, line: 48, size: 1152, elements: !4652)
!4652 = !{!4653, !4654, !4656, !4657, !4658, !4666, !4667, !4668, !4669, !4670, !4671}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4651, file: !4647, line: 49, baseType: !317, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4651, file: !4647, line: 50, baseType: !4655, size: 32, offset: 64)
!4655 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4647, line: 25, baseType: !541)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4651, file: !4647, line: 51, baseType: !317, size: 64, offset: 128)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4651, file: !4647, line: 52, baseType: !4525, size: 512, offset: 192)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4651, file: !4647, line: 54, baseType: !4659, size: 64, offset: 704)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4647, line: 28, size: 256, elements: !4661)
!4661 = !{!4662, !4663, !4664, !4665}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4660, file: !4647, line: 29, baseType: !397, size: 64)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4660, file: !4647, line: 30, baseType: !127, size: 32, offset: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4660, file: !4647, line: 31, baseType: !257, size: 64, offset: 128)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4660, file: !4647, line: 32, baseType: !4659, size: 64, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4651, file: !4647, line: 55, baseType: !4659, size: 64, offset: 768)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4651, file: !4647, line: 56, baseType: !4650, size: 64, offset: 832)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4651, file: !4647, line: 57, baseType: !4650, size: 64, offset: 896)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4651, file: !4647, line: 58, baseType: !4650, size: 64, offset: 960)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4651, file: !4647, line: 62, baseType: !266, size: 64, offset: 1024)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4651, file: !4647, line: 63, baseType: !257, size: 64, offset: 1088)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !4646, file: !4647, line: 73, baseType: !127, size: 32, offset: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4646, file: !4647, line: 74, baseType: !4674, size: 512, offset: 96)
!4674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1935, size: 512, elements: !2803)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "is_attach_deferred", scope: !4374, file: !94, line: 281, baseType: !4676, size: 64, offset: 640)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!271, !309}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "dev_enable_feat", scope: !4374, file: !94, line: 284, baseType: !4680, size: 64, offset: 704)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!127, !309, !107}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "dev_disable_feat", scope: !4374, file: !94, line: 285, baseType: !4680, size: 64, offset: 768)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "page_response", scope: !4374, file: !94, line: 287, baseType: !4685, size: 64, offset: 832)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!127, !309, !4688, !4693}
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_event", file: !94, line: 390, size: 640, elements: !4690)
!4690 = !{!4691, !4692}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !4689, file: !94, line: 391, baseType: !4468, size: 512)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4689, file: !94, line: 392, baseType: !302, size: 128, offset: 512)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_page_response", file: !210, line: 150, size: 192, elements: !4695)
!4695 = !{!4696, !4697, !4698, !4699, !4700, !4701}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "argsz", scope: !4694, file: !210, line: 151, baseType: !542, size: 32)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4694, file: !210, line: 153, baseType: !542, size: 32, offset: 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4694, file: !210, line: 155, baseType: !542, size: 32, offset: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !4694, file: !210, line: 156, baseType: !542, size: 32, offset: 96)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "grpid", scope: !4694, file: !210, line: 157, baseType: !542, size: 32, offset: 128)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4694, file: !210, line: 158, baseType: !542, size: 32, offset: 160)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "def_domain_type", scope: !4374, file: !94, line: 291, baseType: !4266, size: 64, offset: 896)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "remove_dev_pasid", scope: !4374, file: !94, line: 292, baseType: !4704, size: 64, offset: 960)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{null, !309, !4405}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "default_domain_ops", scope: !4374, file: !94, line: 294, baseType: !4393, size: 64, offset: 1024)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "pgsize_bitmap", scope: !4374, file: !94, line: 295, baseType: !266, size: 64, offset: 1088)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4374, file: !94, line: 296, baseType: !657, size: 64, offset: 1152)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4294, file: !4295, line: 109, baseType: !271, size: 8, offset: 1280)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !310, file: !112, line: 715, baseType: !4306, size: 64, offset: 832)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !310, file: !112, line: 717, baseType: !257, size: 64, offset: 896)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !310, file: !112, line: 719, baseType: !257, size: 64, offset: 960)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !310, file: !112, line: 721, baseType: !728, size: 256, offset: 1024)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !310, file: !112, line: 725, baseType: !4716, size: 448, offset: 1280)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !112, line: 517, size: 448, elements: !4717)
!4717 = !{!4718, !4719, !4720, !4721}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4716, file: !112, line: 518, baseType: !302, size: 128)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4716, file: !112, line: 519, baseType: !302, size: 128, offset: 128)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4716, file: !112, line: 520, baseType: !302, size: 128, offset: 256)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4716, file: !112, line: 521, baseType: !111, size: 32, offset: 384)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !310, file: !112, line: 726, baseType: !4723, size: 2496, offset: 1728)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !119, line: 663, size: 2496, elements: !4724)
!4724 = !{!4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4807, !4811}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4723, file: !119, line: 664, baseType: !4346, size: 32)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4723, file: !119, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4723, file: !119, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4723, file: !119, line: 667, baseType: !271, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4723, file: !119, line: 668, baseType: !271, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4723, file: !119, line: 669, baseType: !271, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4723, file: !119, line: 670, baseType: !271, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4723, file: !119, line: 671, baseType: !271, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4723, file: !119, line: 672, baseType: !271, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4723, file: !119, line: 673, baseType: !271, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4723, file: !119, line: 674, baseType: !271, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4723, file: !119, line: 675, baseType: !541, size: 32, offset: 64)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4723, file: !119, line: 676, baseType: !329, size: 32, offset: 96)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4723, file: !119, line: 678, baseType: !302, size: 128, offset: 128)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4723, file: !119, line: 679, baseType: !677, size: 256, offset: 256)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4723, file: !119, line: 680, baseType: !4741, size: 64, offset: 512)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4743, line: 43, size: 1536, elements: !4744)
!4743 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4744 = !{!4745, !4746, !4747, !4748, !4749, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4742, file: !4743, line: 44, baseType: !317, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4742, file: !4743, line: 45, baseType: !127, size: 32, offset: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4742, file: !4743, line: 46, baseType: !302, size: 128, offset: 128)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4742, file: !4743, line: 47, baseType: !329, size: 32, offset: 256)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4742, file: !4743, line: 48, baseType: !4750, size: 64, offset: 320)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !119, line: 629, flags: DIFlagFwdDecl)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4742, file: !4743, line: 49, baseType: !963, size: 320, offset: 384)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4742, file: !4743, line: 50, baseType: !266, size: 64, offset: 704)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4742, file: !4743, line: 51, baseType: !1618, size: 64, offset: 768)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4742, file: !4743, line: 52, baseType: !1618, size: 64, offset: 832)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4742, file: !4743, line: 53, baseType: !1618, size: 64, offset: 896)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4742, file: !4743, line: 54, baseType: !1618, size: 64, offset: 960)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4742, file: !4743, line: 55, baseType: !1618, size: 64, offset: 1024)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4742, file: !4743, line: 56, baseType: !266, size: 64, offset: 1088)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4742, file: !4743, line: 57, baseType: !266, size: 64, offset: 1152)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4742, file: !4743, line: 58, baseType: !266, size: 64, offset: 1216)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4742, file: !4743, line: 59, baseType: !266, size: 64, offset: 1280)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4742, file: !4743, line: 60, baseType: !266, size: 64, offset: 1344)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4742, file: !4743, line: 61, baseType: !309, size: 64, offset: 1408)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4742, file: !4743, line: 62, baseType: !271, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4742, file: !4743, line: 63, baseType: !271, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4723, file: !119, line: 681, baseType: !271, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4723, file: !119, line: 682, baseType: !271, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4723, file: !119, line: 683, baseType: !271, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4723, file: !119, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4723, file: !119, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4723, file: !119, line: 690, baseType: !1610, size: 512, offset: 640)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4723, file: !119, line: 691, baseType: !246, size: 64, offset: 1152)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4723, file: !119, line: 692, baseType: !981, size: 256, offset: 1216)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4723, file: !119, line: 693, baseType: !1476, size: 192, offset: 1472)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4723, file: !119, line: 694, baseType: !4750, size: 64, offset: 1664)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4723, file: !119, line: 695, baseType: !349, size: 32, offset: 1728)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4723, file: !119, line: 696, baseType: !349, size: 32, offset: 1760)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4723, file: !119, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4723, file: !119, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4723, file: !119, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4723, file: !119, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4723, file: !119, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4723, file: !119, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4723, file: !119, line: 703, baseType: !271, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4723, file: !119, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4723, file: !119, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4723, file: !119, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4723, file: !119, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4723, file: !119, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4723, file: !119, line: 709, baseType: !7, size: 32, offset: 1824)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4723, file: !119, line: 710, baseType: !118, size: 32, offset: 1856)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4723, file: !119, line: 711, baseType: !126, size: 32, offset: 1888)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4723, file: !119, line: 712, baseType: !126, size: 32, offset: 1920)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4723, file: !119, line: 713, baseType: !127, size: 32, offset: 1952)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4723, file: !119, line: 714, baseType: !127, size: 32, offset: 1984)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4723, file: !119, line: 715, baseType: !246, size: 64, offset: 2048)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4723, file: !119, line: 716, baseType: !246, size: 64, offset: 2112)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4723, file: !119, line: 717, baseType: !246, size: 64, offset: 2176)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4723, file: !119, line: 718, baseType: !246, size: 64, offset: 2240)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4723, file: !119, line: 720, baseType: !4802, size: 64, offset: 2304)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !119, line: 632, size: 64, elements: !4804)
!4804 = !{!4805, !4806}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4803, file: !119, line: 633, baseType: !329, size: 32)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4803, file: !119, line: 634, baseType: !7, size: 32, offset: 32)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4723, file: !119, line: 721, baseType: !4808, size: 64, offset: 2368)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{null, !309, !724}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4723, file: !119, line: 722, baseType: !4812, size: 64, offset: 2432)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !119, line: 722, flags: DIFlagFwdDecl)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !310, file: !112, line: 727, baseType: !4815, size: 64, offset: 4224)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !119, line: 742, size: 1792, elements: !4817)
!4817 = !{!4818, !4819, !4820, !4824, !4825, !4826}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4816, file: !119, line: 743, baseType: !4263, size: 1472)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4816, file: !119, line: 744, baseType: !4266, size: 64, offset: 1472)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4816, file: !119, line: 745, baseType: !4821, size: 64, offset: 1536)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{null, !309, !271}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4816, file: !119, line: 746, baseType: !4266, size: 64, offset: 1600)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4816, file: !119, line: 747, baseType: !4257, size: 64, offset: 1664)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4816, file: !119, line: 748, baseType: !4257, size: 64, offset: 1728)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !310, file: !112, line: 736, baseType: !4828, size: 128, offset: 4288)
!4828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !112, line: 529, size: 128, elements: !4829)
!4829 = !{!4830, !5377}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4828, file: !112, line: 531, baseType: !4831, size: 64)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4833, line: 150, size: 1408, elements: !4834)
!4833 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd3b6d3aac1ec0f42f0ed0e1454dc51c")
!4834 = !{!4835, !4836, !4837, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5280, !5281, !5282, !5283, !5372, !5373, !5374, !5375}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4832, file: !4833, line: 151, baseType: !302, size: 128)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4832, file: !4833, line: 152, baseType: !317, size: 64, offset: 128)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4832, file: !4833, line: 153, baseType: !4838, size: 64, offset: 192)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4840)
!4840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !4833, line: 88, size: 640, elements: !4841)
!4841 = !{!4842, !4846, !4857, !4862, !4866, !4872, !4876, !4880, !5120, !5124}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4840, file: !4833, line: 89, baseType: !4843, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!127, !4831, !4650, !134}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4840, file: !4833, line: 91, baseType: !4847, size: 64, offset: 64)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!127, !4831, !4850, !134}
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !4833, line: 63, size: 640, elements: !4852)
!4852 = !{!4853, !4854, !4855}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4851, file: !4833, line: 64, baseType: !4524, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4851, file: !4833, line: 65, baseType: !127, size: 32, offset: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4851, file: !4833, line: 66, baseType: !4856, size: 512, offset: 96)
!4856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 512, elements: !2803)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4840, file: !4833, line: 93, baseType: !4858, size: 64, offset: 128)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!127, !4831, !7, !4861}
!4861 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !272, line: 170, baseType: !266)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4840, file: !4833, line: 94, baseType: !4863, size: 64, offset: 192)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{null, !4831, !7}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4840, file: !4833, line: 95, baseType: !4867, size: 64, offset: 256)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!127, !4831, !4650, !4870, !7, !1072, !795}
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4840, file: !4833, line: 100, baseType: !4873, size: 64, offset: 320)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!127, !4831, !7, !7, !257}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4840, file: !4833, line: 102, baseType: !4877, size: 64, offset: 384)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{null, !4831, !7, !7}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4840, file: !4833, line: 104, baseType: !4881, size: 64, offset: 448)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!127, !4831, !4884, !271}
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !161, line: 179, size: 448, elements: !4886)
!4886 = !{!4887, !4888, !4889, !4890, !5041, !5117, !5118, !5119}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4885, file: !161, line: 180, baseType: !541, size: 32)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4885, file: !161, line: 181, baseType: !7, size: 32, offset: 32)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !4885, file: !161, line: 182, baseType: !266, size: 64, offset: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !4885, file: !161, line: 183, baseType: !4891, size: 64, offset: 128)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !161, line: 147, size: 320, elements: !4893)
!4893 = !{!4894, !4895, !4896, !4897, !5037, !5040}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !4892, file: !161, line: 148, baseType: !7, size: 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4892, file: !161, line: 150, baseType: !7, size: 32, offset: 32)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !4892, file: !161, line: 152, baseType: !257, size: 64, offset: 64)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !4892, file: !161, line: 153, baseType: !4898, size: 64, offset: 128)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !4900, line: 184, size: 832, elements: !4901)
!4900 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4852ae4344fcd499a416b3c5d20e2abd")
!4901 = !{!4902, !4903, !4904, !4905, !4970, !4976, !4977, !4990, !4994, !4995, !4996}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4899, file: !4900, line: 186, baseType: !7, size: 32)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !4899, file: !4900, line: 187, baseType: !7, size: 32, offset: 32)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4899, file: !4900, line: 188, baseType: !309, size: 64, offset: 64)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4899, file: !4900, line: 189, baseType: !4906, size: 96, offset: 128)
!4906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !4900, line: 65, size: 96, elements: !4907)
!4907 = !{!4908, !4939, !4949}
!4908 = !DIDerivedType(tag: DW_TAG_member, scope: !4906, file: !4900, line: 66, baseType: !4909, size: 32)
!4909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4906, file: !4900, line: 66, size: 32, elements: !4910)
!4910 = !{!4911, !4912}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !4909, file: !4900, line: 67, baseType: !541, size: 32)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "arch_addr_lo", scope: !4909, file: !4900, line: 68, baseType: !4913, size: 32)
!4913 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_addr_lo_t", file: !4914, line: 49, baseType: !4915)
!4914 = !DIFile(filename: "./arch/x86/include/asm/msi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18fb5c3a6ec98b3248a11eb70711a164")
!4915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_addr_lo", file: !4914, line: 29, size: 32, elements: !4916)
!4916 = !{!4917}
!4917 = !DIDerivedType(tag: DW_TAG_member, scope: !4915, file: !4914, line: 30, baseType: !4918, size: 32)
!4918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4915, file: !4914, line: 30, size: 32, elements: !4919)
!4919 = !{!4920, !4930}
!4920 = !DIDerivedType(tag: DW_TAG_member, scope: !4918, file: !4914, line: 31, baseType: !4921, size: 32)
!4921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4918, file: !4914, line: 31, size: 32, elements: !4922)
!4922 = !{!4923, !4924, !4925, !4926, !4927, !4928, !4929}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0", scope: !4921, file: !4914, line: 32, baseType: !541, size: 2, flags: DIFlagBitField, extraData: i64 0)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "dest_mode_logical", scope: !4921, file: !4914, line: 33, baseType: !541, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_hint", scope: !4921, file: !4914, line: 34, baseType: !541, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_1", scope: !4921, file: !4914, line: 35, baseType: !541, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "virt_destid_8_14", scope: !4921, file: !4914, line: 36, baseType: !541, size: 7, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "destid_0_7", scope: !4921, file: !4914, line: 37, baseType: !541, size: 8, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !4921, file: !4914, line: 38, baseType: !541, size: 12, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!4930 = !DIDerivedType(tag: DW_TAG_member, scope: !4918, file: !4914, line: 40, baseType: !4931, size: 32)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4918, file: !4914, line: 40, size: 32, elements: !4932)
!4932 = !{!4933, !4934, !4935, !4936, !4937, !4938}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_reserved_0", scope: !4931, file: !4914, line: 41, baseType: !541, size: 2, flags: DIFlagBitField, extraData: i64 0)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_index_15", scope: !4931, file: !4914, line: 42, baseType: !541, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_subhandle_valid", scope: !4931, file: !4914, line: 43, baseType: !541, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_format", scope: !4931, file: !4914, line: 44, baseType: !541, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_index_0_14", scope: !4931, file: !4914, line: 45, baseType: !541, size: 15, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_base_address", scope: !4931, file: !4914, line: 46, baseType: !541, size: 12, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!4939 = !DIDerivedType(tag: DW_TAG_member, scope: !4906, file: !4900, line: 70, baseType: !4940, size: 32, offset: 32)
!4940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4906, file: !4900, line: 70, size: 32, elements: !4941)
!4941 = !{!4942, !4943}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !4940, file: !4900, line: 71, baseType: !541, size: 32)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "arch_addr_hi", scope: !4940, file: !4900, line: 72, baseType: !4944, size: 32)
!4944 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_addr_hi_t", file: !4914, line: 57, baseType: !4945)
!4945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_addr_hi", file: !4914, line: 54, size: 32, elements: !4946)
!4946 = !{!4947, !4948}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4945, file: !4914, line: 55, baseType: !541, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "destid_8_31", scope: !4945, file: !4914, line: 56, baseType: !541, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4949 = !DIDerivedType(tag: DW_TAG_member, scope: !4906, file: !4900, line: 74, baseType: !4950, size: 32, offset: 64)
!4950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4906, file: !4900, line: 74, size: 32, elements: !4951)
!4951 = !{!4952, !4953}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4950, file: !4900, line: 75, baseType: !541, size: 32)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4950, file: !4900, line: 76, baseType: !4954, size: 32)
!4954 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_data_t", file: !4914, line: 26, baseType: !4955)
!4955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_data", file: !4914, line: 14, size: 32, elements: !4956)
!4956 = !{!4957}
!4957 = !DIDerivedType(tag: DW_TAG_member, scope: !4955, file: !4914, line: 15, baseType: !4958, size: 32)
!4958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4955, file: !4914, line: 15, size: 32, elements: !4959)
!4959 = !{!4960, !4969}
!4960 = !DIDerivedType(tag: DW_TAG_member, scope: !4958, file: !4914, line: 16, baseType: !4961, size: 32)
!4961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4958, file: !4914, line: 16, size: 32, elements: !4962)
!4962 = !{!4963, !4964, !4965, !4966, !4967, !4968}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4961, file: !4914, line: 17, baseType: !541, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_mode", scope: !4961, file: !4914, line: 18, baseType: !541, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "dest_mode_logical", scope: !4961, file: !4914, line: 19, baseType: !541, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4961, file: !4914, line: 20, baseType: !541, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "active_low", scope: !4961, file: !4914, line: 21, baseType: !541, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "is_level", scope: !4961, file: !4914, line: 22, baseType: !541, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_subhandle", scope: !4958, file: !4914, line: 24, baseType: !541, size: 32)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !4899, file: !4900, line: 190, baseType: !4971, size: 64, offset: 256)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !154, line: 299, size: 128, elements: !4973)
!4973 = !{!4974, !4975}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4972, file: !154, line: 300, baseType: !1734, size: 64)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4972, file: !154, line: 301, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cookie", scope: !4899, file: !4900, line: 192, baseType: !2625, size: 64, offset: 320)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_attrs", scope: !4899, file: !4900, line: 195, baseType: !4978, size: 64, offset: 384)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !112, line: 106, size: 256, elements: !4980)
!4980 = !{!4981, !4982, !4986}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4979, file: !112, line: 107, baseType: !434, size: 128)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4979, file: !112, line: 108, baseType: !4983, size: 64, offset: 128)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!429, !309, !4978, !397}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4979, file: !112, line: 110, baseType: !4987, size: 64, offset: 192)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!429, !309, !4978, !317, !287}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !4899, file: !4900, line: 198, baseType: !4991, size: 64, offset: 448)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{null, !4898, !257}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !4899, file: !4900, line: 199, baseType: !257, size: 64, offset: 512)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !4899, file: !4900, line: 201, baseType: !365, size: 16, offset: 576)
!4996 = !DIDerivedType(tag: DW_TAG_member, scope: !4899, file: !4900, line: 202, baseType: !4997, size: 192, offset: 640)
!4997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4899, file: !4900, line: 202, size: 192, elements: !4998)
!4998 = !{!4999, !5022}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !4997, file: !4900, line: 203, baseType: !5000, size: 192)
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_msi_desc", file: !4900, line: 113, size: 192, elements: !5001)
!5001 = !{!5002, !5007, !5017}
!5002 = !DIDerivedType(tag: DW_TAG_member, scope: !5000, file: !4900, line: 114, baseType: !5003, size: 32)
!5003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5000, file: !4900, line: 114, size: 32, elements: !5004)
!5004 = !{!5005, !5006}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "msi_mask", scope: !5003, file: !4900, line: 115, baseType: !541, size: 32)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "msix_ctrl", scope: !5003, file: !4900, line: 116, baseType: !541, size: 32)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !5000, file: !4900, line: 126, baseType: !5008, size: 64, offset: 32)
!5008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5000, file: !4900, line: 118, size: 64, elements: !5009)
!5009 = !{!5010, !5011, !5012, !5013, !5014, !5015, !5016}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !5008, file: !4900, line: 119, baseType: !357, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !5008, file: !4900, line: 120, baseType: !357, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !5008, file: !4900, line: 121, baseType: !357, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "can_mask", scope: !5008, file: !4900, line: 122, baseType: !357, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !5008, file: !4900, line: 123, baseType: !357, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !5008, file: !4900, line: 124, baseType: !357, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !5008, file: !4900, line: 125, baseType: !7, size: 32, offset: 32)
!5017 = !DIDerivedType(tag: DW_TAG_member, scope: !5000, file: !4900, line: 127, baseType: !5018, size: 64, offset: 128)
!5018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5000, file: !4900, line: 127, size: 64, elements: !5019)
!5019 = !{!5020, !5021}
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !5018, file: !4900, line: 128, baseType: !357, size: 8)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !5018, file: !4900, line: 129, baseType: !257, size: 64)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4997, file: !4900, line: 204, baseType: !5023, size: 128)
!5023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc_data", file: !4900, line: 160, size: 128, elements: !5024)
!5024 = !{!5025, !5031}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "dcookie", scope: !5023, file: !4900, line: 161, baseType: !5026, size: 64)
!5026 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "msi_domain_cookie", file: !4900, line: 143, size: 64, elements: !5027)
!5027 = !{!5028, !5029, !5030}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5026, file: !4900, line: 144, baseType: !246, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5026, file: !4900, line: 145, baseType: !257, size: 64)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !5026, file: !4900, line: 146, baseType: !257, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "icookie", scope: !5023, file: !4900, line: 162, baseType: !5032, size: 64, offset: 64)
!5032 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "msi_instance_cookie", file: !5033, line: 34, size: 64, elements: !5034)
!5033 = !DIFile(filename: "./include/linux/msi_api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fcac0f5d9a7a05197477b5383eee228")
!5034 = !{!5035, !5036}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5032, file: !5033, line: 35, baseType: !246, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5032, file: !5033, line: 36, baseType: !257, size: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !4892, file: !161, line: 155, baseType: !5038, size: 64, offset: 192)
!5038 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1733, line: 913, baseType: !5039)
!5039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1734, size: 64, elements: !1738)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "effective_affinity", scope: !4892, file: !161, line: 158, baseType: !5038, size: 64, offset: 256)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4885, file: !161, line: 184, baseType: !5042, size: 64, offset: 192)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !161, line: 501, size: 2112, elements: !5044)
!5044 = !{!5045, !5046, !5050, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5067, !5071, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5086, !5087, !5088, !5093, !5094, !5098, !5102, !5106, !5110, !5114, !5115, !5116}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5043, file: !161, line: 502, baseType: !317, size: 64)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !5043, file: !161, line: 503, baseType: !5047, size: 64, offset: 64)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!7, !4884}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !5043, file: !161, line: 504, baseType: !5051, size: 64, offset: 128)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{null, !4884}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !5043, file: !161, line: 505, baseType: !5051, size: 64, offset: 192)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !5043, file: !161, line: 506, baseType: !5051, size: 64, offset: 256)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !5043, file: !161, line: 508, baseType: !5051, size: 64, offset: 320)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !5043, file: !161, line: 509, baseType: !5051, size: 64, offset: 384)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !5043, file: !161, line: 510, baseType: !5051, size: 64, offset: 448)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !5043, file: !161, line: 511, baseType: !5051, size: 64, offset: 512)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !5043, file: !161, line: 512, baseType: !5051, size: 64, offset: 576)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !5043, file: !161, line: 514, baseType: !5062, size: 64, offset: 640)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!127, !4884, !5065, !271}
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1734)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !5043, file: !161, line: 515, baseType: !5068, size: 64, offset: 704)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!127, !4884}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !5043, file: !161, line: 516, baseType: !5072, size: 64, offset: 768)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!127, !4884, !7}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !5043, file: !161, line: 517, baseType: !5072, size: 64, offset: 832)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !5043, file: !161, line: 519, baseType: !5051, size: 64, offset: 896)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !5043, file: !161, line: 520, baseType: !5051, size: 64, offset: 960)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !5043, file: !161, line: 526, baseType: !5051, size: 64, offset: 1024)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !5043, file: !161, line: 527, baseType: !5051, size: 64, offset: 1088)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !5043, file: !161, line: 528, baseType: !5051, size: 64, offset: 1152)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !5043, file: !161, line: 530, baseType: !5051, size: 64, offset: 1216)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !5043, file: !161, line: 532, baseType: !5083, size: 64, offset: 1280)
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5084, size: 64)
!5084 = !DISubroutineType(types: !5085)
!5085 = !{null, !4884, !1163}
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !5043, file: !161, line: 533, baseType: !5068, size: 64, offset: 1344)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !5043, file: !161, line: 534, baseType: !5051, size: 64, offset: 1408)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !5043, file: !161, line: 536, baseType: !5089, size: 64, offset: 1472)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{null, !4884, !5092}
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !5043, file: !161, line: 537, baseType: !5089, size: 64, offset: 1536)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !5043, file: !161, line: 539, baseType: !5095, size: 64, offset: 1600)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!127, !4884, !153, !4045}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !5043, file: !161, line: 540, baseType: !5099, size: 64, offset: 1664)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!127, !4884, !153, !271}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !5043, file: !161, line: 542, baseType: !5103, size: 64, offset: 1728)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = !DISubroutineType(types: !5105)
!5105 = !{!127, !4884, !257}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !5043, file: !161, line: 544, baseType: !5107, size: 64, offset: 1792)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{null, !4884, !7}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !5043, file: !161, line: 545, baseType: !5111, size: 64, offset: 1856)
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{null, !4884, !5065}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !5043, file: !161, line: 547, baseType: !5068, size: 64, offset: 1920)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !5043, file: !161, line: 548, baseType: !5051, size: 64, offset: 1984)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5043, file: !161, line: 550, baseType: !266, size: 64, offset: 2048)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4885, file: !161, line: 185, baseType: !4831, size: 64, offset: 256)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !4885, file: !161, line: 187, baseType: !4884, size: 64, offset: 320)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !4885, file: !161, line: 189, baseType: !257, size: 64, offset: 384)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4840, file: !4833, line: 105, baseType: !5121, size: 64, offset: 512)
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5122, size: 64)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{null, !4831, !4884}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4840, file: !4833, line: 106, baseType: !5125, size: 64, offset: 576)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{!127, !4831, !4850, !1072, !795}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4832, file: !4833, line: 154, baseType: !257, size: 64, offset: 256)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4832, file: !4833, line: 155, baseType: !7, size: 32, offset: 320)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4832, file: !4833, line: 156, baseType: !7, size: 32, offset: 352)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4832, file: !4833, line: 157, baseType: !728, size: 256, offset: 384)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4832, file: !4833, line: 158, baseType: !4831, size: 64, offset: 640)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4832, file: !4833, line: 161, baseType: !4524, size: 64, offset: 704)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4832, file: !4833, line: 162, baseType: !134, size: 32, offset: 768)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4832, file: !4833, line: 163, baseType: !5136, size: 64, offset: 832)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !161, line: 1111, size: 192, elements: !5138)
!5138 = !{!5139, !5140, !5141, !5142, !5143, !5144}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !5137, file: !161, line: 1112, baseType: !7, size: 32)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !5137, file: !161, line: 1113, baseType: !7, size: 32, offset: 32)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !5137, file: !161, line: 1114, baseType: !7, size: 32, offset: 64)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !5137, file: !161, line: 1115, baseType: !7, size: 32, offset: 96)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !5137, file: !161, line: 1116, baseType: !160, size: 32, offset: 128)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !5137, file: !161, line: 1117, baseType: !5145, offset: 192)
!5145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5146, elements: !1873)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !161, line: 1061, size: 1024, elements: !5148)
!5148 = !{!5149, !5150, !5151, !5155, !5159, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5147, file: !161, line: 1062, baseType: !686, size: 32)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !5147, file: !161, line: 1063, baseType: !257, size: 64, offset: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !5147, file: !161, line: 1064, baseType: !5152, size: 64, offset: 128)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!541, !257}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !5147, file: !161, line: 1065, baseType: !5156, size: 64, offset: 192)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{null, !541, !257}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5147, file: !161, line: 1066, baseType: !5160, size: 64, offset: 256)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{null, !5146}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5147, file: !161, line: 1067, baseType: !5160, size: 64, offset: 320)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !5147, file: !161, line: 1068, baseType: !7, size: 32, offset: 384)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !5147, file: !161, line: 1069, baseType: !7, size: 32, offset: 416)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !5147, file: !161, line: 1070, baseType: !541, size: 32, offset: 448)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !5147, file: !161, line: 1071, baseType: !541, size: 32, offset: 480)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !5147, file: !161, line: 1072, baseType: !541, size: 32, offset: 512)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !5147, file: !161, line: 1073, baseType: !541, size: 32, offset: 544)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !5147, file: !161, line: 1074, baseType: !541, size: 32, offset: 576)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !5147, file: !161, line: 1075, baseType: !7, size: 32, offset: 608)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5147, file: !161, line: 1076, baseType: !257, size: 64, offset: 640)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !5147, file: !161, line: 1077, baseType: !266, size: 64, offset: 704)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !5147, file: !161, line: 1078, baseType: !266, size: 64, offset: 768)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5147, file: !161, line: 1079, baseType: !4831, size: 64, offset: 832)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5147, file: !161, line: 1080, baseType: !302, size: 128, offset: 896)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !5147, file: !161, line: 1081, baseType: !5178, offset: 1024)
!5178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5179, elements: !1873)
!5179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !161, line: 1019, size: 2752, elements: !5180)
!5180 = !{!5181, !5182, !5192, !5277, !5278, !5279}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !5179, file: !161, line: 1020, baseType: !5043, size: 2112)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5179, file: !161, line: 1021, baseType: !5183, size: 448, offset: 2112)
!5183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !161, line: 996, size: 448, elements: !5184)
!5184 = !{!5185, !5186, !5187, !5188, !5189, !5190, !5191}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5183, file: !161, line: 997, baseType: !266, size: 64)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5183, file: !161, line: 998, baseType: !266, size: 64, offset: 64)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5183, file: !161, line: 999, baseType: !266, size: 64, offset: 128)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !5183, file: !161, line: 1000, baseType: !266, size: 64, offset: 192)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !5183, file: !161, line: 1001, baseType: !266, size: 64, offset: 256)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5183, file: !161, line: 1002, baseType: !266, size: 64, offset: 320)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5183, file: !161, line: 1003, baseType: !266, size: 64, offset: 384)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5179, file: !161, line: 1022, baseType: !5193, size: 64, offset: 2560)
!5193 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !5194, line: 12, baseType: !5195)
!5194 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{null, !5198}
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !5200, line: 55, size: 3584, align: 512, elements: !5201)
!5200 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "435ffcdb49377a4c91932ebe21d66dca")
!5201 = !{!5202, !5203, !5204, !5205, !5206, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5243, !5244, !5245, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !5199, file: !5200, line: 56, baseType: !4892, size: 320)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !5199, file: !5200, line: 57, baseType: !4885, size: 448, offset: 320)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !5199, file: !5200, line: 58, baseType: !795, size: 64, offset: 768)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !5199, file: !5200, line: 59, baseType: !5193, size: 64, offset: 832)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5199, file: !5200, line: 60, baseType: !5207, size: 64, offset: 896)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !154, line: 118, size: 1024, align: 512, elements: !5209)
!5209 = !{!5210, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5208, file: !154, line: 119, baseType: !5211, size: 64)
!5211 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !154, line: 100, baseType: !5212)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = !DISubroutineType(types: !5214)
!5214 = !{!5215, !127, !257}
!5215 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !169, line: 17, baseType: !168)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !5208, file: !154, line: 120, baseType: !257, size: 64, offset: 64)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !5208, file: !154, line: 121, baseType: !257, size: 64, offset: 128)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5208, file: !154, line: 122, baseType: !5207, size: 64, offset: 192)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !5208, file: !154, line: 123, baseType: !5211, size: 64, offset: 256)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !5208, file: !154, line: 124, baseType: !1489, size: 64, offset: 320)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !5208, file: !154, line: 125, baseType: !5207, size: 64, offset: 384)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5208, file: !154, line: 126, baseType: !7, size: 32, offset: 448)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5208, file: !154, line: 127, baseType: !7, size: 32, offset: 480)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !5208, file: !154, line: 128, baseType: !266, size: 64, offset: 512)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !5208, file: !154, line: 129, baseType: !266, size: 64, offset: 576)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5208, file: !154, line: 130, baseType: !317, size: 64, offset: 640)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5208, file: !154, line: 131, baseType: !5228, size: 64, offset: 704)
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !5200, line: 14, flags: DIFlagFwdDecl)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !5199, file: !5200, line: 61, baseType: !7, size: 32, offset: 960)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !5199, file: !5200, line: 62, baseType: !7, size: 32, offset: 992)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5199, file: !5200, line: 63, baseType: !7, size: 32, offset: 1024)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !5199, file: !5200, line: 64, baseType: !7, size: 32, offset: 1056)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !5199, file: !5200, line: 65, baseType: !7, size: 32, offset: 1088)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5199, file: !5200, line: 66, baseType: !7, size: 32, offset: 1120)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !5199, file: !5200, line: 67, baseType: !266, size: 64, offset: 1152)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !5199, file: !5200, line: 68, baseType: !7, size: 32, offset: 1216)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !5199, file: !5200, line: 69, baseType: !349, size: 32, offset: 1248)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !5199, file: !5200, line: 70, baseType: !127, size: 32, offset: 1280)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5199, file: !5200, line: 71, baseType: !686, size: 32, offset: 1312)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !5199, file: !5200, line: 72, baseType: !5242, size: 64, offset: 1344)
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !5199, file: !5200, line: 73, baseType: !5065, size: 64, offset: 1408)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_hint", scope: !5199, file: !5200, line: 75, baseType: !5065, size: 64, offset: 1472)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_notify", scope: !5199, file: !5200, line: 76, baseType: !5246, size: 64, offset: 1536)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_notify", file: !154, line: 261, size: 448, elements: !5248)
!5248 = !{!5249, !5250, !5251, !5252, !5256}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5247, file: !154, line: 262, baseType: !7, size: 32)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5247, file: !154, line: 263, baseType: !4224, size: 32, offset: 32)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5247, file: !154, line: 264, baseType: !981, size: 256, offset: 64)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5247, file: !154, line: 265, baseType: !5253, size: 64, offset: 320)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{null, !5246, !1730}
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5247, file: !154, line: 266, baseType: !5257, size: 64, offset: 384)
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{null, !5260}
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mask", scope: !5199, file: !5200, line: 78, baseType: !5038, size: 64, offset: 1600)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !5199, file: !5200, line: 81, baseType: !266, size: 64, offset: 1664)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !5199, file: !5200, line: 82, baseType: !349, size: 32, offset: 1728)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !5199, file: !5200, line: 83, baseType: !1476, size: 192, offset: 1792)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !5199, file: !5200, line: 85, baseType: !7, size: 32, offset: 1984)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !5199, file: !5200, line: 86, baseType: !7, size: 32, offset: 2016)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !5199, file: !5200, line: 87, baseType: !7, size: 32, offset: 2048)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !5199, file: !5200, line: 88, baseType: !7, size: 32, offset: 2080)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5199, file: !5200, line: 91, baseType: !5228, size: 64, offset: 2112)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5199, file: !5200, line: 98, baseType: !941, size: 128, align: 64, offset: 2176)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5199, file: !5200, line: 99, baseType: !313, size: 512, offset: 2304)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !5199, file: !5200, line: 101, baseType: !728, size: 256, offset: 2816)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !5199, file: !5200, line: 102, baseType: !127, size: 32, offset: 3072)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5199, file: !5200, line: 103, baseType: !657, size: 64, offset: 3136)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5199, file: !5200, line: 104, baseType: !317, size: 64, offset: 3200)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "resend_node", scope: !5199, file: !5200, line: 106, baseType: !967, size: 128, offset: 3264)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5179, file: !161, line: 1023, baseType: !541, size: 32, offset: 2624)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !5179, file: !161, line: 1024, baseType: !541, size: 32, offset: 2656)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !5179, file: !161, line: 1025, baseType: !2702, size: 64, offset: 2688)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4832, file: !4833, line: 164, baseType: !309, size: 64, offset: 896)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "pm_dev", scope: !4832, file: !4833, line: 165, baseType: !309, size: 64, offset: 960)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4832, file: !4833, line: 167, baseType: !4831, size: 64, offset: 1024)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "msi_parent_ops", scope: !4832, file: !4833, line: 170, baseType: !5284, size: 64, offset: 1088)
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5286)
!5286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_parent_ops", file: !4900, line: 580, size: 192, elements: !5287)
!5287 = !{!5288, !5289, !5290}
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "supported_flags", scope: !5286, file: !4900, line: 581, baseType: !541, size: 32)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5286, file: !4900, line: 582, baseType: !317, size: 64, offset: 64)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "init_dev_msi_info", scope: !5286, file: !4900, line: 583, baseType: !5291, size: 64, offset: 128)
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5292 = !DISubroutineType(types: !5293)
!5293 = !{!271, !309, !4831, !4831, !5294}
!5294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5295, size: 64)
!5295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_domain_info", file: !4900, line: 489, size: 576, elements: !5296)
!5296 = !{!5297, !5298, !5299, !5300, !5366, !5367, !5368, !5369, !5370, !5371}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5295, file: !4900, line: 490, baseType: !541, size: 32)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !5295, file: !4900, line: 491, baseType: !134, size: 32, offset: 32)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "hwsize", scope: !5295, file: !4900, line: 492, baseType: !7, size: 32, offset: 64)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5295, file: !4900, line: 493, baseType: !5301, size: 64, offset: 128)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_domain_ops", file: !4900, line: 448, size: 576, elements: !5303)
!5303 = !{!5304, !5337, !5341, !5345, !5349, !5353, !5357, !5361, !5365}
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "get_hwirq", scope: !5302, file: !4900, line: 449, baseType: !5305, size: 64)
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = !DISubroutineType(types: !5307)
!5307 = !{!4861, !5294, !5308}
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DIDerivedType(tag: DW_TAG_typedef, name: "msi_alloc_info_t", file: !4914, line: 7, baseType: !5310)
!5310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_alloc_info", file: !175, line: 75, size: 576, elements: !5311)
!5311 = !{!5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5310, file: !175, line: 76, baseType: !174, size: 32)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5310, file: !175, line: 77, baseType: !541, size: 32, offset: 32)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !5310, file: !175, line: 78, baseType: !541, size: 32, offset: 64)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !5310, file: !175, line: 79, baseType: !4861, size: 64, offset: 128)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5310, file: !175, line: 80, baseType: !5065, size: 64, offset: 192)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5310, file: !175, line: 81, baseType: !4898, size: 64, offset: 256)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5310, file: !175, line: 82, baseType: !257, size: 64, offset: 320)
!5319 = !DIDerivedType(tag: DW_TAG_member, scope: !5310, file: !175, line: 84, baseType: !5320, size: 192, offset: 384)
!5320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5310, file: !175, line: 84, size: 192, elements: !5321)
!5321 = !{!5322, !5330}
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "ioapic", scope: !5320, file: !175, line: 85, baseType: !5323, size: 96)
!5323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ioapic_alloc_info", file: !175, line: 46, size: 96, elements: !5324)
!5324 = !{!5325, !5326, !5327, !5328, !5329}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !5323, file: !175, line: 47, baseType: !127, size: 32)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5323, file: !175, line: 48, baseType: !127, size: 32, offset: 32)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "is_level", scope: !5323, file: !175, line: 49, baseType: !541, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "active_low", scope: !5323, file: !175, line: 50, baseType: !541, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5323, file: !175, line: 51, baseType: !541, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !5320, file: !175, line: 86, baseType: !5331, size: 192)
!5331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uv_alloc_info", file: !175, line: 54, size: 192, elements: !5332)
!5332 = !{!5333, !5334, !5335, !5336}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !5331, file: !175, line: 55, baseType: !127, size: 32)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "blade", scope: !5331, file: !175, line: 56, baseType: !127, size: 32, offset: 32)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5331, file: !175, line: 57, baseType: !266, size: 64, offset: 64)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5331, file: !175, line: 58, baseType: !397, size: 64, offset: 128)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "msi_init", scope: !5302, file: !4900, line: 451, baseType: !5338, size: 64, offset: 64)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!127, !4831, !5294, !7, !4861, !5308}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "msi_free", scope: !5302, file: !4900, line: 455, baseType: !5342, size: 64, offset: 128)
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{null, !4831, !5294, !7}
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "msi_prepare", scope: !5302, file: !4900, line: 458, baseType: !5346, size: 64, offset: 192)
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5347, size: 64)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!127, !4831, !309, !127, !5308}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_desc", scope: !5302, file: !4900, line: 461, baseType: !5350, size: 64, offset: 256)
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{null, !4831, !5308, !4898}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "set_desc", scope: !5302, file: !4900, line: 463, baseType: !5354, size: 64, offset: 320)
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{null, !5308, !4898}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "domain_alloc_irqs", scope: !5302, file: !4900, line: 465, baseType: !5358, size: 64, offset: 384)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!127, !4831, !309, !127}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "domain_free_irqs", scope: !5302, file: !4900, line: 467, baseType: !5362, size: 64, offset: 448)
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5363 = !DISubroutineType(types: !5364)
!5364 = !{null, !4831, !309}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "msi_post_free", scope: !5302, file: !4900, line: 469, baseType: !5362, size: 64, offset: 512)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !5295, file: !4900, line: 494, baseType: !5042, size: 64, offset: 192)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !5295, file: !4900, line: 495, baseType: !257, size: 64, offset: 256)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5295, file: !4900, line: 496, baseType: !5193, size: 64, offset: 320)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !5295, file: !4900, line: 497, baseType: !257, size: 64, offset: 384)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "handler_name", scope: !5295, file: !4900, line: 498, baseType: !317, size: 64, offset: 448)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5295, file: !4900, line: 499, baseType: !257, size: 64, offset: 512)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4832, file: !4833, line: 174, baseType: !4861, size: 64, offset: 1152)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4832, file: !4833, line: 175, baseType: !7, size: 32, offset: 1216)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4832, file: !4833, line: 176, baseType: !3834, size: 128, offset: 1280)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "revmap", scope: !4832, file: !4833, line: 177, baseType: !5376, offset: 1408)
!5376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4884, elements: !1873)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4828, file: !112, line: 532, baseType: !5378, size: 64, offset: 64)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !4900, line: 239, size: 832, elements: !5380)
!5380 = !{!5381, !5382, !5385, !5386, !5392}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5379, file: !4900, line: 240, baseType: !266, size: 64)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !5379, file: !4900, line: 241, baseType: !5383, size: 64, offset: 64)
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5384, size: 64)
!5384 = !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !4900, line: 84, flags: DIFlagFwdDecl)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5379, file: !4900, line: 242, baseType: !728, size: 256, offset: 128)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "__domains", scope: !5379, file: !4900, line: 243, baseType: !5387, size: 384, offset: 384)
!5387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5388, size: 384, elements: !840)
!5388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_dev_domain", file: !4900, line: 226, size: 192, elements: !5389)
!5389 = !{!5390, !5391}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5388, file: !4900, line: 227, baseType: !3834, size: 128)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5388, file: !4900, line: 228, baseType: !4831, size: 64, offset: 128)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "__iter_idx", scope: !5379, file: !4900, line: 244, baseType: !266, size: 64, offset: 768)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !310, file: !112, line: 738, baseType: !5394, size: 64, offset: 4416)
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5395, size: 64)
!5395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5396)
!5396 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !112, line: 738, flags: DIFlagFwdDecl)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !310, file: !112, line: 740, baseType: !251, size: 64, offset: 4480)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !310, file: !112, line: 741, baseType: !246, size: 64, offset: 4544)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !310, file: !112, line: 746, baseType: !246, size: 64, offset: 4608)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !310, file: !112, line: 747, baseType: !5401, size: 64, offset: 4672)
!5401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5402, size: 64)
!5402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5403)
!5403 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !112, line: 747, flags: DIFlagFwdDecl)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !310, file: !112, line: 749, baseType: !5405, size: 64, offset: 4736)
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !112, line: 428, size: 128, elements: !5407)
!5407 = !{!5408, !5409, !5410}
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5406, file: !112, line: 433, baseType: !7, size: 32)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5406, file: !112, line: 434, baseType: !7, size: 32, offset: 32)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5406, file: !112, line: 435, baseType: !266, size: 64, offset: 64)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !310, file: !112, line: 751, baseType: !302, size: 128, offset: 4800)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !310, file: !112, line: 762, baseType: !5413, size: 64, offset: 4928)
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !112, line: 762, flags: DIFlagFwdDecl)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !310, file: !112, line: 770, baseType: !5416, offset: 4992)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5417, line: 5, elements: !1010)
!5417 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !310, file: !112, line: 772, baseType: !4650, size: 64, offset: 4992)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !310, file: !112, line: 773, baseType: !4524, size: 64, offset: 5056)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !310, file: !112, line: 776, baseType: !127, size: 32, offset: 5120)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !310, file: !112, line: 778, baseType: !625, size: 32, offset: 5152)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !310, file: !112, line: 779, baseType: !541, size: 32, offset: 5184)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !310, file: !112, line: 781, baseType: !329, size: 32, offset: 5216)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !310, file: !112, line: 782, baseType: !302, size: 128, offset: 5248)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !310, file: !112, line: 784, baseType: !5426, size: 64, offset: 5376)
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5428)
!5428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5429, line: 52, size: 768, elements: !5430)
!5429 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5430 = !{!5431, !5432, !5433, !5434, !5435, !5439, !5443, !5444, !5445, !5446, !5450, !5454}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5428, file: !5429, line: 53, baseType: !317, size: 64)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5428, file: !5429, line: 55, baseType: !444, size: 64, offset: 64)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5428, file: !5429, line: 56, baseType: !444, size: 64, offset: 128)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5428, file: !5429, line: 58, baseType: !4246, size: 64, offset: 192)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5428, file: !5429, line: 59, baseType: !5436, size: 64, offset: 256)
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = !DISubroutineType(types: !5438)
!5438 = !{!397, !4249, !4255}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5428, file: !5429, line: 61, baseType: !5440, size: 64, offset: 320)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5441, size: 64)
!5441 = !DISubroutineType(types: !5442)
!5442 = !{null, !5426}
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5428, file: !5429, line: 62, baseType: !4257, size: 64, offset: 384)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5428, file: !5429, line: 64, baseType: !4266, size: 64, offset: 448)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5428, file: !5429, line: 66, baseType: !4085, size: 64, offset: 512)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5428, file: !5429, line: 67, baseType: !5447, size: 64, offset: 576)
!5447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5448, size: 64)
!5448 = !DISubroutineType(types: !5449)
!5449 = !{!2625, !4249}
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5428, file: !5429, line: 69, baseType: !5451, size: 64, offset: 640)
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{null, !4249, !4117, !4118}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5428, file: !5429, line: 71, baseType: !4261, size: 64, offset: 704)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !310, file: !112, line: 785, baseType: !444, size: 64, offset: 5440)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !310, file: !112, line: 787, baseType: !4257, size: 64, offset: 5504)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !310, file: !112, line: 788, baseType: !4635, size: 64, offset: 5568)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !310, file: !112, line: 789, baseType: !5459, size: 64, offset: 5632)
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5460, size: 64)
!5460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 425, size: 640, elements: !5461)
!5461 = !{!5462, !5463, !5475, !5478, !5488, !5489, !5490, !5491, !5492, !5493}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5460, file: !94, line: 426, baseType: !728, size: 256)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "fault_param", scope: !5460, file: !94, line: 427, baseType: !5464, size: 64, offset: 256)
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5465, size: 64)
!5465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_param", file: !94, line: 402, size: 512, elements: !5466)
!5466 = !{!5467, !5472, !5473, !5474}
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5465, file: !94, line: 403, baseType: !5468, size: 64)
!5468 = !DIDerivedType(tag: DW_TAG_typedef, name: "iommu_dev_fault_handler_t", file: !94, line: 51, baseType: !5469)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{!127, !4467, !257}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5465, file: !94, line: 404, baseType: !257, size: 64, offset: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "faults", scope: !5465, file: !94, line: 405, baseType: !302, size: 128, offset: 128)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5465, file: !94, line: 406, baseType: !728, size: 256, offset: 256)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "iopf_param", scope: !5460, file: !94, line: 428, baseType: !5476, size: 64, offset: 320)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = !DICompositeType(tag: DW_TAG_structure_type, name: "iopf_device_param", file: !94, line: 428, flags: DIFlagFwdDecl)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "fwspec", scope: !5460, file: !94, line: 429, baseType: !5479, size: 64, offset: 384)
!5479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5480, size: 64)
!5480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fwspec", file: !94, line: 654, size: 192, elements: !5481)
!5481 = !{!5482, !5483, !5484, !5485, !5486}
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5480, file: !94, line: 655, baseType: !4372, size: 64)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_fwnode", scope: !5480, file: !94, line: 656, baseType: !4524, size: 64, offset: 64)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5480, file: !94, line: 657, baseType: !541, size: 32, offset: 128)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "num_ids", scope: !5480, file: !94, line: 658, baseType: !7, size: 32, offset: 160)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5480, file: !94, line: 659, baseType: !5487, offset: 192)
!5487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, elements: !1873)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_dev", scope: !5460, file: !94, line: 430, baseType: !4518, size: 64, offset: 448)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5460, file: !94, line: 431, baseType: !257, size: 64, offset: 512)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "max_pasids", scope: !5460, file: !94, line: 432, baseType: !541, size: 32, offset: 576)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "attach_deferred", scope: !5460, file: !94, line: 433, baseType: !541, size: 1, offset: 608, flags: DIFlagBitField, extraData: i64 608)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "pci_32bit_workaround", scope: !5460, file: !94, line: 434, baseType: !541, size: 1, offset: 609, flags: DIFlagBitField, extraData: i64 608)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "require_direct", scope: !5460, file: !94, line: 435, baseType: !541, size: 1, offset: 610, flags: DIFlagBitField, extraData: i64 608)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !310, file: !112, line: 791, baseType: !5495, size: 64, offset: 5696)
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5496, size: 64)
!5496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !112, line: 597, size: 128, elements: !5497)
!5497 = !{!5498, !5499, !5500, !5501, !5502}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5496, file: !112, line: 598, baseType: !184, size: 32)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5496, file: !112, line: 599, baseType: !193, size: 32, offset: 32)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5496, file: !112, line: 600, baseType: !198, size: 32, offset: 64)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5496, file: !112, line: 601, baseType: !271, size: 8, offset: 96)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5496, file: !112, line: 602, baseType: !271, size: 8, offset: 104)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !310, file: !112, line: 793, baseType: !203, size: 32, offset: 5760)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !310, file: !112, line: 795, baseType: !271, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !310, file: !112, line: 796, baseType: !271, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !310, file: !112, line: 797, baseType: !271, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !310, file: !112, line: 798, baseType: !271, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !310, file: !112, line: 799, baseType: !271, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5509 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !216, line: 104, baseType: !5510, size: 320, offset: 384)
!5510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !216, line: 104, size: 320, elements: !5511)
!5511 = !{!5512, !5526, !5540, !5547, !5552}
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "arm_lpae_s1_cfg", scope: !5510, file: !216, line: 116, baseType: !5513, size: 192)
!5513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5510, file: !216, line: 105, size: 192, elements: !5514)
!5514 = !{!5515, !5516, !5525}
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "ttbr", scope: !5513, file: !216, line: 106, baseType: !246, size: 64)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "tcr", scope: !5513, file: !216, line: 114, baseType: !5517, size: 32, offset: 64)
!5517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5513, file: !216, line: 107, size: 32, elements: !5518)
!5518 = !{!5519, !5520, !5521, !5522, !5523, !5524}
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "ips", scope: !5517, file: !216, line: 108, baseType: !541, size: 3, flags: DIFlagBitField, extraData: i64 0)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "tg", scope: !5517, file: !216, line: 109, baseType: !541, size: 2, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !5517, file: !216, line: 110, baseType: !541, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "orgn", scope: !5517, file: !216, line: 111, baseType: !541, size: 2, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "irgn", scope: !5517, file: !216, line: 112, baseType: !541, size: 2, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "tsz", scope: !5517, file: !216, line: 113, baseType: !541, size: 6, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "mair", scope: !5513, file: !216, line: 115, baseType: !246, size: 64, offset: 128)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "arm_lpae_s2_cfg", scope: !5510, file: !216, line: 129, baseType: !5527, size: 128)
!5527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5510, file: !216, line: 118, size: 128, elements: !5528)
!5528 = !{!5529, !5530}
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "vttbr", scope: !5527, file: !216, line: 119, baseType: !246, size: 64)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "vtcr", scope: !5527, file: !216, line: 128, baseType: !5531, size: 32, offset: 64)
!5531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5527, file: !216, line: 120, size: 32, elements: !5532)
!5532 = !{!5533, !5534, !5535, !5536, !5537, !5538, !5539}
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "ps", scope: !5531, file: !216, line: 121, baseType: !541, size: 3, flags: DIFlagBitField, extraData: i64 0)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "tg", scope: !5531, file: !216, line: 122, baseType: !541, size: 2, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !5531, file: !216, line: 123, baseType: !541, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "orgn", scope: !5531, file: !216, line: 124, baseType: !541, size: 2, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "irgn", scope: !5531, file: !216, line: 125, baseType: !541, size: 2, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5531, file: !216, line: 126, baseType: !541, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "tsz", scope: !5531, file: !216, line: 127, baseType: !541, size: 6, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "arm_v7s_cfg", scope: !5510, file: !216, line: 136, baseType: !5541, size: 128)
!5541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5510, file: !216, line: 131, size: 128, elements: !5542)
!5542 = !{!5543, !5544, !5545, !5546}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "ttbr", scope: !5541, file: !216, line: 132, baseType: !541, size: 32)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "tcr", scope: !5541, file: !216, line: 133, baseType: !541, size: 32, offset: 32)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "nmrr", scope: !5541, file: !216, line: 134, baseType: !541, size: 32, offset: 64)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "prrr", scope: !5541, file: !216, line: 135, baseType: !541, size: 32, offset: 96)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "arm_mali_lpae_cfg", scope: !5510, file: !216, line: 141, baseType: !5548, size: 128)
!5548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5510, file: !216, line: 138, size: 128, elements: !5549)
!5549 = !{!5550, !5551}
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "transtab", scope: !5548, file: !216, line: 139, baseType: !246, size: 64)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "memattr", scope: !5548, file: !216, line: 140, baseType: !246, size: 64, offset: 64)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "apple_dart_cfg", scope: !5510, file: !216, line: 146, baseType: !5553, size: 320)
!5553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5510, file: !216, line: 143, size: 320, elements: !5554)
!5554 = !{!5555, !5557}
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "ttbr", scope: !5553, file: !216, line: 144, baseType: !5556, size: 256)
!5556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 256, elements: !951)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "n_ttbrs", scope: !5553, file: !216, line: 145, baseType: !541, size: 32, offset: 256)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "iop", scope: !259, file: !260, line: 544, baseType: !5559, size: 1024, offset: 704)
!5559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_pgtable", file: !216, line: 208, size: 1024, elements: !5560)
!5560 = !{!5561, !5562, !5563, !5564}
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5559, file: !216, line: 209, baseType: !215, size: 32)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !5559, file: !216, line: 210, baseType: !257, size: 64, offset: 64)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !5559, file: !216, line: 211, baseType: !263, size: 704, offset: 128)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5559, file: !216, line: 212, baseType: !5565, size: 192, offset: 832)
!5565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_pgtable_ops", file: !216, line: 160, size: 192, elements: !5566)
!5566 = !{!5567, !5572, !5576}
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !5565, file: !216, line: 161, baseType: !5568, size: 64)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5569 = !DISubroutineType(types: !5570)
!5570 = !{!127, !5571, !266, !3329, !287, !287, !127, !1235, !4414}
!5571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5565, size: 64)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_pages", scope: !5565, file: !216, line: 164, baseType: !5573, size: 64, offset: 64)
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = !DISubroutineType(types: !5575)
!5575 = !{!287, !5571, !266, !287, !287, !295}
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "iova_to_phys", scope: !5565, file: !216, line: 167, baseType: !5577, size: 64, offset: 128)
!5577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5578, size: 64)
!5578 = !DISubroutineType(types: !5579)
!5579 = !{!3329, !5571, !266}
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !259, file: !260, line: 545, baseType: !127, size: 32, offset: 1728)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !259, file: !260, line: 546, baseType: !251, size: 64, offset: 1792)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "pt_root", scope: !259, file: !260, line: 547, baseType: !734, size: 64, offset: 1856)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !259, file: !260, line: 548, baseType: !251, size: 64, offset: 1920)
!5584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5559, size: 64)
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "protection_domain", file: !260, line: 555, size: 4160, elements: !5587)
!5587 = !{!5588, !5589, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5597, !5598}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "dev_list", scope: !5586, file: !260, line: 556, baseType: !302, size: 128)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5586, file: !260, line: 557, baseType: !4389, size: 704, offset: 128)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "iop", scope: !5586, file: !260, line: 559, baseType: !259, size: 1984, offset: 832)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5586, file: !260, line: 560, baseType: !329, size: 32, offset: 2816)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5586, file: !260, line: 561, baseType: !365, size: 16, offset: 2848)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "glx", scope: !5586, file: !260, line: 562, baseType: !127, size: 32, offset: 2880)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !5586, file: !260, line: 563, baseType: !127, size: 32, offset: 2912)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "gcr3_tbl", scope: !5586, file: !260, line: 564, baseType: !251, size: 64, offset: 2944)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5586, file: !260, line: 565, baseType: !266, size: 64, offset: 3008)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "dev_cnt", scope: !5586, file: !260, line: 566, baseType: !7, size: 32, offset: 3072)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "dev_iommu", scope: !5586, file: !260, line: 567, baseType: !5599, size: 1024, offset: 3104)
!5599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !551)
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5601, size: 64)
!5601 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !246)
!5602 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !272, line: 42, baseType: !266)
!5603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5605, size: 64)
!5605 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !305)
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5607, size: 64)
!5607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5605)
!5608 = !{!0, !5609, !5611, !5616, !5622}
!5609 = !DIGlobalVariableExpression(var: !5610, expr: !DIExpression())
!5610 = distinct !DIGlobalVariable(name: "v1_flush_ops", scope: !2, file: !3, line: 41, type: !276, isLocal: true, isDefinition: true)
!5611 = !DIGlobalVariableExpression(var: !5612, expr: !DIExpression())
!5612 = distinct !DIGlobalVariable(scope: null, file: !3, line: 373, type: !5613, isLocal: true, isDefinition: true)
!5613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 248, elements: !5614)
!5614 = !{!5615}
!5615 = !DISubrange(count: 31)
!5616 = !DIGlobalVariableExpression(var: !5617, expr: !DIExpression())
!5617 = distinct !DIGlobalVariable(scope: null, file: !5618, line: 223, type: !5619, isLocal: true, isDefinition: true)
!5618 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!5619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 384, elements: !5620)
!5620 = !{!5621}
!5621 = !DISubrange(count: 48)
!5622 = !DIGlobalVariableExpression(var: !5623, expr: !DIExpression())
!5623 = distinct !DIGlobalVariable(scope: null, file: !3, line: 345, type: !5624, isLocal: true, isDefinition: true)
!5624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 432, elements: !5625)
!5625 = !{!5626}
!5626 = !DISubrange(count: 54)
!5627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_pgtable_init_fns", file: !216, line: 247, size: 128, elements: !5628)
!5628 = !{!5629, !5634}
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5627, file: !216, line: 248, baseType: !5630, size: 64)
!5630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5631, size: 64)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{!5584, !5633, !257}
!5633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5627, file: !216, line: 249, baseType: !5635, size: 64, offset: 64)
!5635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5636, size: 64)
!5636 = !DISubroutineType(types: !5637)
!5637 = !{null, !5584}
!5638 = !{i32 7, !"Dwarf Version", i32 5}
!5639 = !{i32 2, !"Debug Info Version", i32 3}
!5640 = !{i32 1, !"wchar_size", i32 2}
!5641 = !{i32 8, !"cf-protection-branch", i32 1}
!5642 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5643 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5644 = !{i32 1, !"Code Model", i32 2}
!5645 = !{i32 1, !"override-stack-alignment", i32 8}
!5646 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5647 = distinct !DISubprogram(name: "amd_iommu_domain_set_pgtable", scope: !3, file: !3, line: 134, type: !5648, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5650)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{null, !5585, !251, !127}
!5650 = !{!5651, !5652, !5653, !5654}
!5651 = !DILocalVariable(name: "domain", arg: 1, scope: !5647, file: !3, line: 134, type: !5585)
!5652 = !DILocalVariable(name: "root", arg: 2, scope: !5647, file: !3, line: 135, type: !251)
!5653 = !DILocalVariable(name: "mode", arg: 3, scope: !5647, file: !3, line: 135, type: !127)
!5654 = !DILocalVariable(name: "pt_root", scope: !5647, file: !3, line: 137, type: !246)
!5655 = !DILocation(line: 134, column: 61, scope: !5647)
!5656 = !DILocation(line: 135, column: 12, scope: !5647)
!5657 = !DILocation(line: 135, column: 22, scope: !5647)
!5658 = !DILocation(line: 137, column: 2, scope: !5647)
!5659 = !DILocation(line: 137, column: 6, scope: !5647)
!5660 = !DILocation(line: 140, column: 12, scope: !5647)
!5661 = !DILocation(line: 140, column: 17, scope: !5647)
!5662 = !DILocation(line: 140, column: 10, scope: !5647)
!5663 = !DILocation(line: 141, column: 18, scope: !5647)
!5664 = !DILocation(line: 141, column: 13, scope: !5647)
!5665 = !DILocation(line: 141, column: 10, scope: !5647)
!5666 = !DILocation(line: 143, column: 31, scope: !5647)
!5667 = !DILocation(line: 143, column: 39, scope: !5647)
!5668 = !DILocation(line: 143, column: 2, scope: !5647)
!5669 = !DILocation(line: 144, column: 1, scope: !5647)
!5670 = distinct !DISubprogram(name: "amd_iommu_domain_set_pt_root", scope: !5671, file: !5671, line: 106, type: !5672, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5674)
!5671 = !DIFile(filename: "drivers/iommu/amd/amd_iommu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aede48238cd268ef1a1785d928ba502c")
!5672 = !DISubroutineType(types: !5673)
!5673 = !{null, !5585, !246}
!5674 = !{!5675, !5676}
!5675 = !DILocalVariable(name: "domain", arg: 1, scope: !5670, file: !5671, line: 106, type: !5585)
!5676 = !DILocalVariable(name: "root", arg: 2, scope: !5670, file: !5671, line: 106, type: !246)
!5677 = !DILocation(line: 106, column: 61, scope: !5670)
!5678 = !DILocation(line: 106, column: 73, scope: !5670)
!5679 = !DILocation(line: 108, column: 16, scope: !5670)
!5680 = !DILocation(line: 108, column: 24, scope: !5670)
!5681 = !DILocation(line: 108, column: 28, scope: !5670)
!5682 = !DILocation(line: 108, column: 37, scope: !5670)
!5683 = !DILocation(line: 108, column: 2, scope: !5670)
!5684 = !DILocation(line: 109, column: 29, scope: !5670)
!5685 = !DILocation(line: 109, column: 34, scope: !5670)
!5686 = !DILocation(line: 109, column: 21, scope: !5670)
!5687 = !DILocation(line: 109, column: 2, scope: !5670)
!5688 = !DILocation(line: 109, column: 10, scope: !5670)
!5689 = !DILocation(line: 109, column: 14, scope: !5670)
!5690 = !DILocation(line: 109, column: 19, scope: !5670)
!5691 = !DILocation(line: 110, column: 21, scope: !5670)
!5692 = !DILocation(line: 110, column: 26, scope: !5670)
!5693 = !DILocation(line: 110, column: 2, scope: !5670)
!5694 = !DILocation(line: 110, column: 10, scope: !5670)
!5695 = !DILocation(line: 110, column: 14, scope: !5670)
!5696 = !DILocation(line: 110, column: 19, scope: !5670)
!5697 = !DILocation(line: 111, column: 1, scope: !5670)
!5698 = distinct !DISubprogram(name: "v1_alloc_pgtable", scope: !3, file: !3, line: 518, type: !5631, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5699)
!5699 = !{!5700, !5701, !5702, !5703}
!5700 = !DILocalVariable(name: "cfg", arg: 1, scope: !5698, file: !3, line: 518, type: !5633)
!5701 = !DILocalVariable(name: "cookie", arg: 2, scope: !5698, file: !3, line: 518, type: !257)
!5702 = !DILocalVariable(name: "pgtable", scope: !5698, file: !3, line: 520, type: !258)
!5703 = !DILocalVariable(name: "__mptr", scope: !5704, file: !3, line: 520, type: !257)
!5704 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 520, column: 35)
!5705 = !DILocation(line: 518, column: 67, scope: !5698)
!5706 = !DILocation(line: 518, column: 78, scope: !5698)
!5707 = !DILocation(line: 520, column: 2, scope: !5698)
!5708 = !DILocation(line: 520, column: 25, scope: !5698)
!5709 = !DILocation(line: 520, column: 35, scope: !5704)
!5710 = !DILocation(line: 520, column: 35, scope: !5698)
!5711 = !DILocation(line: 522, column: 2, scope: !5698)
!5712 = !DILocation(line: 522, column: 7, scope: !5698)
!5713 = !DILocation(line: 522, column: 22, scope: !5698)
!5714 = !DILocation(line: 523, column: 2, scope: !5698)
!5715 = !DILocation(line: 523, column: 7, scope: !5698)
!5716 = !DILocation(line: 523, column: 22, scope: !5698)
!5717 = !DILocation(line: 524, column: 2, scope: !5698)
!5718 = !DILocation(line: 524, column: 7, scope: !5698)
!5719 = !DILocation(line: 524, column: 22, scope: !5698)
!5720 = !DILocation(line: 525, column: 2, scope: !5698)
!5721 = !DILocation(line: 525, column: 7, scope: !5698)
!5722 = !DILocation(line: 525, column: 22, scope: !5698)
!5723 = !DILocation(line: 527, column: 2, scope: !5698)
!5724 = !DILocation(line: 527, column: 11, scope: !5698)
!5725 = !DILocation(line: 527, column: 15, scope: !5698)
!5726 = !DILocation(line: 527, column: 19, scope: !5698)
!5727 = !DILocation(line: 527, column: 32, scope: !5698)
!5728 = !DILocation(line: 528, column: 2, scope: !5698)
!5729 = !DILocation(line: 528, column: 11, scope: !5698)
!5730 = !DILocation(line: 528, column: 15, scope: !5698)
!5731 = !DILocation(line: 528, column: 19, scope: !5698)
!5732 = !DILocation(line: 528, column: 32, scope: !5698)
!5733 = !DILocation(line: 529, column: 2, scope: !5698)
!5734 = !DILocation(line: 529, column: 11, scope: !5698)
!5735 = !DILocation(line: 529, column: 15, scope: !5698)
!5736 = !DILocation(line: 529, column: 19, scope: !5698)
!5737 = !DILocation(line: 529, column: 32, scope: !5698)
!5738 = !DILocation(line: 531, column: 10, scope: !5698)
!5739 = !DILocation(line: 531, column: 19, scope: !5698)
!5740 = !DILocation(line: 532, column: 1, scope: !5698)
!5741 = !DILocation(line: 531, column: 2, scope: !5698)
!5742 = distinct !DISubprogram(name: "v1_free_pgtable", scope: !3, file: !3, line: 492, type: !5636, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5743)
!5743 = !{!5744, !5745, !5746, !5748, !5749, !5750}
!5744 = !DILocalVariable(name: "iop", arg: 1, scope: !5742, file: !3, line: 492, type: !5584)
!5745 = !DILocalVariable(name: "pgtable", scope: !5742, file: !3, line: 494, type: !258)
!5746 = !DILocalVariable(name: "__mptr", scope: !5747, file: !3, line: 494, type: !257)
!5747 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 494, column: 35)
!5748 = !DILocalVariable(name: "dom", scope: !5742, file: !3, line: 495, type: !5585)
!5749 = !DILocalVariable(name: "freelist", scope: !5742, file: !3, line: 496, type: !302)
!5750 = !DILocalVariable(name: "__mptr", scope: !5751, file: !3, line: 501, type: !257)
!5751 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 501, column: 8)
!5752 = !DILocation(line: 492, column: 48, scope: !5742)
!5753 = !DILocation(line: 494, column: 2, scope: !5742)
!5754 = !DILocation(line: 494, column: 25, scope: !5742)
!5755 = !DILocation(line: 494, column: 35, scope: !5747)
!5756 = !DILocation(line: 494, column: 35, scope: !5742)
!5757 = !DILocation(line: 495, column: 2, scope: !5742)
!5758 = !DILocation(line: 495, column: 28, scope: !5742)
!5759 = !DILocation(line: 496, column: 2, scope: !5742)
!5760 = !DILocation(line: 498, column: 6, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 498, column: 6)
!5762 = !DILocation(line: 498, column: 15, scope: !5761)
!5763 = !DILocation(line: 498, column: 20, scope: !5761)
!5764 = !DILocation(line: 498, column: 6, scope: !5742)
!5765 = !DILocation(line: 499, column: 3, scope: !5761)
!5766 = !DILocation(line: 501, column: 8, scope: !5751)
!5767 = !DILocation(line: 501, column: 8, scope: !5742)
!5768 = !DILocation(line: 501, column: 6, scope: !5742)
!5769 = !DILocation(line: 504, column: 2, scope: !5742)
!5770 = !DILocation(line: 504, column: 2, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 504, column: 2)
!5772 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 504, column: 2)
!5773 = !DILocation(line: 504, column: 2, scope: !5772)
!5774 = !DILocation(line: 504, column: 2, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 504, column: 2)
!5776 = !DILocation(line: 504, column: 2, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 504, column: 2)
!5778 = !DILocation(line: 504, column: 2, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 504, column: 2)
!5780 = !{i64 2155430603, i64 2155430632, i64 2155430678, i64 2155430736, i64 2155430790, i64 2155430844, i64 2155430899, i64 2155430930}
!5781 = !DILocation(line: 507, column: 14, scope: !5742)
!5782 = !DILocation(line: 507, column: 23, scope: !5742)
!5783 = !DILocation(line: 507, column: 29, scope: !5742)
!5784 = !DILocation(line: 507, column: 38, scope: !5742)
!5785 = !DILocation(line: 507, column: 2, scope: !5742)
!5786 = !DILocation(line: 510, column: 31, scope: !5742)
!5787 = !DILocation(line: 510, column: 2, scope: !5742)
!5788 = !DILocation(line: 513, column: 26, scope: !5742)
!5789 = !DILocation(line: 513, column: 2, scope: !5742)
!5790 = !DILocation(line: 515, column: 2, scope: !5742)
!5791 = !DILocation(line: 516, column: 1, scope: !5742)
!5792 = distinct !DISubprogram(name: "atomic64_set", scope: !5793, file: !5793, line: 1629, type: !5794, scopeLine: 1630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5797)
!5793 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5794 = !DISubroutineType(types: !5795)
!5795 = !{null, !5796, !254}
!5796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!5797 = !{!5798, !5799}
!5798 = !DILocalVariable(name: "v", arg: 1, scope: !5792, file: !5793, line: 1629, type: !5796)
!5799 = !DILocalVariable(name: "i", arg: 2, scope: !5792, file: !5793, line: 1629, type: !254)
!5800 = !DILocation(line: 1629, column: 26, scope: !5792)
!5801 = !DILocation(line: 1629, column: 33, scope: !5792)
!5802 = !DILocation(line: 1631, column: 26, scope: !5792)
!5803 = !DILocation(line: 1631, column: 2, scope: !5792)
!5804 = !DILocation(line: 1632, column: 19, scope: !5792)
!5805 = !DILocation(line: 1632, column: 22, scope: !5792)
!5806 = !DILocation(line: 1632, column: 2, scope: !5792)
!5807 = !DILocation(line: 1633, column: 1, scope: !5792)
!5808 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5809, file: !5809, line: 80, type: !5810, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5815)
!5809 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5810 = !DISubroutineType(types: !5811)
!5811 = !{null, !5812, !287}
!5812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5813, size: 64)
!5813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5814)
!5814 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5815 = !{!5816, !5817}
!5816 = !DILocalVariable(name: "v", arg: 1, scope: !5808, file: !5809, line: 80, type: !5812)
!5817 = !DILocalVariable(name: "size", arg: 2, scope: !5808, file: !5809, line: 80, type: !287)
!5818 = !DILocation(line: 80, column: 74, scope: !5808)
!5819 = !DILocation(line: 80, column: 84, scope: !5808)
!5820 = !DILocation(line: 82, column: 20, scope: !5808)
!5821 = !DILocation(line: 82, column: 23, scope: !5808)
!5822 = !DILocation(line: 82, column: 2, scope: !5808)
!5823 = !DILocation(line: 83, column: 2, scope: !5808)
!5824 = !DILocation(line: 84, column: 1, scope: !5808)
!5825 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !5826, file: !5826, line: 2600, type: !5794, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5827)
!5826 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5827 = !{!5828, !5829}
!5828 = !DILocalVariable(name: "v", arg: 1, scope: !5825, file: !5826, line: 2600, type: !5796)
!5829 = !DILocalVariable(name: "i", arg: 2, scope: !5825, file: !5826, line: 2600, type: !254)
!5830 = !DILocation(line: 2600, column: 30, scope: !5825)
!5831 = !DILocation(line: 2600, column: 37, scope: !5825)
!5832 = !DILocation(line: 2602, column: 20, scope: !5825)
!5833 = !DILocation(line: 2602, column: 23, scope: !5825)
!5834 = !DILocation(line: 2602, column: 2, scope: !5825)
!5835 = !DILocation(line: 2603, column: 1, scope: !5825)
!5836 = distinct !DISubprogram(name: "kasan_check_write", scope: !5837, file: !5837, line: 44, type: !5838, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5840)
!5837 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5838 = !DISubroutineType(types: !5839)
!5839 = !{!271, !5812, !7}
!5840 = !{!5841, !5842}
!5841 = !DILocalVariable(name: "p", arg: 1, scope: !5836, file: !5837, line: 44, type: !5812)
!5842 = !DILocalVariable(name: "size", arg: 2, scope: !5836, file: !5837, line: 44, type: !7)
!5843 = !DILocation(line: 44, column: 59, scope: !5836)
!5844 = !DILocation(line: 44, column: 75, scope: !5836)
!5845 = !DILocation(line: 46, column: 2, scope: !5836)
!5846 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5847, file: !5847, line: 229, type: !5848, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5850)
!5847 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5848 = !DISubroutineType(types: !5849)
!5849 = !{null, !5812, !287, !127}
!5850 = !{!5851, !5852, !5853}
!5851 = !DILocalVariable(name: "ptr", arg: 1, scope: !5846, file: !5847, line: 229, type: !5812)
!5852 = !DILocalVariable(name: "size", arg: 2, scope: !5846, file: !5847, line: 229, type: !287)
!5853 = !DILocalVariable(name: "type", arg: 3, scope: !5846, file: !5847, line: 230, type: !127)
!5854 = !DILocation(line: 229, column: 60, scope: !5846)
!5855 = !DILocation(line: 229, column: 72, scope: !5846)
!5856 = !DILocation(line: 230, column: 15, scope: !5846)
!5857 = !DILocation(line: 230, column: 23, scope: !5846)
!5858 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !5859, file: !5859, line: 18, type: !5794, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5860)
!5859 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!5860 = !{!5861, !5862}
!5861 = !DILocalVariable(name: "v", arg: 1, scope: !5858, file: !5859, line: 18, type: !5796)
!5862 = !DILocalVariable(name: "i", arg: 2, scope: !5858, file: !5859, line: 18, type: !254)
!5863 = !DILocation(line: 18, column: 59, scope: !5858)
!5864 = !DILocation(line: 18, column: 66, scope: !5858)
!5865 = !DILocation(line: 20, column: 2, scope: !5858)
!5866 = !DILocation(line: 20, column: 2, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5858, file: !5859, line: 20, column: 2)
!5868 = !DILocation(line: 21, column: 1, scope: !5858)
!5869 = distinct !DISubprogram(name: "iommu_v1_map_pages", scope: !3, file: !3, line: 363, type: !5569, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5870)
!5870 = !{!5871, !5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879, !5880, !5882, !5884, !5886, !5887, !5888, !5889, !5890, !5891, !5892, !5893, !5894, !5897, !5901}
!5871 = !DILocalVariable(name: "ops", arg: 1, scope: !5869, file: !3, line: 363, type: !5571)
!5872 = !DILocalVariable(name: "iova", arg: 2, scope: !5869, file: !3, line: 363, type: !266)
!5873 = !DILocalVariable(name: "paddr", arg: 3, scope: !5869, file: !3, line: 364, type: !3329)
!5874 = !DILocalVariable(name: "pgsize", arg: 4, scope: !5869, file: !3, line: 364, type: !287)
!5875 = !DILocalVariable(name: "pgcount", arg: 5, scope: !5869, file: !3, line: 364, type: !287)
!5876 = !DILocalVariable(name: "prot", arg: 6, scope: !5869, file: !3, line: 365, type: !127)
!5877 = !DILocalVariable(name: "gfp", arg: 7, scope: !5869, file: !3, line: 365, type: !1235)
!5878 = !DILocalVariable(name: "mapped", arg: 8, scope: !5869, file: !3, line: 365, type: !4414)
!5879 = !DILocalVariable(name: "dom", scope: !5869, file: !3, line: 367, type: !5585)
!5880 = !DILocalVariable(name: "__mptr", scope: !5881, file: !3, line: 367, type: !257)
!5881 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 367, column: 34)
!5882 = !DILocalVariable(name: "__mptr", scope: !5883, file: !3, line: 367, type: !257)
!5883 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 367, column: 34)
!5884 = !DILocalVariable(name: "__mptr", scope: !5885, file: !3, line: 367, type: !257)
!5885 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 367, column: 34)
!5886 = !DILocalVariable(name: "freelist", scope: !5869, file: !3, line: 368, type: !302)
!5887 = !DILocalVariable(name: "updated", scope: !5869, file: !3, line: 369, type: !271)
!5888 = !DILocalVariable(name: "__pte", scope: !5869, file: !3, line: 370, type: !246)
!5889 = !DILocalVariable(name: "pte", scope: !5869, file: !3, line: 370, type: !251)
!5890 = !DILocalVariable(name: "ret", scope: !5869, file: !3, line: 371, type: !127)
!5891 = !DILocalVariable(name: "i", scope: !5869, file: !3, line: 371, type: !127)
!5892 = !DILocalVariable(name: "count", scope: !5869, file: !3, line: 371, type: !127)
!5893 = !DILabel(scope: !5869, name: "out", file: !3, line: 417)
!5894 = !DILocalVariable(name: "flags", scope: !5895, file: !3, line: 419, type: !266)
!5895 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 418, column: 15)
!5896 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 418, column: 6)
!5897 = !DILocalVariable(name: "__dummy", scope: !5898, file: !3, line: 421, type: !266)
!5898 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 421, column: 3)
!5899 = distinct !DILexicalBlock(scope: !5900, file: !3, line: 421, column: 3)
!5900 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 421, column: 3)
!5901 = !DILocalVariable(name: "__dummy2", scope: !5898, file: !3, line: 421, type: !266)
!5902 = !DILocation(line: 363, column: 54, scope: !5869)
!5903 = !DILocation(line: 363, column: 73, scope: !5869)
!5904 = !DILocation(line: 364, column: 22, scope: !5869)
!5905 = !DILocation(line: 364, column: 36, scope: !5869)
!5906 = !DILocation(line: 364, column: 51, scope: !5869)
!5907 = !DILocation(line: 365, column: 14, scope: !5869)
!5908 = !DILocation(line: 365, column: 26, scope: !5869)
!5909 = !DILocation(line: 365, column: 39, scope: !5869)
!5910 = !DILocation(line: 367, column: 2, scope: !5869)
!5911 = !DILocation(line: 367, column: 28, scope: !5869)
!5912 = !DILocation(line: 367, column: 34, scope: !5881)
!5913 = !DILocation(line: 367, column: 34, scope: !5883)
!5914 = !DILocation(line: 367, column: 34, scope: !5885)
!5915 = !DILocation(line: 367, column: 34, scope: !5869)
!5916 = !DILocation(line: 368, column: 2, scope: !5869)
!5917 = !DILocation(line: 369, column: 2, scope: !5869)
!5918 = !DILocation(line: 369, column: 7, scope: !5869)
!5919 = !DILocation(line: 370, column: 2, scope: !5869)
!5920 = !DILocation(line: 370, column: 6, scope: !5869)
!5921 = !DILocation(line: 370, column: 14, scope: !5869)
!5922 = !DILocation(line: 371, column: 2, scope: !5869)
!5923 = !DILocation(line: 371, column: 6, scope: !5869)
!5924 = !DILocation(line: 371, column: 11, scope: !5869)
!5925 = !DILocation(line: 371, column: 14, scope: !5869)
!5926 = !DILocation(line: 373, column: 2, scope: !5869)
!5927 = !DILocation(line: 373, column: 2, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 373, column: 2)
!5929 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 373, column: 2)
!5930 = !DILocation(line: 373, column: 2, scope: !5929)
!5931 = !DILocation(line: 373, column: 2, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5928, file: !3, line: 373, column: 2)
!5933 = !DILocation(line: 373, column: 2, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 373, column: 2)
!5935 = !DILocation(line: 373, column: 2, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 373, column: 2)
!5937 = !{i64 2155405722, i64 2155405751, i64 2155405797, i64 2155405855, i64 2155405909, i64 2155405963, i64 2155406018, i64 2155406049}
!5938 = !DILocation(line: 374, column: 2, scope: !5869)
!5939 = !DILocation(line: 374, column: 2, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5941, file: !3, line: 374, column: 2)
!5941 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 374, column: 2)
!5942 = !DILocation(line: 374, column: 2, scope: !5941)
!5943 = !DILocation(line: 374, column: 2, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 374, column: 2)
!5945 = !DILocation(line: 374, column: 2, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 374, column: 2)
!5947 = !DILocation(line: 374, column: 2, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 374, column: 2)
!5949 = !{i64 2155406858, i64 2155406887, i64 2155406933, i64 2155406991, i64 2155407045, i64 2155407099, i64 2155407154, i64 2155407185}
!5950 = !DILocation(line: 376, column: 6, scope: !5869)
!5951 = !DILocation(line: 377, column: 8, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 377, column: 6)
!5953 = !DILocation(line: 377, column: 13, scope: !5952)
!5954 = !DILocation(line: 377, column: 6, scope: !5869)
!5955 = !DILocation(line: 378, column: 3, scope: !5952)
!5956 = !DILocation(line: 380, column: 2, scope: !5869)
!5957 = !DILocation(line: 380, column: 9, scope: !5869)
!5958 = !DILocation(line: 380, column: 17, scope: !5869)
!5959 = !DILocation(line: 381, column: 11, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 380, column: 22)
!5961 = !DILocation(line: 381, column: 9, scope: !5960)
!5962 = !DILocation(line: 382, column: 21, scope: !5960)
!5963 = !DILocation(line: 382, column: 26, scope: !5960)
!5964 = !DILocation(line: 382, column: 32, scope: !5960)
!5965 = !DILocation(line: 382, column: 46, scope: !5960)
!5966 = !DILocation(line: 382, column: 11, scope: !5960)
!5967 = !DILocation(line: 382, column: 9, scope: !5960)
!5968 = !DILocation(line: 384, column: 7, scope: !5960)
!5969 = !DILocation(line: 385, column: 8, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 385, column: 7)
!5971 = !DILocation(line: 385, column: 7, scope: !5960)
!5972 = !DILocation(line: 386, column: 4, scope: !5970)
!5973 = !DILocation(line: 388, column: 10, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 388, column: 3)
!5975 = !DILocation(line: 388, column: 8, scope: !5974)
!5976 = !DILocation(line: 388, column: 15, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 388, column: 3)
!5978 = !DILocation(line: 388, column: 19, scope: !5977)
!5979 = !DILocation(line: 388, column: 17, scope: !5977)
!5980 = !DILocation(line: 388, column: 3, scope: !5974)
!5981 = !DILocation(line: 389, column: 20, scope: !5977)
!5982 = !DILocation(line: 389, column: 24, scope: !5977)
!5983 = !DILocation(line: 389, column: 28, scope: !5977)
!5984 = !DILocation(line: 389, column: 32, scope: !5977)
!5985 = !DILocation(line: 389, column: 4, scope: !5977)
!5986 = !DILocation(line: 388, column: 26, scope: !5977)
!5987 = !DILocation(line: 388, column: 3, scope: !5977)
!5988 = distinct !{!5988, !5980, !5989, !5990, !5991}
!5989 = !DILocation(line: 389, column: 45, scope: !5974)
!5990 = !{!"llvm.loop.mustprogress"}
!5991 = !{!"llvm.loop.unroll.disable"}
!5992 = !DILocation(line: 391, column: 8, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 391, column: 7)
!5994 = !DILocation(line: 391, column: 7, scope: !5960)
!5995 = !DILocation(line: 392, column: 12, scope: !5993)
!5996 = !DILocation(line: 392, column: 4, scope: !5993)
!5997 = !DILocation(line: 394, column: 7, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 394, column: 7)
!5999 = !DILocation(line: 394, column: 13, scope: !5998)
!6000 = !DILocation(line: 394, column: 7, scope: !5960)
!6001 = !DILocation(line: 395, column: 12, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !5998, file: !3, line: 394, column: 18)
!6003 = !DILocation(line: 395, column: 10, scope: !6002)
!6004 = !DILocation(line: 396, column: 10, scope: !6002)
!6005 = !DILocation(line: 397, column: 3, scope: !6002)
!6006 = !DILocation(line: 398, column: 12, scope: !5998)
!6007 = !DILocation(line: 398, column: 29, scope: !5998)
!6008 = !DILocation(line: 398, column: 44, scope: !5998)
!6009 = !DILocation(line: 398, column: 10, scope: !5998)
!6010 = !DILocation(line: 400, column: 7, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 400, column: 7)
!6012 = !DILocation(line: 400, column: 12, scope: !6011)
!6013 = !DILocation(line: 400, column: 7, scope: !5960)
!6014 = !DILocation(line: 401, column: 10, scope: !6011)
!6015 = !DILocation(line: 401, column: 4, scope: !6011)
!6016 = !DILocation(line: 402, column: 7, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 402, column: 7)
!6018 = !DILocation(line: 402, column: 12, scope: !6017)
!6019 = !DILocation(line: 402, column: 7, scope: !5960)
!6020 = !DILocation(line: 403, column: 10, scope: !6017)
!6021 = !DILocation(line: 403, column: 4, scope: !6017)
!6022 = !DILocation(line: 405, column: 10, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 405, column: 3)
!6024 = !DILocation(line: 405, column: 8, scope: !6023)
!6025 = !DILocation(line: 405, column: 15, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !6023, file: !3, line: 405, column: 3)
!6027 = !DILocation(line: 405, column: 19, scope: !6026)
!6028 = !DILocation(line: 405, column: 17, scope: !6026)
!6029 = !DILocation(line: 405, column: 3, scope: !6023)
!6030 = !DILocation(line: 406, column: 13, scope: !6026)
!6031 = !DILocation(line: 406, column: 4, scope: !6026)
!6032 = !DILocation(line: 406, column: 8, scope: !6026)
!6033 = !DILocation(line: 406, column: 11, scope: !6026)
!6034 = !DILocation(line: 405, column: 26, scope: !6026)
!6035 = !DILocation(line: 405, column: 3, scope: !6026)
!6036 = distinct !{!6036, !6029, !6037, !5990, !5991}
!6037 = !DILocation(line: 406, column: 13, scope: !6023)
!6038 = !DILocation(line: 408, column: 12, scope: !5960)
!6039 = !DILocation(line: 408, column: 9, scope: !5960)
!6040 = !DILocation(line: 409, column: 12, scope: !5960)
!6041 = !DILocation(line: 409, column: 9, scope: !5960)
!6042 = !DILocation(line: 410, column: 10, scope: !5960)
!6043 = !DILocation(line: 411, column: 7, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 411, column: 7)
!6045 = !DILocation(line: 411, column: 7, scope: !5960)
!6046 = !DILocation(line: 412, column: 15, scope: !6044)
!6047 = !DILocation(line: 412, column: 5, scope: !6044)
!6048 = !DILocation(line: 412, column: 12, scope: !6044)
!6049 = !DILocation(line: 412, column: 4, scope: !6044)
!6050 = distinct !{!6050, !5956, !6051, !5990, !5991}
!6051 = !DILocation(line: 413, column: 2, scope: !5869)
!6052 = !DILocation(line: 415, column: 6, scope: !5869)
!6053 = !DILocation(line: 415, column: 2, scope: !5869)
!6054 = !DILocation(line: 417, column: 1, scope: !5869)
!6055 = !DILocation(line: 418, column: 6, scope: !5896)
!6056 = !{i8 0, i8 2}
!6057 = !DILocation(line: 418, column: 6, scope: !5869)
!6058 = !DILocation(line: 419, column: 3, scope: !5895)
!6059 = !DILocation(line: 419, column: 17, scope: !5895)
!6060 = !DILocation(line: 421, column: 3, scope: !5895)
!6061 = !DILocation(line: 421, column: 3, scope: !5900)
!6062 = !DILocation(line: 421, column: 3, scope: !5898)
!6063 = !DILocation(line: 421, column: 3, scope: !5899)
!6064 = !DILocation(line: 427, column: 34, scope: !5895)
!6065 = !DILocation(line: 427, column: 3, scope: !5895)
!6066 = !DILocation(line: 428, column: 35, scope: !5895)
!6067 = !DILocation(line: 428, column: 3, scope: !5895)
!6068 = !DILocation(line: 429, column: 27, scope: !5895)
!6069 = !DILocation(line: 429, column: 32, scope: !5895)
!6070 = !DILocation(line: 429, column: 38, scope: !5895)
!6071 = !DILocation(line: 429, column: 3, scope: !5895)
!6072 = !DILocation(line: 430, column: 2, scope: !5896)
!6073 = !DILocation(line: 430, column: 2, scope: !5895)
!6074 = !DILocation(line: 433, column: 2, scope: !5869)
!6075 = !DILocation(line: 435, column: 9, scope: !5869)
!6076 = !DILocation(line: 436, column: 1, scope: !5869)
!6077 = !DILocation(line: 435, column: 2, scope: !5869)
!6078 = distinct !DISubprogram(name: "iommu_v1_unmap_pages", scope: !3, file: !3, line: 438, type: !6079, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6081)
!6079 = !DISubroutineType(types: !6080)
!6080 = !{!266, !5571, !266, !287, !287, !295}
!6081 = !{!6082, !6083, !6084, !6085, !6086, !6087, !6088, !6090, !6092, !6093, !6094, !6095, !6096, !6100}
!6082 = !DILocalVariable(name: "ops", arg: 1, scope: !6078, file: !3, line: 438, type: !5571)
!6083 = !DILocalVariable(name: "iova", arg: 2, scope: !6078, file: !3, line: 439, type: !266)
!6084 = !DILocalVariable(name: "pgsize", arg: 3, scope: !6078, file: !3, line: 440, type: !287)
!6085 = !DILocalVariable(name: "pgcount", arg: 4, scope: !6078, file: !3, line: 440, type: !287)
!6086 = !DILocalVariable(name: "gather", arg: 5, scope: !6078, file: !3, line: 441, type: !295)
!6087 = !DILocalVariable(name: "pgtable", scope: !6078, file: !3, line: 443, type: !258)
!6088 = !DILocalVariable(name: "__mptr", scope: !6089, file: !3, line: 443, type: !257)
!6089 = distinct !DILexicalBlock(scope: !6078, file: !3, line: 443, column: 35)
!6090 = !DILocalVariable(name: "__mptr", scope: !6091, file: !3, line: 443, type: !257)
!6091 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 443, column: 35)
!6092 = !DILocalVariable(name: "unmapped", scope: !6078, file: !3, line: 444, type: !250)
!6093 = !DILocalVariable(name: "unmap_size", scope: !6078, file: !3, line: 445, type: !266)
!6094 = !DILocalVariable(name: "pte", scope: !6078, file: !3, line: 446, type: !251)
!6095 = !DILocalVariable(name: "size", scope: !6078, file: !3, line: 447, type: !287)
!6096 = !DILocalVariable(name: "i", scope: !6097, file: !3, line: 456, type: !127)
!6097 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 455, column: 12)
!6098 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 455, column: 7)
!6099 = distinct !DILexicalBlock(scope: !6078, file: !3, line: 453, column: 26)
!6100 = !DILocalVariable(name: "count", scope: !6097, file: !3, line: 456, type: !127)
!6101 = !DILocation(line: 438, column: 66, scope: !6078)
!6102 = !DILocation(line: 439, column: 22, scope: !6078)
!6103 = !DILocation(line: 440, column: 15, scope: !6078)
!6104 = !DILocation(line: 440, column: 30, scope: !6078)
!6105 = !DILocation(line: 441, column: 35, scope: !6078)
!6106 = !DILocation(line: 443, column: 2, scope: !6078)
!6107 = !DILocation(line: 443, column: 25, scope: !6078)
!6108 = !DILocation(line: 443, column: 35, scope: !6089)
!6109 = !DILocation(line: 443, column: 35, scope: !6091)
!6110 = !DILocation(line: 443, column: 35, scope: !6078)
!6111 = !DILocation(line: 444, column: 2, scope: !6078)
!6112 = !DILocation(line: 444, column: 21, scope: !6078)
!6113 = !DILocation(line: 445, column: 2, scope: !6078)
!6114 = !DILocation(line: 445, column: 16, scope: !6078)
!6115 = !DILocation(line: 446, column: 2, scope: !6078)
!6116 = !DILocation(line: 446, column: 7, scope: !6078)
!6117 = !DILocation(line: 447, column: 2, scope: !6078)
!6118 = !DILocation(line: 447, column: 9, scope: !6078)
!6119 = !DILocation(line: 447, column: 16, scope: !6078)
!6120 = !DILocation(line: 447, column: 27, scope: !6078)
!6121 = !DILocation(line: 447, column: 24, scope: !6078)
!6122 = !DILocation(line: 449, column: 2, scope: !6078)
!6123 = !DILocation(line: 449, column: 2, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6125, file: !3, line: 449, column: 2)
!6125 = distinct !DILexicalBlock(scope: !6078, file: !3, line: 449, column: 2)
!6126 = !DILocation(line: 449, column: 2, scope: !6125)
!6127 = !DILocation(line: 449, column: 2, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 449, column: 2)
!6129 = !DILocation(line: 449, column: 2, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6128, file: !3, line: 449, column: 2)
!6131 = !DILocation(line: 449, column: 2, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6128, file: !3, line: 449, column: 2)
!6133 = !{i64 2155420036, i64 2155420065, i64 2155420111, i64 2155420169, i64 2155420223, i64 2155420277, i64 2155420332, i64 2155420363}
!6134 = !DILocation(line: 451, column: 11, scope: !6078)
!6135 = !DILocation(line: 453, column: 2, scope: !6078)
!6136 = !DILocation(line: 453, column: 9, scope: !6078)
!6137 = !DILocation(line: 453, column: 20, scope: !6078)
!6138 = !DILocation(line: 453, column: 18, scope: !6078)
!6139 = !DILocation(line: 454, column: 19, scope: !6099)
!6140 = !DILocation(line: 454, column: 28, scope: !6099)
!6141 = !DILocation(line: 454, column: 9, scope: !6099)
!6142 = !DILocation(line: 454, column: 7, scope: !6099)
!6143 = !DILocation(line: 455, column: 7, scope: !6098)
!6144 = !DILocation(line: 455, column: 7, scope: !6099)
!6145 = !DILocation(line: 456, column: 4, scope: !6097)
!6146 = !DILocation(line: 456, column: 8, scope: !6097)
!6147 = !DILocation(line: 456, column: 11, scope: !6097)
!6148 = !DILocation(line: 458, column: 12, scope: !6097)
!6149 = !DILocation(line: 458, column: 10, scope: !6097)
!6150 = !DILocation(line: 459, column: 11, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 459, column: 4)
!6152 = !DILocation(line: 459, column: 9, scope: !6151)
!6153 = !DILocation(line: 459, column: 16, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6151, file: !3, line: 459, column: 4)
!6155 = !DILocation(line: 459, column: 20, scope: !6154)
!6156 = !DILocation(line: 459, column: 18, scope: !6154)
!6157 = !DILocation(line: 459, column: 4, scope: !6151)
!6158 = !DILocation(line: 460, column: 5, scope: !6154)
!6159 = !DILocation(line: 460, column: 9, scope: !6154)
!6160 = !DILocation(line: 460, column: 12, scope: !6154)
!6161 = !DILocation(line: 459, column: 28, scope: !6154)
!6162 = !DILocation(line: 459, column: 4, scope: !6154)
!6163 = distinct !{!6163, !6157, !6164, !5990, !5991}
!6164 = !DILocation(line: 460, column: 14, scope: !6151)
!6165 = !DILocation(line: 461, column: 3, scope: !6098)
!6166 = !DILocation(line: 461, column: 3, scope: !6097)
!6167 = !DILocation(line: 462, column: 11, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 461, column: 10)
!6169 = !DILocation(line: 462, column: 4, scope: !6168)
!6170 = !DILocation(line: 465, column: 11, scope: !6099)
!6171 = !DILocation(line: 465, column: 20, scope: !6099)
!6172 = !DILocation(line: 465, column: 31, scope: !6099)
!6173 = !DILocation(line: 465, column: 18, scope: !6099)
!6174 = !DILocation(line: 465, column: 16, scope: !6099)
!6175 = !DILocation(line: 465, column: 39, scope: !6099)
!6176 = !DILocation(line: 465, column: 37, scope: !6099)
!6177 = !DILocation(line: 465, column: 8, scope: !6099)
!6178 = !DILocation(line: 466, column: 15, scope: !6099)
!6179 = !DILocation(line: 466, column: 12, scope: !6099)
!6180 = distinct !{!6180, !6135, !6181, !5990, !5991}
!6181 = !DILocation(line: 467, column: 2, scope: !6078)
!6182 = !DILocation(line: 469, column: 9, scope: !6078)
!6183 = !DILocation(line: 469, column: 2, scope: !6078)
!6184 = !DILocation(line: 470, column: 1, scope: !6078)
!6185 = distinct !DISubprogram(name: "iommu_v1_iova_to_phys", scope: !3, file: !3, line: 472, type: !5578, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6186)
!6186 = !{!6187, !6188, !6189, !6190, !6192, !6194, !6195, !6196, !6197}
!6187 = !DILocalVariable(name: "ops", arg: 1, scope: !6185, file: !3, line: 472, type: !5571)
!6188 = !DILocalVariable(name: "iova", arg: 2, scope: !6185, file: !3, line: 472, type: !266)
!6189 = !DILocalVariable(name: "pgtable", scope: !6185, file: !3, line: 474, type: !258)
!6190 = !DILocalVariable(name: "__mptr", scope: !6191, file: !3, line: 474, type: !257)
!6191 = distinct !DILexicalBlock(scope: !6185, file: !3, line: 474, column: 35)
!6192 = !DILocalVariable(name: "__mptr", scope: !6193, file: !3, line: 474, type: !257)
!6193 = distinct !DILexicalBlock(scope: !6191, file: !3, line: 474, column: 35)
!6194 = !DILocalVariable(name: "offset_mask", scope: !6185, file: !3, line: 475, type: !266)
!6195 = !DILocalVariable(name: "pte_pgsize", scope: !6185, file: !3, line: 475, type: !266)
!6196 = !DILocalVariable(name: "pte", scope: !6185, file: !3, line: 476, type: !251)
!6197 = !DILocalVariable(name: "__pte", scope: !6185, file: !3, line: 476, type: !246)
!6198 = !DILocation(line: 472, column: 65, scope: !6185)
!6199 = !DILocation(line: 472, column: 84, scope: !6185)
!6200 = !DILocation(line: 474, column: 2, scope: !6185)
!6201 = !DILocation(line: 474, column: 25, scope: !6185)
!6202 = !DILocation(line: 474, column: 35, scope: !6191)
!6203 = !DILocation(line: 474, column: 35, scope: !6193)
!6204 = !DILocation(line: 474, column: 35, scope: !6185)
!6205 = !DILocation(line: 475, column: 2, scope: !6185)
!6206 = !DILocation(line: 475, column: 16, scope: !6185)
!6207 = !DILocation(line: 475, column: 29, scope: !6185)
!6208 = !DILocation(line: 476, column: 2, scope: !6185)
!6209 = !DILocation(line: 476, column: 7, scope: !6185)
!6210 = !DILocation(line: 476, column: 12, scope: !6185)
!6211 = !DILocation(line: 478, column: 18, scope: !6185)
!6212 = !DILocation(line: 478, column: 27, scope: !6185)
!6213 = !DILocation(line: 478, column: 8, scope: !6185)
!6214 = !DILocation(line: 478, column: 6, scope: !6185)
!6215 = !DILocation(line: 480, column: 7, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6185, file: !3, line: 480, column: 6)
!6217 = !DILocation(line: 480, column: 11, scope: !6216)
!6218 = !DILocation(line: 480, column: 15, scope: !6216)
!6219 = !DILocation(line: 480, column: 6, scope: !6185)
!6220 = !DILocation(line: 481, column: 3, scope: !6216)
!6221 = !DILocation(line: 483, column: 16, scope: !6185)
!6222 = !DILocation(line: 483, column: 27, scope: !6185)
!6223 = !DILocation(line: 483, column: 14, scope: !6185)
!6224 = !DILocation(line: 484, column: 14, scope: !6185)
!6225 = !DILocation(line: 484, column: 12, scope: !6185)
!6226 = !DILocation(line: 486, column: 10, scope: !6185)
!6227 = !DILocation(line: 486, column: 19, scope: !6185)
!6228 = !DILocation(line: 486, column: 18, scope: !6185)
!6229 = !DILocation(line: 486, column: 16, scope: !6185)
!6230 = !DILocation(line: 486, column: 35, scope: !6185)
!6231 = !DILocation(line: 486, column: 42, scope: !6185)
!6232 = !DILocation(line: 486, column: 40, scope: !6185)
!6233 = !DILocation(line: 486, column: 32, scope: !6185)
!6234 = !DILocation(line: 486, column: 2, scope: !6185)
!6235 = !DILocation(line: 487, column: 1, scope: !6185)
!6236 = distinct !DISubprogram(name: "v1_tlb_flush_all", scope: !3, file: !3, line: 26, type: !281, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6237)
!6237 = !{!6238}
!6238 = !DILocalVariable(name: "cookie", arg: 1, scope: !6236, file: !3, line: 26, type: !257)
!6239 = !DILocation(line: 26, column: 36, scope: !6236)
!6240 = !DILocation(line: 28, column: 1, scope: !6236)
!6241 = distinct !DISubprogram(name: "v1_tlb_flush_walk", scope: !3, file: !3, line: 30, type: !285, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6242)
!6242 = !{!6243, !6244, !6245, !6246}
!6243 = !DILocalVariable(name: "iova", arg: 1, scope: !6241, file: !3, line: 30, type: !266)
!6244 = !DILocalVariable(name: "size", arg: 2, scope: !6241, file: !3, line: 30, type: !287)
!6245 = !DILocalVariable(name: "granule", arg: 3, scope: !6241, file: !3, line: 31, type: !287)
!6246 = !DILocalVariable(name: "cookie", arg: 4, scope: !6241, file: !3, line: 31, type: !257)
!6247 = !DILocation(line: 30, column: 45, scope: !6241)
!6248 = !DILocation(line: 30, column: 58, scope: !6241)
!6249 = !DILocation(line: 31, column: 14, scope: !6241)
!6250 = !DILocation(line: 31, column: 29, scope: !6241)
!6251 = !DILocation(line: 33, column: 1, scope: !6241)
!6252 = distinct !DISubprogram(name: "v1_tlb_add_page", scope: !3, file: !3, line: 35, type: !293, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6253)
!6253 = !{!6254, !6255, !6256, !6257}
!6254 = !DILocalVariable(name: "gather", arg: 1, scope: !6252, file: !3, line: 35, type: !295)
!6255 = !DILocalVariable(name: "iova", arg: 2, scope: !6252, file: !3, line: 36, type: !266)
!6256 = !DILocalVariable(name: "granule", arg: 3, scope: !6252, file: !3, line: 36, type: !287)
!6257 = !DILocalVariable(name: "cookie", arg: 4, scope: !6252, file: !3, line: 37, type: !257)
!6258 = !DILocation(line: 35, column: 56, scope: !6252)
!6259 = !DILocation(line: 36, column: 21, scope: !6252)
!6260 = !DILocation(line: 36, column: 34, scope: !6252)
!6261 = !DILocation(line: 37, column: 13, scope: !6252)
!6262 = !DILocation(line: 39, column: 1, scope: !6252)
!6263 = distinct !DISubprogram(name: "variable__ffs", scope: !6264, file: !6264, line: 250, type: !6265, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6267)
!6264 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6265 = !DISubroutineType(types: !6266)
!6266 = !{!266, !266}
!6267 = !{!6268}
!6268 = !DILocalVariable(name: "word", arg: 1, scope: !6263, file: !6264, line: 250, type: !266)
!6269 = !DILocation(line: 250, column: 66, scope: !6263)
!6270 = !DILocation(line: 254, column: 11, scope: !6263)
!6271 = !DILocation(line: 252, column: 2, scope: !6263)
!6272 = !{i64 830385}
!6273 = !DILocation(line: 255, column: 9, scope: !6263)
!6274 = !DILocation(line: 255, column: 2, scope: !6263)
!6275 = distinct !DISubprogram(name: "alloc_pte", scope: !3, file: !3, line: 195, type: !6276, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6279)
!6276 = !DISubroutineType(types: !6277)
!6277 = !{!251, !5585, !266, !266, !6278, !1235, !4045}
!6278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!6279 = !{!6280, !6281, !6282, !6283, !6284, !6285, !6286, !6287, !6288, !6289, !6290, !6292, !6293, !6294, !6297, !6298, !6299, !6303, !6306, !6307, !6308, !6309, !6314, !6315, !6318, !6319, !6320, !6321}
!6280 = !DILocalVariable(name: "domain", arg: 1, scope: !6275, file: !3, line: 195, type: !5585)
!6281 = !DILocalVariable(name: "address", arg: 2, scope: !6275, file: !3, line: 196, type: !266)
!6282 = !DILocalVariable(name: "page_size", arg: 3, scope: !6275, file: !3, line: 197, type: !266)
!6283 = !DILocalVariable(name: "pte_page", arg: 4, scope: !6275, file: !3, line: 198, type: !6278)
!6284 = !DILocalVariable(name: "gfp", arg: 5, scope: !6275, file: !3, line: 199, type: !1235)
!6285 = !DILocalVariable(name: "updated", arg: 6, scope: !6275, file: !3, line: 200, type: !4045)
!6286 = !DILocalVariable(name: "level", scope: !6275, file: !3, line: 202, type: !127)
!6287 = !DILocalVariable(name: "end_lvl", scope: !6275, file: !3, line: 202, type: !127)
!6288 = !DILocalVariable(name: "pte", scope: !6275, file: !3, line: 203, type: !251)
!6289 = !DILocalVariable(name: "page", scope: !6275, file: !3, line: 203, type: !251)
!6290 = !DILocalVariable(name: "__pte", scope: !6291, file: !3, line: 223, type: !246)
!6291 = distinct !DILexicalBlock(scope: !6275, file: !3, line: 222, column: 26)
!6292 = !DILocalVariable(name: "__npte", scope: !6291, file: !3, line: 223, type: !246)
!6293 = !DILocalVariable(name: "pte_level", scope: !6291, file: !3, line: 224, type: !127)
!6294 = !DILocalVariable(name: "count", scope: !6295, file: !3, line: 235, type: !266)
!6295 = distinct !DILexicalBlock(scope: !6296, file: !3, line: 234, column: 39)
!6296 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 233, column: 7)
!6297 = !DILocalVariable(name: "i", scope: !6295, file: !3, line: 235, type: !266)
!6298 = !DILocalVariable(name: "lpte", scope: !6295, file: !3, line: 236, type: !251)
!6299 = !DILocalVariable(name: "__ai_ptr", scope: !6300, file: !3, line: 245, type: !251)
!6300 = distinct !DILexicalBlock(scope: !6301, file: !3, line: 245, column: 5)
!6301 = distinct !DILexicalBlock(scope: !6302, file: !3, line: 244, column: 4)
!6302 = distinct !DILexicalBlock(scope: !6295, file: !3, line: 244, column: 4)
!6303 = !DILocalVariable(name: "__ret", scope: !6304, file: !3, line: 245, type: !246)
!6304 = distinct !DILexicalBlock(scope: !6305, file: !3, line: 245, column: 5)
!6305 = distinct !DILexicalBlock(scope: !6300, file: !3, line: 245, column: 5)
!6306 = !DILocalVariable(name: "__old", scope: !6304, file: !3, line: 245, type: !246)
!6307 = !DILocalVariable(name: "__new", scope: !6304, file: !3, line: 245, type: !246)
!6308 = !DILocalVariable(name: "__ptr", scope: !6304, file: !3, line: 245, type: !5600)
!6309 = !DILocalVariable(name: "__ai_ptr", scope: !6310, file: !3, line: 261, type: !251)
!6310 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 261, column: 9)
!6311 = distinct !DILexicalBlock(scope: !6312, file: !3, line: 261, column: 8)
!6312 = distinct !DILexicalBlock(scope: !6313, file: !3, line: 252, column: 36)
!6313 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 251, column: 7)
!6314 = !DILocalVariable(name: "__ai_oldp", scope: !6310, file: !3, line: 261, type: !251)
!6315 = !DILocalVariable(name: "success", scope: !6316, file: !3, line: 261, type: !271)
!6316 = distinct !DILexicalBlock(scope: !6317, file: !3, line: 261, column: 9)
!6317 = distinct !DILexicalBlock(scope: !6310, file: !3, line: 261, column: 9)
!6318 = !DILocalVariable(name: "_old", scope: !6316, file: !3, line: 261, type: !251)
!6319 = !DILocalVariable(name: "__old", scope: !6316, file: !3, line: 261, type: !246)
!6320 = !DILocalVariable(name: "__new", scope: !6316, file: !3, line: 261, type: !246)
!6321 = !DILocalVariable(name: "__ptr", scope: !6316, file: !3, line: 261, type: !5600)
!6322 = !DILocation(line: 195, column: 49, scope: !6275)
!6323 = !DILocation(line: 196, column: 23, scope: !6275)
!6324 = !DILocation(line: 197, column: 23, scope: !6275)
!6325 = !DILocation(line: 198, column: 15, scope: !6275)
!6326 = !DILocation(line: 199, column: 15, scope: !6275)
!6327 = !DILocation(line: 200, column: 15, scope: !6275)
!6328 = !DILocation(line: 202, column: 2, scope: !6275)
!6329 = !DILocation(line: 202, column: 6, scope: !6275)
!6330 = !DILocation(line: 202, column: 13, scope: !6275)
!6331 = !DILocation(line: 203, column: 2, scope: !6275)
!6332 = !DILocation(line: 203, column: 7, scope: !6275)
!6333 = !DILocation(line: 203, column: 13, scope: !6275)
!6334 = !DILocation(line: 205, column: 2, scope: !6275)
!6335 = !DILocation(line: 205, column: 2, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6337, file: !3, line: 205, column: 2)
!6337 = distinct !DILexicalBlock(scope: !6275, file: !3, line: 205, column: 2)
!6338 = !DILocation(line: 205, column: 2, scope: !6337)
!6339 = !DILocation(line: 205, column: 2, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6336, file: !3, line: 205, column: 2)
!6341 = !DILocation(line: 205, column: 2, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 205, column: 2)
!6343 = !DILocation(line: 205, column: 2, scope: !6344)
!6344 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 205, column: 2)
!6345 = !{i64 2155359808, i64 2155359837, i64 2155359883, i64 2155359941, i64 2155359995, i64 2155360049, i64 2155360104, i64 2155360135}
!6346 = !DILocation(line: 207, column: 2, scope: !6275)
!6347 = !DILocation(line: 207, column: 9, scope: !6275)
!6348 = !DILocation(line: 207, column: 19, scope: !6275)
!6349 = !DILocation(line: 207, column: 17, scope: !6275)
!6350 = !DILocation(line: 212, column: 31, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6352, file: !3, line: 212, column: 7)
!6352 = distinct !DILexicalBlock(scope: !6275, file: !3, line: 207, column: 52)
!6353 = !DILocation(line: 212, column: 39, scope: !6351)
!6354 = !DILocation(line: 212, column: 48, scope: !6351)
!6355 = !DILocation(line: 212, column: 8, scope: !6351)
!6356 = !DILocation(line: 212, column: 7, scope: !6352)
!6357 = !DILocation(line: 213, column: 4, scope: !6351)
!6358 = distinct !{!6358, !6346, !6359, !5990, !5991}
!6359 = !DILocation(line: 214, column: 2, scope: !6275)
!6360 = !DILocation(line: 217, column: 12, scope: !6275)
!6361 = !DILocation(line: 217, column: 20, scope: !6275)
!6362 = !DILocation(line: 217, column: 24, scope: !6275)
!6363 = !DILocation(line: 217, column: 29, scope: !6275)
!6364 = !DILocation(line: 217, column: 10, scope: !6275)
!6365 = !DILocation(line: 218, column: 13, scope: !6275)
!6366 = !DILocation(line: 218, column: 21, scope: !6275)
!6367 = !DILocation(line: 218, column: 25, scope: !6275)
!6368 = !DILocation(line: 218, column: 30, scope: !6275)
!6369 = !DILocation(line: 218, column: 10, scope: !6275)
!6370 = !DILocation(line: 219, column: 12, scope: !6275)
!6371 = !DILocation(line: 219, column: 10, scope: !6275)
!6372 = !DILocation(line: 220, column: 12, scope: !6275)
!6373 = !DILocation(line: 220, column: 10, scope: !6275)
!6374 = !DILocation(line: 222, column: 2, scope: !6275)
!6375 = !DILocation(line: 222, column: 9, scope: !6275)
!6376 = !DILocation(line: 222, column: 17, scope: !6275)
!6377 = !DILocation(line: 222, column: 15, scope: !6275)
!6378 = !DILocation(line: 223, column: 3, scope: !6291)
!6379 = !DILocation(line: 223, column: 7, scope: !6291)
!6380 = !DILocation(line: 223, column: 14, scope: !6291)
!6381 = !DILocation(line: 224, column: 3, scope: !6291)
!6382 = !DILocation(line: 224, column: 7, scope: !6291)
!6383 = !DILocation(line: 226, column: 16, scope: !6291)
!6384 = !DILocation(line: 226, column: 15, scope: !6291)
!6385 = !DILocation(line: 226, column: 13, scope: !6291)
!6386 = !DILocation(line: 227, column: 15, scope: !6291)
!6387 = !DILocation(line: 227, column: 13, scope: !6291)
!6388 = !DILocation(line: 233, column: 7, scope: !6296)
!6389 = !DILocation(line: 233, column: 32, scope: !6296)
!6390 = !DILocation(line: 234, column: 7, scope: !6296)
!6391 = !DILocation(line: 234, column: 17, scope: !6296)
!6392 = !DILocation(line: 233, column: 7, scope: !6291)
!6393 = !DILocation(line: 235, column: 4, scope: !6295)
!6394 = !DILocation(line: 235, column: 18, scope: !6295)
!6395 = !DILocation(line: 235, column: 25, scope: !6295)
!6396 = !DILocation(line: 236, column: 4, scope: !6295)
!6397 = !DILocation(line: 236, column: 9, scope: !6295)
!6398 = !DILocation(line: 238, column: 24, scope: !6295)
!6399 = !DILocation(line: 238, column: 11, scope: !6295)
!6400 = !DILocation(line: 238, column: 9, scope: !6295)
!6401 = !DILocation(line: 244, column: 11, scope: !6302)
!6402 = !DILocation(line: 244, column: 9, scope: !6302)
!6403 = !DILocation(line: 244, column: 16, scope: !6301)
!6404 = !DILocation(line: 244, column: 20, scope: !6301)
!6405 = !DILocation(line: 244, column: 18, scope: !6301)
!6406 = !DILocation(line: 244, column: 4, scope: !6302)
!6407 = !DILocation(line: 245, column: 5, scope: !6300)
!6408 = !DILocation(line: 245, column: 5, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6300, file: !3, line: 245, column: 5)
!6410 = !DILocation(line: 245, column: 5, scope: !6305)
!6411 = !DILocation(line: 245, column: 5, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6305, file: !3, line: 245, column: 5)
!6413 = !DILocation(line: 245, column: 5, scope: !6304)
!6414 = !{i64 2155364963, i64 2155365002, i64 2155365023, i64 2155365060, i64 2155365083, i64 2155365092}
!6415 = !DILocation(line: 245, column: 5, scope: !6301)
!6416 = !DILocation(line: 244, column: 27, scope: !6301)
!6417 = !DILocation(line: 244, column: 4, scope: !6301)
!6418 = distinct !{!6418, !6406, !6419, !5990, !5991}
!6419 = !DILocation(line: 245, column: 5, scope: !6302)
!6420 = !DILocation(line: 247, column: 5, scope: !6295)
!6421 = !DILocation(line: 247, column: 13, scope: !6295)
!6422 = !DILocation(line: 249, column: 3, scope: !6296)
!6423 = !DILocation(line: 251, column: 8, scope: !6313)
!6424 = !DILocation(line: 251, column: 33, scope: !6313)
!6425 = !DILocation(line: 252, column: 7, scope: !6313)
!6426 = !DILocation(line: 252, column: 17, scope: !6313)
!6427 = !DILocation(line: 251, column: 7, scope: !6291)
!6428 = !DILocation(line: 253, column: 30, scope: !6312)
!6429 = !DILocation(line: 253, column: 38, scope: !6312)
!6430 = !DILocation(line: 253, column: 43, scope: !6312)
!6431 = !DILocation(line: 253, column: 11, scope: !6312)
!6432 = !DILocation(line: 253, column: 9, scope: !6312)
!6433 = !DILocation(line: 255, column: 9, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6312, file: !3, line: 255, column: 8)
!6435 = !DILocation(line: 255, column: 8, scope: !6312)
!6436 = !DILocation(line: 256, column: 5, scope: !6434)
!6437 = !DILocation(line: 258, column: 13, scope: !6312)
!6438 = !DILocation(line: 258, column: 11, scope: !6312)
!6439 = !DILocation(line: 261, column: 9, scope: !6310)
!6440 = !DILocation(line: 261, column: 9, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6310, file: !3, line: 261, column: 9)
!6442 = !DILocation(line: 261, column: 9, scope: !6317)
!6443 = !DILocation(line: 261, column: 9, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6317, file: !3, line: 261, column: 9)
!6445 = !DILocation(line: 261, column: 9, scope: !6316)
!6446 = !{i64 2155370157, i64 2155370196, i64 2155370217, i64 2155370254, i64 2155370277, i64 2155370286, i64 2155370487}
!6447 = !DILocation(line: 261, column: 9, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6316, file: !3, line: 261, column: 9)
!6449 = !DILocation(line: 261, column: 9, scope: !6311)
!6450 = !DILocation(line: 261, column: 8, scope: !6312)
!6451 = !DILocation(line: 262, column: 5, scope: !6311)
!6452 = !DILocation(line: 263, column: 13, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 263, column: 13)
!6454 = !DILocation(line: 263, column: 13, scope: !6311)
!6455 = !DILocation(line: 264, column: 6, scope: !6453)
!6456 = !DILocation(line: 264, column: 14, scope: !6453)
!6457 = !DILocation(line: 264, column: 5, scope: !6453)
!6458 = !DILocation(line: 266, column: 4, scope: !6312)
!6459 = distinct !{!6459, !6374, !6460, !5990, !5991}
!6460 = !DILocation(line: 281, column: 2, scope: !6275)
!6461 = !DILocation(line: 270, column: 7, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 270, column: 7)
!6463 = !DILocation(line: 270, column: 20, scope: !6462)
!6464 = !DILocation(line: 270, column: 17, scope: !6462)
!6465 = !DILocation(line: 270, column: 7, scope: !6291)
!6466 = !DILocation(line: 271, column: 4, scope: !6462)
!6467 = !DILocation(line: 273, column: 9, scope: !6291)
!6468 = !DILocation(line: 275, column: 9, scope: !6291)
!6469 = !DILocation(line: 275, column: 7, scope: !6291)
!6470 = !DILocation(line: 277, column: 7, scope: !6471)
!6471 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 277, column: 7)
!6472 = !DILocation(line: 277, column: 16, scope: !6471)
!6473 = !DILocation(line: 277, column: 19, scope: !6471)
!6474 = !DILocation(line: 277, column: 28, scope: !6471)
!6475 = !DILocation(line: 277, column: 25, scope: !6471)
!6476 = !DILocation(line: 277, column: 7, scope: !6291)
!6477 = !DILocation(line: 278, column: 16, scope: !6471)
!6478 = !DILocation(line: 278, column: 5, scope: !6471)
!6479 = !DILocation(line: 278, column: 14, scope: !6471)
!6480 = !DILocation(line: 278, column: 4, scope: !6471)
!6481 = !DILocation(line: 280, column: 10, scope: !6291)
!6482 = !DILocation(line: 280, column: 14, scope: !6291)
!6483 = !DILocation(line: 280, column: 7, scope: !6291)
!6484 = !DILocation(line: 283, column: 9, scope: !6275)
!6485 = !DILocation(line: 283, column: 2, scope: !6275)
!6486 = !DILocation(line: 284, column: 1, scope: !6275)
!6487 = distinct !DISubprogram(name: "free_clear_pte", scope: !3, file: !3, line: 339, type: !6488, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6490)
!6488 = !DISubroutineType(types: !6489)
!6489 = !{null, !251, !246, !305}
!6490 = !{!6491, !6492, !6493, !6494, !6495, !6496, !6498, !6499, !6502, !6503, !6504, !6505}
!6491 = !DILocalVariable(name: "pte", arg: 1, scope: !6487, file: !3, line: 339, type: !251)
!6492 = !DILocalVariable(name: "pteval", arg: 2, scope: !6487, file: !3, line: 339, type: !246)
!6493 = !DILocalVariable(name: "freelist", arg: 3, scope: !6487, file: !3, line: 339, type: !305)
!6494 = !DILocalVariable(name: "pt", scope: !6487, file: !3, line: 341, type: !251)
!6495 = !DILocalVariable(name: "mode", scope: !6487, file: !3, line: 342, type: !127)
!6496 = !DILocalVariable(name: "__ai_ptr", scope: !6497, file: !3, line: 344, type: !251)
!6497 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 344, column: 10)
!6498 = !DILocalVariable(name: "__ai_oldp", scope: !6497, file: !3, line: 344, type: !251)
!6499 = !DILocalVariable(name: "success", scope: !6500, file: !3, line: 344, type: !271)
!6500 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 344, column: 10)
!6501 = distinct !DILexicalBlock(scope: !6497, file: !3, line: 344, column: 10)
!6502 = !DILocalVariable(name: "_old", scope: !6500, file: !3, line: 344, type: !251)
!6503 = !DILocalVariable(name: "__old", scope: !6500, file: !3, line: 344, type: !246)
!6504 = !DILocalVariable(name: "__new", scope: !6500, file: !3, line: 344, type: !246)
!6505 = !DILocalVariable(name: "__ptr", scope: !6500, file: !3, line: 344, type: !5600)
!6506 = !DILocation(line: 339, column: 33, scope: !6487)
!6507 = !DILocation(line: 339, column: 42, scope: !6487)
!6508 = !DILocation(line: 339, column: 68, scope: !6487)
!6509 = !DILocation(line: 341, column: 2, scope: !6487)
!6510 = !DILocation(line: 341, column: 7, scope: !6487)
!6511 = !DILocation(line: 342, column: 2, scope: !6487)
!6512 = !DILocation(line: 342, column: 6, scope: !6487)
!6513 = !DILocation(line: 344, column: 2, scope: !6487)
!6514 = !DILocation(line: 344, column: 10, scope: !6497)
!6515 = !DILocation(line: 344, column: 10, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !6497, file: !3, line: 344, column: 10)
!6517 = !DILocation(line: 344, column: 10, scope: !6501)
!6518 = !DILocation(line: 344, column: 10, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 344, column: 10)
!6520 = !DILocation(line: 344, column: 10, scope: !6500)
!6521 = !{i64 2155376199, i64 2155376238, i64 2155376259, i64 2155376296, i64 2155376319, i64 2155376328, i64 2155376529}
!6522 = !DILocation(line: 344, column: 10, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6500, file: !3, line: 344, column: 10)
!6524 = !DILocation(line: 344, column: 10, scope: !6487)
!6525 = !DILocation(line: 344, column: 9, scope: !6487)
!6526 = !DILocation(line: 345, column: 3, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 345, column: 3)
!6528 = !DILocation(line: 345, column: 3, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6527, file: !3, line: 345, column: 3)
!6530 = distinct !{!6530, !6513, !6531, !5990, !5991}
!6531 = !DILocation(line: 345, column: 3, scope: !6487)
!6532 = !DILocation(line: 347, column: 7, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 347, column: 6)
!6534 = !DILocation(line: 347, column: 6, scope: !6487)
!6535 = !DILocation(line: 348, column: 3, scope: !6533)
!6536 = !DILocation(line: 350, column: 9, scope: !6487)
!6537 = !DILocation(line: 350, column: 7, scope: !6487)
!6538 = !DILocation(line: 351, column: 9, scope: !6487)
!6539 = !DILocation(line: 351, column: 7, scope: !6487)
!6540 = !DILocation(line: 353, column: 14, scope: !6487)
!6541 = !DILocation(line: 353, column: 18, scope: !6487)
!6542 = !DILocation(line: 353, column: 24, scope: !6487)
!6543 = !DILocation(line: 353, column: 2, scope: !6487)
!6544 = !DILocation(line: 354, column: 1, scope: !6487)
!6545 = distinct !DISubprogram(name: "list_empty", scope: !6546, file: !6546, line: 371, type: !6547, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6551)
!6546 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6547 = !DISubroutineType(types: !6548)
!6548 = !{!127, !6549}
!6549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6550, size: 64)
!6550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!6551 = !{!6552}
!6552 = !DILocalVariable(name: "head", arg: 1, scope: !6545, file: !6546, line: 371, type: !6549)
!6553 = !DILocation(line: 371, column: 54, scope: !6545)
!6554 = !DILocation(line: 373, column: 9, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6545, file: !6546, line: 373, column: 9)
!6556 = !DILocation(line: 373, column: 9, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6555, file: !6546, line: 373, column: 9)
!6558 = !DILocation(line: 373, column: 34, scope: !6545)
!6559 = !DILocation(line: 373, column: 31, scope: !6545)
!6560 = !DILocation(line: 373, column: 2, scope: !6545)
!6561 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6562, file: !6562, line: 32, type: !6563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6562 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6563 = !DISubroutineType(types: !6564)
!6564 = !{!266, !6565}
!6565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!6566 = distinct !DISubprogram(name: "spinlock_check", scope: !6567, file: !6567, line: 324, type: !6568, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6570)
!6567 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6568 = !DISubroutineType(types: !6569)
!6569 = !{!6565, !2405}
!6570 = !{!6571}
!6571 = !DILocalVariable(name: "lock", arg: 1, scope: !6566, file: !6567, line: 324, type: !2405)
!6572 = !DILocation(line: 324, column: 67, scope: !6566)
!6573 = !DILocation(line: 326, column: 10, scope: !6566)
!6574 = !DILocation(line: 326, column: 16, scope: !6566)
!6575 = !DILocation(line: 326, column: 2, scope: !6566)
!6576 = !DISubprogram(name: "amd_iommu_domain_flush_tlb_pde", scope: !5671, file: !5671, line: 62, type: !6577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6577 = !DISubroutineType(types: !6578)
!6578 = !{null, !5585}
!6579 = !DISubprogram(name: "amd_iommu_domain_flush_complete", scope: !5671, file: !5671, line: 61, type: !6577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6580 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6567, file: !6567, line: 404, type: !6581, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6583)
!6581 = !DISubroutineType(types: !6582)
!6582 = !{null, !2405, !266}
!6583 = !{!6584, !6585, !6586, !6589}
!6584 = !DILocalVariable(name: "lock", arg: 1, scope: !6580, file: !6567, line: 404, type: !2405)
!6585 = !DILocalVariable(name: "flags", arg: 2, scope: !6580, file: !6567, line: 404, type: !266)
!6586 = !DILocalVariable(name: "__dummy", scope: !6587, file: !6567, line: 406, type: !266)
!6587 = distinct !DILexicalBlock(scope: !6588, file: !6567, line: 406, column: 2)
!6588 = distinct !DILexicalBlock(scope: !6580, file: !6567, line: 406, column: 2)
!6589 = !DILocalVariable(name: "__dummy2", scope: !6587, file: !6567, line: 406, type: !266)
!6590 = !DILocation(line: 404, column: 64, scope: !6580)
!6591 = !DILocation(line: 404, column: 84, scope: !6580)
!6592 = !DILocation(line: 406, column: 2, scope: !6580)
!6593 = !DILocation(line: 406, column: 2, scope: !6587)
!6594 = !DILocation(line: 406, column: 2, scope: !6588)
!6595 = !DILocation(line: 407, column: 1, scope: !6580)
!6596 = !DISubprogram(name: "put_pages_list", scope: !2212, file: !2212, line: 1285, type: !6597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6597 = !DISubroutineType(types: !6598)
!6598 = !{null, !305}
!6599 = distinct !DISubprogram(name: "is_power_of_2", scope: !6600, file: !6600, line: 45, type: !6601, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6603)
!6600 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!6601 = !DISubroutineType(types: !6602)
!6602 = !{!271, !266}
!6603 = !{!6604}
!6604 = !DILocalVariable(name: "n", arg: 1, scope: !6599, file: !6600, line: 45, type: !266)
!6605 = !DILocation(line: 45, column: 34, scope: !6599)
!6606 = !DILocation(line: 47, column: 10, scope: !6599)
!6607 = !DILocation(line: 47, column: 12, scope: !6599)
!6608 = !DILocation(line: 47, column: 17, scope: !6599)
!6609 = !DILocation(line: 47, column: 22, scope: !6599)
!6610 = !DILocation(line: 47, column: 27, scope: !6599)
!6611 = !DILocation(line: 47, column: 29, scope: !6599)
!6612 = !DILocation(line: 47, column: 24, scope: !6599)
!6613 = !DILocation(line: 47, column: 35, scope: !6599)
!6614 = !DILocation(line: 0, scope: !6599)
!6615 = !DILocation(line: 47, column: 2, scope: !6599)
!6616 = distinct !DISubprogram(name: "increase_address_space", scope: !3, file: !3, line: 151, type: !6617, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6619)
!6617 = !DISubroutineType(types: !6618)
!6618 = !{!271, !5585, !266, !1235}
!6619 = !{!6620, !6621, !6622, !6623, !6624, !6625, !6626, !6630, !6631, !6634, !6637}
!6620 = !DILocalVariable(name: "domain", arg: 1, scope: !6616, file: !3, line: 151, type: !5585)
!6621 = !DILocalVariable(name: "address", arg: 2, scope: !6616, file: !3, line: 152, type: !266)
!6622 = !DILocalVariable(name: "gfp", arg: 3, scope: !6616, file: !3, line: 153, type: !1235)
!6623 = !DILocalVariable(name: "flags", scope: !6616, file: !3, line: 155, type: !266)
!6624 = !DILocalVariable(name: "ret", scope: !6616, file: !3, line: 156, type: !271)
!6625 = !DILocalVariable(name: "pte", scope: !6616, file: !3, line: 157, type: !251)
!6626 = !DILocalVariable(name: "__dummy", scope: !6627, file: !3, line: 163, type: !266)
!6627 = distinct !DILexicalBlock(scope: !6628, file: !3, line: 163, column: 2)
!6628 = distinct !DILexicalBlock(scope: !6629, file: !3, line: 163, column: 2)
!6629 = distinct !DILexicalBlock(scope: !6616, file: !3, line: 163, column: 2)
!6630 = !DILocalVariable(name: "__dummy2", scope: !6627, file: !3, line: 163, type: !266)
!6631 = !DILocalVariable(name: "__ret_warn_on", scope: !6632, file: !3, line: 169, type: !127)
!6632 = distinct !DILexicalBlock(scope: !6633, file: !3, line: 169, column: 6)
!6633 = distinct !DILexicalBlock(scope: !6616, file: !3, line: 169, column: 6)
!6634 = !DILocalVariable(name: "__flags", scope: !6635, file: !3, line: 169, type: !127)
!6635 = distinct !DILexicalBlock(scope: !6636, file: !3, line: 169, column: 6)
!6636 = distinct !DILexicalBlock(scope: !6632, file: !3, line: 169, column: 6)
!6637 = !DILabel(scope: !6616, name: "out", file: !3, line: 188)
!6638 = !DILocation(line: 151, column: 62, scope: !6616)
!6639 = !DILocation(line: 152, column: 22, scope: !6616)
!6640 = !DILocation(line: 153, column: 14, scope: !6616)
!6641 = !DILocation(line: 155, column: 2, scope: !6616)
!6642 = !DILocation(line: 155, column: 16, scope: !6616)
!6643 = !DILocation(line: 156, column: 2, scope: !6616)
!6644 = !DILocation(line: 156, column: 7, scope: !6616)
!6645 = !DILocation(line: 157, column: 2, scope: !6616)
!6646 = !DILocation(line: 157, column: 7, scope: !6616)
!6647 = !DILocation(line: 159, column: 27, scope: !6616)
!6648 = !DILocation(line: 159, column: 35, scope: !6616)
!6649 = !DILocation(line: 159, column: 40, scope: !6616)
!6650 = !DILocation(line: 159, column: 8, scope: !6616)
!6651 = !DILocation(line: 159, column: 6, scope: !6616)
!6652 = !DILocation(line: 160, column: 7, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6616, file: !3, line: 160, column: 6)
!6654 = !DILocation(line: 160, column: 6, scope: !6616)
!6655 = !DILocation(line: 161, column: 3, scope: !6653)
!6656 = !DILocation(line: 163, column: 2, scope: !6616)
!6657 = !DILocation(line: 163, column: 2, scope: !6629)
!6658 = !DILocation(line: 163, column: 2, scope: !6627)
!6659 = !DILocation(line: 163, column: 2, scope: !6628)
!6660 = !DILocation(line: 165, column: 6, scope: !6661)
!6661 = distinct !DILexicalBlock(scope: !6616, file: !3, line: 165, column: 6)
!6662 = !DILocation(line: 165, column: 17, scope: !6661)
!6663 = !DILocation(line: 165, column: 14, scope: !6661)
!6664 = !DILocation(line: 165, column: 6, scope: !6616)
!6665 = !DILocation(line: 166, column: 3, scope: !6661)
!6666 = !DILocation(line: 168, column: 6, scope: !6616)
!6667 = !DILocation(line: 169, column: 6, scope: !6632)
!6668 = !DILocation(line: 169, column: 6, scope: !6636)
!6669 = !DILocation(line: 169, column: 6, scope: !6635)
!6670 = !DILocation(line: 169, column: 6, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6635, file: !3, line: 169, column: 6)
!6672 = !DILocation(line: 169, column: 6, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6635, file: !3, line: 169, column: 6)
!6674 = !{i64 2155358005, i64 2155358034, i64 2155358080, i64 2155358138, i64 2155358192, i64 2155358246, i64 2155358301, i64 2155358332, i64 2155358640, i64 2155358646, i64 2155358693, i64 2155358716, i64 2155358742}
!6675 = !DILocation(line: 169, column: 6, scope: !6676)
!6676 = distinct !DILexicalBlock(scope: !6635, file: !3, line: 169, column: 6)
!6677 = !DILocation(line: 169, column: 6, scope: !6633)
!6678 = !DILocation(line: 169, column: 6, scope: !6616)
!6679 = !DILocation(line: 170, column: 3, scope: !6633)
!6680 = !DILocation(line: 172, column: 9, scope: !6616)
!6681 = !DILocation(line: 172, column: 3, scope: !6616)
!6682 = !DILocation(line: 172, column: 7, scope: !6616)
!6683 = !DILocation(line: 174, column: 22, scope: !6616)
!6684 = !DILocation(line: 174, column: 2, scope: !6616)
!6685 = !DILocation(line: 174, column: 10, scope: !6616)
!6686 = !DILocation(line: 174, column: 14, scope: !6616)
!6687 = !DILocation(line: 174, column: 20, scope: !6616)
!6688 = !DILocation(line: 175, column: 2, scope: !6616)
!6689 = !DILocation(line: 175, column: 10, scope: !6616)
!6690 = !DILocation(line: 175, column: 14, scope: !6616)
!6691 = !DILocation(line: 175, column: 19, scope: !6616)
!6692 = !DILocation(line: 176, column: 42, scope: !6616)
!6693 = !DILocation(line: 176, column: 2, scope: !6616)
!6694 = !DILocation(line: 177, column: 34, scope: !6616)
!6695 = !DILocation(line: 177, column: 2, scope: !6616)
!6696 = !DILocation(line: 183, column: 31, scope: !6616)
!6697 = !DILocation(line: 183, column: 39, scope: !6616)
!6698 = !DILocation(line: 183, column: 44, scope: !6616)
!6699 = !DILocation(line: 183, column: 52, scope: !6616)
!6700 = !DILocation(line: 183, column: 56, scope: !6616)
!6701 = !DILocation(line: 183, column: 2, scope: !6616)
!6702 = !DILocation(line: 185, column: 6, scope: !6616)
!6703 = !DILocation(line: 186, column: 6, scope: !6616)
!6704 = !DILocation(line: 186, column: 2, scope: !6616)
!6705 = !DILocation(line: 188, column: 1, scope: !6616)
!6706 = !DILocation(line: 189, column: 26, scope: !6616)
!6707 = !DILocation(line: 189, column: 34, scope: !6616)
!6708 = !DILocation(line: 189, column: 40, scope: !6616)
!6709 = !DILocation(line: 189, column: 2, scope: !6616)
!6710 = !DILocation(line: 190, column: 2, scope: !6616)
!6711 = !DILocation(line: 192, column: 9, scope: !6616)
!6712 = !DILocation(line: 192, column: 2, scope: !6616)
!6713 = !DILocation(line: 193, column: 1, scope: !6616)
!6714 = distinct !DISubprogram(name: "first_pte_l7", scope: !3, file: !3, line: 50, type: !6715, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6717)
!6715 = !DISubroutineType(types: !6716)
!6716 = !{!251, !251, !1072, !1072}
!6717 = !{!6718, !6719, !6720, !6721, !6722, !6723, !6724}
!6718 = !DILocalVariable(name: "pte", arg: 1, scope: !6714, file: !3, line: 50, type: !251)
!6719 = !DILocalVariable(name: "page_size", arg: 2, scope: !6714, file: !3, line: 50, type: !1072)
!6720 = !DILocalVariable(name: "count", arg: 3, scope: !6714, file: !3, line: 51, type: !1072)
!6721 = !DILocalVariable(name: "pte_mask", scope: !6714, file: !3, line: 53, type: !266)
!6722 = !DILocalVariable(name: "pg_size", scope: !6714, file: !3, line: 53, type: !266)
!6723 = !DILocalVariable(name: "cnt", scope: !6714, file: !3, line: 53, type: !266)
!6724 = !DILocalVariable(name: "fpte", scope: !6714, file: !3, line: 54, type: !251)
!6725 = !DILocation(line: 50, column: 31, scope: !6714)
!6726 = !DILocation(line: 50, column: 51, scope: !6714)
!6727 = !DILocation(line: 51, column: 20, scope: !6714)
!6728 = !DILocation(line: 53, column: 2, scope: !6714)
!6729 = !DILocation(line: 53, column: 16, scope: !6714)
!6730 = !DILocation(line: 53, column: 26, scope: !6714)
!6731 = !DILocation(line: 53, column: 35, scope: !6714)
!6732 = !DILocation(line: 54, column: 2, scope: !6714)
!6733 = !DILocation(line: 54, column: 7, scope: !6714)
!6734 = !DILocation(line: 56, column: 13, scope: !6714)
!6735 = !DILocation(line: 56, column: 11, scope: !6714)
!6736 = !DILocation(line: 57, column: 13, scope: !6714)
!6737 = !DILocation(line: 57, column: 11, scope: !6714)
!6738 = !DILocation(line: 58, column: 16, scope: !6714)
!6739 = !DILocation(line: 58, column: 20, scope: !6714)
!6740 = !DILocation(line: 58, column: 26, scope: !6714)
!6741 = !DILocation(line: 58, column: 13, scope: !6714)
!6742 = !DILocation(line: 58, column: 11, scope: !6714)
!6743 = !DILocation(line: 59, column: 37, scope: !6714)
!6744 = !DILocation(line: 59, column: 22, scope: !6714)
!6745 = !DILocation(line: 59, column: 44, scope: !6714)
!6746 = !DILocation(line: 59, column: 42, scope: !6714)
!6747 = !DILocation(line: 59, column: 13, scope: !6714)
!6748 = !DILocation(line: 59, column: 11, scope: !6714)
!6749 = !DILocation(line: 61, column: 6, scope: !6750)
!6750 = distinct !DILexicalBlock(scope: !6714, file: !3, line: 61, column: 6)
!6751 = !DILocation(line: 61, column: 6, scope: !6714)
!6752 = !DILocation(line: 62, column: 16, scope: !6750)
!6753 = !DILocation(line: 62, column: 4, scope: !6750)
!6754 = !DILocation(line: 62, column: 14, scope: !6750)
!6755 = !DILocation(line: 62, column: 3, scope: !6750)
!6756 = !DILocation(line: 64, column: 6, scope: !6757)
!6757 = distinct !DILexicalBlock(scope: !6714, file: !3, line: 64, column: 6)
!6758 = !DILocation(line: 64, column: 6, scope: !6714)
!6759 = !DILocation(line: 65, column: 12, scope: !6757)
!6760 = !DILocation(line: 65, column: 4, scope: !6757)
!6761 = !DILocation(line: 65, column: 10, scope: !6757)
!6762 = !DILocation(line: 65, column: 3, scope: !6757)
!6763 = !DILocation(line: 67, column: 9, scope: !6714)
!6764 = !DILocation(line: 68, column: 1, scope: !6714)
!6765 = !DILocation(line: 67, column: 2, scope: !6714)
!6766 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5809, file: !5809, line: 94, type: !5810, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6767)
!6767 = !{!6768, !6769}
!6768 = !DILocalVariable(name: "v", arg: 1, scope: !6766, file: !5809, line: 94, type: !5812)
!6769 = !DILocalVariable(name: "size", arg: 2, scope: !6766, file: !5809, line: 94, type: !287)
!6770 = !DILocation(line: 94, column: 79, scope: !6766)
!6771 = !DILocation(line: 94, column: 89, scope: !6766)
!6772 = !DILocation(line: 96, column: 20, scope: !6766)
!6773 = !DILocation(line: 96, column: 23, scope: !6766)
!6774 = !DILocation(line: 96, column: 2, scope: !6766)
!6775 = !DILocation(line: 97, column: 2, scope: !6766)
!6776 = !DILocation(line: 98, column: 1, scope: !6766)
!6777 = distinct !DISubprogram(name: "alloc_pgtable_page", scope: !5671, file: !5671, line: 127, type: !6778, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6780)
!6778 = !DISubroutineType(types: !6779)
!6779 = !{!257, !127, !1235}
!6780 = !{!6781, !6782, !6783}
!6781 = !DILocalVariable(name: "nid", arg: 1, scope: !6777, file: !5671, line: 127, type: !127)
!6782 = !DILocalVariable(name: "gfp", arg: 2, scope: !6777, file: !5671, line: 127, type: !1235)
!6783 = !DILocalVariable(name: "page", scope: !6777, file: !5671, line: 129, type: !2273)
!6784 = !DILocation(line: 127, column: 44, scope: !6777)
!6785 = !DILocation(line: 127, column: 55, scope: !6777)
!6786 = !DILocation(line: 129, column: 2, scope: !6777)
!6787 = !DILocation(line: 129, column: 15, scope: !6777)
!6788 = !DILocation(line: 131, column: 26, scope: !6777)
!6789 = !DILocation(line: 131, column: 31, scope: !6777)
!6790 = !DILocation(line: 131, column: 35, scope: !6777)
!6791 = !DILocation(line: 131, column: 9, scope: !6777)
!6792 = !DILocation(line: 131, column: 7, scope: !6777)
!6793 = !DILocation(line: 132, column: 9, scope: !6777)
!6794 = !DILocation(line: 132, column: 16, scope: !6777)
!6795 = !DILocation(line: 133, column: 1, scope: !6777)
!6796 = !DILocation(line: 132, column: 2, scope: !6777)
!6797 = distinct !DISubprogram(name: "iommu_virt_to_phys", scope: !5671, file: !5671, line: 95, type: !6798, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6800)
!6798 = !DISubroutineType(types: !6799)
!6799 = !{!246, !257}
!6800 = !{!6801}
!6801 = !DILocalVariable(name: "vaddr", arg: 1, scope: !6797, file: !5671, line: 95, type: !257)
!6802 = !DILocation(line: 95, column: 44, scope: !6797)
!6803 = !DILocation(line: 97, column: 14, scope: !6797)
!6804 = !DILocation(line: 97, column: 2, scope: !6797)
!6805 = distinct !DISubprogram(name: "instrument_read_write", scope: !5809, file: !5809, line: 52, type: !5810, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6806)
!6806 = !{!6807, !6808}
!6807 = !DILocalVariable(name: "v", arg: 1, scope: !6805, file: !5809, line: 52, type: !5812)
!6808 = !DILocalVariable(name: "size", arg: 2, scope: !6805, file: !5809, line: 52, type: !287)
!6809 = !DILocation(line: 52, column: 72, scope: !6805)
!6810 = !DILocation(line: 52, column: 82, scope: !6805)
!6811 = !DILocation(line: 54, column: 20, scope: !6805)
!6812 = !DILocation(line: 54, column: 23, scope: !6805)
!6813 = !DILocation(line: 54, column: 2, scope: !6805)
!6814 = !DILocation(line: 55, column: 2, scope: !6805)
!6815 = !DILocation(line: 56, column: 1, scope: !6805)
!6816 = !DISubprogram(name: "free_pages", scope: !5618, file: !5618, line: 303, type: !6817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6817 = !DISubroutineType(types: !6818)
!6818 = !{null, !266, !7}
!6819 = distinct !DISubprogram(name: "iommu_phys_to_virt", scope: !5671, file: !5671, line: 100, type: !6820, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6822)
!6820 = !DISubroutineType(types: !6821)
!6821 = !{!257, !266}
!6822 = !{!6823}
!6823 = !DILocalVariable(name: "paddr", arg: 1, scope: !6819, file: !5671, line: 100, type: !266)
!6824 = !DILocation(line: 100, column: 54, scope: !6819)
!6825 = !DILocation(line: 102, column: 22, scope: !6819)
!6826 = !DILocation(line: 102, column: 9, scope: !6819)
!6827 = !DILocation(line: 102, column: 2, scope: !6819)
!6828 = !DISubprogram(name: "amd_iommu_update_and_flush_device_table", scope: !5671, file: !5671, line: 59, type: !6577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6829 = distinct !DISubprogram(name: "variable_ffz", scope: !6264, file: !6264, line: 269, type: !6265, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6830)
!6830 = !{!6831}
!6831 = !DILocalVariable(name: "word", arg: 1, scope: !6829, file: !6264, line: 269, type: !266)
!6832 = !DILocation(line: 269, column: 65, scope: !6829)
!6833 = !DILocation(line: 273, column: 11, scope: !6829)
!6834 = !DILocation(line: 273, column: 10, scope: !6829)
!6835 = !DILocation(line: 271, column: 2, scope: !6829)
!6836 = !{i64 830802}
!6837 = !DILocation(line: 274, column: 9, scope: !6829)
!6838 = !DILocation(line: 274, column: 2, scope: !6829)
!6839 = distinct !DISubprogram(name: "alloc_pages_node", scope: !5618, file: !5618, line: 254, type: !6840, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6842)
!6840 = !DISubroutineType(types: !6841)
!6841 = !{!2273, !127, !1235, !7}
!6842 = !{!6843, !6844, !6845}
!6843 = !DILocalVariable(name: "nid", arg: 1, scope: !6839, file: !5618, line: 254, type: !127)
!6844 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6839, file: !5618, line: 254, type: !1235)
!6845 = !DILocalVariable(name: "order", arg: 3, scope: !6839, file: !5618, line: 255, type: !7)
!6846 = !DILocation(line: 254, column: 49, scope: !6839)
!6847 = !DILocation(line: 254, column: 60, scope: !6839)
!6848 = !DILocation(line: 255, column: 20, scope: !6839)
!6849 = !DILocation(line: 257, column: 6, scope: !6850)
!6850 = distinct !DILexicalBlock(scope: !6839, file: !5618, line: 257, column: 6)
!6851 = !DILocation(line: 257, column: 10, scope: !6850)
!6852 = !DILocation(line: 257, column: 6, scope: !6839)
!6853 = !DILocation(line: 258, column: 9, scope: !6850)
!6854 = !DILocation(line: 258, column: 7, scope: !6850)
!6855 = !DILocation(line: 258, column: 3, scope: !6850)
!6856 = !DILocation(line: 260, column: 28, scope: !6839)
!6857 = !DILocation(line: 260, column: 33, scope: !6839)
!6858 = !DILocation(line: 260, column: 43, scope: !6839)
!6859 = !DILocation(line: 260, column: 9, scope: !6839)
!6860 = !DILocation(line: 260, column: 2, scope: !6839)
!6861 = distinct !DISubprogram(name: "lowmem_page_address", scope: !2212, file: !2212, line: 2176, type: !6862, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6866)
!6862 = !DISubroutineType(types: !6863)
!6863 = !{!257, !6864}
!6864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6865, size: 64)
!6865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2274)
!6866 = !{!6867}
!6867 = !DILocalVariable(name: "page", arg: 1, scope: !6861, file: !2212, line: 2176, type: !6864)
!6868 = !DILocation(line: 2176, column: 69, scope: !6861)
!6869 = !DILocation(line: 2178, column: 9, scope: !6861)
!6870 = !DILocation(line: 2178, column: 2, scope: !6861)
!6871 = distinct !DISubprogram(name: "numa_mem_id", scope: !6872, file: !6872, line: 168, type: !815, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6872 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!6873 = !DILocation(line: 170, column: 9, scope: !6871)
!6874 = !DILocation(line: 170, column: 2, scope: !6871)
!6875 = distinct !DISubprogram(name: "__alloc_pages_node", scope: !5618, file: !5618, line: 232, type: !6840, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6876)
!6876 = !{!6877, !6878, !6879}
!6877 = !DILocalVariable(name: "nid", arg: 1, scope: !6875, file: !5618, line: 232, type: !127)
!6878 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6875, file: !5618, line: 232, type: !1235)
!6879 = !DILocalVariable(name: "order", arg: 3, scope: !6875, file: !5618, line: 232, type: !7)
!6880 = !DILocation(line: 232, column: 24, scope: !6875)
!6881 = !DILocation(line: 232, column: 35, scope: !6875)
!6882 = !DILocation(line: 232, column: 58, scope: !6875)
!6883 = !DILocation(line: 235, column: 23, scope: !6875)
!6884 = !DILocation(line: 235, column: 28, scope: !6875)
!6885 = !DILocation(line: 235, column: 2, scope: !6875)
!6886 = !DILocation(line: 237, column: 23, scope: !6875)
!6887 = !DILocation(line: 237, column: 33, scope: !6875)
!6888 = !DILocation(line: 237, column: 40, scope: !6875)
!6889 = !DILocation(line: 237, column: 9, scope: !6875)
!6890 = !DILocation(line: 237, column: 2, scope: !6875)
!6891 = distinct !DISubprogram(name: "numa_node_id", scope: !6872, file: !6872, line: 87, type: !815, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6892)
!6892 = !{!6893, !6895, !6897}
!6893 = !DILocalVariable(name: "pscr_ret__", scope: !6894, file: !6872, line: 89, type: !127)
!6894 = distinct !DILexicalBlock(scope: !6891, file: !6872, line: 89, column: 9)
!6895 = !DILocalVariable(name: "__vpp_verify", scope: !6896, file: !6872, line: 89, type: !2625)
!6896 = distinct !DILexicalBlock(scope: !6894, file: !6872, line: 89, column: 9)
!6897 = !DILocalVariable(name: "pfo_val__", scope: !6898, file: !6872, line: 89, type: !541)
!6898 = distinct !DILexicalBlock(scope: !6894, file: !6872, line: 89, column: 9)
!6899 = !DILocation(line: 89, column: 9, scope: !6894)
!6900 = !DILocation(line: 89, column: 9, scope: !6896)
!6901 = !DILocation(line: 89, column: 9, scope: !6898)
!6902 = !{i64 2151472833}
!6903 = !DILocation(line: 89, column: 9, scope: !6891)
!6904 = !DILocation(line: 89, column: 2, scope: !6891)
!6905 = distinct !DISubprogram(name: "warn_if_node_offline", scope: !5618, file: !5618, line: 213, type: !6906, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6908)
!6906 = !DISubroutineType(types: !6907)
!6907 = !{null, !127, !1235}
!6908 = !{!6909, !6910, !6911}
!6909 = !DILocalVariable(name: "this_node", arg: 1, scope: !6905, file: !5618, line: 213, type: !127)
!6910 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6905, file: !5618, line: 213, type: !1235)
!6911 = !DILocalVariable(name: "warn_gfp", scope: !6905, file: !5618, line: 215, type: !1235)
!6912 = !DILocation(line: 213, column: 45, scope: !6905)
!6913 = !DILocation(line: 213, column: 62, scope: !6905)
!6914 = !DILocation(line: 215, column: 2, scope: !6905)
!6915 = !DILocation(line: 215, column: 8, scope: !6905)
!6916 = !DILocation(line: 215, column: 19, scope: !6905)
!6917 = !DILocation(line: 215, column: 28, scope: !6905)
!6918 = !DILocation(line: 217, column: 6, scope: !6919)
!6919 = distinct !DILexicalBlock(scope: !6905, file: !5618, line: 217, column: 6)
!6920 = !DILocation(line: 217, column: 15, scope: !6919)
!6921 = !DILocation(line: 217, column: 6, scope: !6905)
!6922 = !DILocation(line: 218, column: 3, scope: !6919)
!6923 = !DILocation(line: 220, column: 6, scope: !6924)
!6924 = distinct !DILexicalBlock(scope: !6905, file: !5618, line: 220, column: 6)
!6925 = !DILocation(line: 220, column: 6, scope: !6905)
!6926 = !DILocation(line: 221, column: 3, scope: !6924)
!6927 = !DILocation(line: 223, column: 2, scope: !6928)
!6928 = distinct !DILexicalBlock(scope: !6905, file: !5618, line: 223, column: 2)
!6929 = !DILocation(line: 223, column: 2, scope: !6930)
!6930 = distinct !DILexicalBlock(scope: !6928, file: !5618, line: 223, column: 2)
!6931 = !DILocation(line: 224, column: 2, scope: !6905)
!6932 = !DILocation(line: 225, column: 1, scope: !6905)
!6933 = !DISubprogram(name: "__alloc_pages", scope: !5618, file: !5618, line: 177, type: !6934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6934 = !DISubroutineType(types: !6935)
!6935 = !{!2273, !1235, !7, !127, !6936}
!6936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!6937 = distinct !DISubprogram(name: "node_state", scope: !235, file: !235, line: 421, type: !6938, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6940)
!6938 = !DISubroutineType(types: !6939)
!6939 = !{!127, !127, !234}
!6940 = !{!6941, !6942}
!6941 = !DILocalVariable(name: "node", arg: 1, scope: !6937, file: !235, line: 421, type: !127)
!6942 = !DILocalVariable(name: "state", arg: 2, scope: !6937, file: !235, line: 421, type: !234)
!6943 = !DILocation(line: 421, column: 34, scope: !6937)
!6944 = !DILocation(line: 421, column: 57, scope: !6937)
!6945 = !DILocation(line: 423, column: 9, scope: !6937)
!6946 = !DILocation(line: 423, column: 2, scope: !6937)
!6947 = !DISubprogram(name: "_printk", scope: !6948, file: !6948, line: 153, type: !6949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6948 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6949 = !DISubroutineType(types: !6950)
!6950 = !{!127, !317, null}
!6951 = !DISubprogram(name: "dump_stack", scope: !6948, file: !6948, line: 193, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6952 = distinct !DISubprogram(name: "const_test_bit", scope: !6953, file: !6953, line: 166, type: !6954, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6959)
!6953 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6954 = !DISubroutineType(types: !6955)
!6955 = !{!271, !266, !6956}
!6956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6957, size: 64)
!6957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6958)
!6958 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !266)
!6959 = !{!6960, !6961, !6962, !6963, !6964}
!6960 = !DILocalVariable(name: "nr", arg: 1, scope: !6952, file: !6953, line: 166, type: !266)
!6961 = !DILocalVariable(name: "addr", arg: 2, scope: !6952, file: !6953, line: 166, type: !6956)
!6962 = !DILocalVariable(name: "p", scope: !6952, file: !6953, line: 168, type: !5603)
!6963 = !DILocalVariable(name: "mask", scope: !6952, file: !6953, line: 169, type: !266)
!6964 = !DILocalVariable(name: "val", scope: !6952, file: !6953, line: 170, type: !266)
!6965 = !DILocation(line: 166, column: 30, scope: !6952)
!6966 = !DILocation(line: 166, column: 64, scope: !6952)
!6967 = !DILocation(line: 168, column: 2, scope: !6952)
!6968 = !DILocation(line: 168, column: 23, scope: !6952)
!6969 = !DILocation(line: 168, column: 50, scope: !6952)
!6970 = !DILocation(line: 168, column: 57, scope: !6952)
!6971 = !DILocation(line: 168, column: 55, scope: !6952)
!6972 = !DILocation(line: 169, column: 2, scope: !6952)
!6973 = !DILocation(line: 169, column: 16, scope: !6952)
!6974 = !DILocation(line: 169, column: 23, scope: !6952)
!6975 = !DILocation(line: 170, column: 2, scope: !6952)
!6976 = !DILocation(line: 170, column: 16, scope: !6952)
!6977 = !DILocation(line: 170, column: 23, scope: !6952)
!6978 = !DILocation(line: 170, column: 22, scope: !6952)
!6979 = !DILocation(line: 172, column: 12, scope: !6952)
!6980 = !DILocation(line: 172, column: 18, scope: !6952)
!6981 = !DILocation(line: 172, column: 16, scope: !6952)
!6982 = !DILocation(line: 172, column: 10, scope: !6952)
!6983 = !DILocation(line: 172, column: 9, scope: !6952)
!6984 = !DILocation(line: 173, column: 1, scope: !6952)
!6985 = !DILocation(line: 172, column: 2, scope: !6952)
!6986 = distinct !DISubprogram(name: "_test_bit", scope: !6987, file: !6987, line: 139, type: !6954, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6988)
!6987 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6988 = !{!6989, !6990}
!6989 = !DILocalVariable(name: "nr", arg: 1, scope: !6986, file: !6987, line: 139, type: !266)
!6990 = !DILocalVariable(name: "addr", arg: 2, scope: !6986, file: !6987, line: 139, type: !6956)
!6991 = !DILocation(line: 139, column: 25, scope: !6986)
!6992 = !DILocation(line: 139, column: 59, scope: !6986)
!6993 = !DILocation(line: 141, column: 25, scope: !6986)
!6994 = !DILocation(line: 141, column: 32, scope: !6986)
!6995 = !DILocation(line: 141, column: 30, scope: !6986)
!6996 = !DILocation(line: 141, column: 2, scope: !6986)
!6997 = !DILocation(line: 142, column: 23, scope: !6986)
!6998 = !DILocation(line: 142, column: 27, scope: !6986)
!6999 = !DILocation(line: 142, column: 9, scope: !6986)
!7000 = !DILocation(line: 142, column: 2, scope: !6986)
!7001 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5809, file: !5809, line: 66, type: !5810, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7002)
!7002 = !{!7003, !7004}
!7003 = !DILocalVariable(name: "v", arg: 1, scope: !7001, file: !5809, line: 66, type: !5812)
!7004 = !DILocalVariable(name: "size", arg: 2, scope: !7001, file: !5809, line: 66, type: !287)
!7005 = !DILocation(line: 66, column: 73, scope: !7001)
!7006 = !DILocation(line: 66, column: 83, scope: !7001)
!7007 = !DILocation(line: 68, column: 19, scope: !7001)
!7008 = !DILocation(line: 68, column: 22, scope: !7001)
!7009 = !DILocation(line: 68, column: 2, scope: !7001)
!7010 = !DILocation(line: 69, column: 2, scope: !7001)
!7011 = !DILocation(line: 70, column: 1, scope: !7001)
!7012 = distinct !DISubprogram(name: "arch_test_bit", scope: !6264, file: !6264, line: 237, type: !6954, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7013)
!7013 = !{!7014, !7015}
!7014 = !DILocalVariable(name: "nr", arg: 1, scope: !7012, file: !6264, line: 237, type: !266)
!7015 = !DILocalVariable(name: "addr", arg: 2, scope: !7012, file: !6264, line: 237, type: !6956)
!7016 = !DILocation(line: 237, column: 29, scope: !7012)
!7017 = !DILocation(line: 237, column: 63, scope: !7012)
!7018 = !DILocation(line: 239, column: 30, scope: !7012)
!7019 = !DILocation(line: 239, column: 9, scope: !7012)
!7020 = !DILocation(line: 239, column: 54, scope: !7012)
!7021 = !DILocation(line: 239, column: 58, scope: !7012)
!7022 = !DILocation(line: 239, column: 36, scope: !7012)
!7023 = !DILocation(line: 240, column: 26, scope: !7012)
!7024 = !DILocation(line: 240, column: 30, scope: !7012)
!7025 = !DILocation(line: 240, column: 8, scope: !7012)
!7026 = !DILocation(line: 239, column: 2, scope: !7012)
!7027 = distinct !DISubprogram(name: "kasan_check_read", scope: !5837, file: !5837, line: 40, type: !5838, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7028)
!7028 = !{!7029, !7030}
!7029 = !DILocalVariable(name: "p", arg: 1, scope: !7027, file: !5837, line: 40, type: !5812)
!7030 = !DILocalVariable(name: "size", arg: 2, scope: !7027, file: !5837, line: 40, type: !7)
!7031 = !DILocation(line: 40, column: 58, scope: !7027)
!7032 = !DILocation(line: 40, column: 74, scope: !7027)
!7033 = !DILocation(line: 42, column: 2, scope: !7027)
!7034 = distinct !DISubprogram(name: "constant_test_bit", scope: !6264, file: !6264, line: 204, type: !7035, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7037)
!7035 = !DISubroutineType(types: !7036)
!7036 = !{!271, !432, !6956}
!7037 = !{!7038, !7039}
!7038 = !DILocalVariable(name: "nr", arg: 1, scope: !7034, file: !6264, line: 204, type: !432)
!7039 = !DILocalVariable(name: "addr", arg: 2, scope: !7034, file: !6264, line: 204, type: !6956)
!7040 = !DILocation(line: 204, column: 52, scope: !7034)
!7041 = !DILocation(line: 204, column: 86, scope: !7034)
!7042 = !DILocation(line: 206, column: 19, scope: !7034)
!7043 = !DILocation(line: 206, column: 22, scope: !7034)
!7044 = !DILocation(line: 206, column: 15, scope: !7034)
!7045 = !DILocation(line: 207, column: 4, scope: !7034)
!7046 = !DILocation(line: 207, column: 9, scope: !7034)
!7047 = !DILocation(line: 207, column: 12, scope: !7034)
!7048 = !DILocation(line: 206, column: 44, scope: !7034)
!7049 = !DILocation(line: 207, column: 37, scope: !7034)
!7050 = !DILocation(line: 206, column: 2, scope: !7034)
!7051 = distinct !DISubprogram(name: "variable_test_bit", scope: !6264, file: !6264, line: 224, type: !7035, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7052)
!7052 = !{!7053, !7054, !7055}
!7053 = !DILocalVariable(name: "nr", arg: 1, scope: !7051, file: !6264, line: 224, type: !432)
!7054 = !DILocalVariable(name: "addr", arg: 2, scope: !7051, file: !6264, line: 224, type: !6956)
!7055 = !DILocalVariable(name: "oldbit", scope: !7051, file: !6264, line: 226, type: !271)
!7056 = !DILocation(line: 224, column: 52, scope: !7051)
!7057 = !DILocation(line: 224, column: 86, scope: !7051)
!7058 = !DILocation(line: 226, column: 2, scope: !7051)
!7059 = !DILocation(line: 226, column: 7, scope: !7051)
!7060 = !DILocation(line: 231, column: 33, scope: !7051)
!7061 = !DILocation(line: 231, column: 46, scope: !7051)
!7062 = !DILocation(line: 228, column: 2, scope: !7051)
!7063 = !{i64 2148332539, i64 2148332613}
!7064 = !DILocation(line: 233, column: 9, scope: !7051)
!7065 = !DILocation(line: 234, column: 1, scope: !7051)
!7066 = !DILocation(line: 233, column: 2, scope: !7051)
!7067 = distinct !DISubprogram(name: "virt_to_phys", scope: !7068, file: !7068, line: 128, type: !7069, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7072)
!7068 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!7069 = !DISubroutineType(types: !7070)
!7070 = !{!3329, !7071}
!7071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5814, size: 64)
!7072 = !{!7073}
!7073 = !DILocalVariable(name: "address", arg: 1, scope: !7067, file: !7068, line: 128, type: !7071)
!7074 = !DILocation(line: 128, column: 55, scope: !7067)
!7075 = !DILocation(line: 130, column: 9, scope: !7067)
!7076 = !DILocation(line: 130, column: 2, scope: !7067)
!7077 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !7078, file: !7078, line: 22, type: !6265, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7079)
!7078 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!7079 = !{!7080, !7081}
!7080 = !DILocalVariable(name: "x", arg: 1, scope: !7077, file: !7078, line: 22, type: !266)
!7081 = !DILocalVariable(name: "y", scope: !7077, file: !7078, line: 24, type: !266)
!7082 = !DILocation(line: 22, column: 72, scope: !7077)
!7083 = !DILocation(line: 24, column: 2, scope: !7077)
!7084 = !DILocation(line: 24, column: 16, scope: !7077)
!7085 = !DILocation(line: 24, column: 20, scope: !7077)
!7086 = !DILocation(line: 24, column: 22, scope: !7077)
!7087 = !DILocation(line: 27, column: 6, scope: !7077)
!7088 = !DILocation(line: 27, column: 12, scope: !7077)
!7089 = !DILocation(line: 27, column: 16, scope: !7077)
!7090 = !DILocation(line: 27, column: 14, scope: !7077)
!7091 = !DILocation(line: 27, column: 11, scope: !7077)
!7092 = !DILocation(line: 27, column: 21, scope: !7077)
!7093 = !DILocation(line: 27, column: 55, scope: !7077)
!7094 = !DILocation(line: 27, column: 53, scope: !7077)
!7095 = !DILocation(line: 27, column: 8, scope: !7077)
!7096 = !DILocation(line: 27, column: 4, scope: !7077)
!7097 = !DILocation(line: 29, column: 9, scope: !7077)
!7098 = !DILocation(line: 30, column: 1, scope: !7077)
!7099 = !DILocation(line: 29, column: 2, scope: !7077)
!7100 = distinct !DISubprogram(name: "phys_to_virt", scope: !7068, file: !7068, line: 147, type: !7101, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7103)
!7101 = !DISubroutineType(types: !7102)
!7102 = !{!257, !3329}
!7103 = !{!7104}
!7104 = !DILocalVariable(name: "address", arg: 1, scope: !7100, file: !7068, line: 147, type: !3329)
!7105 = !DILocation(line: 147, column: 46, scope: !7100)
!7106 = !DILocation(line: 149, column: 9, scope: !7100)
!7107 = !DILocation(line: 149, column: 2, scope: !7100)
!7108 = distinct !DISubprogram(name: "free_sub_pt", scope: !3, file: !3, line: 113, type: !7109, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7111)
!7109 = !DISubroutineType(types: !7110)
!7110 = !{null, !251, !127, !305}
!7111 = !{!7112, !7113, !7114}
!7112 = !DILocalVariable(name: "root", arg: 1, scope: !7108, file: !3, line: 113, type: !251)
!7113 = !DILocalVariable(name: "mode", arg: 2, scope: !7108, file: !3, line: 113, type: !127)
!7114 = !DILocalVariable(name: "freelist", arg: 3, scope: !7108, file: !3, line: 113, type: !305)
!7115 = !DILocation(line: 113, column: 30, scope: !7108)
!7116 = !DILocation(line: 113, column: 40, scope: !7108)
!7117 = !DILocation(line: 113, column: 64, scope: !7108)
!7118 = !DILocation(line: 115, column: 10, scope: !7108)
!7119 = !DILocation(line: 115, column: 2, scope: !7108)
!7120 = !DILocation(line: 118, column: 3, scope: !7121)
!7121 = distinct !DILexicalBlock(scope: !7108, file: !3, line: 115, column: 16)
!7122 = !DILocation(line: 120, column: 16, scope: !7121)
!7123 = !DILocation(line: 120, column: 22, scope: !7121)
!7124 = !DILocation(line: 120, column: 3, scope: !7121)
!7125 = !DILocation(line: 121, column: 3, scope: !7121)
!7126 = !DILocation(line: 127, column: 15, scope: !7121)
!7127 = !DILocation(line: 127, column: 21, scope: !7121)
!7128 = !DILocation(line: 127, column: 31, scope: !7121)
!7129 = !DILocation(line: 127, column: 3, scope: !7121)
!7130 = !DILocation(line: 128, column: 3, scope: !7121)
!7131 = !DILocation(line: 130, column: 3, scope: !7121)
!7132 = !DILocation(line: 130, column: 3, scope: !7133)
!7133 = distinct !DILexicalBlock(scope: !7121, file: !3, line: 130, column: 3)
!7134 = !DILocation(line: 130, column: 3, scope: !7135)
!7135 = distinct !DILexicalBlock(scope: !7133, file: !3, line: 130, column: 3)
!7136 = !DILocation(line: 130, column: 3, scope: !7137)
!7137 = distinct !DILexicalBlock(scope: !7133, file: !3, line: 130, column: 3)
!7138 = !{i64 2155356206, i64 2155356235, i64 2155356281, i64 2155356339, i64 2155356393, i64 2155356447, i64 2155356502, i64 2155356533}
!7139 = !DILocation(line: 131, column: 2, scope: !7121)
!7140 = !DILocation(line: 132, column: 1, scope: !7108)
!7141 = distinct !DISubprogram(name: "free_pt_page", scope: !3, file: !3, line: 77, type: !7142, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7144)
!7142 = !DISubroutineType(types: !7143)
!7143 = !{null, !251, !305}
!7144 = !{!7145, !7146, !7147}
!7145 = !DILocalVariable(name: "pt", arg: 1, scope: !7141, file: !3, line: 77, type: !251)
!7146 = !DILocalVariable(name: "freelist", arg: 2, scope: !7141, file: !3, line: 77, type: !305)
!7147 = !DILocalVariable(name: "p", scope: !7141, file: !3, line: 79, type: !2273)
!7148 = !DILocation(line: 77, column: 31, scope: !7141)
!7149 = !DILocation(line: 77, column: 53, scope: !7141)
!7150 = !DILocation(line: 79, column: 2, scope: !7141)
!7151 = !DILocation(line: 79, column: 15, scope: !7141)
!7152 = !DILocation(line: 79, column: 19, scope: !7141)
!7153 = !DILocation(line: 81, column: 17, scope: !7141)
!7154 = !DILocation(line: 81, column: 20, scope: !7141)
!7155 = !DILocation(line: 81, column: 25, scope: !7141)
!7156 = !DILocation(line: 81, column: 2, scope: !7141)
!7157 = !DILocation(line: 82, column: 1, scope: !7141)
!7158 = distinct !DISubprogram(name: "free_pt_lvl", scope: !3, file: !3, line: 84, type: !7159, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7161)
!7159 = !DISubroutineType(types: !7160)
!7160 = !{null, !251, !305, !127}
!7161 = !{!7162, !7163, !7164, !7165, !7166}
!7162 = !DILocalVariable(name: "pt", arg: 1, scope: !7158, file: !3, line: 84, type: !251)
!7163 = !DILocalVariable(name: "freelist", arg: 2, scope: !7158, file: !3, line: 84, type: !305)
!7164 = !DILocalVariable(name: "lvl", arg: 3, scope: !7158, file: !3, line: 84, type: !127)
!7165 = !DILocalVariable(name: "p", scope: !7158, file: !3, line: 86, type: !251)
!7166 = !DILocalVariable(name: "i", scope: !7158, file: !3, line: 87, type: !127)
!7167 = !DILocation(line: 84, column: 30, scope: !7158)
!7168 = !DILocation(line: 84, column: 52, scope: !7158)
!7169 = !DILocation(line: 84, column: 66, scope: !7158)
!7170 = !DILocation(line: 86, column: 2, scope: !7158)
!7171 = !DILocation(line: 86, column: 7, scope: !7158)
!7172 = !DILocation(line: 87, column: 2, scope: !7158)
!7173 = !DILocation(line: 87, column: 6, scope: !7158)
!7174 = !DILocation(line: 89, column: 9, scope: !7175)
!7175 = distinct !DILexicalBlock(scope: !7158, file: !3, line: 89, column: 2)
!7176 = !DILocation(line: 89, column: 7, scope: !7175)
!7177 = !DILocation(line: 89, column: 14, scope: !7178)
!7178 = distinct !DILexicalBlock(scope: !7175, file: !3, line: 89, column: 2)
!7179 = !DILocation(line: 89, column: 16, scope: !7178)
!7180 = !DILocation(line: 89, column: 2, scope: !7175)
!7181 = !DILocation(line: 91, column: 8, scope: !7182)
!7182 = distinct !DILexicalBlock(scope: !7183, file: !3, line: 91, column: 7)
!7183 = distinct !DILexicalBlock(scope: !7178, file: !3, line: 89, column: 28)
!7184 = !DILocation(line: 91, column: 7, scope: !7183)
!7185 = !DILocation(line: 92, column: 4, scope: !7182)
!7186 = !DILocation(line: 95, column: 7, scope: !7187)
!7187 = distinct !DILexicalBlock(scope: !7183, file: !3, line: 95, column: 7)
!7188 = !DILocation(line: 95, column: 27, scope: !7187)
!7189 = !DILocation(line: 95, column: 32, scope: !7187)
!7190 = !DILocation(line: 96, column: 7, scope: !7187)
!7191 = !DILocation(line: 96, column: 27, scope: !7187)
!7192 = !DILocation(line: 95, column: 7, scope: !7183)
!7193 = !DILocation(line: 97, column: 4, scope: !7187)
!7194 = !DILocation(line: 103, column: 7, scope: !7183)
!7195 = !DILocation(line: 103, column: 5, scope: !7183)
!7196 = !DILocation(line: 104, column: 7, scope: !7197)
!7197 = distinct !DILexicalBlock(scope: !7183, file: !3, line: 104, column: 7)
!7198 = !DILocation(line: 104, column: 11, scope: !7197)
!7199 = !DILocation(line: 104, column: 7, scope: !7183)
!7200 = !DILocation(line: 105, column: 16, scope: !7197)
!7201 = !DILocation(line: 105, column: 19, scope: !7197)
!7202 = !DILocation(line: 105, column: 29, scope: !7197)
!7203 = !DILocation(line: 105, column: 33, scope: !7197)
!7204 = !DILocation(line: 105, column: 4, scope: !7197)
!7205 = !DILocation(line: 107, column: 17, scope: !7197)
!7206 = !DILocation(line: 107, column: 20, scope: !7197)
!7207 = !DILocation(line: 107, column: 4, scope: !7197)
!7208 = !DILocation(line: 108, column: 2, scope: !7183)
!7209 = !DILocation(line: 89, column: 23, scope: !7178)
!7210 = !DILocation(line: 89, column: 2, scope: !7178)
!7211 = distinct !{!7211, !7180, !7212, !5990, !5991}
!7212 = !DILocation(line: 108, column: 2, scope: !7175)
!7213 = !DILocation(line: 110, column: 15, scope: !7158)
!7214 = !DILocation(line: 110, column: 19, scope: !7158)
!7215 = !DILocation(line: 110, column: 2, scope: !7158)
!7216 = !DILocation(line: 111, column: 1, scope: !7158)
!7217 = distinct !DISubprogram(name: "list_add_tail", scope: !6546, file: !6546, line: 181, type: !7218, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7220)
!7218 = !DISubroutineType(types: !7219)
!7219 = !{null, !305, !305}
!7220 = !{!7221, !7222}
!7221 = !DILocalVariable(name: "new", arg: 1, scope: !7217, file: !6546, line: 181, type: !305)
!7222 = !DILocalVariable(name: "head", arg: 2, scope: !7217, file: !6546, line: 181, type: !305)
!7223 = !DILocation(line: 181, column: 52, scope: !7217)
!7224 = !DILocation(line: 181, column: 75, scope: !7217)
!7225 = !DILocation(line: 183, column: 13, scope: !7217)
!7226 = !DILocation(line: 183, column: 18, scope: !7217)
!7227 = !DILocation(line: 183, column: 24, scope: !7217)
!7228 = !DILocation(line: 183, column: 30, scope: !7217)
!7229 = !DILocation(line: 183, column: 2, scope: !7217)
!7230 = !DILocation(line: 184, column: 1, scope: !7217)
!7231 = distinct !DISubprogram(name: "__list_add", scope: !6546, file: !6546, line: 146, type: !7232, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7234)
!7232 = !DISubroutineType(types: !7233)
!7233 = !{null, !305, !305, !305}
!7234 = !{!7235, !7236, !7237}
!7235 = !DILocalVariable(name: "new", arg: 1, scope: !7231, file: !6546, line: 146, type: !305)
!7236 = !DILocalVariable(name: "prev", arg: 2, scope: !7231, file: !6546, line: 147, type: !305)
!7237 = !DILocalVariable(name: "next", arg: 3, scope: !7231, file: !6546, line: 148, type: !305)
!7238 = !DILocation(line: 146, column: 49, scope: !7231)
!7239 = !DILocation(line: 147, column: 28, scope: !7231)
!7240 = !DILocation(line: 148, column: 28, scope: !7231)
!7241 = !DILocation(line: 150, column: 24, scope: !7242)
!7242 = distinct !DILexicalBlock(scope: !7231, file: !6546, line: 150, column: 6)
!7243 = !DILocation(line: 150, column: 29, scope: !7242)
!7244 = !DILocation(line: 150, column: 35, scope: !7242)
!7245 = !DILocation(line: 150, column: 7, scope: !7242)
!7246 = !DILocation(line: 150, column: 6, scope: !7231)
!7247 = !DILocation(line: 151, column: 3, scope: !7242)
!7248 = !DILocation(line: 153, column: 15, scope: !7231)
!7249 = !DILocation(line: 153, column: 2, scope: !7231)
!7250 = !DILocation(line: 153, column: 8, scope: !7231)
!7251 = !DILocation(line: 153, column: 13, scope: !7231)
!7252 = !DILocation(line: 154, column: 14, scope: !7231)
!7253 = !DILocation(line: 154, column: 2, scope: !7231)
!7254 = !DILocation(line: 154, column: 7, scope: !7231)
!7255 = !DILocation(line: 154, column: 12, scope: !7231)
!7256 = !DILocation(line: 155, column: 14, scope: !7231)
!7257 = !DILocation(line: 155, column: 2, scope: !7231)
!7258 = !DILocation(line: 155, column: 7, scope: !7231)
!7259 = !DILocation(line: 155, column: 12, scope: !7231)
!7260 = !DILocation(line: 156, column: 2, scope: !7231)
!7261 = !DILocation(line: 156, column: 2, scope: !7262)
!7262 = distinct !DILexicalBlock(scope: !7231, file: !6546, line: 156, column: 2)
!7263 = !DILocation(line: 156, column: 2, scope: !7264)
!7264 = distinct !DILexicalBlock(scope: !7262, file: !6546, line: 156, column: 2)
!7265 = !DILocation(line: 156, column: 2, scope: !7266)
!7266 = distinct !DILexicalBlock(scope: !7262, file: !6546, line: 156, column: 2)
!7267 = !DILocation(line: 157, column: 1, scope: !7231)
!7268 = distinct !DISubprogram(name: "__list_add_valid", scope: !6546, file: !6546, line: 128, type: !7269, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7271)
!7269 = !DISubroutineType(types: !7270)
!7270 = !{!271, !305, !305, !305}
!7271 = !{!7272, !7273, !7274}
!7272 = !DILocalVariable(name: "new", arg: 1, scope: !7268, file: !6546, line: 128, type: !305)
!7273 = !DILocalVariable(name: "prev", arg: 2, scope: !7268, file: !6546, line: 129, type: !305)
!7274 = !DILocalVariable(name: "next", arg: 3, scope: !7268, file: !6546, line: 130, type: !305)
!7275 = !DILocation(line: 128, column: 55, scope: !7268)
!7276 = !DILocation(line: 129, column: 23, scope: !7268)
!7277 = !DILocation(line: 130, column: 23, scope: !7268)
!7278 = !DILocation(line: 132, column: 2, scope: !7268)
!7279 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6562, file: !6562, line: 43, type: !7280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7280 = !DISubroutineType(types: !7281)
!7281 = !{null, !6565, !266}
!7282 = distinct !DISubprogram(name: "fetch_pte", scope: !3, file: !3, line: 290, type: !7283, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7285)
!7283 = !DISubroutineType(types: !7284)
!7284 = !{!251, !258, !266, !1072}
!7285 = !{!7286, !7287, !7288, !7289, !7290}
!7286 = !DILocalVariable(name: "pgtable", arg: 1, scope: !7282, file: !3, line: 290, type: !258)
!7287 = !DILocalVariable(name: "address", arg: 2, scope: !7282, file: !3, line: 291, type: !266)
!7288 = !DILocalVariable(name: "page_size", arg: 3, scope: !7282, file: !3, line: 292, type: !1072)
!7289 = !DILocalVariable(name: "level", scope: !7282, file: !3, line: 294, type: !127)
!7290 = !DILocalVariable(name: "pte", scope: !7282, file: !3, line: 295, type: !251)
!7291 = !DILocation(line: 290, column: 46, scope: !7282)
!7292 = !DILocation(line: 291, column: 23, scope: !7282)
!7293 = !DILocation(line: 292, column: 24, scope: !7282)
!7294 = !DILocation(line: 294, column: 2, scope: !7282)
!7295 = !DILocation(line: 294, column: 6, scope: !7282)
!7296 = !DILocation(line: 295, column: 2, scope: !7282)
!7297 = !DILocation(line: 295, column: 7, scope: !7282)
!7298 = !DILocation(line: 297, column: 3, scope: !7282)
!7299 = !DILocation(line: 297, column: 13, scope: !7282)
!7300 = !DILocation(line: 299, column: 6, scope: !7301)
!7301 = distinct !DILexicalBlock(scope: !7282, file: !3, line: 299, column: 6)
!7302 = !DILocation(line: 299, column: 16, scope: !7301)
!7303 = !DILocation(line: 299, column: 14, scope: !7301)
!7304 = !DILocation(line: 299, column: 6, scope: !7282)
!7305 = !DILocation(line: 300, column: 3, scope: !7301)
!7306 = !DILocation(line: 302, column: 14, scope: !7282)
!7307 = !DILocation(line: 302, column: 23, scope: !7282)
!7308 = !DILocation(line: 302, column: 28, scope: !7282)
!7309 = !DILocation(line: 302, column: 11, scope: !7282)
!7310 = !DILocation(line: 303, column: 12, scope: !7282)
!7311 = !DILocation(line: 303, column: 21, scope: !7282)
!7312 = !DILocation(line: 303, column: 26, scope: !7282)
!7313 = !DILocation(line: 303, column: 9, scope: !7282)
!7314 = !DILocation(line: 304, column: 16, scope: !7282)
!7315 = !DILocation(line: 304, column: 3, scope: !7282)
!7316 = !DILocation(line: 304, column: 13, scope: !7282)
!7317 = !DILocation(line: 306, column: 2, scope: !7282)
!7318 = !DILocation(line: 306, column: 9, scope: !7282)
!7319 = !DILocation(line: 306, column: 15, scope: !7282)
!7320 = !DILocation(line: 309, column: 8, scope: !7321)
!7321 = distinct !DILexicalBlock(scope: !7322, file: !3, line: 309, column: 7)
!7322 = distinct !DILexicalBlock(scope: !7282, file: !3, line: 306, column: 20)
!7323 = !DILocation(line: 309, column: 7, scope: !7322)
!7324 = !DILocation(line: 310, column: 4, scope: !7321)
!7325 = !DILocation(line: 313, column: 7, scope: !7326)
!7326 = distinct !DILexicalBlock(scope: !7322, file: !3, line: 313, column: 7)
!7327 = !DILocation(line: 313, column: 26, scope: !7326)
!7328 = !DILocation(line: 313, column: 47, scope: !7326)
!7329 = !DILocation(line: 314, column: 7, scope: !7326)
!7330 = !DILocation(line: 314, column: 26, scope: !7326)
!7331 = !DILocation(line: 313, column: 7, scope: !7322)
!7332 = !DILocation(line: 315, column: 4, scope: !7326)
!7333 = !DILocation(line: 318, column: 7, scope: !7334)
!7334 = distinct !DILexicalBlock(scope: !7322, file: !3, line: 318, column: 7)
!7335 = !DILocation(line: 318, column: 29, scope: !7334)
!7336 = !DILocation(line: 318, column: 26, scope: !7334)
!7337 = !DILocation(line: 318, column: 7, scope: !7322)
!7338 = !DILocation(line: 319, column: 4, scope: !7334)
!7339 = !DILocation(line: 321, column: 9, scope: !7322)
!7340 = !DILocation(line: 324, column: 12, scope: !7322)
!7341 = !DILocation(line: 324, column: 10, scope: !7322)
!7342 = !DILocation(line: 325, column: 13, scope: !7322)
!7343 = !DILocation(line: 325, column: 17, scope: !7322)
!7344 = !DILocation(line: 325, column: 10, scope: !7322)
!7345 = !DILocation(line: 326, column: 16, scope: !7322)
!7346 = !DILocation(line: 326, column: 4, scope: !7322)
!7347 = !DILocation(line: 326, column: 14, scope: !7322)
!7348 = distinct !{!7348, !7317, !7349, !5990, !5991}
!7349 = !DILocation(line: 327, column: 2, scope: !7282)
!7350 = !DILocation(line: 333, column: 6, scope: !7351)
!7351 = distinct !DILexicalBlock(scope: !7282, file: !3, line: 333, column: 6)
!7352 = !DILocation(line: 333, column: 25, scope: !7351)
!7353 = !DILocation(line: 333, column: 6, scope: !7282)
!7354 = !DILocation(line: 334, column: 22, scope: !7351)
!7355 = !DILocation(line: 334, column: 27, scope: !7351)
!7356 = !DILocation(line: 334, column: 9, scope: !7351)
!7357 = !DILocation(line: 334, column: 7, scope: !7351)
!7358 = !DILocation(line: 334, column: 3, scope: !7351)
!7359 = !DILocation(line: 336, column: 9, scope: !7282)
!7360 = !DILocation(line: 336, column: 2, scope: !7282)
!7361 = !DILocation(line: 337, column: 1, scope: !7282)
!7362 = distinct !DISubprogram(name: "amd_iommu_domain_clr_pt_root", scope: !5671, file: !5671, line: 114, type: !6577, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7363)
!7363 = !{!7364}
!7364 = !DILocalVariable(name: "domain", arg: 1, scope: !7362, file: !5671, line: 114, type: !5585)
!7365 = !DILocation(line: 114, column: 61, scope: !7362)
!7366 = !DILocation(line: 116, column: 31, scope: !7362)
!7367 = !DILocation(line: 116, column: 2, scope: !7362)
!7368 = !DILocation(line: 117, column: 1, scope: !7362)
!7369 = !DISubprogram(name: "amd_iommu_domain_update", scope: !5671, file: !5671, line: 60, type: !6577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
