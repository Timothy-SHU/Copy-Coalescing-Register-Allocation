; ModuleID = 'kernel/dma/ops_helpers.c'
source_filename = "kernel/dma/ops_helpers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodemask_t = type { [1 x i64] }
%struct.sg_table = type { ptr, i32, i32 }
%struct.page = type { i64, %union.anon.17, %union.anon.26, %struct.atomic_t, [8 x i8] }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %union.anon.19, ptr, %union.anon.21, i64 }
%union.anon.19 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.21 = type { i64 }
%union.anon.26 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32, i32 }
%struct.pgprot = type { i64 }
%struct.vm_area_struct = type { %union.anon.13, ptr, %struct.pgprot, %union.anon.15, i32, ptr, i8, %struct.anon.16, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { i64, i64 }
%union.anon.15 = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.dma_map_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }

@vmemmap_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@.str = private unnamed_addr constant [28 x i8] c"include/linux/scatterlist.h\00", align 1, !dbg !0
@dma_ops = external dso_local global ptr, align 8
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"\014%pGg allocation from offline node %d\0A\00", align 1, !dbg !7
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dma_common_get_sgtable(ptr noundef %dev, ptr noundef %sgt, ptr noundef %cpu_addr, i64 noundef %dma_addr, i64 noundef %size, i64 noundef %attrs) #0 align 16 !dbg !4133 {
entry:
  %dev.addr = alloca ptr, align 8
  %sgt.addr = alloca ptr, align 8
  %cpu_addr.addr = alloca ptr, align 8
  %dma_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %attrs.addr = alloca i64, align 8
  %page = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4691, metadata !DIExpression()), !dbg !4699
  store ptr %sgt, ptr %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sgt.addr, metadata !4692, metadata !DIExpression()), !dbg !4700
  store ptr %cpu_addr, ptr %cpu_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu_addr.addr, metadata !4693, metadata !DIExpression()), !dbg !4701
  store i64 %dma_addr, ptr %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_addr.addr, metadata !4694, metadata !DIExpression()), !dbg !4702
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4695, metadata !DIExpression()), !dbg !4703
  store i64 %attrs, ptr %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attrs.addr, metadata !4696, metadata !DIExpression()), !dbg !4704
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #13, !dbg !4705
  call void @llvm.dbg.declare(metadata ptr %page, metadata !4697, metadata !DIExpression()), !dbg !4706
  %0 = load ptr, ptr %cpu_addr.addr, align 8, !dbg !4707
  %call = call ptr @dma_common_vaddr_to_page(ptr noundef %0) #14, !dbg !4708
  store ptr %call, ptr %page, align 8, !dbg !4706
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !4709
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4698, metadata !DIExpression()), !dbg !4710
  %1 = load ptr, ptr %sgt.addr, align 8, !dbg !4711
  %call1 = call i32 @sg_alloc_table(ptr noundef %1, i32 noundef 1, i32 noundef 3264) #14, !dbg !4712
  store i32 %call1, ptr %ret, align 4, !dbg !4713
  %2 = load i32, ptr %ret, align 4, !dbg !4714
  %tobool = icmp ne i32 %2, 0, !dbg !4714
  br i1 %tobool, label %if.end, label %if.then, !dbg !4716

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %sgt.addr, align 8, !dbg !4717
  %sgl = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 0, !dbg !4718
  %4 = load ptr, ptr %sgl, align 8, !dbg !4718
  %5 = load ptr, ptr %page, align 8, !dbg !4719
  %6 = load i64, ptr %size.addr, align 8, !dbg !4720
  %add = add i64 %6, 4095, !dbg !4720
  %and = and i64 %add, -4096, !dbg !4720
  %conv = trunc i64 %and to i32, !dbg !4720
  call void @sg_set_page(ptr noundef %4, ptr noundef %5, i32 noundef %conv, i32 noundef 0) #14, !dbg !4721
  br label %if.end, !dbg !4721

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %ret, align 4, !dbg !4722
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !4723
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #13, !dbg !4723
  ret i32 %7, !dbg !4724
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_common_vaddr_to_page(ptr noundef %cpu_addr) #0 align 16 !dbg !4725 {
entry:
  %retval = alloca ptr, align 8
  %cpu_addr.addr = alloca ptr, align 8
  store ptr %cpu_addr, ptr %cpu_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu_addr.addr, metadata !4729, metadata !DIExpression()), !dbg !4730
  %0 = load ptr, ptr %cpu_addr.addr, align 8, !dbg !4731
  %call = call zeroext i1 @is_vmalloc_addr(ptr noundef %0) #14, !dbg !4733
  br i1 %call, label %if.then, label %if.end, !dbg !4734

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cpu_addr.addr, align 8, !dbg !4735
  %call1 = call ptr @vmalloc_to_page(ptr noundef %1) #14, !dbg !4736
  store ptr %call1, ptr %retval, align 8, !dbg !4737
  br label %return, !dbg !4737

if.end:                                           ; preds = %entry
  %2 = load i64, ptr @vmemmap_base, align 8, !dbg !4738
  %3 = inttoptr i64 %2 to ptr, !dbg !4738
  %4 = load ptr, ptr %cpu_addr.addr, align 8, !dbg !4738
  %5 = ptrtoint ptr %4 to i64, !dbg !4738
  %call2 = call i64 @__phys_addr_nodebug(i64 noundef %5) #14, !dbg !4738
  %shr = lshr i64 %call2, 12, !dbg !4738
  %add.ptr = getelementptr %struct.page, ptr %3, i64 %shr, !dbg !4738
  store ptr %add.ptr, ptr %retval, align 8, !dbg !4739
  br label %return, !dbg !4739

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !4740
  ret ptr %6, !dbg !4740
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4741 dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sg_set_page(ptr noundef %sg, ptr noundef %page, i32 noundef %len, i32 noundef %offset) #4 align 16 !dbg !4744 {
entry:
  %sg.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !4748, metadata !DIExpression()), !dbg !4752
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4749, metadata !DIExpression()), !dbg !4753
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4750, metadata !DIExpression()), !dbg !4754
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4751, metadata !DIExpression()), !dbg !4755
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !4756
  %1 = load ptr, ptr %page.addr, align 8, !dbg !4757
  call void @sg_assign_page(ptr noundef %0, ptr noundef %1) #14, !dbg !4758
  %2 = load i32, ptr %offset.addr, align 4, !dbg !4759
  %3 = load ptr, ptr %sg.addr, align 8, !dbg !4760
  %offset1 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 1, !dbg !4761
  store i32 %2, ptr %offset1, align 8, !dbg !4762
  %4 = load i32, ptr %len.addr, align 4, !dbg !4763
  %5 = load ptr, ptr %sg.addr, align 8, !dbg !4764
  %length = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 2, !dbg !4765
  store i32 %4, ptr %length, align 4, !dbg !4766
  ret void, !dbg !4767
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dma_common_mmap(ptr noundef %dev, ptr noundef %vma, ptr noundef %cpu_addr, i64 noundef %dma_addr, i64 noundef %size, i64 noundef %attrs) #0 align 16 !dbg !4768 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %cpu_addr.addr = alloca ptr, align 8
  %dma_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %attrs.addr = alloca i64, align 8
  %user_count = alloca i64, align 8
  %count = alloca i64, align 8
  %off = alloca i64, align 8
  %page = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca %struct.pgprot, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4770, metadata !DIExpression()), !dbg !4781
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !4771, metadata !DIExpression()), !dbg !4782
  store ptr %cpu_addr, ptr %cpu_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu_addr.addr, metadata !4772, metadata !DIExpression()), !dbg !4783
  store i64 %dma_addr, ptr %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_addr.addr, metadata !4773, metadata !DIExpression()), !dbg !4784
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4774, metadata !DIExpression()), !dbg !4785
  store i64 %attrs, ptr %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attrs.addr, metadata !4775, metadata !DIExpression()), !dbg !4786
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_count) #13, !dbg !4787
  call void @llvm.dbg.declare(metadata ptr %user_count, metadata !4776, metadata !DIExpression()), !dbg !4788
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !4789
  %call = call i64 @vma_pages(ptr noundef %0) #14, !dbg !4790
  store i64 %call, ptr %user_count, align 8, !dbg !4788
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #13, !dbg !4791
  call void @llvm.dbg.declare(metadata ptr %count, metadata !4777, metadata !DIExpression()), !dbg !4792
  %1 = load i64, ptr %size.addr, align 8, !dbg !4793
  %add = add i64 %1, 4095, !dbg !4793
  %and = and i64 %add, -4096, !dbg !4793
  %shr = lshr i64 %and, 12, !dbg !4794
  store i64 %shr, ptr %count, align 8, !dbg !4792
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #13, !dbg !4795
  call void @llvm.dbg.declare(metadata ptr %off, metadata !4778, metadata !DIExpression()), !dbg !4796
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !4797
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 11, !dbg !4798
  %3 = load i64, ptr %vm_pgoff, align 8, !dbg !4798
  store i64 %3, ptr %off, align 8, !dbg !4796
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #13, !dbg !4799
  call void @llvm.dbg.declare(metadata ptr %page, metadata !4779, metadata !DIExpression()), !dbg !4800
  %4 = load ptr, ptr %cpu_addr.addr, align 8, !dbg !4801
  %call1 = call ptr @dma_common_vaddr_to_page(ptr noundef %4) #14, !dbg !4802
  store ptr %call1, ptr %page, align 8, !dbg !4800
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !4803
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4780, metadata !DIExpression()), !dbg !4804
  store i32 -6, ptr %ret, align 4, !dbg !4804
  %5 = load ptr, ptr %vma.addr, align 8, !dbg !4805
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 2, !dbg !4806
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13, !dbg !4807
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !4808
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !4809
  %vm_page_prot2 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 2, !dbg !4810
  %8 = load i64, ptr %attrs.addr, align 8, !dbg !4811
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %vm_page_prot2, i32 0, i32 0, !dbg !4807
  %9 = load i64, ptr %coerce.dive, align 8, !dbg !4807
  %call3 = call i64 @dma_pgprot(ptr noundef %6, i64 %9, i64 noundef %8) #14, !dbg !4807
  %coerce.dive4 = getelementptr inbounds %struct.pgprot, ptr %tmp, i32 0, i32 0, !dbg !4807
  store i64 %call3, ptr %coerce.dive4, align 8, !dbg !4807
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %vm_page_prot, ptr align 8 %tmp, i64 8, i1 false), !dbg !4807
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13, !dbg !4807
  %10 = load i64, ptr %off, align 8, !dbg !4812
  %11 = load i64, ptr %count, align 8, !dbg !4814
  %cmp = icmp uge i64 %10, %11, !dbg !4815
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4816

lor.lhs.false:                                    ; preds = %entry
  %12 = load i64, ptr %user_count, align 8, !dbg !4817
  %13 = load i64, ptr %count, align 8, !dbg !4818
  %14 = load i64, ptr %off, align 8, !dbg !4819
  %sub = sub i64 %13, %14, !dbg !4820
  %cmp5 = icmp ugt i64 %12, %sub, !dbg !4821
  br i1 %cmp5, label %if.then, label %if.end, !dbg !4822

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -6, ptr %retval, align 4, !dbg !4823
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4823

if.end:                                           ; preds = %lor.lhs.false
  %15 = load ptr, ptr %vma.addr, align 8, !dbg !4824
  %16 = load ptr, ptr %vma.addr, align 8, !dbg !4825
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 0, !dbg !4826
  %vm_start = getelementptr inbounds %struct.anon.14, ptr %17, i32 0, i32 0, !dbg !4826
  %18 = load i64, ptr %vm_start, align 8, !dbg !4826
  %19 = load ptr, ptr %page, align 8, !dbg !4827
  %20 = load i64, ptr @vmemmap_base, align 8, !dbg !4827
  %21 = inttoptr i64 %20 to ptr, !dbg !4827
  %sub.ptr.lhs.cast = ptrtoint ptr %19 to i64, !dbg !4827
  %sub.ptr.rhs.cast = ptrtoint ptr %21 to i64, !dbg !4827
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4827
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !4827
  %22 = load ptr, ptr %vma.addr, align 8, !dbg !4828
  %vm_pgoff6 = getelementptr inbounds %struct.vm_area_struct, ptr %22, i32 0, i32 11, !dbg !4829
  %23 = load i64, ptr %vm_pgoff6, align 8, !dbg !4829
  %add7 = add i64 %sub.ptr.div, %23, !dbg !4830
  %24 = load i64, ptr %user_count, align 8, !dbg !4831
  %shl = shl i64 %24, 12, !dbg !4832
  %25 = load ptr, ptr %vma.addr, align 8, !dbg !4833
  %vm_page_prot8 = getelementptr inbounds %struct.vm_area_struct, ptr %25, i32 0, i32 2, !dbg !4834
  %coerce.dive9 = getelementptr inbounds %struct.pgprot, ptr %vm_page_prot8, i32 0, i32 0, !dbg !4835
  %26 = load i64, ptr %coerce.dive9, align 8, !dbg !4835
  %call10 = call i32 @remap_pfn_range(ptr noundef %15, i64 noundef %18, i64 noundef %add7, i64 noundef %shl, i64 %26) #14, !dbg !4835
  store i32 %call10, ptr %retval, align 4, !dbg !4836
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4836

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !4837
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #13, !dbg !4837
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #13, !dbg !4837
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #13, !dbg !4837
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_count) #13, !dbg !4837
  %27 = load i32, ptr %retval, align 4, !dbg !4837
  ret i32 %27, !dbg !4837
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vma_pages(ptr noundef %vma) #4 align 16 !dbg !4838 {
entry:
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !4840, metadata !DIExpression()), !dbg !4841
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !4842
  %1 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 0, !dbg !4843
  %vm_end = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 1, !dbg !4843
  %2 = load i64, ptr %vm_end, align 8, !dbg !4843
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !4844
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 0, !dbg !4845
  %vm_start = getelementptr inbounds %struct.anon.14, ptr %4, i32 0, i32 0, !dbg !4845
  %5 = load i64, ptr %vm_start, align 8, !dbg !4845
  %sub = sub i64 %2, %5, !dbg !4846
  %shr = lshr i64 %sub, 12, !dbg !4847
  ret i64 %shr, !dbg !4848
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4849 dso_local i64 @dma_pgprot(ptr noundef, i64, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4852 dso_local i32 @remap_pfn_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dma_common_alloc_pages(ptr noundef %dev, i64 noundef %size, ptr noundef %dma_handle, i32 noundef %dir, i32 noundef %gfp) #0 align 16 !dbg !4855 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %dma_handle.addr = alloca ptr, align 8
  %dir.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  %ops = alloca ptr, align 8
  %page = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4857, metadata !DIExpression()), !dbg !4864
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4858, metadata !DIExpression()), !dbg !4865
  store ptr %dma_handle, ptr %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_handle.addr, metadata !4859, metadata !DIExpression()), !dbg !4866
  store i32 %dir, ptr %dir.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4860, metadata !DIExpression()), !dbg !4867
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !4861, metadata !DIExpression()), !dbg !4868
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #13, !dbg !4869
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !4862, metadata !DIExpression()), !dbg !4870
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4871
  %call = call ptr @get_dma_ops(ptr noundef %0) #14, !dbg !4872
  store ptr %call, ptr %ops, align 8, !dbg !4870
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #13, !dbg !4873
  call void @llvm.dbg.declare(metadata ptr %page, metadata !4863, metadata !DIExpression()), !dbg !4874
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !4875
  %2 = load i64, ptr %size.addr, align 8, !dbg !4876
  %3 = load i32, ptr %gfp.addr, align 4, !dbg !4877
  %call1 = call ptr @dma_alloc_contiguous(ptr noundef %1, i64 noundef %2, i32 noundef %3) #14, !dbg !4878
  store ptr %call1, ptr %page, align 8, !dbg !4879
  %4 = load ptr, ptr %page, align 8, !dbg !4880
  %tobool = icmp ne ptr %4, null, !dbg !4880
  br i1 %tobool, label %if.end, label %if.then, !dbg !4882

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !4883
  %call2 = call i32 @dev_to_node(ptr noundef %5) #14, !dbg !4884
  %6 = load i32, ptr %gfp.addr, align 4, !dbg !4885
  %7 = load i64, ptr %size.addr, align 8, !dbg !4886
  %call3 = call i32 @get_order(i64 noundef %7) #15, !dbg !4887
  %call4 = call ptr @alloc_pages_node(i32 noundef %call2, i32 noundef %6, i32 noundef %call3) #14, !dbg !4888
  store ptr %call4, ptr %page, align 8, !dbg !4889
  br label %if.end, !dbg !4890

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %page, align 8, !dbg !4891
  %tobool5 = icmp ne ptr %8, null, !dbg !4891
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4893

if.then6:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !4894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4894

if.end7:                                          ; preds = %if.end
  %9 = load ptr, ptr %ops, align 8, !dbg !4895
  %map_page = getelementptr inbounds %struct.dma_map_ops, ptr %9, i32 0, i32 9, !dbg !4896
  %10 = load ptr, ptr %map_page, align 8, !dbg !4896
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !4897
  %12 = load ptr, ptr %page, align 8, !dbg !4898
  %13 = load i64, ptr %size.addr, align 8, !dbg !4899
  %14 = load i32, ptr %dir.addr, align 4, !dbg !4900
  %call8 = call i64 %10(ptr noundef %11, ptr noundef %12, i64 noundef 0, i64 noundef %13, i32 noundef %14, i64 noundef 32) #14, !dbg !4895
  %15 = load ptr, ptr %dma_handle.addr, align 8, !dbg !4901
  store i64 %call8, ptr %15, align 8, !dbg !4902
  %16 = load ptr, ptr %dma_handle.addr, align 8, !dbg !4903
  %17 = load i64, ptr %16, align 8, !dbg !4905
  %cmp = icmp eq i64 %17, -1, !dbg !4906
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !4907

if.then9:                                         ; preds = %if.end7
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !4908
  %19 = load ptr, ptr %page, align 8, !dbg !4910
  %20 = load i64, ptr %size.addr, align 8, !dbg !4911
  call void @dma_free_contiguous(ptr noundef %18, ptr noundef %19, i64 noundef %20) #14, !dbg !4912
  store ptr null, ptr %retval, align 8, !dbg !4913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4913

if.end10:                                         ; preds = %if.end7
  %21 = load ptr, ptr %page, align 8, !dbg !4914
  %call11 = call ptr @lowmem_page_address(ptr noundef %21) #14, !dbg !4914
  %22 = load i64, ptr %size.addr, align 8, !dbg !4915
  call void @llvm.memset.p0.i64(ptr align 1 %call11, i8 0, i64 %22, i1 false), !dbg !4916
  %23 = load ptr, ptr %page, align 8, !dbg !4917
  store ptr %23, ptr %retval, align 8, !dbg !4918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4918

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #13, !dbg !4919
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #13, !dbg !4919
  %24 = load ptr, ptr %retval, align 8, !dbg !4919
  ret ptr %24, !dbg !4919
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_dma_ops(ptr noundef %dev) #4 align 16 !dbg !4920 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4924, metadata !DIExpression()), !dbg !4925
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4926
  %dma_ops = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, !dbg !4928
  %1 = load ptr, ptr %dma_ops, align 8, !dbg !4928
  %tobool = icmp ne ptr %1, null, !dbg !4926
  br i1 %tobool, label %if.then, label %if.end, !dbg !4929

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4930
  %dma_ops1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 14, !dbg !4931
  %3 = load ptr, ptr %dma_ops1, align 8, !dbg !4931
  store ptr %3, ptr %retval, align 8, !dbg !4932
  br label %return, !dbg !4932

if.end:                                           ; preds = %entry
  %call = call ptr @get_arch_dma_ops() #14, !dbg !4933
  store ptr %call, ptr %retval, align 8, !dbg !4934
  br label %return, !dbg !4934

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !4935
  ret ptr %4, !dbg !4935
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_alloc_contiguous(ptr noundef %dev, i64 noundef %size, i32 noundef %gfp) #4 align 16 !dbg !4936 {
entry:
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4940, metadata !DIExpression()), !dbg !4943
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4941, metadata !DIExpression()), !dbg !4944
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !4942, metadata !DIExpression()), !dbg !4945
  ret ptr null, !dbg !4946
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) #4 align 16 !dbg !4947 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !4951, metadata !DIExpression()), !dbg !4954
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !4952, metadata !DIExpression()), !dbg !4955
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !4953, metadata !DIExpression()), !dbg !4956
  %0 = load i32, ptr %nid.addr, align 4, !dbg !4957
  %cmp = icmp eq i32 %0, -1, !dbg !4959
  br i1 %cmp, label %if.then, label %if.end, !dbg !4960

if.then:                                          ; preds = %entry
  %call = call i32 @numa_mem_id() #14, !dbg !4961
  store i32 %call, ptr %nid.addr, align 4, !dbg !4962
  br label %if.end, !dbg !4963

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %nid.addr, align 4, !dbg !4964
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !4965
  %3 = load i32, ptr %order.addr, align 4, !dbg !4966
  %call1 = call ptr @__alloc_pages_node(i32 noundef %1, i32 noundef %2, i32 noundef %3) #14, !dbg !4967
  ret ptr %call1, !dbg !4968
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dev_to_node(ptr noundef %dev) #4 align 16 !dbg !4969 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4973
  %numa_node = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25, !dbg !4974
  %1 = load i32, ptr %numa_node, align 8, !dbg !4974
  ret i32 %1, !dbg !4975
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @get_order(i64 noundef %size) #6 align 16 !dbg !4976 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4981, metadata !DIExpression()), !dbg !4982
  %0 = load i64, ptr %size.addr, align 8, !dbg !4983
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4985
  br i1 %1, label %if.then, label %if.end14, !dbg !4986

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4987
  %tobool = icmp ne i64 %2, 0, !dbg !4987
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4990

if.then1:                                         ; preds = %if.then
  store i32 52, ptr %retval, align 4, !dbg !4991
  br label %return, !dbg !4991

if.end:                                           ; preds = %if.then
  %3 = load i64, ptr %size.addr, align 8, !dbg !4992
  %cmp = icmp ult i64 %3, 4096, !dbg !4994
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4995

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4996
  br label %return, !dbg !4996

if.end3:                                          ; preds = %if.end
  %4 = load i64, ptr %size.addr, align 8, !dbg !4997
  %sub = sub i64 %4, 1, !dbg !4997
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4997
  br i1 %5, label %cond.true, label %cond.false9, !dbg !4997

cond.true:                                        ; preds = %if.end3
  %6 = load i64, ptr %size.addr, align 8, !dbg !4997
  %sub4 = sub i64 %6, 1, !dbg !4997
  %cmp5 = icmp ult i64 %sub4, 2, !dbg !4997
  br i1 %cmp5, label %cond.true6, label %cond.false, !dbg !4997

cond.true6:                                       ; preds = %cond.true
  br label %cond.end, !dbg !4997

cond.false:                                       ; preds = %cond.true
  %7 = load i64, ptr %size.addr, align 8, !dbg !4997
  %sub7 = sub i64 %7, 1, !dbg !4997
  %8 = call i64 @llvm.ctlz.i64(i64 %sub7, i1 true), !dbg !4997
  %cast = trunc i64 %8 to i32, !dbg !4997
  %sub8 = sub i32 63, %cast, !dbg !4997
  br label %cond.end, !dbg !4997

cond.end:                                         ; preds = %cond.false, %cond.true6
  %cond = phi i32 [ 0, %cond.true6 ], [ %sub8, %cond.false ], !dbg !4997
  br label %cond.end11, !dbg !4997

cond.false9:                                      ; preds = %if.end3
  %9 = load i64, ptr %size.addr, align 8, !dbg !4997
  %sub10 = sub i64 %9, 1, !dbg !4997
  %call = call i32 @__ilog2_u64(i64 noundef %sub10) #15, !dbg !4997
  br label %cond.end11, !dbg !4997

cond.end11:                                       ; preds = %cond.false9, %cond.end
  %cond12 = phi i32 [ %cond, %cond.end ], [ %call, %cond.false9 ], !dbg !4997
  %sub13 = sub i32 %cond12, 12, !dbg !4998
  %add = add i32 %sub13, 1, !dbg !4999
  store i32 %add, ptr %retval, align 4, !dbg !5000
  br label %return, !dbg !5000

if.end14:                                         ; preds = %entry
  %10 = load i64, ptr %size.addr, align 8, !dbg !5001
  %dec = add i64 %10, -1, !dbg !5001
  store i64 %dec, ptr %size.addr, align 8, !dbg !5001
  %11 = load i64, ptr %size.addr, align 8, !dbg !5002
  %shr = lshr i64 %11, 12, !dbg !5002
  store i64 %shr, ptr %size.addr, align 8, !dbg !5002
  %12 = load i64, ptr %size.addr, align 8, !dbg !5003
  %call15 = call i32 @fls64(i64 noundef %12) #14, !dbg !5004
  store i32 %call15, ptr %retval, align 4, !dbg !5005
  br label %return, !dbg !5005

return:                                           ; preds = %if.end14, %cond.end11, %if.then2, %if.then1
  %13 = load i32, ptr %retval, align 4, !dbg !5006
  ret i32 %13, !dbg !5006
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_free_contiguous(ptr noundef %dev, ptr noundef %page, i64 noundef %size) #4 align 16 !dbg !5007 {
entry:
  %dev.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5011, metadata !DIExpression()), !dbg !5014
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5012, metadata !DIExpression()), !dbg !5015
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5013, metadata !DIExpression()), !dbg !5016
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5017
  %1 = load i64, ptr %size.addr, align 8, !dbg !5018
  %call = call i32 @get_order(i64 noundef %1) #15, !dbg !5019
  call void @__free_pages(ptr noundef %0, i32 noundef %call) #14, !dbg !5020
  ret void, !dbg !5021
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #7 align 16 !dbg !5022 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5028, metadata !DIExpression()), !dbg !5029
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5030
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !5030
  %2 = inttoptr i64 %1 to ptr, !dbg !5030
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !5030
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !5030
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5030
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5030
  %shl = shl i64 %sub.ptr.div, 12, !dbg !5030
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !5030
  %add = add i64 %shl, %3, !dbg !5030
  %4 = inttoptr i64 %add to ptr, !dbg !5030
  ret ptr %4, !dbg !5031
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dma_common_free_pages(ptr noundef %dev, i64 noundef %size, ptr noundef %page, i64 noundef %dma_handle, i32 noundef %dir) #0 align 16 !dbg !5032 {
entry:
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %dma_handle.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  %ops = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5034, metadata !DIExpression()), !dbg !5040
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5035, metadata !DIExpression()), !dbg !5041
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5036, metadata !DIExpression()), !dbg !5042
  store i64 %dma_handle, ptr %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_handle.addr, metadata !5037, metadata !DIExpression()), !dbg !5043
  store i32 %dir, ptr %dir.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5038, metadata !DIExpression()), !dbg !5044
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #13, !dbg !5045
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5039, metadata !DIExpression()), !dbg !5046
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5047
  %call = call ptr @get_dma_ops(ptr noundef %0) #14, !dbg !5048
  store ptr %call, ptr %ops, align 8, !dbg !5046
  %1 = load ptr, ptr %ops, align 8, !dbg !5049
  %unmap_page = getelementptr inbounds %struct.dma_map_ops, ptr %1, i32 0, i32 10, !dbg !5051
  %2 = load ptr, ptr %unmap_page, align 8, !dbg !5051
  %tobool = icmp ne ptr %2, null, !dbg !5049
  br i1 %tobool, label %if.then, label %if.end, !dbg !5052

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %ops, align 8, !dbg !5053
  %unmap_page1 = getelementptr inbounds %struct.dma_map_ops, ptr %3, i32 0, i32 10, !dbg !5054
  %4 = load ptr, ptr %unmap_page1, align 8, !dbg !5054
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5055
  %6 = load i64, ptr %dma_handle.addr, align 8, !dbg !5056
  %7 = load i64, ptr %size.addr, align 8, !dbg !5057
  %8 = load i32, ptr %dir.addr, align 4, !dbg !5058
  call void %4(ptr noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i64 noundef 32) #14, !dbg !5053
  br label %if.end, !dbg !5053

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5059
  %10 = load ptr, ptr %page.addr, align 8, !dbg !5060
  %11 = load i64, ptr %size.addr, align 8, !dbg !5061
  call void @dma_free_contiguous(ptr noundef %9, ptr noundef %10, i64 noundef %11) #14, !dbg !5062
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #13, !dbg !5063
  ret void, !dbg !5063
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5064 dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5067 dso_local ptr @vmalloc_to_page(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #7 align 16 !dbg !5070 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5075, metadata !DIExpression()), !dbg !5077
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #13, !dbg !5078
  call void @llvm.dbg.declare(metadata ptr %y, metadata !5076, metadata !DIExpression()), !dbg !5079
  %0 = load i64, ptr %x.addr, align 8, !dbg !5080
  %sub = sub i64 %0, -2147483648, !dbg !5081
  store i64 %sub, ptr %y, align 8, !dbg !5079
  %1 = load i64, ptr %y, align 8, !dbg !5082
  %2 = load i64, ptr %x.addr, align 8, !dbg !5083
  %3 = load i64, ptr %y, align 8, !dbg !5084
  %cmp = icmp ugt i64 %2, %3, !dbg !5085
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5086

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !5087
  br label %cond.end, !dbg !5086

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !5088
  %sub1 = sub i64 -2147483648, %5, !dbg !5089
  br label %cond.end, !dbg !5086

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !5086
  %add = add i64 %1, %cond, !dbg !5090
  store i64 %add, ptr %x.addr, align 8, !dbg !5091
  %6 = load i64, ptr %x.addr, align 8, !dbg !5092
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #13, !dbg !5093
  ret i64 %6, !dbg !5094
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sg_assign_page(ptr noundef %sg, ptr noundef %page) #4 align 16 !dbg !5095 {
entry:
  %sg.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %page_link = alloca i64, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !5099, metadata !DIExpression()), !dbg !5102
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5100, metadata !DIExpression()), !dbg !5103
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_link) #13, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %page_link, metadata !5101, metadata !DIExpression()), !dbg !5105
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !5106
  %page_link1 = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 0, !dbg !5107
  %1 = load i64, ptr %page_link1, align 8, !dbg !5107
  %and = and i64 %1, 3, !dbg !5108
  store i64 %and, ptr %page_link, align 8, !dbg !5105
  br label %do.body, !dbg !5109

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !5110
  %3 = ptrtoint ptr %2 to i64, !dbg !5110
  %and2 = and i64 %3, 3, !dbg !5110
  %tobool = icmp ne i64 %and2, 0, !dbg !5110
  %lnot = xor i1 %tobool, true, !dbg !5110
  %lnot3 = xor i1 %lnot, true, !dbg !5110
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5110
  %conv = sext i32 %lnot.ext to i64, !dbg !5110
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5110
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5110
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5113

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !5110

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !5114

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !5116

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5116

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !5114

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 115, i32 0, i64 12) #13, !dbg !5118, !srcloc !5120
  br label %do.cond8, !dbg !5118

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5118

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !5114

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !5114

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !5114

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !5113

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !5113

do.end13:                                         ; preds = %do.cond12
  %4 = load i64, ptr %page_link, align 8, !dbg !5121
  %5 = load ptr, ptr %page.addr, align 8, !dbg !5122
  %6 = ptrtoint ptr %5 to i64, !dbg !5123
  %or = or i64 %4, %6, !dbg !5124
  %7 = load ptr, ptr %sg.addr, align 8, !dbg !5125
  %page_link14 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 0, !dbg !5126
  store i64 %or, ptr %page_link14, align 8, !dbg !5127
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_link) #13, !dbg !5128
  ret void, !dbg !5128
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_arch_dma_ops() #4 align 16 !dbg !5129 {
entry:
  %0 = load ptr, ptr @dma_ops, align 8, !dbg !5133
  ret ptr %0, !dbg !5134
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @numa_mem_id() #4 align 16 !dbg !5135 {
entry:
  %call = call i32 @numa_node_id() #14, !dbg !5137
  ret i32 %call, !dbg !5138
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) #4 align 16 !dbg !5139 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5141, metadata !DIExpression()), !dbg !5144
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5142, metadata !DIExpression()), !dbg !5145
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !5143, metadata !DIExpression()), !dbg !5146
  %0 = load i32, ptr %nid.addr, align 4, !dbg !5147
  %1 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5148
  call void @warn_if_node_offline(i32 noundef %0, i32 noundef %1) #14, !dbg !5149
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5150
  %3 = load i32, ptr %order.addr, align 4, !dbg !5151
  %4 = load i32, ptr %nid.addr, align 4, !dbg !5152
  %call = call ptr @__alloc_pages(i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null) #14, !dbg !5153
  ret ptr %call, !dbg !5154
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @numa_node_id() #4 align 16 !dbg !5155 {
entry:
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !5163
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5157, metadata !DIExpression()), !dbg !5163
  br label %do.body, !dbg !5163

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !5164
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5159, metadata !DIExpression()), !dbg !5164
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5164
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5164
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !5163
  br label %do.cond, !dbg !5164

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5164

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !5165
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5161, metadata !DIExpression()), !dbg !5165
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @numa_node) #16, !dbg !5165, !srcloc !5166
  store i32 %1, ptr %pfo_val__, align 4, !dbg !5165
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !5165
  %conv = zext i32 %2 to i64, !dbg !5165
  %conv1 = trunc i64 %conv to i32, !dbg !5165
  store i32 %conv1, ptr %tmp, align 4, !dbg !5165
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !5163
  %3 = load i32, ptr %tmp, align 4, !dbg !5165
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !5163
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !5163
  store i32 %4, ptr %tmp2, align 4, !dbg !5163
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !5167
  %5 = load i32, ptr %tmp2, align 4, !dbg !5163
  ret i32 %5, !dbg !5168
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @warn_if_node_offline(i32 noundef %this_node, i32 noundef %gfp_mask) #4 align 16 !dbg !5169 {
entry:
  %this_node.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %warn_gfp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %this_node, ptr %this_node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %this_node.addr, metadata !5173, metadata !DIExpression()), !dbg !5176
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5174, metadata !DIExpression()), !dbg !5177
  call void @llvm.lifetime.start.p0(i64 4, ptr %warn_gfp) #13, !dbg !5178
  call void @llvm.dbg.declare(metadata ptr %warn_gfp, metadata !5175, metadata !DIExpression()), !dbg !5179
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5180
  %and = and i32 %0, 2105344, !dbg !5181
  store i32 %and, ptr %warn_gfp, align 4, !dbg !5179
  %1 = load i32, ptr %warn_gfp, align 4, !dbg !5182
  %cmp = icmp ne i32 %1, 2105344, !dbg !5184
  br i1 %cmp, label %if.then, label %if.end, !dbg !5185

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5186

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %this_node.addr, align 4, !dbg !5187
  %call = call i32 @node_state(i32 noundef %2, i32 noundef 1) #14, !dbg !5187
  %tobool = icmp ne i32 %call, 0, !dbg !5187
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !5189

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5190

if.end2:                                          ; preds = %if.end
  br label %do.body, !dbg !5191

do.body:                                          ; preds = %if.end2
  br label %do.cond, !dbg !5193

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5193

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %this_node.addr, align 4, !dbg !5191
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %gfp_mask.addr, i32 noundef %3) #17, !dbg !5191
  store i32 %call3, ptr %tmp, align 4, !dbg !5193
  %4 = load i32, ptr %tmp, align 4, !dbg !5191
  call void @dump_stack() #17, !dbg !5195
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5196
  br label %cleanup, !dbg !5196

cleanup:                                          ; preds = %do.end, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %warn_gfp) #13, !dbg !5196
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5196

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5197 dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @node_state(i32 noundef %node, i32 noundef %state) #4 align 16 !dbg !5201 {
entry:
  %node.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5205, metadata !DIExpression()), !dbg !5207
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5206, metadata !DIExpression()), !dbg !5208
  %0 = load i32, ptr %node.addr, align 4, !dbg !5209
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5209
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5209

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %state.addr, align 4, !dbg !5209
  %idxprom = zext i32 %2 to i64, !dbg !5209
  %arrayidx = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom, !dbg !5209
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx, i32 0, i32 0, !dbg !5209
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5209
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !5209
  %cmp = icmp ne i64 %3, 0, !dbg !5209
  %conv = zext i1 %cmp to i32, !dbg !5209
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5209
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !5209

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %state.addr, align 4, !dbg !5209
  %idxprom2 = zext i32 %5 to i64, !dbg !5209
  %arrayidx3 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom2, !dbg !5209
  %bits4 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx3, i32 0, i32 0, !dbg !5209
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %bits4, i64 0, i64 0, !dbg !5209
  %6 = ptrtoint ptr %arraydecay5 to i64, !dbg !5209
  %cmp6 = icmp ne i64 %6, 0, !dbg !5209
  br i1 %cmp6, label %land.lhs.true8, label %cond.false, !dbg !5209

land.lhs.true8:                                   ; preds = %land.lhs.true1
  %7 = load i32, ptr %state.addr, align 4, !dbg !5209
  %idxprom9 = zext i32 %7 to i64, !dbg !5209
  %arrayidx10 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom9, !dbg !5209
  %bits11 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx10, i32 0, i32 0, !dbg !5209
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %bits11, i64 0, i64 0, !dbg !5209
  %8 = load i64, ptr %arraydecay12, align 8, !dbg !5209
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5209
  br i1 %9, label %cond.true, label %cond.false, !dbg !5209

cond.true:                                        ; preds = %land.lhs.true8
  %10 = load i32, ptr %node.addr, align 4, !dbg !5209
  %conv13 = sext i32 %10 to i64, !dbg !5209
  %11 = load i32, ptr %state.addr, align 4, !dbg !5209
  %idxprom14 = zext i32 %11 to i64, !dbg !5209
  %arrayidx15 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom14, !dbg !5209
  %bits16 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx15, i32 0, i32 0, !dbg !5209
  %arraydecay17 = getelementptr inbounds [1 x i64], ptr %bits16, i64 0, i64 0, !dbg !5209
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv13, ptr noundef %arraydecay17) #14, !dbg !5209
  %conv18 = zext i1 %call to i32, !dbg !5209
  br label %cond.end, !dbg !5209

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %node.addr, align 4, !dbg !5209
  %conv19 = sext i32 %12 to i64, !dbg !5209
  %13 = load i32, ptr %state.addr, align 4, !dbg !5209
  %idxprom20 = zext i32 %13 to i64, !dbg !5209
  %arrayidx21 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom20, !dbg !5209
  %bits22 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx21, i32 0, i32 0, !dbg !5209
  %arraydecay23 = getelementptr inbounds [1 x i64], ptr %bits22, i64 0, i64 0, !dbg !5209
  %call24 = call zeroext i1 @_test_bit(i64 noundef %conv19, ptr noundef %arraydecay23) #14, !dbg !5209
  %conv25 = zext i1 %call24 to i32, !dbg !5209
  br label %cond.end, !dbg !5209

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %conv25, %cond.false ], !dbg !5209
  ret i32 %cond, !dbg !5210
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5211 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5215 dso_local void @dump_stack() #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5216 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5224, metadata !DIExpression()), !dbg !5229
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5225, metadata !DIExpression()), !dbg !5230
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13, !dbg !5231
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5226, metadata !DIExpression()), !dbg !5232
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5233
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5234
  %div = udiv i64 %1, 64, !dbg !5234
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5235
  store ptr %add.ptr, ptr %p, align 8, !dbg !5232
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #13, !dbg !5236
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5227, metadata !DIExpression()), !dbg !5237
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5238
  %rem = urem i64 %2, 64, !dbg !5238
  %shl = shl i64 1, %rem, !dbg !5238
  store i64 %shl, ptr %mask, align 8, !dbg !5237
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #13, !dbg !5239
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5228, metadata !DIExpression()), !dbg !5240
  %3 = load ptr, ptr %p, align 8, !dbg !5241
  %4 = load i64, ptr %3, align 8, !dbg !5242
  store i64 %4, ptr %val, align 8, !dbg !5240
  %5 = load i64, ptr %val, align 8, !dbg !5243
  %6 = load i64, ptr %mask, align 8, !dbg !5244
  %and = and i64 %5, %6, !dbg !5245
  %tobool = icmp ne i64 %and, 0, !dbg !5246
  %lnot = xor i1 %tobool, true, !dbg !5246
  %lnot1 = xor i1 %lnot, true, !dbg !5247
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #13, !dbg !5248
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #13, !dbg !5248
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13, !dbg !5248
  ret i1 %lnot1, !dbg !5249
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5250 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5253, metadata !DIExpression()), !dbg !5255
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5254, metadata !DIExpression()), !dbg !5256
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5257
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5258
  %div = udiv i64 %1, 64, !dbg !5258
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5259
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !5260
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5261
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5262
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !5263
  ret i1 %call, !dbg !5264
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5265 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5273, metadata !DIExpression()), !dbg !5275
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5274, metadata !DIExpression()), !dbg !5276
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5277
  %1 = load i64, ptr %size.addr, align 8, !dbg !5278
  %conv = trunc i64 %1 to i32, !dbg !5278
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !5279
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5280
  %3 = load i64, ptr %size.addr, align 8, !dbg !5280
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !5280
  ret void, !dbg !5281
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5282 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5285, metadata !DIExpression()), !dbg !5287
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5286, metadata !DIExpression()), !dbg !5288
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5289
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5290
  br i1 %1, label %cond.true, label %cond.false, !dbg !5290

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5291
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5292
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !5293
  %conv = zext i1 %call to i32, !dbg !5293
  br label %cond.end, !dbg !5290

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5294
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5295
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !5296
  %conv2 = zext i1 %call1 to i32, !dbg !5296
  br label %cond.end, !dbg !5290

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5290
  %tobool = icmp ne i32 %cond, 0, !dbg !5290
  ret i1 %tobool, !dbg !5297
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5298 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5303, metadata !DIExpression()), !dbg !5305
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5304, metadata !DIExpression()), !dbg !5306
  ret i1 true, !dbg !5307
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5308 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5313, metadata !DIExpression()), !dbg !5316
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5314, metadata !DIExpression()), !dbg !5317
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5315, metadata !DIExpression()), !dbg !5318
  ret void, !dbg !5319
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5320 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5324, metadata !DIExpression()), !dbg !5326
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5325, metadata !DIExpression()), !dbg !5327
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5328
  %and = and i64 %0, 63, !dbg !5329
  %shl = shl i64 1, %and, !dbg !5330
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5331
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5332
  %shr = ashr i64 %2, 6, !dbg !5333
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5331
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5331
  %and1 = and i64 %shl, %3, !dbg !5334
  %cmp = icmp ne i64 %and1, 0, !dbg !5335
  ret i1 %cmp, !dbg !5336
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5337 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5339, metadata !DIExpression()), !dbg !5342
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5340, metadata !DIExpression()), !dbg !5343
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !5344
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5341, metadata !DIExpression()), !dbg !5345
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5346
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5347
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !5348, !srcloc !5349
  %3 = icmp ult i8 %2, 2, !dbg !5348
  call void @llvm.assume(i1 %3), !dbg !5348
  store i8 %2, ptr %oldbit, align 1, !dbg !5348
  %4 = load i8, ptr %oldbit, align 1, !dbg !5350, !range !5351, !noundef !1045
  %tobool = trunc i8 %4 to i1, !dbg !5350
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !5352
  ret i1 %tobool, !dbg !5353
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u64(i64 noundef %n) #6 align 16 !dbg !5354 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5359, metadata !DIExpression()), !dbg !5360
  %0 = load i64, ptr %n.addr, align 8, !dbg !5361
  %call = call i32 @fls64(i64 noundef %0) #14, !dbg !5362
  %sub = sub i32 %call, 1, !dbg !5363
  ret i32 %sub, !dbg !5364
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #7 align 16 !dbg !5365 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5369, metadata !DIExpression()), !dbg !5371
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #13, !dbg !5372
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !5370, metadata !DIExpression()), !dbg !5373
  store i32 -1, ptr %bitpos, align 4, !dbg !5373
  %0 = load i32, ptr %bitpos, align 4, !dbg !5374
  %1 = load i64, ptr %x.addr, align 8, !dbg !5375
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #16, !dbg !5374, !srcloc !5376
  store i32 %2, ptr %bitpos, align 4, !dbg !5374
  %3 = load i32, ptr %bitpos, align 4, !dbg !5377
  %add = add i32 %3, 1, !dbg !5378
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #13, !dbg !5379
  ret i32 %add, !dbg !5380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5381 dso_local void @__free_pages(ptr noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone nounwind willreturn memory(none) }
attributes #16 = { nounwind memory(read) }
attributes #17 = { cold noredzone }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131}
!llvm.ident = !{!4132}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 223, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 40)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !14, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/dma/.ops_helpers.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/dma/ops_helpers\22 -D KBUILD_BASENAME=\22ops_helpers\22 -D KBUILD_MODNAME=\22ops_helpers\22 -D __KBUILD_MODNAME=kmod_ops_helpers -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/dma/ops_helpers.ll kernel/dma/ops_helpers.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !175, globals: !4123, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "kernel/dma/ops_helpers.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cf87c3c3199a689db9e3328303c926bf")
!15 = !{!16, !24, !29, !35, !40, !48, !64, !72, !78, !85, !92, !98, !104, !111, !119, !127, !134, !143, !148, !153, !159, !170}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !17, line: 312, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!21 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!22 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!23 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !25, line: 2052, baseType: !18, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!28 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !30, line: 54, baseType: !18, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "USRQUOTA", value: 0)
!33 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!34 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !36, line: 65, baseType: !18, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!37 = !{!38, !39}
!38 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!39 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !41, line: 9, baseType: !18, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!42 = !{!43, !44, !45, !46, !47}
!43 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!44 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!45 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!46 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!47 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !49, line: 1325, baseType: !18, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!51 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!52 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!53 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!54 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!55 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!56 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!57 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!58 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!59 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!60 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!61 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!62 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!63 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !65, line: 68, baseType: !18, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!66 = !{!67, !68, !69, !70, !71}
!67 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!68 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!69 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!70 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!71 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !73, line: 16, baseType: !18, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "TT_NONE", value: 0)
!76 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!77 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !79, line: 51, baseType: !18, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!80 = !{!81, !82, !83, !84}
!81 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!82 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!83 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!84 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !86, line: 15, baseType: !18, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!89 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!90 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!91 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !93, line: 26, baseType: !18, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!96 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!97 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !99, line: 45, baseType: !18, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!102 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!103 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !105, line: 487, baseType: !18, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!106 = !{!107, !108, !109, !110}
!107 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!108 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!109 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!110 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !112, line: 620, baseType: !18, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!113 = !{!114, !115, !116, !117, !118}
!114 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!115 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!116 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!117 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!118 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !112, line: 597, baseType: !120, size: 32, elements: !121)
!120 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!121 = !{!122, !123, !124, !125, !126}
!122 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!123 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!124 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!125 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!126 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !128, line: 5, baseType: !18, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3ca6b923deacc70f1b33611ff89af91")
!129 = !{!130, !131, !132, !133}
!130 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0)
!131 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1)
!132 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2)
!133 = !DIEnumerator(name: "DMA_NONE", value: 3)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !105, line: 547, baseType: !18, size: 32, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142}
!136 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!137 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!138 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!139 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!140 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!141 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!142 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !105, line: 564, baseType: !18, size: 32, elements: !144)
!144 = !{!145, !146, !147}
!145 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!146 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!147 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !105, line: 577, baseType: !18, size: 32, elements: !149)
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!151 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!152 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !105, line: 503, baseType: !18, size: 32, elements: !154)
!154 = !{!155, !156, !157, !158}
!155 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!156 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!157 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!158 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !160, line: 398, baseType: !18, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169}
!162 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!163 = !DIEnumerator(name: "N_ONLINE", value: 1)
!164 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!165 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!166 = !DIEnumerator(name: "N_MEMORY", value: 3)
!167 = !DIEnumerator(name: "N_CPU", value: 4)
!168 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!169 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !171, line: 10, baseType: !18, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "false", value: 0)
!174 = !DIEnumerator(name: "true", value: 1)
!175 = !{!176, !178, !182, !183, !4120, !1746, !206, !120, !4121, !4122, !1937, !3275}
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !177, line: 154, baseType: !18)
!177 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !177, line: 61, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !180, line: 72, baseType: !181)
!180 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !180, line: 16, baseType: !182)
!182 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !49, line: 74, size: 512, align: 128, elements: !185)
!185 = !{!186, !187, !4114, !4119}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !184, file: !49, line: 75, baseType: !182, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !184, file: !49, line: 83, baseType: !188, size: 320, offset: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !184, file: !49, line: 83, size: 320, elements: !189)
!189 = !{!190, !4020, !4034, !4038, !4113}
!190 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !49, line: 84, baseType: !191, size: 320)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !49, line: 84, size: 320, elements: !192)
!192 = !{!193, !210, !4014, !4019}
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !49, line: 90, baseType: !194, size: 128)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !49, line: 90, size: 128, elements: !195)
!195 = !{!196, !202, !208, !209}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !194, file: !49, line: 91, baseType: !197, size: 128)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !177, line: 190, size: 128, elements: !198)
!198 = !{!199, !201}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !177, line: 191, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !197, file: !177, line: 191, baseType: !200, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !49, line: 94, baseType: !203, size: 128)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !194, file: !49, line: 94, size: 128, elements: !204)
!204 = !{!205, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !203, file: !49, line: 96, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !203, file: !49, line: 98, baseType: !18, size: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !194, file: !49, line: 102, baseType: !197, size: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !194, file: !49, line: 103, baseType: !197, size: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !191, file: !49, line: 106, baseType: !211, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !25, line: 472, size: 1536, align: 64, elements: !213)
!213 = !{!214, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !4008, !4009, !4010, !4011, !4012, !4013}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !212, file: !25, line: 473, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !25, line: 641, size: 4800, elements: !217)
!217 = !{!218, !221, !222, !230, !231, !238, !239, !242, !243, !3787, !3788, !3789, !3790, !3791, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3831, !3834, !3835, !3836, !3845, !3846, !3847, !3848}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !216, file: !25, line: 642, baseType: !219, size: 16)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !177, line: 24, baseType: !220)
!220 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !216, file: !25, line: 643, baseType: !220, size: 16, offset: 16)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !216, file: !25, line: 644, baseType: !223, size: 32, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !224, line: 23, baseType: !225)
!224 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !224, line: 21, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !225, file: !224, line: 22, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !177, line: 37, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !180, line: 49, baseType: !18)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !216, file: !25, line: 645, baseType: !197, size: 128, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !216, file: !25, line: 646, baseType: !232, size: 32, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !224, line: 28, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !224, line: 26, size: 32, elements: !234)
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !233, file: !224, line: 27, baseType: !236, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !177, line: 38, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !180, line: 50, baseType: !18)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !216, file: !25, line: 647, baseType: !18, size: 32, offset: 224)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !216, file: !25, line: 650, baseType: !240, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !25, line: 607, flags: DIFlagFwdDecl)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !216, file: !25, line: 651, baseType: !240, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !216, file: !25, line: 654, baseType: !244, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !25, line: 1966, size: 2048, align: 512, elements: !247)
!247 = !{!248, !3615, !3625, !3629, !3633, !3637, !3641, !3645, !3649, !3653, !3657, !3658, !3662, !3666, !3703, !3732, !3736, !3742, !3746, !3750, !3754, !3758, !3762, !3768, !3772}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !246, file: !25, line: 1967, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!252, !215, !252, !18}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !254, line: 82, size: 1536, elements: !255)
!254 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!255 = !{!256, !257, !267, !275, !276, !299, !300, !304, !355, !3598, !3599, !3600, !3601, !3607, !3608, !3609}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !253, file: !254, line: 84, baseType: !18, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !253, file: !254, line: 85, baseType: !258, size: 32, offset: 32)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !259, line: 275, baseType: !260)
!259 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !259, line: 275, size: 32, elements: !261)
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !260, file: !259, line: 275, baseType: !263, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !259, line: 69, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !259, line: 64, size: 32, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !264, file: !259, line: 65, baseType: !18, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !253, file: !254, line: 86, baseType: !268, size: 128, offset: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !269, line: 38, size: 128, elements: !270)
!269 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!270 = !{!271, !273}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !269, line: 39, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !268, file: !269, line: 39, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !253, file: !254, line: 87, baseType: !252, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !253, file: !254, line: 88, baseType: !277, size: 128, offset: 256)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !254, line: 49, size: 128, elements: !278)
!278 = !{!279, !295}
!279 = !DIDerivedType(tag: DW_TAG_member, scope: !277, file: !254, line: 50, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !254, line: 50, size: 64, elements: !281)
!281 = !{!282, !291}
!282 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !254, line: 51, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !280, file: !254, line: 51, size: 64, elements: !284)
!284 = !{!285, !290}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !283, file: !254, line: 52, baseType: !286, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !287, line: 21, baseType: !288)
!287 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !289, line: 27, baseType: !18)
!289 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!290 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !283, file: !254, line: 52, baseType: !286, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !280, file: !254, line: 54, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !287, line: 23, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !289, line: 31, baseType: !294)
!294 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !277, file: !254, line: 56, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !253, file: !254, line: 89, baseType: !215, size: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !253, file: !254, line: 91, baseType: !301, size: 256, offset: 448)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 256, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !253, file: !254, line: 94, baseType: !305, size: 64, offset: 704)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !306, line: 25, size: 64, elements: !307)
!306 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !306, line: 26, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !306, line: 26, size: 64, elements: !310)
!310 = !{!311, !312}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !309, file: !306, line: 28, baseType: !293, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !306, line: 30, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !309, file: !306, line: 30, size: 64, elements: !314)
!314 = !{!315, !354}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !313, file: !306, line: 31, baseType: !316, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !317, line: 29, baseType: !318)
!317 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !317, line: 17, size: 32, elements: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !317, line: 18, baseType: !321, size: 32)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !317, line: 18, size: 32, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !321, file: !317, line: 19, baseType: !324, size: 32)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !325, line: 14, size: 32, elements: !326)
!325 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !324, file: !325, line: 15, baseType: !328, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !329, line: 44, baseType: !330)
!329 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !329, line: 14, size: 32, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, scope: !330, file: !329, line: 15, baseType: !333, size: 32)
!333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !329, line: 15, size: 32, elements: !334)
!334 = !{!335, !340, !347}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !333, file: !329, line: 16, baseType: !336, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !177, line: 174, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 172, size: 32, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !337, file: !177, line: 173, baseType: !120, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !329, line: 24, baseType: !341, size: 16)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !329, line: 24, size: 16, elements: !342)
!342 = !{!343, !346}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !341, file: !329, line: 25, baseType: !344, size: 8)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !287, line: 17, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !289, line: 21, baseType: !298)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !341, file: !329, line: 26, baseType: !344, size: 8, offset: 8)
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !329, line: 28, baseType: !348, size: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !329, line: 28, size: 32, elements: !349)
!349 = !{!350, !353}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !348, file: !329, line: 29, baseType: !351, size: 16)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !287, line: 19, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !289, line: 24, baseType: !220)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !348, file: !329, line: 30, baseType: !351, size: 16, offset: 16)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !313, file: !306, line: 32, baseType: !120, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !253, file: !254, line: 95, baseType: !356, size: 64, offset: 768)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !254, line: 128, size: 1024, align: 512, elements: !359)
!359 = !{!360, !364, !365, !372, !380, !384, !388, !392, !393, !397, !402, !3588, !3592}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !358, file: !254, line: 129, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!120, !252, !18}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !358, file: !254, line: 130, baseType: !361, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !358, file: !254, line: 131, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!120, !369, !371}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !358, file: !254, line: 132, baseType: !373, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!120, !369, !18, !376, !378}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !358, file: !254, line: 134, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!120, !369}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !358, file: !254, line: 135, baseType: !385, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!120, !252}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !358, file: !254, line: 136, baseType: !389, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !252}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !358, file: !254, line: 137, baseType: !389, size: 64, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !358, file: !254, line: 138, baseType: !394, size: 64, offset: 512)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !252, !215}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !358, file: !254, line: 139, baseType: !398, size: 64, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!401, !252, !401, !120}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !358, file: !254, line: 140, baseType: !403, size: 64, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!406, !3587}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !408, line: 70, size: 256, elements: !409)
!408 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!409 = !{!410, !411, !3583, !3584}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !407, file: !408, line: 71, baseType: !252, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !407, file: !408, line: 72, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !25, line: 1190, size: 10752, elements: !414)
!414 = !{!415, !416, !419, !420, !421, !425, !1966, !2100, !2140, !2225, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2242, !2246, !2247, !2250, !2253, !2256, !2259, !2260, !2261, !2302, !3516, !3517, !3518, !3519, !3520, !3521, !3524, !3526, !3533, !3534, !3535, !3536, !3537, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !413, file: !25, line: 1191, baseType: !197, size: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !413, file: !25, line: 1192, baseType: !417, size: 32, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !177, line: 21, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !177, line: 18, baseType: !286)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !413, file: !25, line: 1193, baseType: !298, size: 8, offset: 160)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !413, file: !25, line: 1194, baseType: !182, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !413, file: !25, line: 1195, baseType: !422, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !177, line: 52, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !180, line: 88, baseType: !424)
!424 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !413, file: !25, line: 1196, baseType: !426, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !25, line: 2366, size: 576, elements: !428)
!428 = !{!429, !430, !431, !438, !442, !446, !450, !1954, !1955, !1956, !1958, !1959, !1960, !1962, !1963, !1964, !1965}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !427, file: !25, line: 2367, baseType: !376, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !427, file: !25, line: 2368, baseType: !120, size: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !427, file: !25, line: 2376, baseType: !432, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!120, !435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !437, line: 32, flags: DIFlagFwdDecl)
!437 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!438 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !427, file: !25, line: 2377, baseType: !439, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !25, line: 75, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !427, file: !25, line: 2378, baseType: !443, size: 64, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!252, !426, !120, !376, !206}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !427, file: !25, line: 2380, baseType: !447, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !412}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !427, file: !25, line: 2381, baseType: !451, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !17, line: 402, size: 9216, align: 512, elements: !453)
!453 = !{!454, !455, !456, !460, !1610, !1636, !1637, !1638, !1639, !1643, !1646, !1647, !1648, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1716, !1720, !1740, !1758, !1759, !1760, !1761, !1770, !1793, !1794, !1797, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1811, !1812, !1912, !1920, !1921, !1922, !1924, !1928, !1929, !1933, !1934, !1935, !1936, !1938, !1939, !1940, !1947, !1948, !1949, !1953}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !452, file: !17, line: 403, baseType: !16, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !452, file: !17, line: 406, baseType: !197, size: 128, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !452, file: !17, line: 409, baseType: !457, size: 448, offset: 192)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 56)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !452, file: !17, line: 417, baseType: !461, size: 768, offset: 640)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !17, line: 45, size: 768, elements: !462)
!462 = !{!463, !1593, !1594, !1595, !1598}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !461, file: !17, line: 46, baseType: !464, size: 512)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !465, line: 64, size: 512, elements: !466)
!465 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!466 = !{!467, !468, !469, !471, !517, !1477, !1583, !1588, !1589, !1590, !1591, !1592}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !464, file: !465, line: 65, baseType: !376, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !464, file: !465, line: 66, baseType: !197, size: 128, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !464, file: !465, line: 67, baseType: !470, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !464, file: !465, line: 68, baseType: !472, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !465, line: 168, size: 768, elements: !474)
!474 = !{!475, !476, !477, !478}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !473, file: !465, line: 169, baseType: !197, size: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !473, file: !465, line: 170, baseType: !316, size: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !473, file: !465, line: 171, baseType: !464, size: 512, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !473, file: !465, line: 172, baseType: !479, size: 64, offset: 704)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !465, line: 133, size: 192, elements: !482)
!482 = !{!483, !490, !495}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !481, file: !465, line: 134, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!120, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !481, file: !465, line: 135, baseType: !491, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!376, !488}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !481, file: !465, line: 136, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!120, !488, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !465, line: 125, size: 20736, elements: !502)
!502 = !{!503, !507, !511, !512, !516}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !501, file: !465, line: 126, baseType: !504, size: 192)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 192, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 3)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !501, file: !465, line: 127, baseType: !508, size: 4096, offset: 192)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 4096, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !501, file: !465, line: 128, baseType: !120, size: 32, offset: 4288)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !501, file: !465, line: 129, baseType: !513, size: 16384, offset: 4320)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 2048)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !501, file: !465, line: 130, baseType: !120, size: 32, offset: 20704)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !464, file: !465, line: 69, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !465, line: 116, size: 384, elements: !521)
!521 = !{!522, !526, !549, !1436, !1467, !1471}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !520, file: !465, line: 117, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !470}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !520, file: !465, line: 118, baseType: !527, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !530, line: 254, size: 128, elements: !531)
!530 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!531 = !{!532, !545}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !529, file: !530, line: 255, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!536, !470, !540, !401}
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !177, line: 66, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !180, line: 73, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !180, line: 15, baseType: !539)
!539 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !530, line: 30, size: 128, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !541, file: !530, line: 31, baseType: !376, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !541, file: !530, line: 32, baseType: !219, size: 16, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !529, file: !530, line: 256, baseType: !546, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!536, !470, !540, !376, !178}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !520, file: !465, line: 119, baseType: !550, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !530, line: 84, size: 320, elements: !554)
!554 = !{!555, !556, !560, !1432, !1434}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !553, file: !530, line: 85, baseType: !376, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !553, file: !530, line: 86, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!219, !470, !540, !120}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !553, file: !530, line: 88, baseType: !561, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!219, !470, !564, !120}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !530, line: 175, size: 512, elements: !566)
!566 = !{!567, !568, !569, !570, !574, !1427, !1428}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !565, file: !530, line: 176, baseType: !541, size: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !565, file: !530, line: 177, baseType: !178, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !565, file: !530, line: 178, baseType: !206, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !565, file: !530, line: 179, baseType: !571, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!211}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !565, file: !530, line: 180, baseType: !575, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!536, !578, !470, !564, !401, !422, !178}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !25, line: 994, size: 1856, align: 64, elements: !580)
!580 = !{!581, !600, !601, !603, !612, !625, !626, !627, !699, !911, !920, !926, !927, !1417, !1418, !1419, !1420, !1422, !1423, !1426}
!581 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !25, line: 995, baseType: !582, size: 128)
!582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !25, line: 995, size: 128, elements: !583)
!583 = !{!584, !590, !599}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !582, file: !25, line: 996, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !586, line: 60, size: 64, elements: !587)
!586 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !585, file: !586, line: 61, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !582, file: !25, line: 997, baseType: !591, size: 128, align: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !177, line: 232, size: 128, align: 64, elements: !592)
!592 = !{!593, !595}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !591, file: !177, line: 233, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !591, file: !177, line: 234, baseType: !596, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !594}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !582, file: !25, line: 998, baseType: !18, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !579, file: !25, line: 1005, baseType: !316, size: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !579, file: !25, line: 1006, baseType: !602, size: 32, offset: 160)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !177, line: 156, baseType: !18)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !579, file: !25, line: 1007, baseType: !604, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !605, line: 13, baseType: !606)
!605 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !177, line: 181, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 179, size: 64, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !607, file: !177, line: 180, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !287, line: 22, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !289, line: 30, baseType: !424)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !579, file: !25, line: 1008, baseType: !613, size: 256, offset: 256)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !614, line: 66, size: 256, elements: !615)
!614 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!615 = !{!616, !617, !619, !624}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !613, file: !614, line: 67, baseType: !604, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !613, file: !614, line: 68, baseType: !618, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !325, line: 23, baseType: !324)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !613, file: !614, line: 70, baseType: !620, size: 32, offset: 96)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !621, line: 15, size: 32, elements: !622)
!621 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !620, file: !621, line: 20, baseType: !336, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !613, file: !614, line: 72, baseType: !197, size: 128, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !579, file: !25, line: 1009, baseType: !422, size: 64, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !579, file: !25, line: 1010, baseType: !18, size: 32, offset: 576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !579, file: !25, line: 1011, baseType: !628, size: 256, offset: 640)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !25, line: 948, size: 256, elements: !629)
!629 = !{!630, !651, !695, !696, !697, !698}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !628, file: !25, line: 949, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !632, line: 34, baseType: !633)
!632 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 25, size: 64, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !633, file: !632, line: 26, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !637, line: 27, baseType: !638)
!637 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !637, line: 13, size: 64, elements: !639)
!639 = !{!640, !650}
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !637, line: 14, baseType: !641, size: 32)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !637, line: 14, size: 32, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !641, file: !637, line: 15, baseType: !336, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !637, line: 16, baseType: !645, size: 32)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !641, file: !637, line: 16, size: 32, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !645, file: !637, line: 18, baseType: !344, size: 8)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !645, file: !637, line: 19, baseType: !649, size: 24, offset: 8)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 24, elements: !505)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !638, file: !637, line: 26, baseType: !328, size: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !628, file: !25, line: 950, baseType: !652, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !41, line: 59, size: 768, elements: !654)
!654 = !{!655, !661, !662, !663, !676, !677, !684, !685}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !653, file: !41, line: 61, baseType: !656, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !657, line: 113, baseType: !658)
!657 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !657, line: 111, size: 32, elements: !659)
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !658, file: !657, line: 112, baseType: !336, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !653, file: !41, line: 62, baseType: !18, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !653, file: !41, line: 63, baseType: !316, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !653, file: !41, line: 65, baseType: !664, size: 256, offset: 128)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 256, elements: !674)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !177, line: 194, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !665, file: !177, line: 195, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !177, line: 198, size: 128, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !669, file: !177, line: 199, baseType: !668, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !669, file: !177, line: 199, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!674 = !{!675}
!675 = !DISubrange(count: 4)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !653, file: !41, line: 66, baseType: !665, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !653, file: !41, line: 68, baseType: !678, size: 192, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !679, line: 41, baseType: !680)
!679 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !679, line: 37, size: 192, elements: !681)
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !680, file: !679, line: 38, baseType: !316, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !680, file: !679, line: 39, baseType: !197, size: 128, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !653, file: !41, line: 69, baseType: !591, size: 128, align: 64, offset: 640)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !653, file: !41, line: 70, baseType: !686, offset: 768)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, elements: !693)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !41, line: 54, size: 128, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !687, file: !41, line: 55, baseType: !120, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !687, file: !41, line: 56, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !41, line: 56, flags: DIFlagFwdDecl)
!693 = !{!694}
!694 = !DISubrange(count: -1)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !628, file: !25, line: 951, baseType: !40, size: 32, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !628, file: !25, line: 952, baseType: !223, size: 32, offset: 160)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !628, file: !25, line: 952, baseType: !223, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !628, file: !25, line: 953, baseType: !120, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !579, file: !25, line: 1012, baseType: !700, size: 64, offset: 896)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !703, line: 110, size: 1472, elements: !704)
!703 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !721, !722, !723, !724, !725, !726, !856, !857, !858, !859, !860, !891, !894, !898, !906}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !702, file: !703, line: 111, baseType: !604, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !702, file: !703, line: 112, baseType: !223, size: 32, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !702, file: !703, line: 113, baseType: !232, size: 32, offset: 96)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !702, file: !703, line: 114, baseType: !223, size: 32, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !702, file: !703, line: 115, baseType: !232, size: 32, offset: 160)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !702, file: !703, line: 116, baseType: !223, size: 32, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !702, file: !703, line: 117, baseType: !232, size: 32, offset: 224)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !702, file: !703, line: 118, baseType: !223, size: 32, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !702, file: !703, line: 119, baseType: !232, size: 32, offset: 288)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !702, file: !703, line: 120, baseType: !18, size: 32, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !702, file: !703, line: 121, baseType: !716, size: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !717, line: 24, baseType: !718)
!717 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !717, line: 24, size: 64, elements: !719)
!719 = !{!720}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !718, file: !717, line: 24, baseType: !292, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !702, file: !703, line: 122, baseType: !716, size: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !702, file: !703, line: 123, baseType: !716, size: 64, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !702, file: !703, line: 124, baseType: !716, size: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !702, file: !703, line: 125, baseType: !716, size: 64, offset: 640)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !702, file: !703, line: 127, baseType: !298, size: 8, offset: 704)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !702, file: !703, line: 129, baseType: !727, size: 64, offset: 768)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !729, line: 195, size: 1728, elements: !730)
!729 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!730 = !{!731, !732, !737, !749, !758, !761, !762, !769, !770, !771, !772, !775, !776, !777, !779, !780, !820, !841}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !728, file: !729, line: 196, baseType: !656, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !728, file: !729, line: 197, baseType: !733, size: 32, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !729, line: 28, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !177, line: 104, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !287, line: 20, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !289, line: 26, baseType: !120)
!737 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !729, line: 198, baseType: !738, size: 192, offset: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !728, file: !729, line: 198, size: 192, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !738, file: !729, line: 199, baseType: !197, size: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !738, file: !729, line: 200, baseType: !742, size: 192, align: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !743, line: 5, size: 192, align: 64, elements: !744)
!743 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!744 = !{!745, !746, !748}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !742, file: !743, line: 6, baseType: !182, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !742, file: !743, line: 7, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !742, file: !743, line: 8, baseType: !747, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !728, file: !729, line: 205, baseType: !750, size: 320, offset: 256)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !751, line: 48, size: 320, elements: !752)
!751 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!752 = !{!753, !754, !755, !756, !757}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !750, file: !751, line: 49, baseType: !604, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !750, file: !751, line: 55, baseType: !604, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !750, file: !751, line: 57, baseType: !620, size: 32, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !750, file: !751, line: 59, baseType: !618, size: 32, offset: 160)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !750, file: !751, line: 60, baseType: !197, size: 128, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !728, file: !729, line: 206, baseType: !759, size: 64, offset: 576)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !729, line: 206, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !728, file: !729, line: 207, baseType: !206, size: 64, offset: 640)
!762 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !729, line: 208, baseType: !763, size: 64, offset: 704)
!763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !728, file: !729, line: 208, size: 64, elements: !764)
!764 = !{!765, !768}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !763, file: !729, line: 209, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !767, line: 8, baseType: !611)
!767 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!768 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !763, file: !729, line: 210, baseType: !766, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !728, file: !729, line: 212, baseType: !766, size: 64, offset: 768)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !728, file: !729, line: 213, baseType: !223, size: 32, offset: 832)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !728, file: !729, line: 214, baseType: !232, size: 32, offset: 864)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !728, file: !729, line: 215, baseType: !773, size: 32, offset: 896)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !729, line: 31, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !177, line: 110, baseType: !286)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !728, file: !729, line: 216, baseType: !220, size: 16, offset: 928)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !728, file: !729, line: 217, baseType: !220, size: 16, offset: 944)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !728, file: !729, line: 221, baseType: !778, size: 16, offset: 960)
!778 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !729, line: 228, baseType: !182, size: 64, offset: 1024)
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !729, line: 245, baseType: !781, size: 320, offset: 1088)
!781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !728, file: !729, line: 245, size: 320, elements: !782)
!782 = !{!783, !812}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !781, file: !729, line: 246, baseType: !784, size: 320)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !729, line: 114, size: 320, elements: !785)
!785 = !{!786, !787, !799, !802, !811}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !784, file: !729, line: 116, baseType: !182, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !729, line: 117, baseType: !788, size: 64, offset: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !784, file: !729, line: 117, size: 64, elements: !789)
!789 = !{!790, !798}
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !788, file: !729, line: 118, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !788, file: !729, line: 118, size: 64, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !791, file: !729, line: 120, baseType: !351, size: 16)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !791, file: !729, line: 121, baseType: !795, size: 48, offset: 16)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 6)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !788, file: !729, line: 127, baseType: !182, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !784, file: !729, line: 129, baseType: !800, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !729, line: 102, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !784, file: !729, line: 130, baseType: !803, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !729, line: 108, size: 192, elements: !805)
!805 = !{!806, !807, !808}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !804, file: !729, line: 109, baseType: !591, size: 128, align: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !804, file: !729, line: 110, baseType: !656, size: 32, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !804, file: !729, line: 111, baseType: !809, size: 8, offset: 160)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !177, line: 35, baseType: !810)
!810 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !784, file: !729, line: 131, baseType: !376, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !729, line: 247, baseType: !813, size: 320)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !729, line: 247, size: 320, elements: !814)
!814 = !{!815, !816, !817, !818, !819}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !813, file: !729, line: 248, baseType: !182, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !813, file: !729, line: 249, baseType: !182, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !813, file: !729, line: 250, baseType: !800, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !813, file: !729, line: 251, baseType: !803, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !813, file: !729, line: 252, baseType: !401, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !729, line: 260, baseType: !821, size: 256, offset: 1408)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !728, file: !729, line: 260, size: 256, elements: !822)
!822 = !{!823, !829}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !821, file: !729, line: 261, baseType: !824, size: 256)
!824 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !729, line: 134, size: 256, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !824, file: !729, line: 135, baseType: !206, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !824, file: !729, line: 136, baseType: !828, size: 256)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 256, elements: !674)
!829 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !729, line: 262, baseType: !830, size: 256)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !821, file: !729, line: 262, size: 256, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !830, file: !729, line: 264, baseType: !197, size: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !830, file: !729, line: 265, baseType: !834, size: 128, offset: 128)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !835, line: 22, size: 128, elements: !836)
!835 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!836 = !{!837, !840}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !834, file: !835, line: 23, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !835, line: 23, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !834, file: !835, line: 24, baseType: !182, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !728, file: !729, line: 280, baseType: !842, size: 64, offset: 1664)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !729, line: 176, size: 192, elements: !844)
!844 = !{!845, !854, !855}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !843, file: !729, line: 177, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !729, line: 171, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!120, !727, !850, !852, !727}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !843, file: !729, line: 178, baseType: !727, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !843, file: !729, line: 179, baseType: !800, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !702, file: !703, line: 130, baseType: !727, size: 64, offset: 832)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !702, file: !703, line: 131, baseType: !727, size: 64, offset: 896)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !702, file: !703, line: 132, baseType: !727, size: 64, offset: 960)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !702, file: !703, line: 135, baseType: !206, size: 64, offset: 1024)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !702, file: !703, line: 137, baseType: !861, size: 64, offset: 1088)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !863, line: 14, size: 1088, elements: !864)
!863 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!864 = !{!865, !866, !875, !876, !877, !878, !879, !880}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !862, file: !863, line: 15, baseType: !656, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !862, file: !863, line: 17, baseType: !867, size: 320, offset: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !868, line: 22, size: 320, elements: !869)
!868 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!869 = !{!870, !871, !872, !873}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !867, file: !868, line: 23, baseType: !618, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !867, file: !868, line: 24, baseType: !610, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !867, file: !868, line: 26, baseType: !197, size: 128, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !867, file: !868, line: 28, baseType: !874, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !862, file: !863, line: 19, baseType: !182, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !862, file: !863, line: 20, baseType: !604, size: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !862, file: !863, line: 23, baseType: !669, size: 128, offset: 512)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !862, file: !863, line: 24, baseType: !223, size: 32, offset: 640)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !862, file: !863, line: 29, baseType: !604, size: 64, offset: 704)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !862, file: !863, line: 36, baseType: !881, size: 320, offset: 768)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !882, line: 15, size: 320, elements: !883)
!882 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!883 = !{!884, !885, !886, !887, !888, !889, !890}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !881, file: !882, line: 16, baseType: !618, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !881, file: !882, line: 18, baseType: !120, size: 32, offset: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !881, file: !882, line: 19, baseType: !120, size: 32, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !881, file: !882, line: 20, baseType: !120, size: 32, offset: 96)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !881, file: !882, line: 21, baseType: !120, size: 32, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !881, file: !882, line: 22, baseType: !182, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !881, file: !882, line: 23, baseType: !182, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !702, file: !703, line: 138, baseType: !892, size: 64, offset: 1152)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !224, line: 18, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !702, file: !703, line: 139, baseType: !895, size: 64, offset: 1216)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !897, line: 16, flags: DIFlagFwdDecl)
!897 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!898 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !702, file: !703, line: 140, baseType: !899, size: 64, offset: 1280)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !703, line: 25, size: 64, elements: !901)
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !900, file: !703, line: 26, baseType: !336, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !900, file: !703, line: 27, baseType: !120, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !900, file: !703, line: 28, baseType: !905, offset: 64)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, elements: !693)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !703, line: 142, baseType: !907, size: 128, offset: 1344)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !702, file: !703, line: 142, size: 128, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !907, file: !703, line: 143, baseType: !120, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !907, file: !703, line: 144, baseType: !591, size: 128, align: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !579, file: !25, line: 1013, baseType: !912, size: 256, offset: 960)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !25, line: 970, size: 256, elements: !913)
!913 = !{!914, !915, !916, !917, !918, !919}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !912, file: !25, line: 971, baseType: !182, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !912, file: !25, line: 972, baseType: !18, size: 32, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !912, file: !25, line: 973, baseType: !18, size: 32, offset: 96)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !912, file: !25, line: 974, baseType: !18, size: 32, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !912, file: !25, line: 975, baseType: !18, size: 32, offset: 160)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !912, file: !25, line: 976, baseType: !422, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !579, file: !25, line: 1014, baseType: !921, size: 128, offset: 1216)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !922, line: 8, size: 128, elements: !923)
!922 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !921, file: !922, line: 9, baseType: !406, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !921, file: !922, line: 10, baseType: !252, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !579, file: !25, line: 1015, baseType: !215, size: 64, offset: 1344)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !579, file: !25, line: 1016, baseType: !928, size: 64, offset: 1408)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !930)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !25, line: 1914, size: 2112, elements: !931)
!931 = !{!932, !933, !937, !942, !946, !974, !975, !981, !994, !1002, !1006, !1007, !1337, !1338, !1342, !1347, !1348, !1352, !1356, !1362, !1363, !1367, !1368, !1374, !1378, !1382, !1388, !1392, !1398, !1402, !1406, !1407, !1413}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !930, file: !25, line: 1915, baseType: !451, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !930, file: !25, line: 1916, baseType: !934, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!422, !578, !422, !120}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !930, file: !25, line: 1917, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!536, !578, !401, !178, !941}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !930, file: !25, line: 1918, baseType: !943, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!536, !578, !376, !178, !941}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !930, file: !25, line: 1919, baseType: !947, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!536, !950, !972}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !25, line: 373, size: 384, elements: !952)
!952 = !{!953, !954, !955, !959, !960, !961, !962}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !951, file: !25, line: 374, baseType: !578, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !951, file: !25, line: 375, baseType: !422, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !951, file: !25, line: 376, baseType: !956, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{null, !950, !539}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !951, file: !25, line: 377, baseType: !206, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !951, file: !25, line: 378, baseType: !120, size: 32, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !951, file: !25, line: 379, baseType: !351, size: 16, offset: 288)
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !25, line: 380, baseType: !963, size: 64, offset: 320)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !951, file: !25, line: 380, size: 64, elements: !964)
!964 = !{!965, !968}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !963, file: !25, line: 386, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !25, line: 386, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !963, file: !25, line: 395, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!536, !206}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !25, line: 69, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !930, file: !25, line: 1920, baseType: !947, size: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !930, file: !25, line: 1921, baseType: !976, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!120, !950, !979, !18}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !25, line: 53, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !930, file: !25, line: 1923, baseType: !982, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!120, !578, !985}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !25, line: 1858, size: 128, elements: !987)
!987 = !{!988, !993}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !986, file: !25, line: 1859, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !25, line: 1855, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!809, !985, !376, !120, !422, !292, !18}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !986, file: !25, line: 1860, baseType: !422, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !930, file: !25, line: 1924, baseType: !995, size: 64, offset: 512)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!998, !578, !1000}
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !999, line: 59, baseType: !18)
!999 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !437, line: 31, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !930, file: !25, line: 1925, baseType: !1003, size: 64, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!539, !578, !18, !182}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !930, file: !25, line: 1926, baseType: !1003, size: 64, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !930, file: !25, line: 1927, baseType: !1008, size: 64, offset: 704)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!120, !578, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !49, line: 625, size: 1344, elements: !1013)
!1013 = !{!1014, !1023, !1192, !1198, !1205, !1206, !1211, !1212, !1217, !1218, !1221, !1330, !1331, !1332, !1333, !1334, !1335}
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !49, line: 628, baseType: !1015, size: 128)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !49, line: 628, size: 128, elements: !1016)
!1016 = !{!1017, !1022}
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !49, line: 629, baseType: !1018, size: 128)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !49, line: 629, size: 128, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1018, file: !49, line: 631, baseType: !182, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1018, file: !49, line: 632, baseType: !182, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1015, file: !49, line: 635, baseType: !591, size: 128, align: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1012, file: !49, line: 639, baseType: !1024, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !49, line: 733, size: 10240, elements: !1026)
!1026 = !{!1027, !1190}
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !49, line: 734, baseType: !1028, size: 10240)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !49, line: 734, size: 10240, elements: !1029)
!1029 = !{!1030, !1034, !1048, !1052, !1053, !1054, !1055, !1056, !1057, !1066, !1067, !1068, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1107, !1109, !1112, !1159, !1160, !1161, !1164, !1165, !1166, !1169, !1170, !1171, !1177, !1178}
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1028, file: !49, line: 739, baseType: !1031, size: 512, align: 512)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1028, file: !49, line: 739, size: 512, align: 512, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1031, file: !49, line: 747, baseType: !336, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1028, file: !49, line: 750, baseType: !1035, size: 128, offset: 512)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1036, line: 218, size: 128, elements: !1037)
!1036 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1037 = !{!1038, !1046, !1047}
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !1036, line: 219, baseType: !1039, size: 32)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !1036, line: 219, size: 32, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1039, file: !1036, line: 220, baseType: !316, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1039, file: !1036, line: 221, baseType: !1043)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1036, line: 197, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1036, line: 197, elements: !1045)
!1045 = !{}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1035, file: !1036, line: 223, baseType: !18, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1035, file: !1036, line: 224, baseType: !206, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1028, file: !49, line: 752, baseType: !1049, size: 64, offset: 640)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!182, !578, !182, !182, !182, !182}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1028, file: !49, line: 756, baseType: !182, size: 64, offset: 704)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1028, file: !49, line: 757, baseType: !182, size: 64, offset: 768)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1028, file: !49, line: 760, baseType: !182, size: 64, offset: 832)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1028, file: !49, line: 761, baseType: !182, size: 64, offset: 896)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1028, file: !49, line: 763, baseType: !182, size: 64, offset: 960)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1028, file: !49, line: 764, baseType: !1058, size: 64, offset: 1024)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1060, line: 299, baseType: !1061)
!1060 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1060, line: 299, size: 64, elements: !1062)
!1062 = !{!1063}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1061, file: !1060, line: 299, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1065, line: 18, baseType: !182)
!1065 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1028, file: !49, line: 773, baseType: !336, size: 32, offset: 1088)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1028, file: !49, line: 785, baseType: !336, size: 32, offset: 1120)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1028, file: !49, line: 795, baseType: !1069, size: 64, offset: 1152)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !49, line: 726, size: 128, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1070, file: !49, line: 727, baseType: !292, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1070, file: !49, line: 728, baseType: !120, size: 32, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1028, file: !49, line: 801, baseType: !182, size: 64, offset: 1216)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1028, file: !49, line: 804, baseType: !604, size: 64, offset: 1280)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1028, file: !49, line: 806, baseType: !120, size: 32, offset: 1344)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1028, file: !49, line: 808, baseType: !316, size: 32, offset: 1376)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1028, file: !49, line: 823, baseType: !750, size: 320, offset: 1408)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1028, file: !49, line: 825, baseType: !197, size: 128, offset: 1728)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1028, file: !49, line: 845, baseType: !120, size: 32, offset: 1856)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1028, file: !49, line: 849, baseType: !182, size: 64, offset: 1920)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1028, file: !49, line: 850, baseType: !182, size: 64, offset: 1984)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1028, file: !49, line: 852, baseType: !182, size: 64, offset: 2048)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1028, file: !49, line: 853, baseType: !182, size: 64, offset: 2112)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1028, file: !49, line: 854, baseType: !606, size: 64, offset: 2176)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1028, file: !49, line: 855, baseType: !182, size: 64, offset: 2240)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1028, file: !49, line: 856, baseType: !182, size: 64, offset: 2304)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1028, file: !49, line: 857, baseType: !182, size: 64, offset: 2368)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1028, file: !49, line: 858, baseType: !182, size: 64, offset: 2432)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1028, file: !49, line: 865, baseType: !263, size: 32, offset: 2496)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1028, file: !49, line: 867, baseType: !316, size: 32, offset: 2528)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1028, file: !49, line: 869, baseType: !182, size: 64, offset: 2560)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1028, file: !49, line: 869, baseType: !182, size: 64, offset: 2624)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1028, file: !49, line: 869, baseType: !182, size: 64, offset: 2688)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1028, file: !49, line: 869, baseType: !182, size: 64, offset: 2752)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1028, file: !49, line: 870, baseType: !182, size: 64, offset: 2816)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1028, file: !49, line: 870, baseType: !182, size: 64, offset: 2880)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1028, file: !49, line: 870, baseType: !182, size: 64, offset: 2944)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1028, file: !49, line: 871, baseType: !182, size: 64, offset: 3008)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1028, file: !49, line: 871, baseType: !182, size: 64, offset: 3072)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1028, file: !49, line: 871, baseType: !182, size: 64, offset: 3136)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1028, file: !49, line: 871, baseType: !182, size: 64, offset: 3200)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1028, file: !49, line: 873, baseType: !1104, size: 3328, offset: 3264)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 3328, elements: !1105)
!1105 = !{!1106}
!1106 = !DISubrange(count: 52)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1028, file: !49, line: 875, baseType: !1108, size: 1280, offset: 6592)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !867, size: 1280, elements: !674)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1028, file: !49, line: 877, baseType: !1110, size: 64, offset: 7872)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !49, line: 877, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1028, file: !49, line: 880, baseType: !1113, size: 1088, offset: 7936)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1114, line: 72, baseType: !1115)
!1114 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 23, size: 1088, elements: !1116)
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1124, !1125, !1126, !1127, !1154, !1155, !1156}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1115, file: !1114, line: 28, baseType: !292, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1115, file: !1114, line: 38, baseType: !606, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1115, file: !1114, line: 40, baseType: !182, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1115, file: !1114, line: 43, baseType: !750, size: 320, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1115, file: !1114, line: 44, baseType: !1122, size: 64, offset: 512)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1114, line: 44, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1115, file: !1114, line: 48, baseType: !182, size: 64, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1115, file: !1114, line: 59, baseType: !613, size: 256, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1115, file: !1114, line: 60, baseType: !206, size: 64, offset: 896)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1115, file: !1114, line: 61, baseType: !1128, size: 64, offset: 960)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1131, line: 13, size: 1216, elements: !1132)
!1131 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1132 = !{!1133, !1134, !1135, !1136, !1137, !1138, !1139, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1130, file: !1131, line: 14, baseType: !206, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1130, file: !1131, line: 15, baseType: !182, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1130, file: !1131, line: 17, baseType: !182, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1130, file: !1131, line: 17, baseType: !182, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1130, file: !1131, line: 18, baseType: !182, size: 64, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1130, file: !1131, line: 18, baseType: !182, size: 64, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1130, file: !1131, line: 19, baseType: !1140, size: 64, offset: 384)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1130, file: !1131, line: 21, baseType: !539, size: 64, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1130, file: !1131, line: 23, baseType: !539, size: 64, offset: 512)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1130, file: !1131, line: 24, baseType: !539, size: 64, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1130, file: !1131, line: 25, baseType: !539, size: 64, offset: 640)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1130, file: !1131, line: 26, baseType: !539, size: 64, offset: 704)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1130, file: !1131, line: 27, baseType: !539, size: 64, offset: 768)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1130, file: !1131, line: 28, baseType: !539, size: 64, offset: 832)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1130, file: !1131, line: 29, baseType: !539, size: 64, offset: 896)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1130, file: !1131, line: 30, baseType: !539, size: 64, offset: 960)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1130, file: !1131, line: 31, baseType: !539, size: 64, offset: 1024)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1130, file: !1131, line: 32, baseType: !539, size: 64, offset: 1088)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1130, file: !1131, line: 33, baseType: !539, size: 64, offset: 1152)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1115, file: !1114, line: 63, baseType: !336, size: 32, offset: 1024)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1115, file: !1114, line: 69, baseType: !351, size: 16, offset: 1056)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1115, file: !1114, line: 70, baseType: !1157, size: 16, offset: 1072)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !287, line: 18, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !289, line: 23, baseType: !778)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1028, file: !49, line: 882, baseType: !182, size: 64, offset: 9024)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1028, file: !49, line: 885, baseType: !316, size: 32, offset: 9088)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1028, file: !49, line: 886, baseType: !1162, size: 64, offset: 9152)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !49, line: 732, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1028, file: !49, line: 901, baseType: !892, size: 64, offset: 9216)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1028, file: !49, line: 904, baseType: !578, size: 64, offset: 9280)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1028, file: !49, line: 906, baseType: !1167, size: 64, offset: 9344)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !49, line: 906, flags: DIFlagFwdDecl)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1028, file: !49, line: 930, baseType: !336, size: 32, offset: 9408)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1028, file: !49, line: 933, baseType: !336, size: 32, offset: 9440)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1028, file: !49, line: 935, baseType: !1172, size: 64, offset: 9472)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !79, line: 103, size: 64, elements: !1173)
!1173 = !{!1174}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1172, file: !79, line: 104, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !79, line: 101, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1028, file: !49, line: 940, baseType: !604, size: 64, offset: 9536)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1028, file: !49, line: 942, baseType: !1179, size: 256, offset: 9600)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1180, line: 98, size: 256, elements: !1181)
!1180 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1181 = !{!1182, !1183, !1184}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1179, file: !1180, line: 99, baseType: !604, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1179, file: !1180, line: 100, baseType: !197, size: 128, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1179, file: !1180, line: 101, baseType: !1185, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1180, line: 21, baseType: !1186)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1025, file: !49, line: 986, baseType: !1191, offset: 10240)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, elements: !693)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1012, file: !49, line: 640, baseType: !1193, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1060, line: 297, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1060, line: 297, size: 64, elements: !1195)
!1195 = !{!1196}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1194, file: !1060, line: 297, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1065, line: 19, baseType: !182)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !49, line: 646, baseType: !1199, size: 64, offset: 256)
!1199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !49, line: 646, size: 64, elements: !1200)
!1200 = !{!1201, !1204}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1199, file: !49, line: 647, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !49, line: 542, baseType: !182)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1199, file: !49, line: 648, baseType: !1203, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1012, file: !49, line: 666, baseType: !120, size: 32, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1012, file: !49, line: 667, baseType: !1207, size: 64, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !49, line: 579, size: 320, elements: !1209)
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1208, file: !49, line: 580, baseType: !750, size: 320)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1012, file: !49, line: 670, baseType: !809, size: 8, offset: 448)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1012, file: !49, line: 681, baseType: !1213, size: 256, offset: 512)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1012, file: !49, line: 678, size: 256, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1213, file: !49, line: 679, baseType: !742, size: 192, align: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1213, file: !49, line: 680, baseType: !182, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1012, file: !49, line: 689, baseType: !197, size: 128, offset: 768)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1012, file: !49, line: 691, baseType: !1219, size: 64, offset: 896)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !49, line: 691, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1012, file: !49, line: 694, baseType: !1222, size: 64, offset: 960)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1225, line: 563, size: 1024, elements: !1226)
!1225 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1226 = !{!1227, !1231, !1232, !1236, !1240, !1244, !1293, !1297, !1301, !1305, !1306, !1307, !1311, !1315, !1322, !1326}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1224, file: !1225, line: 564, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !1011}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1224, file: !1225, line: 569, baseType: !1228, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1224, file: !1225, line: 571, baseType: !1233, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!120, !1011, !182}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1224, file: !1225, line: 572, baseType: !1237, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!120, !1011}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1224, file: !1225, line: 578, baseType: !1241, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!120, !1011, !182, !182, !182}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1224, file: !1225, line: 580, baseType: !1245, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !49, line: 1184, baseType: !18)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1225, line: 512, size: 896, elements: !1251)
!1251 = !{!1252, !1260, !1261, !1268, !1275, !1285, !1286, !1287, !1289, !1291}
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !1225, line: 513, baseType: !1253, size: 320)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1250, file: !1225, line: 513, size: 320, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1258, !1259}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1253, file: !1225, line: 514, baseType: !1011, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1253, file: !1225, line: 515, baseType: !176, size: 32, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1253, file: !1225, line: 516, baseType: !182, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1253, file: !1225, line: 517, baseType: !182, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1253, file: !1225, line: 518, baseType: !182, size: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1250, file: !1225, line: 520, baseType: !48, size: 32, offset: 320)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1250, file: !1225, line: 522, baseType: !1262, size: 64, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1065, line: 22, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1065, line: 22, size: 64, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1264, file: !1065, line: 22, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1065, line: 15, baseType: !182)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1250, file: !1225, line: 524, baseType: !1269, size: 64, offset: 448)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1060, line: 372, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1060, line: 372, size: 64, elements: !1272)
!1272 = !{!1273}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1271, file: !1060, line: 372, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1065, line: 16, baseType: !182)
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !1225, line: 527, baseType: !1276, size: 64, offset: 512)
!1276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1250, file: !1225, line: 527, size: 64, elements: !1277)
!1277 = !{!1278, !1284}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1276, file: !1225, line: 528, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1065, line: 21, baseType: !1280)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1065, line: 21, size: 64, elements: !1281)
!1281 = !{!1282}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1280, file: !1065, line: 21, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1065, line: 14, baseType: !182)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1276, file: !1225, line: 529, baseType: !1263, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1250, file: !1225, line: 534, baseType: !183, size: 64, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1250, file: !1225, line: 535, baseType: !183, size: 64, offset: 640)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1250, file: !1225, line: 541, baseType: !1288, size: 64, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1250, file: !1225, line: 545, baseType: !1290, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1250, file: !1225, line: 549, baseType: !1292, size: 64, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1060, line: 520, baseType: !183)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1224, file: !1225, line: 581, baseType: !1294, size: 64, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!1248, !1249, !18}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1224, file: !1225, line: 582, baseType: !1298, size: 64, offset: 448)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!1248, !1249, !182, !182}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1224, file: !1225, line: 584, baseType: !1302, size: 64, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!182, !1011}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1224, file: !1225, line: 588, baseType: !1245, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1224, file: !1225, line: 591, baseType: !1245, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1224, file: !1225, line: 597, baseType: !1308, size: 64, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!120, !1011, !182, !206, !120, !120}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1224, file: !1225, line: 603, baseType: !1312, size: 64, offset: 768)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!376, !1011}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1224, file: !1225, line: 613, baseType: !1316, size: 64, offset: 832)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!120, !1011, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1321, line: 54, flags: DIFlagFwdDecl)
!1321 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1224, file: !1225, line: 625, baseType: !1323, size: 64, offset: 896)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!1319, !1011, !182}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1224, file: !1225, line: 633, baseType: !1327, size: 64, offset: 960)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!183, !1011, !182}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1012, file: !49, line: 697, baseType: !182, size: 64, offset: 1024)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1012, file: !49, line: 699, baseType: !578, size: 64, offset: 1088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1012, file: !49, line: 700, baseType: !206, size: 64, offset: 1152)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1012, file: !49, line: 711, baseType: !604, size: 64, offset: 1216)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1012, file: !49, line: 717, baseType: !1319, size: 64, offset: 1280)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1012, file: !49, line: 722, baseType: !1336, offset: 1344)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !49, line: 570, elements: !1045)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !930, file: !25, line: 1928, baseType: !182, size: 64, offset: 768)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !930, file: !25, line: 1929, baseType: !1339, size: 64, offset: 832)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!120, !215, !578}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !930, file: !25, line: 1930, baseType: !1343, size: 64, offset: 896)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!120, !578, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !25, line: 1061, baseType: !206)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !930, file: !25, line: 1931, baseType: !1339, size: 64, offset: 960)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !930, file: !25, line: 1932, baseType: !1349, size: 64, offset: 1024)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!120, !578, !422, !422, !120}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !930, file: !25, line: 1933, baseType: !1353, size: 64, offset: 1088)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!120, !120, !578, !120}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !930, file: !25, line: 1934, baseType: !1357, size: 64, offset: 1152)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!120, !578, !120, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !25, line: 1063, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !930, file: !25, line: 1935, baseType: !1049, size: 64, offset: 1216)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !930, file: !25, line: 1936, baseType: !1364, size: 64, offset: 1280)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!120, !120}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !930, file: !25, line: 1937, baseType: !1357, size: 64, offset: 1344)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !930, file: !25, line: 1938, baseType: !1369, size: 64, offset: 1408)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!536, !1372, !578, !941, !178, !18}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1321, line: 59, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !930, file: !25, line: 1939, baseType: !1375, size: 64, offset: 1472)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!536, !578, !941, !1372, !178, !18}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !930, file: !25, line: 1940, baseType: !1379, size: 64, offset: 1536)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !578}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !930, file: !25, line: 1941, baseType: !1383, size: 64, offset: 1600)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!120, !578, !120, !1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !930, file: !25, line: 1942, baseType: !1389, size: 64, offset: 1664)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!539, !578, !120, !422, !422}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !930, file: !25, line: 1944, baseType: !1393, size: 64, offset: 1728)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !1396, !578}
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1321, line: 66, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !930, file: !25, line: 1948, baseType: !1399, size: 64, offset: 1792)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!536, !578, !422, !578, !422, !178, !18}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !930, file: !25, line: 1950, baseType: !1403, size: 64, offset: 1856)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!422, !578, !422, !578, !422, !422, !18}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !930, file: !25, line: 1953, baseType: !1349, size: 64, offset: 1920)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !930, file: !25, line: 1954, baseType: !1408, size: 64, offset: 1984)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!120, !1411, !18}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !25, line: 1911, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !930, file: !25, line: 1955, baseType: !1414, size: 64, offset: 2048)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!120, !1411, !979, !18}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !579, file: !25, line: 1018, baseType: !292, size: 64, offset: 1472)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !579, file: !25, line: 1020, baseType: !206, size: 64, offset: 1536)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !579, file: !25, line: 1023, baseType: !206, size: 64, offset: 1600)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !579, file: !25, line: 1027, baseType: !1421, size: 64, offset: 1664)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !579, file: !25, line: 1029, baseType: !211, size: 64, offset: 1728)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !579, file: !25, line: 1030, baseType: !1424, size: 32, offset: 1792)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1425, line: 8, baseType: !286)
!1425 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !579, file: !25, line: 1031, baseType: !1424, size: 32, offset: 1824)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !565, file: !530, line: 182, baseType: !575, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !565, file: !530, line: 184, baseType: !1429, size: 64, offset: 448)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!120, !578, !470, !564, !1011}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !553, file: !530, line: 90, baseType: !1433, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !553, file: !530, line: 91, baseType: !1435, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !520, file: !465, line: 120, baseType: !1437, size: 64, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!1440, !488}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1442)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !93, line: 39, size: 384, elements: !1443)
!1443 = !{!1444, !1445, !1449, !1453, !1459, !1463}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1442, file: !93, line: 40, baseType: !92, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1442, file: !93, line: 41, baseType: !1446, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!809}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1442, file: !93, line: 42, baseType: !1450, size: 64, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!206}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1442, file: !93, line: 43, baseType: !1454, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!1140, !1457}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !93, line: 19, flags: DIFlagFwdDecl)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1442, file: !93, line: 44, baseType: !1460, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!1140}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1442, file: !93, line: 45, baseType: !1464, size: 64, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{null, !206}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !520, file: !465, line: 121, baseType: !1468, size: 64, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!1140, !488}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !520, file: !465, line: 122, baseType: !1472, size: 64, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{null, !488, !1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !464, file: !465, line: 70, baseType: !1478, size: 64, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !437, line: 190, size: 1152, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1575, !1576, !1577, !1578, !1579, !1582}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1479, file: !437, line: 191, baseType: !336, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1479, file: !437, line: 192, baseType: !336, size: 32, offset: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1479, file: !437, line: 202, baseType: !1478, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1479, file: !437, line: 203, baseType: !376, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1479, file: !437, line: 205, baseType: !742, size: 192, align: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1479, file: !437, line: 207, baseType: !1140, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1479, file: !437, line: 208, baseType: !18, size: 32, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1479, file: !437, line: 209, baseType: !1489, size: 256, offset: 512)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1479, file: !437, line: 209, size: 256, elements: !1490)
!1490 = !{!1491, !1503, !1507}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1489, file: !437, line: 210, baseType: !1492, size: 256)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !437, line: 153, size: 256, elements: !1493)
!1493 = !{!1494, !1495, !1499, !1502}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1492, file: !437, line: 154, baseType: !182, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1492, file: !437, line: 156, baseType: !1496, size: 64, offset: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !743, line: 12, size: 64, elements: !1497)
!1497 = !{!1498}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1496, file: !743, line: 13, baseType: !747, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1492, file: !437, line: 162, baseType: !1500, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !437, line: 162, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1492, file: !437, line: 167, baseType: !182, size: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1489, file: !437, line: 211, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !437, line: 170, size: 64, elements: !1505)
!1505 = !{!1506}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1504, file: !437, line: 171, baseType: !1478, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1489, file: !437, line: 212, baseType: !1508, size: 256)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !437, line: 174, size: 256, elements: !1509)
!1509 = !{!1510, !1570, !1573, !1574}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1508, file: !437, line: 175, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !437, line: 271, size: 768, elements: !1514)
!1514 = !{!1515, !1535, !1539, !1543, !1547, !1551, !1555, !1559, !1560, !1561, !1562, !1566}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1513, file: !437, line: 276, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!120, !1519}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !437, line: 251, size: 1216, elements: !1521)
!1521 = !{!1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1520, file: !437, line: 253, baseType: !1478, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1520, file: !437, line: 254, baseType: !578, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1520, file: !437, line: 255, baseType: !1396, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1520, file: !437, line: 256, baseType: !206, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1520, file: !437, line: 259, baseType: !613, size: 256, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1520, file: !437, line: 260, baseType: !613, size: 256, offset: 512)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1520, file: !437, line: 261, baseType: !120, size: 32, offset: 768)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1520, file: !437, line: 262, baseType: !197, size: 128, offset: 832)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1520, file: !437, line: 263, baseType: !401, size: 64, offset: 960)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1520, file: !437, line: 265, baseType: !178, size: 64, offset: 1024)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1520, file: !437, line: 266, baseType: !809, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1520, file: !437, line: 267, baseType: !809, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1520, file: !437, line: 268, baseType: !1222, size: 64, offset: 1152)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1513, file: !437, line: 277, baseType: !1536, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !1519}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1513, file: !437, line: 290, baseType: !1540, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!120, !1396, !206}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1513, file: !437, line: 292, baseType: !1544, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!206, !1396, !941}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1513, file: !437, line: 293, baseType: !1548, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!206, !1396, !206, !941}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1513, file: !437, line: 294, baseType: !1552, size: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !1396, !206}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1513, file: !437, line: 296, baseType: !1556, size: 64, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!536, !1519, !401, !178, !422}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1513, file: !437, line: 306, baseType: !178, size: 64, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1513, file: !437, line: 313, baseType: !809, size: 8, offset: 512)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1513, file: !437, line: 314, baseType: !1556, size: 64, offset: 576)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1513, file: !437, line: 317, baseType: !1563, size: 64, offset: 640)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!998, !1519, !1000}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1513, file: !437, line: 320, baseType: !1567, size: 64, offset: 704)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!120, !1519, !1011}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1508, file: !437, line: 176, baseType: !1571, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !437, line: 35, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1508, file: !437, line: 177, baseType: !422, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1508, file: !437, line: 178, baseType: !1478, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1479, file: !437, line: 215, baseType: !206, size: 64, offset: 768)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1479, file: !437, line: 221, baseType: !292, size: 64, offset: 832)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1479, file: !437, line: 223, baseType: !220, size: 16, offset: 896)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1479, file: !437, line: 224, baseType: !219, size: 16, offset: 912)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1479, file: !437, line: 225, baseType: !1580, size: 64, offset: 960)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !437, line: 36, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1479, file: !437, line: 227, baseType: !591, size: 128, align: 64, offset: 1024)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !464, file: !465, line: 71, baseType: !1584, size: 32, offset: 448)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1585, line: 19, size: 32, elements: !1586)
!1585 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1584, file: !1585, line: 20, baseType: !656, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !464, file: !465, line: 73, baseType: !18, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !464, file: !465, line: 74, baseType: !18, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !464, file: !465, line: 75, baseType: !18, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !464, file: !465, line: 76, baseType: !18, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !464, file: !465, line: 77, baseType: !18, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !461, file: !17, line: 47, baseType: !451, size: 64, offset: 512)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !461, file: !17, line: 48, baseType: !470, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !461, file: !17, line: 49, baseType: !1596, size: 64, offset: 640)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !17, line: 49, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !461, file: !17, line: 50, baseType: !1599, size: 64, offset: 704)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1601, line: 26, size: 256, elements: !1602)
!1601 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1600, file: !1601, line: 27, baseType: !18, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1600, file: !1601, line: 28, baseType: !1605, size: 192, offset: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1606, line: 43, size: 192, elements: !1607)
!1606 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1607 = !{!1608, !1609}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1605, file: !1606, line: 44, baseType: !618, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1605, file: !1606, line: 45, baseType: !197, size: 128, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !452, file: !17, line: 418, baseType: !1611, size: 64, offset: 1408)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !17, line: 53, size: 448, elements: !1613)
!1613 = !{!1614, !1615, !1620, !1624, !1628, !1632}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1612, file: !17, line: 54, baseType: !541, size: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1612, file: !17, line: 55, baseType: !1616, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!536, !1611, !1619, !401}
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1612, file: !17, line: 57, baseType: !1621, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!536, !1611, !1619, !376, !178}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1612, file: !17, line: 59, baseType: !1625, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !451, !376}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1612, file: !17, line: 60, baseType: !1629, size: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!120, !451}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1612, file: !17, line: 61, baseType: !1633, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !451}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !452, file: !17, line: 419, baseType: !376, size: 64, offset: 1472)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !452, file: !17, line: 420, baseType: !376, size: 64, offset: 1536)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !452, file: !17, line: 421, baseType: !470, size: 64, offset: 1600)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !452, file: !17, line: 424, baseType: !1640, size: 64, offset: 1664)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1642)
!1642 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !17, line: 424, flags: DIFlagFwdDecl)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !452, file: !17, line: 425, baseType: !1644, size: 64, offset: 1728)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !452, file: !17, line: 426, baseType: !18, size: 32, offset: 1792)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !452, file: !17, line: 435, baseType: !613, size: 256, offset: 1856)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !452, file: !17, line: 437, baseType: !1649, size: 64, offset: 2112)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1651, line: 69, size: 320, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1652 = !{!1653, !1654, !1655, !1672, !1674, !1678, !1679}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1650, file: !1651, line: 70, baseType: !376, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1650, file: !1651, line: 71, baseType: !451, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1650, file: !1651, line: 72, baseType: !1656, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1651, line: 47, size: 256, elements: !1659)
!1659 = !{!1660, !1661, !1667, !1671}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1658, file: !1651, line: 49, baseType: !18, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1658, file: !1651, line: 51, baseType: !1662, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!120, !376, !1665}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1658, file: !1651, line: 53, baseType: !1668, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!120, !401, !1665}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1658, file: !1651, line: 55, baseType: !1464, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1650, file: !1651, line: 73, baseType: !1673, size: 16, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1650, file: !1651, line: 74, baseType: !1675, size: 8, offset: 208)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !287, line: 16, baseType: !1676)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !289, line: 20, baseType: !1677)
!1677 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1650, file: !1651, line: 75, baseType: !344, size: 8, offset: 216)
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1651, line: 76, baseType: !1680, size: 64, offset: 256)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1650, file: !1651, line: 76, size: 64, elements: !1681)
!1681 = !{!1682, !1683, !1690}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1680, file: !1651, line: 77, baseType: !206, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1680, file: !1651, line: 78, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1651, line: 86, size: 128, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1686, file: !1651, line: 87, baseType: !18, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1686, file: !1651, line: 88, baseType: !401, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1680, file: !1651, line: 79, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1693)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1651, line: 92, size: 256, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1699, !1700}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1693, file: !1651, line: 94, baseType: !18, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1693, file: !1651, line: 95, baseType: !18, size: 32, offset: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1693, file: !1651, line: 96, baseType: !1698, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1693, file: !1651, line: 97, baseType: !1656, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1693, file: !1651, line: 98, baseType: !206, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !452, file: !17, line: 438, baseType: !18, size: 32, offset: 2176)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !452, file: !17, line: 441, baseType: !18, size: 32, offset: 2208)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !452, file: !17, line: 442, baseType: !1640, size: 64, offset: 2240)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !452, file: !17, line: 443, baseType: !1644, size: 64, offset: 2304)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !452, file: !17, line: 444, baseType: !809, size: 8, offset: 2368)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !452, file: !17, line: 451, baseType: !809, size: 8, offset: 2376)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !452, file: !17, line: 454, baseType: !18, size: 32, offset: 2400)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !452, file: !17, line: 455, baseType: !1709, size: 64, offset: 2432)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1711, line: 23, size: 96, elements: !1712)
!1711 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1712 = !{!1713, !1714, !1715}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1710, file: !1711, line: 24, baseType: !120, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1710, file: !1711, line: 24, baseType: !120, size: 32, offset: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1710, file: !1711, line: 24, baseType: !120, size: 32, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !452, file: !17, line: 458, baseType: !1717, size: 64, offset: 2496)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!120}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !452, file: !17, line: 460, baseType: !1721, size: 4032, align: 512, offset: 2560)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1722, size: 4032, elements: !1738)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !17, line: 362, size: 576, elements: !1723)
!1723 = !{!1724, !1725, !1726}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1722, file: !17, line: 363, baseType: !206, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1722, file: !17, line: 364, baseType: !18, size: 32, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1722, file: !17, line: 367, baseType: !1727, size: 448, offset: 128)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !17, line: 319, size: 448, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1727, file: !17, line: 320, baseType: !451, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1727, file: !17, line: 321, baseType: !1731, size: 384, offset: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1732, line: 40, size: 384, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1731, file: !1732, line: 41, baseType: !1735, size: 384, align: 64)
!1735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 384, align: 64, elements: !1736)
!1736 = !{!1737}
!1737 = !DISubrange(count: 2)
!1738 = !{!1739}
!1739 = !DISubrange(count: 7)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !452, file: !17, line: 463, baseType: !1741, size: 192, offset: 6592)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1742, line: 8, size: 192, elements: !1743)
!1742 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1743 = !{!1744, !1745, !1747}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1741, file: !1742, line: 10, baseType: !18, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1741, file: !1742, line: 11, baseType: !1746, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1741, file: !1742, line: 12, baseType: !1748, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1750, line: 59, size: 48, elements: !1751)
!1750 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1751 = !{!1752, !1753, !1754, !1755, !1756, !1757}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1749, file: !1750, line: 60, baseType: !1157, size: 16)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1749, file: !1750, line: 61, baseType: !1157, size: 16, offset: 16)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1749, file: !1750, line: 63, baseType: !18, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1749, file: !1750, line: 64, baseType: !18, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1749, file: !1750, line: 65, baseType: !18, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1749, file: !1750, line: 66, baseType: !18, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !452, file: !17, line: 465, baseType: !182, size: 64, offset: 6784)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !452, file: !17, line: 469, baseType: !18, size: 32, offset: 6848)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !452, file: !17, line: 470, baseType: !197, size: 128, offset: 6912)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !452, file: !17, line: 471, baseType: !1762, size: 64, offset: 7040)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1764, line: 33, size: 96, elements: !1765)
!1764 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1765 = !{!1766, !1767, !1768, !1769}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1763, file: !1764, line: 37, baseType: !120, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1763, file: !1764, line: 43, baseType: !120, size: 32, offset: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1763, file: !1764, line: 45, baseType: !220, size: 16, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1763, file: !1764, line: 47, baseType: !220, size: 16, offset: 80)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !452, file: !17, line: 476, baseType: !1771, size: 64, offset: 7104)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !17, line: 378, size: 256, elements: !1773)
!1773 = !{!1774, !1790, !1791, !1792}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1772, file: !17, line: 379, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1777, line: 204, baseType: !1778)
!1777 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1777, line: 197, size: 192, elements: !1779)
!1779 = !{!1780, !1782, !1783, !1784, !1786, !1788}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1778, file: !1777, line: 198, baseType: !1781, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1777, line: 21, baseType: !288)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1778, file: !1777, line: 199, baseType: !298, size: 8, offset: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1778, file: !1777, line: 200, baseType: !298, size: 8, offset: 40)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1778, file: !1777, line: 201, baseType: !1785, size: 16, offset: 48)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1777, line: 17, baseType: !352)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1778, file: !1777, line: 202, baseType: !1787, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1777, line: 16, baseType: !293)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1778, file: !1777, line: 203, baseType: !1789, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1777, line: 22, baseType: !293)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1772, file: !17, line: 380, baseType: !18, size: 32, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1772, file: !17, line: 381, baseType: !401, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1772, file: !17, line: 382, baseType: !401, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !452, file: !17, line: 477, baseType: !1772, size: 256, offset: 7168)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !452, file: !17, line: 480, baseType: !1795, size: 64, offset: 7424)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !17, line: 480, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !452, file: !17, line: 483, baseType: !1798, size: 64, offset: 7488)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !17, line: 483, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !452, file: !17, line: 488, baseType: !401, size: 64, offset: 7552)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !452, file: !17, line: 492, baseType: !206, size: 64, offset: 7616)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !452, file: !17, line: 493, baseType: !18, size: 32, offset: 7680)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !452, file: !17, line: 495, baseType: !206, size: 64, offset: 7744)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !452, file: !17, line: 496, baseType: !18, size: 32, offset: 7808)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !452, file: !17, line: 499, baseType: !18, size: 32, offset: 7840)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !452, file: !17, line: 500, baseType: !1807, size: 64, offset: 7872)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1809, line: 45, baseType: !1810)
!1809 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !452, file: !17, line: 503, baseType: !18, size: 32, offset: 7936)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !452, file: !17, line: 504, baseType: !1813, size: 64, offset: 8000)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1816, line: 96, size: 192, elements: !1817)
!1816 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1817 = !{!1818, !1819, !1873, !1876}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1815, file: !1816, line: 97, baseType: !18, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1815, file: !1816, line: 98, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1816, line: 24, size: 3072, elements: !1822)
!1822 = !{!1823, !1825, !1826, !1827, !1828, !1842, !1843, !1844, !1845, !1857, !1858, !1859, !1870, !1871, !1872}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1821, file: !1816, line: 26, baseType: !1824, size: 128)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 128, elements: !1736)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1821, file: !1816, line: 27, baseType: !1824, size: 128, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1821, file: !1816, line: 28, baseType: !120, size: 32, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1821, file: !1816, line: 31, baseType: !316, size: 32, align: 512, offset: 512)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1821, file: !1816, line: 32, baseType: !1829, size: 960, offset: 576)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1830, line: 206, size: 960, elements: !1831)
!1830 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1831 = !{!1832, !1833, !1836, !1838, !1839, !1841}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1829, file: !1830, line: 207, baseType: !594, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1829, file: !1830, line: 208, baseType: !1834, size: 256, offset: 64)
!1834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1835, size: 256, elements: !674)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1829, file: !1830, line: 209, baseType: !1837, size: 256, offset: 320)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 256, elements: !674)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1829, file: !1830, line: 213, baseType: !539, size: 64, offset: 576)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1829, file: !1830, line: 215, baseType: !1840, size: 256, offset: 640)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 256, elements: !674)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1829, file: !1830, line: 216, baseType: !344, size: 8, offset: 896)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1821, file: !1816, line: 33, baseType: !182, size: 64, offset: 1536)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1821, file: !1816, line: 34, baseType: !182, size: 64, offset: 1600)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1821, file: !1816, line: 35, baseType: !809, size: 8, offset: 1664)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1821, file: !1816, line: 36, baseType: !1846, size: 320, offset: 1728)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1847, line: 11, size: 320, elements: !1848)
!1847 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1848 = !{!1849, !1850, !1851, !1856}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1846, file: !1847, line: 16, baseType: !669, size: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1846, file: !1847, line: 17, baseType: !182, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1846, file: !1847, line: 18, baseType: !1852, size: 64, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{null, !1855}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1846, file: !1847, line: 19, baseType: !286, size: 32, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1821, file: !1816, line: 37, baseType: !1179, size: 256, offset: 2048)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1821, file: !1816, line: 38, baseType: !591, size: 128, align: 64, offset: 2304)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1821, file: !1816, line: 39, baseType: !1860, size: 64, offset: 2432)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1816, line: 49, size: 768, elements: !1862)
!1862 = !{!1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1861, file: !1816, line: 50, baseType: !316, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1861, file: !1816, line: 51, baseType: !1837, size: 256, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1861, file: !1816, line: 53, baseType: !1837, size: 256, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1861, file: !1816, line: 54, baseType: !182, size: 64, offset: 576)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1861, file: !1816, line: 55, baseType: !1860, size: 64, offset: 640)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1861, file: !1816, line: 56, baseType: !120, size: 32, offset: 704)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1861, file: !1816, line: 57, baseType: !120, size: 32, offset: 736)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1821, file: !1816, line: 40, baseType: !182, size: 64, offset: 2496)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1821, file: !1816, line: 42, baseType: !120, size: 32, offset: 2560)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1821, file: !1816, line: 43, baseType: !1814, size: 64, offset: 2624)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1815, file: !1816, line: 99, baseType: !1874, offset: 128)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1875, line: 211, elements: !1045)
!1875 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1815, file: !1816, line: 100, baseType: !1877, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1816, line: 63, size: 3008, elements: !1879)
!1879 = !{!1880, !1881, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1911}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1878, file: !1816, line: 64, baseType: !1860, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1878, file: !1816, line: 65, baseType: !1882, size: 192, offset: 64)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1860, size: 192, elements: !505)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1878, file: !1816, line: 67, baseType: !120, size: 32, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1878, file: !1816, line: 68, baseType: !613, size: 256, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1878, file: !1816, line: 69, baseType: !316, size: 32, offset: 576)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1878, file: !1816, line: 70, baseType: !613, size: 256, offset: 640)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1878, file: !1816, line: 71, baseType: !182, size: 64, offset: 896)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1878, file: !1816, line: 72, baseType: !182, size: 64, offset: 960)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1878, file: !1816, line: 73, baseType: !182, size: 64, offset: 1024)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1878, file: !1816, line: 74, baseType: !182, size: 64, offset: 1088)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1878, file: !1816, line: 75, baseType: !182, size: 64, offset: 1152)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1878, file: !1816, line: 76, baseType: !182, size: 64, offset: 1216)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1878, file: !1816, line: 77, baseType: !182, size: 64, offset: 1280)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1878, file: !1816, line: 78, baseType: !182, size: 64, offset: 1344)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1878, file: !1816, line: 79, baseType: !809, size: 8, offset: 1408)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1878, file: !1816, line: 80, baseType: !182, size: 64, offset: 1472)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1878, file: !1816, line: 81, baseType: !613, size: 256, offset: 1536)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1878, file: !1816, line: 82, baseType: !1600, size: 256, offset: 1792)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1878, file: !1816, line: 84, baseType: !336, size: 32, offset: 2048)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1878, file: !1816, line: 87, baseType: !182, size: 64, offset: 2112)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1878, file: !1816, line: 88, baseType: !182, size: 64, offset: 2176)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1878, file: !1816, line: 89, baseType: !1903, size: 704, offset: 2240)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1180, line: 111, size: 704, elements: !1904)
!1904 = !{!1905, !1906, !1907, !1910}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1903, file: !1180, line: 112, baseType: !1179, size: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1903, file: !1180, line: 113, baseType: !1846, size: 320, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1903, file: !1180, line: 116, baseType: !1908, size: 64, offset: 576)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1180, line: 18, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1903, file: !1180, line: 117, baseType: !120, size: 32, offset: 640)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1878, file: !1816, line: 90, baseType: !1814, size: 64, offset: 2944)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !452, file: !17, line: 515, baseType: !1913, size: 64, offset: 8064)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1915, line: 117, size: 128, elements: !1916)
!1915 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1916 = !{!1917, !1918, !1919}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1914, file: !1915, line: 118, baseType: !735, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1914, file: !1915, line: 119, baseType: !735, size: 32, offset: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1914, file: !1915, line: 120, baseType: !539, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !452, file: !17, line: 516, baseType: !18, size: 32, offset: 8128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !452, file: !17, line: 519, baseType: !18, size: 32, offset: 8160)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !452, file: !17, line: 520, baseType: !1923, size: 64, offset: 8192)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !452, file: !17, line: 523, baseType: !1925, size: 64, offset: 8256)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !17, line: 523, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !452, file: !17, line: 524, baseType: !18, size: 32, offset: 8320)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !452, file: !17, line: 525, baseType: !1930, size: 64, offset: 8384)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !17, line: 525, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !452, file: !17, line: 526, baseType: !18, size: 32, offset: 8448)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !452, file: !17, line: 533, baseType: !206, size: 64, offset: 8512)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !452, file: !17, line: 534, baseType: !18, size: 32, offset: 8576)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !452, file: !17, line: 535, baseType: !1937, size: 64, offset: 8640)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !452, file: !17, line: 536, baseType: !18, size: 32, offset: 8704)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !452, file: !17, line: 539, baseType: !120, size: 32, offset: 8736)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !452, file: !17, line: 540, baseType: !1941, size: 64, offset: 8768)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1943, line: 32, size: 64, elements: !1944)
!1943 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1942, file: !1943, line: 33, baseType: !735, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1942, file: !1943, line: 34, baseType: !735, size: 32, offset: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !452, file: !17, line: 563, baseType: !197, size: 128, offset: 8832)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !452, file: !17, line: 565, baseType: !197, size: 128, offset: 8960)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !452, file: !17, line: 568, baseType: !1950, size: 64, offset: 9088)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !452, file: !17, line: 570, baseType: !336, size: 32, offset: 9152)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !25, line: 2382, baseType: !426, size: 64, offset: 448)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !427, file: !25, line: 2383, baseType: !665, size: 64, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !427, file: !25, line: 2385, baseType: !1957, offset: 576)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1875, line: 206, elements: !1045)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !427, file: !25, line: 2386, baseType: !1957, offset: 576)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !427, file: !25, line: 2387, baseType: !1957, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !427, file: !25, line: 2388, baseType: !1961, offset: 576)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1957, elements: !505)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !427, file: !25, line: 2390, baseType: !1957, offset: 576)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !427, file: !25, line: 2391, baseType: !1957, offset: 576)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !427, file: !25, line: 2392, baseType: !1957, offset: 576)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !427, file: !25, line: 2393, baseType: !1957, offset: 576)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !413, file: !25, line: 1197, baseType: !1967, size: 64, offset: 384)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !25, line: 2057, size: 1664, elements: !1970)
!1970 = !{!1971, !1975, !1979, !1980, !1984, !1990, !1994, !1995, !1996, !2000, !2004, !2008, !2009, !2010, !2016, !2020, !2021, !2025, !2026, !2027, !2028, !2032, !2036, !2083, !2098, !2099}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1969, file: !25, line: 2058, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!215, !412}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1969, file: !25, line: 2059, baseType: !1976, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !215}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1969, file: !25, line: 2060, baseType: !1976, size: 64, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1969, file: !25, line: 2062, baseType: !1981, size: 64, offset: 192)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !215, !120}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1969, file: !25, line: 2063, baseType: !1985, size: 64, offset: 256)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!120, !215, !1988}
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !25, line: 309, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1969, file: !25, line: 2064, baseType: !1991, size: 64, offset: 320)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!120, !215}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1969, file: !25, line: 2065, baseType: !1976, size: 64, offset: 384)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1969, file: !25, line: 2066, baseType: !447, size: 64, offset: 448)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1969, file: !25, line: 2067, baseType: !1997, size: 64, offset: 512)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!120, !412, !120}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1969, file: !25, line: 2068, baseType: !2001, size: 64, offset: 576)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!120, !412, !24}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1969, file: !25, line: 2069, baseType: !2005, size: 64, offset: 640)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!120, !412}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1969, file: !25, line: 2070, baseType: !2001, size: 64, offset: 704)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1969, file: !25, line: 2071, baseType: !2005, size: 64, offset: 768)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1969, file: !25, line: 2072, baseType: !2011, size: 64, offset: 832)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!120, !252, !2014}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !25, line: 62, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1969, file: !25, line: 2073, baseType: !2017, size: 64, offset: 896)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!120, !412, !1746, !401}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1969, file: !25, line: 2074, baseType: !447, size: 64, offset: 960)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1969, file: !25, line: 2076, baseType: !2022, size: 64, offset: 1024)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!120, !1396, !252}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1969, file: !25, line: 2077, baseType: !2022, size: 64, offset: 1088)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1969, file: !25, line: 2078, baseType: !2022, size: 64, offset: 1152)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1969, file: !25, line: 2079, baseType: !2022, size: 64, offset: 1216)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1969, file: !25, line: 2081, baseType: !2029, size: 64, offset: 1280)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!536, !412, !120, !401, !178, !422}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1969, file: !25, line: 2082, baseType: !2033, size: 64, offset: 1344)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!536, !412, !120, !376, !178, !422}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1969, file: !25, line: 2083, baseType: !2037, size: 64, offset: 1408)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!2040, !215}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !30, line: 296, size: 1664, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2068, !2069, !2070}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2042, file: !30, line: 297, baseType: !669, size: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2042, file: !30, line: 298, baseType: !197, size: 128, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2042, file: !30, line: 299, baseType: !197, size: 128, offset: 256)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2042, file: !30, line: 300, baseType: !197, size: 128, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2042, file: !30, line: 301, baseType: !613, size: 256, offset: 512)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2042, file: !30, line: 302, baseType: !316, size: 32, offset: 768)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2042, file: !30, line: 303, baseType: !336, size: 32, offset: 800)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2042, file: !30, line: 304, baseType: !412, size: 64, offset: 832)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2042, file: !30, line: 305, baseType: !2053, size: 64, offset: 896)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !30, line: 68, size: 64, elements: !2054)
!2054 = !{!2055, !2067}
!2055 = !DIDerivedType(tag: DW_TAG_member, scope: !2053, file: !30, line: 69, baseType: !2056, size: 32)
!2056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2053, file: !30, line: 69, size: 32, elements: !2057)
!2057 = !{!2058, !2059, !2060}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2056, file: !30, line: 70, baseType: !223, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2056, file: !30, line: 71, baseType: !232, size: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2056, file: !30, line: 72, baseType: !2061, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2062, line: 24, baseType: !2063)
!2062 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2062, line: 22, size: 32, elements: !2064)
!2064 = !{!2065}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2063, file: !2062, line: 23, baseType: !2066, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2062, line: 20, baseType: !229)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2053, file: !30, line: 74, baseType: !29, size: 32, offset: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2042, file: !30, line: 306, baseType: !422, size: 64, offset: 960)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2042, file: !30, line: 307, baseType: !182, size: 64, offset: 1024)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2042, file: !30, line: 308, baseType: !2071, size: 576, offset: 1088)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !30, line: 205, size: 576, elements: !2072)
!2072 = !{!2073, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2071, file: !30, line: 206, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !30, line: 66, baseType: !424)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2071, file: !30, line: 207, baseType: !2074, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2071, file: !30, line: 208, baseType: !2074, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2071, file: !30, line: 209, baseType: !2074, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2071, file: !30, line: 210, baseType: !2074, size: 64, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2071, file: !30, line: 211, baseType: !2074, size: 64, offset: 320)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2071, file: !30, line: 212, baseType: !2074, size: 64, offset: 384)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2071, file: !30, line: 213, baseType: !766, size: 64, offset: 448)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2071, file: !30, line: 214, baseType: !766, size: 64, offset: 512)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1969, file: !25, line: 2085, baseType: !2084, size: 64, offset: 1472)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!539, !412, !2087}
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2089, line: 15, size: 256, elements: !2090)
!2089 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2090 = !{!2091, !2092, !2093, !2094, !2095}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2088, file: !2089, line: 16, baseType: !176, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2088, file: !2089, line: 19, baseType: !120, size: 32, offset: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2088, file: !2089, line: 26, baseType: !182, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2088, file: !2089, line: 33, baseType: !182, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2088, file: !2089, line: 36, baseType: !2096, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !49, line: 33, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1969, file: !25, line: 2087, baseType: !2084, size: 64, offset: 1536)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1969, file: !25, line: 2089, baseType: !447, size: 64, offset: 1600)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !413, file: !25, line: 1198, baseType: !2101, size: 64, offset: 448)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !30, line: 324, size: 704, elements: !2104)
!2104 = !{!2105, !2109, !2113, !2117, !2118, !2119, !2120, !2121, !2126, !2131, !2135}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2103, file: !30, line: 325, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!120, !2041}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2103, file: !30, line: 326, baseType: !2110, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!2041, !412, !120}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2103, file: !30, line: 327, baseType: !2114, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{null, !2041}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2103, file: !30, line: 328, baseType: !2106, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2103, file: !30, line: 329, baseType: !2106, size: 64, offset: 256)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2103, file: !30, line: 330, baseType: !2106, size: 64, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2103, file: !30, line: 331, baseType: !1997, size: 64, offset: 384)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2103, file: !30, line: 334, baseType: !2122, size: 64, offset: 448)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!2125, !215}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2103, file: !30, line: 335, baseType: !2127, size: 64, offset: 512)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!120, !215, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2103, file: !30, line: 337, baseType: !2132, size: 64, offset: 576)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!120, !215, !2125}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2103, file: !30, line: 339, baseType: !2136, size: 64, offset: 640)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!120, !412, !2139}
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !413, file: !25, line: 1199, baseType: !2141, size: 64, offset: 512)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2143)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !30, line: 430, size: 704, elements: !2144)
!2144 = !{!2145, !2151, !2152, !2156, !2157, !2158, !2173, !2196, !2200, !2201, !2224}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2143, file: !30, line: 431, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!120, !412, !120, !120, !2149}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2143, file: !30, line: 432, baseType: !1997, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2143, file: !30, line: 433, baseType: !2153, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!120, !412, !18}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2143, file: !30, line: 434, baseType: !2153, size: 64, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2143, file: !30, line: 435, baseType: !1997, size: 64, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2143, file: !30, line: 436, baseType: !2159, size: 64, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!120, !412, !120, !2162}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !30, line: 417, size: 256, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2163, file: !30, line: 418, baseType: !120, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2163, file: !30, line: 419, baseType: !18, size: 32, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2163, file: !30, line: 420, baseType: !18, size: 32, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2163, file: !30, line: 422, baseType: !18, size: 32, offset: 96)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2163, file: !30, line: 423, baseType: !18, size: 32, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2163, file: !30, line: 424, baseType: !18, size: 32, offset: 160)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2163, file: !30, line: 425, baseType: !18, size: 32, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2163, file: !30, line: 426, baseType: !18, size: 32, offset: 224)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2143, file: !30, line: 437, baseType: !2174, size: 64, offset: 384)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!120, !412, !2053, !2177}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !30, line: 345, size: 960, elements: !2179)
!2179 = !{!2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2178, file: !30, line: 346, baseType: !120, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2178, file: !30, line: 347, baseType: !292, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2178, file: !30, line: 348, baseType: !292, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2178, file: !30, line: 349, baseType: !292, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2178, file: !30, line: 350, baseType: !292, size: 64, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2178, file: !30, line: 351, baseType: !292, size: 64, offset: 320)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2178, file: !30, line: 352, baseType: !292, size: 64, offset: 384)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2178, file: !30, line: 353, baseType: !610, size: 64, offset: 448)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2178, file: !30, line: 355, baseType: !610, size: 64, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2178, file: !30, line: 356, baseType: !120, size: 32, offset: 576)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2178, file: !30, line: 357, baseType: !120, size: 32, offset: 608)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2178, file: !30, line: 358, baseType: !292, size: 64, offset: 640)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2178, file: !30, line: 359, baseType: !292, size: 64, offset: 704)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2178, file: !30, line: 360, baseType: !292, size: 64, offset: 768)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2178, file: !30, line: 361, baseType: !610, size: 64, offset: 832)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2178, file: !30, line: 362, baseType: !120, size: 32, offset: 896)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2143, file: !30, line: 438, baseType: !2197, size: 64, offset: 448)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!120, !412, !2139, !2177}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2143, file: !30, line: 440, baseType: !2174, size: 64, offset: 512)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2143, file: !30, line: 441, baseType: !2202, size: 64, offset: 576)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!120, !412, !2205}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !30, line: 411, size: 1408, elements: !2207)
!2207 = !{!2208, !2209}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2206, file: !30, line: 412, baseType: !18, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2206, file: !30, line: 413, baseType: !2210, size: 1344, offset: 64)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2211, size: 1344, elements: !505)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !30, line: 397, size: 448, elements: !2212)
!2212 = !{!2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2223}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2211, file: !30, line: 398, baseType: !18, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2211, file: !30, line: 399, baseType: !18, size: 32, offset: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2211, file: !30, line: 401, baseType: !18, size: 32, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2211, file: !30, line: 402, baseType: !18, size: 32, offset: 96)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2211, file: !30, line: 403, baseType: !18, size: 32, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2211, file: !30, line: 404, baseType: !18, size: 32, offset: 160)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2211, file: !30, line: 405, baseType: !18, size: 32, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2211, file: !30, line: 406, baseType: !294, size: 64, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2211, file: !30, line: 407, baseType: !2222, size: 64, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !177, line: 132, baseType: !292)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2211, file: !30, line: 408, baseType: !2222, size: 64, offset: 384)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2143, file: !30, line: 442, baseType: !2153, size: 64, offset: 640)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !413, file: !25, line: 1200, baseType: !2226, size: 64, offset: 576)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2228)
!2228 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !25, line: 54, flags: DIFlagFwdDecl)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !413, file: !25, line: 1201, baseType: !182, size: 64, offset: 640)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !413, file: !25, line: 1202, baseType: !182, size: 64, offset: 704)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !413, file: !25, line: 1203, baseType: !182, size: 64, offset: 768)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !413, file: !25, line: 1204, baseType: !252, size: 64, offset: 832)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !413, file: !25, line: 1205, baseType: !750, size: 320, offset: 896)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !413, file: !25, line: 1206, baseType: !120, size: 32, offset: 1216)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !413, file: !25, line: 1207, baseType: !336, size: 32, offset: 1248)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !413, file: !25, line: 1209, baseType: !206, size: 64, offset: 1280)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !413, file: !25, line: 1211, baseType: !2238, size: 64, offset: 1344)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2241)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !25, line: 1211, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !413, file: !25, line: 1223, baseType: !2243, size: 64, offset: 1408)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !269, line: 34, size: 64, elements: !2244)
!2244 = !{!2245}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2243, file: !269, line: 35, baseType: !272, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !413, file: !25, line: 1224, baseType: !197, size: 128, offset: 1472)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !413, file: !25, line: 1225, baseType: !2248, size: 64, offset: 1600)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !25, line: 1225, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !413, file: !25, line: 1226, baseType: !2251, size: 64, offset: 1664)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !25, line: 1226, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !413, file: !25, line: 1227, baseType: !2254, size: 64, offset: 1728)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !25, line: 50, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !413, file: !25, line: 1228, baseType: !2257, size: 64, offset: 1792)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !25, line: 1228, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !413, file: !25, line: 1229, baseType: !669, size: 128, offset: 1856)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !413, file: !25, line: 1230, baseType: !18, size: 32, offset: 1984)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !413, file: !25, line: 1231, baseType: !2262, size: 2496, offset: 2048)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !30, line: 521, size: 2496, elements: !2263)
!2263 = !{!2264, !2265, !2266, !2268, !2300}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2262, file: !30, line: 522, baseType: !18, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2262, file: !30, line: 523, baseType: !750, size: 320, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2262, file: !30, line: 524, baseType: !2267, size: 192, offset: 384)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 192, elements: !505)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2262, file: !30, line: 525, baseType: !2269, size: 1728, offset: 576)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2270, size: 1728, elements: !505)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !30, line: 222, size: 576, elements: !2271)
!2271 = !{!2272, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2270, file: !30, line: 223, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !30, line: 445, size: 256, elements: !2275)
!2275 = !{!2276, !2277, !2290, !2291}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2274, file: !30, line: 446, baseType: !120, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2274, file: !30, line: 447, baseType: !2278, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2280)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !30, line: 312, size: 512, elements: !2281)
!2281 = !{!2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2280, file: !30, line: 313, baseType: !1997, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2280, file: !30, line: 314, baseType: !1997, size: 64, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2280, file: !30, line: 315, baseType: !1997, size: 64, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2280, file: !30, line: 316, baseType: !1997, size: 64, offset: 192)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2280, file: !30, line: 317, baseType: !2106, size: 64, offset: 256)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2280, file: !30, line: 318, baseType: !2106, size: 64, offset: 320)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2280, file: !30, line: 319, baseType: !2106, size: 64, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2280, file: !30, line: 320, baseType: !2136, size: 64, offset: 448)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2274, file: !30, line: 448, baseType: !451, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2274, file: !30, line: 449, baseType: !2273, size: 64, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2270, file: !30, line: 224, baseType: !120, size: 32, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2270, file: !30, line: 226, baseType: !197, size: 128, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2270, file: !30, line: 227, baseType: !182, size: 64, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2270, file: !30, line: 228, baseType: !18, size: 32, offset: 320)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2270, file: !30, line: 229, baseType: !18, size: 32, offset: 352)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2270, file: !30, line: 230, baseType: !2074, size: 64, offset: 384)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2270, file: !30, line: 231, baseType: !2074, size: 64, offset: 448)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2270, file: !30, line: 232, baseType: !206, size: 64, offset: 512)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2262, file: !30, line: 526, baseType: !2301, size: 192, offset: 2304)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2278, size: 192, elements: !505)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !413, file: !25, line: 1233, baseType: !2303, size: 2368, offset: 4544)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !25, line: 1184, size: 2368, elements: !2304)
!2304 = !{!2305, !2306, !2307}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2303, file: !25, line: 1185, baseType: !220, size: 16)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2303, file: !25, line: 1186, baseType: !220, size: 16, offset: 16)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2303, file: !25, line: 1187, baseType: !2308, size: 2304, offset: 64)
!2308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2309, size: 2304, elements: !505)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2310, line: 12, size: 768, elements: !2311)
!2310 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2311 = !{!2312, !2320, !2321, !3514, !3515}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2309, file: !2310, line: 13, baseType: !2313, size: 384)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2314, line: 17, size: 384, elements: !2315)
!2314 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2315 = !{!2316, !2317, !2318, !2319}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2313, file: !2314, line: 18, baseType: !120, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2313, file: !2314, line: 19, baseType: !120, size: 32, offset: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2313, file: !2314, line: 20, baseType: !678, size: 192, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2313, file: !2314, line: 22, baseType: !591, size: 128, align: 64, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2309, file: !2310, line: 14, baseType: !1698, size: 64, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2309, file: !2310, line: 15, baseType: !2322, size: 64, offset: 448)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2323, line: 16, size: 64, elements: !2324)
!2323 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2324 = !{!2325}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2322, file: !2323, line: 17, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1321, line: 746, size: 58368, elements: !2328)
!2328 = !{!2329, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2409, !2420, !2512, !2516, !2519, !2550, !2551, !2552, !2553, !2564, !2566, !2567, !2568, !2569, !2570, !2571, !2582, !2583, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2600, !2601, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2689, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2737, !2743, !2744, !2745, !2746, !2747, !2751, !2754, !2761, !2766, !2769, !2772, !2775, !2778, !2916, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2954, !2955, !2956, !2965, !2973, !2974, !2975, !2976, !2977, !2982, !2983, !2984, !2987, !2988, !2991, !2994, !2997, !3005, !3008, !3009, !3095, !3096, !3097, !3098, !3099, !3104, !3105, !3106, !3107, !3110, !3111, !3114, !3117, !3118, !3121, !3122, !3123, !3126, !3127, !3128, !3129, !3130, !3131, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3163, !3164, !3170, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3182, !3254, !3256, !3257, !3258, !3259, !3260, !3261, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3291, !3292, !3293}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2327, file: !1321, line: 752, baseType: !2330, size: 192)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2331, line: 56, size: 192, elements: !2332)
!2331 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2332 = !{!2333, !2334, !2335, !2336}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2330, file: !2331, line: 57, baseType: !182, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2330, file: !2331, line: 58, baseType: !182, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2330, file: !2331, line: 59, baseType: !286, size: 32, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2330, file: !2331, line: 61, baseType: !286, size: 32, offset: 160)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2327, file: !1321, line: 754, baseType: !18, size: 32, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2327, file: !1321, line: 767, baseType: !206, size: 64, offset: 256)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2327, file: !1321, line: 768, baseType: !656, size: 32, offset: 320)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2327, file: !1321, line: 770, baseType: !18, size: 32, offset: 352)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2327, file: !1321, line: 771, baseType: !18, size: 32, offset: 384)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2327, file: !1321, line: 774, baseType: !120, size: 32, offset: 416)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2327, file: !1321, line: 775, baseType: !2344, size: 128, offset: 448)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2345, line: 58, size: 128, elements: !2346)
!2345 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2346 = !{!2347, !2348, !2353, !2354}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2344, file: !2345, line: 59, baseType: !585, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, scope: !2344, file: !2345, line: 60, baseType: !2349, size: 32, offset: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2344, file: !2345, line: 60, size: 32, elements: !2350)
!2350 = !{!2351, !2352}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2349, file: !2345, line: 61, baseType: !18, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2349, file: !2345, line: 62, baseType: !336, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2344, file: !2345, line: 65, baseType: !351, size: 16, offset: 96)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2344, file: !2345, line: 65, baseType: !351, size: 16, offset: 112)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2327, file: !1321, line: 776, baseType: !18, size: 32, offset: 576)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2327, file: !1321, line: 777, baseType: !182, size: 64, offset: 640)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2327, file: !1321, line: 778, baseType: !2326, size: 64, offset: 704)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2327, file: !1321, line: 787, baseType: !120, size: 32, offset: 768)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2327, file: !1321, line: 788, baseType: !120, size: 32, offset: 800)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2327, file: !1321, line: 790, baseType: !120, size: 32, offset: 832)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2327, file: !1321, line: 792, baseType: !120, size: 32, offset: 864)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2327, file: !1321, line: 793, baseType: !120, size: 32, offset: 896)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2327, file: !1321, line: 794, baseType: !120, size: 32, offset: 928)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2327, file: !1321, line: 795, baseType: !18, size: 32, offset: 960)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2327, file: !1321, line: 797, baseType: !2366, size: 2048, offset: 1024)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1321, line: 551, size: 2048, elements: !2367)
!2367 = !{!2368, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2388, !2391, !2392, !2393}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2366, file: !1321, line: 553, baseType: !2369, size: 128)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1321, line: 411, size: 128, elements: !2370)
!2370 = !{!2371, !2372}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2369, file: !1321, line: 412, baseType: !182, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2369, file: !1321, line: 413, baseType: !286, size: 32, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2366, file: !1321, line: 554, baseType: !742, size: 192, align: 64, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2366, file: !1321, line: 555, baseType: !292, size: 64, offset: 320)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2366, file: !1321, line: 556, baseType: !292, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2366, file: !1321, line: 558, baseType: !197, size: 128, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2366, file: !1321, line: 559, baseType: !18, size: 32, offset: 576)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2366, file: !1321, line: 561, baseType: !292, size: 64, offset: 640)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2366, file: !1321, line: 562, baseType: !292, size: 64, offset: 704)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2366, file: !1321, line: 563, baseType: !292, size: 64, offset: 768)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2366, file: !1321, line: 564, baseType: !292, size: 64, offset: 832)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2366, file: !1321, line: 565, baseType: !610, size: 64, offset: 896)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2366, file: !1321, line: 566, baseType: !292, size: 64, offset: 960)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2366, file: !1321, line: 568, baseType: !292, size: 64, offset: 1024)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2366, file: !1321, line: 571, baseType: !120, size: 32, offset: 1088)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2366, file: !1321, line: 572, baseType: !2387, size: 64, offset: 1152)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2366, file: !1321, line: 574, baseType: !2389, size: 64, offset: 1216)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1321, line: 49, flags: DIFlagFwdDecl)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2366, file: !1321, line: 576, baseType: !2389, size: 64, offset: 1280)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2366, file: !1321, line: 578, baseType: !182, size: 64, offset: 1344)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2366, file: !1321, line: 588, baseType: !2394, size: 512, align: 512, offset: 1536)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1321, line: 497, size: 512, align: 512, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2394, file: !1321, line: 498, baseType: !292, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2394, file: !1321, line: 499, baseType: !292, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2394, file: !1321, line: 500, baseType: !292, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2394, file: !1321, line: 501, baseType: !286, size: 32, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2394, file: !1321, line: 502, baseType: !286, size: 32, offset: 224)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2394, file: !1321, line: 503, baseType: !182, size: 64, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2394, file: !1321, line: 504, baseType: !182, size: 64, offset: 320)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2394, file: !1321, line: 505, baseType: !182, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2394, file: !1321, line: 506, baseType: !2405, size: 64, align: 64, offset: 448)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1321, line: 445, size: 64, align: 64, elements: !2406)
!2406 = !{!2407, !2408}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2405, file: !1321, line: 446, baseType: !18, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2405, file: !1321, line: 447, baseType: !18, size: 32, offset: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2327, file: !1321, line: 798, baseType: !2410, size: 384, offset: 3072)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1321, line: 592, size: 384, elements: !2411)
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2410, file: !1321, line: 593, baseType: !197, size: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2410, file: !1321, line: 594, baseType: !182, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2410, file: !1321, line: 595, baseType: !182, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2410, file: !1321, line: 596, baseType: !18, size: 32, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2410, file: !1321, line: 597, baseType: !220, size: 16, offset: 288)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2410, file: !1321, line: 598, baseType: !220, size: 16, offset: 304)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2410, file: !1321, line: 600, baseType: !2419, size: 64, offset: 320)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2327, file: !1321, line: 799, baseType: !2421, size: 1792, offset: 3456)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1321, line: 610, size: 1792, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2509, !2510}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2421, file: !1321, line: 611, baseType: !742, size: 192, align: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2421, file: !1321, line: 618, baseType: !292, size: 64, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2421, file: !1321, line: 619, baseType: !292, size: 64, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2421, file: !1321, line: 620, baseType: !292, size: 64, offset: 320)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2421, file: !1321, line: 621, baseType: !292, size: 64, offset: 384)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2421, file: !1321, line: 622, baseType: !292, size: 64, offset: 448)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2421, file: !1321, line: 629, baseType: !610, size: 64, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2421, file: !1321, line: 630, baseType: !292, size: 64, offset: 576)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2421, file: !1321, line: 631, baseType: !18, size: 32, offset: 640)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2421, file: !1321, line: 653, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2421, file: !1321, line: 654, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2421, file: !1321, line: 655, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2421, file: !1321, line: 656, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2421, file: !1321, line: 662, baseType: !2437, size: 512, offset: 704)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !36, line: 118, size: 512, elements: !2438)
!2438 = !{!2439, !2447, !2448, !2453, !2505, !2506, !2507, !2508}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2437, file: !36, line: 119, baseType: !2440, size: 256)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2441, line: 9, size: 256, elements: !2442)
!2441 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2442 = !{!2443, !2444}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2440, file: !2441, line: 10, baseType: !742, size: 192, align: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2440, file: !2441, line: 11, baseType: !2445, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2446, line: 29, baseType: !610)
!2446 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2437, file: !36, line: 120, baseType: !2445, size: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2437, file: !36, line: 121, baseType: !2449, size: 64, offset: 320)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!35, !2452}
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2437, file: !36, line: 122, baseType: !2454, size: 64, offset: 384)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !36, line: 159, size: 512, align: 512, elements: !2456)
!2456 = !{!2457, !2482, !2483, !2486, !2491, !2492, !2500, !2504}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2455, file: !36, line: 160, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !36, line: 215, size: 4608, align: 512, elements: !2460)
!2460 = !{!2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2459, file: !36, line: 216, baseType: !618, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2459, file: !36, line: 217, baseType: !18, size: 32, offset: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2459, file: !36, line: 218, baseType: !18, size: 32, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2459, file: !36, line: 219, baseType: !18, size: 32, offset: 96)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2459, file: !36, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2459, file: !36, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2459, file: !36, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2459, file: !36, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2459, file: !36, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2459, file: !36, line: 226, baseType: !18, size: 32, offset: 160)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2459, file: !36, line: 227, baseType: !220, size: 16, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2459, file: !36, line: 228, baseType: !220, size: 16, offset: 208)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2459, file: !36, line: 229, baseType: !18, size: 32, offset: 224)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2459, file: !36, line: 235, baseType: !2445, size: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2459, file: !36, line: 236, baseType: !2452, size: 64, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2459, file: !36, line: 237, baseType: !2445, size: 64, offset: 384)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2459, file: !36, line: 238, baseType: !2452, size: 64, offset: 448)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2459, file: !36, line: 239, baseType: !2479, size: 4096, align: 512, offset: 512)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2455, size: 4096, align: 512, elements: !2480)
!2480 = !{!2481}
!2481 = !DISubrange(count: 8)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2455, file: !36, line: 161, baseType: !18, size: 32, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2455, file: !36, line: 162, baseType: !2484, size: 32, offset: 96)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !177, line: 32, baseType: !2485)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !180, line: 96, baseType: !120)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2455, file: !36, line: 163, baseType: !2487, size: 32, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !259, line: 274, baseType: !2488)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !259, line: 274, size: 32, elements: !2489)
!2489 = !{!2490}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2488, file: !259, line: 274, baseType: !263, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2455, file: !36, line: 164, baseType: !2452, size: 64, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2455, file: !36, line: 165, baseType: !2493, size: 128, offset: 256)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2441, line: 14, size: 128, elements: !2494)
!2494 = !{!2495}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2493, file: !2441, line: 15, baseType: !2496, size: 128)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !743, line: 26, size: 128, elements: !2497)
!2497 = !{!2498, !2499}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2496, file: !743, line: 27, baseType: !1496, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2496, file: !743, line: 28, baseType: !747, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2455, file: !36, line: 166, baseType: !2501, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!2445}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2455, file: !36, line: 167, baseType: !2445, size: 64, offset: 448)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2437, file: !36, line: 123, baseType: !344, size: 8, offset: 448)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2437, file: !36, line: 124, baseType: !344, size: 8, offset: 456)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2437, file: !36, line: 125, baseType: !344, size: 8, offset: 464)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2437, file: !36, line: 126, baseType: !344, size: 8, offset: 472)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2421, file: !1321, line: 671, baseType: !2437, size: 512, offset: 1216)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2421, file: !1321, line: 679, baseType: !2511, size: 64, offset: 1728)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2327, file: !1321, line: 800, baseType: !2513, size: 64, offset: 5248)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2515)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1321, line: 800, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2327, file: !1321, line: 809, baseType: !2517, size: 64, offset: 5312)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1321, line: 70, flags: DIFlagFwdDecl)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2327, file: !1321, line: 825, baseType: !2520, size: 2048, align: 512, offset: 5632)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1321, line: 509, size: 2048, align: 512, elements: !2521)
!2521 = !{!2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2520, file: !1321, line: 511, baseType: !292, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2520, file: !1321, line: 512, baseType: !292, size: 64, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2520, file: !1321, line: 513, baseType: !292, size: 64, offset: 128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2520, file: !1321, line: 514, baseType: !292, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2520, file: !1321, line: 515, baseType: !292, size: 64, offset: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2520, file: !1321, line: 516, baseType: !292, size: 64, offset: 320)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2520, file: !1321, line: 518, baseType: !292, size: 64, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2520, file: !1321, line: 519, baseType: !292, size: 64, offset: 448)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2520, file: !1321, line: 520, baseType: !610, size: 64, offset: 512)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2520, file: !1321, line: 522, baseType: !292, size: 64, offset: 576)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2520, file: !1321, line: 523, baseType: !292, size: 64, offset: 640)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2520, file: !1321, line: 524, baseType: !610, size: 64, offset: 704)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2520, file: !1321, line: 526, baseType: !610, size: 64, offset: 768)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2520, file: !1321, line: 527, baseType: !292, size: 64, offset: 832)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2520, file: !1321, line: 529, baseType: !292, size: 64, offset: 896)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2520, file: !1321, line: 530, baseType: !292, size: 64, offset: 960)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2520, file: !1321, line: 531, baseType: !292, size: 64, offset: 1024)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2520, file: !1321, line: 532, baseType: !292, size: 64, offset: 1088)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2520, file: !1321, line: 533, baseType: !292, size: 64, offset: 1152)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2520, file: !1321, line: 535, baseType: !292, size: 64, offset: 1216)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2520, file: !1321, line: 536, baseType: !292, size: 64, offset: 1280)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2520, file: !1321, line: 537, baseType: !292, size: 64, offset: 1344)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2520, file: !1321, line: 538, baseType: !292, size: 64, offset: 1408)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2520, file: !1321, line: 539, baseType: !292, size: 64, offset: 1472)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2520, file: !1321, line: 540, baseType: !292, size: 64, offset: 1536)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2520, file: !1321, line: 541, baseType: !292, size: 64, offset: 1600)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2520, file: !1321, line: 542, baseType: !292, size: 64, offset: 1664)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2520, file: !1321, line: 543, baseType: !292, size: 64, offset: 1728)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2327, file: !1321, line: 833, baseType: !18, size: 32, offset: 7680)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2327, file: !1321, line: 836, baseType: !18, size: 32, offset: 7712)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2327, file: !1321, line: 837, baseType: !120, size: 32, offset: 7744)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2327, file: !1321, line: 838, baseType: !2554, size: 64, offset: 7808)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2556)
!2556 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2557, line: 19, baseType: !2558)
!2557 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2557, line: 19, size: 64, elements: !2559)
!2559 = !{!2560}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2558, file: !2557, line: 19, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 64, elements: !2562)
!2562 = !{!2563}
!2563 = !DISubrange(count: 1)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2327, file: !1321, line: 839, baseType: !2565, size: 64, offset: 7872)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2327, file: !1321, line: 840, baseType: !2556, size: 64, offset: 7936)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2327, file: !1321, line: 841, baseType: !206, size: 64, offset: 8000)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2327, file: !1321, line: 843, baseType: !220, size: 16, offset: 8064)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2327, file: !1321, line: 845, baseType: !220, size: 16, offset: 8080)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2327, file: !1321, line: 848, baseType: !120, size: 32, offset: 8096)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2327, file: !1321, line: 849, baseType: !2572, size: 32, offset: 8128)
!2572 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1321, line: 718, size: 32, elements: !2573)
!2573 = !{!2574, !2581}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2572, file: !1321, line: 724, baseType: !2575, size: 32)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2572, file: !1321, line: 719, size: 32, elements: !2576)
!2576 = !{!2577, !2578, !2579, !2580}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2575, file: !1321, line: 720, baseType: !344, size: 8)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2575, file: !1321, line: 721, baseType: !344, size: 8, offset: 8)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2575, file: !1321, line: 722, baseType: !344, size: 8, offset: 16)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2575, file: !1321, line: 723, baseType: !344, size: 8, offset: 24)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2572, file: !1321, line: 725, baseType: !286, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2327, file: !1321, line: 850, baseType: !197, size: 128, offset: 8192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2327, file: !1321, line: 851, baseType: !2584, size: 64, offset: 8320)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1321, line: 60, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2327, file: !1321, line: 855, baseType: !182, size: 64, offset: 8384)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2327, file: !1321, line: 856, baseType: !344, size: 8, offset: 8448)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2327, file: !1321, line: 857, baseType: !344, size: 8, offset: 8456)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2327, file: !1321, line: 858, baseType: !120, size: 32, offset: 8480)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2327, file: !1321, line: 859, baseType: !197, size: 128, offset: 8512)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2327, file: !1321, line: 860, baseType: !120, size: 32, offset: 8640)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2327, file: !1321, line: 861, baseType: !197, size: 128, offset: 8704)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2327, file: !1321, line: 873, baseType: !2594, size: 256, offset: 8832)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1321, line: 376, size: 256, elements: !2595)
!2595 = !{!2596, !2597, !2598, !2599}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2594, file: !1321, line: 381, baseType: !182, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2594, file: !1321, line: 384, baseType: !294, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2594, file: !1321, line: 389, baseType: !294, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2594, file: !1321, line: 392, baseType: !294, size: 64, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2327, file: !1321, line: 875, baseType: !197, size: 128, offset: 9088)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2327, file: !1321, line: 877, baseType: !2602, size: 320, offset: 9216)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2603, line: 86, size: 320, elements: !2604)
!2603 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2604 = !{!2605, !2606, !2607}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2602, file: !2603, line: 87, baseType: !120, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2602, file: !2603, line: 88, baseType: !197, size: 128, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2602, file: !2603, line: 89, baseType: !197, size: 128, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2327, file: !1321, line: 878, baseType: !742, size: 192, align: 64, offset: 9536)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2327, file: !1321, line: 881, baseType: !1024, size: 64, offset: 9728)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2327, file: !1321, line: 882, baseType: !1024, size: 64, offset: 9792)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2327, file: !1321, line: 884, baseType: !120, size: 32, offset: 9856)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2327, file: !1321, line: 885, baseType: !120, size: 32, offset: 9888)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2327, file: !1321, line: 886, baseType: !120, size: 32, offset: 9920)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2327, file: !1321, line: 888, baseType: !120, size: 32, offset: 9952)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2327, file: !1321, line: 890, baseType: !182, size: 64, offset: 9984)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2327, file: !1321, line: 893, baseType: !18, size: 32, offset: 10048)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2327, file: !1321, line: 896, baseType: !18, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2327, file: !1321, line: 897, baseType: !18, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2327, file: !1321, line: 898, baseType: !18, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2327, file: !1321, line: 899, baseType: !18, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2327, file: !1321, line: 919, baseType: !18, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2327, file: !1321, line: 922, baseType: !18, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2327, file: !1321, line: 923, baseType: !18, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2327, file: !1321, line: 925, baseType: !18, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2327, file: !1321, line: 939, baseType: !18, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2327, file: !1321, line: 941, baseType: !18, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2327, file: !1321, line: 944, baseType: !18, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2327, file: !1321, line: 956, baseType: !18, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2327, file: !1321, line: 962, baseType: !18, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2327, file: !1321, line: 966, baseType: !18, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2327, file: !1321, line: 969, baseType: !182, size: 64, offset: 10176)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2327, file: !1321, line: 971, baseType: !2633, size: 448, offset: 10240)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !73, line: 25, size: 448, elements: !2634)
!2634 = !{!2635, !2636, !2641}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2633, file: !73, line: 26, baseType: !182, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2633, file: !73, line: 27, baseType: !2637, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!539, !2640}
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, scope: !2633, file: !73, line: 28, baseType: !2642, size: 320, offset: 128)
!2642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2633, file: !73, line: 28, size: 320, elements: !2643)
!2643 = !{!2644, !2654, !2679}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2642, file: !73, line: 37, baseType: !2645, size: 320)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2642, file: !73, line: 30, size: 320, elements: !2646)
!2646 = !{!2647, !2649, !2650, !2651, !2652, !2653}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2645, file: !73, line: 31, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2645, file: !73, line: 32, baseType: !286, size: 32, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2645, file: !73, line: 33, baseType: !286, size: 32, offset: 96)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2645, file: !73, line: 34, baseType: !286, size: 32, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2645, file: !73, line: 35, baseType: !292, size: 64, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2645, file: !73, line: 36, baseType: !2648, size: 64, offset: 256)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2642, file: !73, line: 47, baseType: !2655, size: 192)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2642, file: !73, line: 39, size: 192, elements: !2656)
!2656 = !{!2657, !2658, !2659, !2678}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2655, file: !73, line: 40, baseType: !2484, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2655, file: !73, line: 41, baseType: !72, size: 32, offset: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, scope: !2655, file: !73, line: 42, baseType: !2660, size: 64, offset: 64)
!2660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2655, file: !73, line: 42, size: 64, elements: !2661)
!2661 = !{!2662, !2670}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2660, file: !73, line: 43, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2665, line: 7, size: 128, elements: !2666)
!2665 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2666 = !{!2667, !2669}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2664, file: !2665, line: 8, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !180, line: 93, baseType: !424)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2664, file: !2665, line: 9, baseType: !424, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2660, file: !73, line: 44, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2673, line: 7, size: 64, elements: !2674)
!2673 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2674 = !{!2675, !2677}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2672, file: !2673, line: 8, baseType: !2676, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2673, line: 5, baseType: !735)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2672, file: !2673, line: 9, baseType: !735, size: 32, offset: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2655, file: !73, line: 46, baseType: !292, size: 64, offset: 128)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2642, file: !73, line: 55, baseType: !2680, size: 256)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2642, file: !73, line: 49, size: 256, elements: !2681)
!2681 = !{!2682, !2685, !2686, !2687, !2688}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2680, file: !73, line: 50, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !73, line: 14, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2680, file: !73, line: 51, baseType: !120, size: 32, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2680, file: !73, line: 52, baseType: !120, size: 32, offset: 96)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2680, file: !73, line: 53, baseType: !182, size: 64, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2680, file: !73, line: 54, baseType: !182, size: 64, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2327, file: !1321, line: 973, baseType: !2690, size: 32, offset: 10688)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !177, line: 27, baseType: !2691)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !180, line: 28, baseType: !120)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2327, file: !1321, line: 974, baseType: !2690, size: 32, offset: 10720)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2327, file: !1321, line: 978, baseType: !182, size: 64, offset: 10752)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2327, file: !1321, line: 987, baseType: !2326, size: 64, offset: 10816)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2327, file: !1321, line: 990, baseType: !2326, size: 64, offset: 10880)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2327, file: !1321, line: 995, baseType: !197, size: 128, offset: 10944)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2327, file: !1321, line: 996, baseType: !197, size: 128, offset: 11072)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2327, file: !1321, line: 997, baseType: !2326, size: 64, offset: 11200)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2327, file: !1321, line: 1005, baseType: !197, size: 128, offset: 11264)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2327, file: !1321, line: 1006, baseType: !197, size: 128, offset: 11392)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2327, file: !1321, line: 1009, baseType: !652, size: 64, offset: 11520)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2327, file: !1321, line: 1010, baseType: !2703, size: 512, offset: 11584)
!2703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 512, elements: !674)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2327, file: !1321, line: 1011, baseType: !197, size: 128, offset: 12096)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2327, file: !1321, line: 1012, baseType: !197, size: 128, offset: 12224)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2327, file: !1321, line: 1014, baseType: !1599, size: 64, offset: 12352)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2327, file: !1321, line: 1017, baseType: !1746, size: 64, offset: 12416)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2327, file: !1321, line: 1020, baseType: !1746, size: 64, offset: 12480)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2327, file: !1321, line: 1023, baseType: !206, size: 64, offset: 12544)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2327, file: !1321, line: 1025, baseType: !292, size: 64, offset: 12608)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2327, file: !1321, line: 1026, baseType: !292, size: 64, offset: 12672)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2327, file: !1321, line: 1031, baseType: !292, size: 64, offset: 12736)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2327, file: !1321, line: 1032, baseType: !2714, size: 192, offset: 12800)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1321, line: 324, size: 192, elements: !2715)
!2715 = !{!2716, !2717, !2718}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2714, file: !1321, line: 326, baseType: !292, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2714, file: !1321, line: 327, baseType: !292, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2714, file: !1321, line: 328, baseType: !618, size: 32, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2327, file: !1321, line: 1041, baseType: !182, size: 64, offset: 12992)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2327, file: !1321, line: 1042, baseType: !182, size: 64, offset: 13056)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2327, file: !1321, line: 1045, baseType: !292, size: 64, offset: 13120)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2327, file: !1321, line: 1048, baseType: !292, size: 64, offset: 13184)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2327, file: !1321, line: 1051, baseType: !182, size: 64, offset: 13248)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2327, file: !1321, line: 1052, baseType: !182, size: 64, offset: 13312)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2327, file: !1321, line: 1055, baseType: !2726, size: 640, offset: 13376)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2727, line: 132, size: 640, elements: !2728)
!2727 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2728 = !{!2729, !2735, !2736}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2726, file: !2727, line: 133, baseType: !2730, size: 576)
!2730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2731, size: 576, elements: !505)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2727, line: 117, size: 192, elements: !2732)
!2732 = !{!2733, !2734}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2731, file: !2727, line: 118, baseType: !292, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2731, file: !2727, line: 119, baseType: !2493, size: 128, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2726, file: !2727, line: 134, baseType: !18, size: 32, offset: 576)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2726, file: !2727, line: 135, baseType: !18, size: 32, offset: 608)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2327, file: !1321, line: 1058, baseType: !2738, size: 448, offset: 14016)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2727, line: 144, size: 448, elements: !2739)
!2739 = !{!2740, !2741, !2742}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2738, file: !2727, line: 145, baseType: !591, size: 128, align: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2738, file: !2727, line: 146, baseType: !613, size: 256, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2738, file: !2727, line: 147, baseType: !18, size: 32, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2327, file: !1321, line: 1064, baseType: !700, size: 64, offset: 14464)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2327, file: !1321, line: 1067, baseType: !700, size: 64, offset: 14528)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2327, file: !1321, line: 1070, baseType: !700, size: 64, offset: 14592)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2327, file: !1321, line: 1074, baseType: !727, size: 64, offset: 14656)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2327, file: !1321, line: 1084, baseType: !2748, size: 128, offset: 14720)
!2748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2749)
!2749 = !{!2750}
!2750 = !DISubrange(count: 16)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2327, file: !1321, line: 1086, baseType: !2752, size: 64, offset: 14848)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1321, line: 55, flags: DIFlagFwdDecl)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2327, file: !1321, line: 1089, baseType: !2755, size: 64, offset: 14912)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2756, line: 12, size: 64, elements: !2757)
!2756 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2757 = !{!2758}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2755, file: !2756, line: 13, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2756, line: 8, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2327, file: !1321, line: 1090, baseType: !2762, size: 128, offset: 14976)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2763, line: 13, size: 128, elements: !2764)
!2763 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2764 = !{!2765}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2762, file: !2763, line: 14, baseType: !197, size: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2327, file: !1321, line: 1097, baseType: !2767, size: 64, offset: 15104)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1321, line: 50, flags: DIFlagFwdDecl)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2327, file: !1321, line: 1100, baseType: !2770, size: 64, offset: 15168)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1321, line: 1100, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2327, file: !1321, line: 1103, baseType: !2773, size: 64, offset: 15232)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1321, line: 53, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2327, file: !1321, line: 1107, baseType: !2776, size: 64, offset: 15296)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1321, line: 56, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2327, file: !1321, line: 1110, baseType: !2779, size: 64, offset: 15360)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2781, line: 93, size: 8768, elements: !2782)
!2781 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2782 = !{!2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2830, !2839, !2840, !2842, !2843, !2844, !2847, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2885, !2886, !2893, !2903, !2906, !2907, !2910, !2911, !2912, !2913, !2914, !2915}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2780, file: !2781, line: 94, baseType: !656, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2780, file: !2781, line: 95, baseType: !336, size: 32, offset: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2780, file: !2781, line: 96, baseType: !120, size: 32, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2780, file: !2781, line: 97, baseType: !120, size: 32, offset: 96)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2780, file: !2781, line: 98, baseType: !197, size: 128, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2780, file: !2781, line: 100, baseType: !678, size: 192, offset: 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2780, file: !2781, line: 103, baseType: !2326, size: 64, offset: 448)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2780, file: !2781, line: 106, baseType: !2791, size: 192, offset: 512)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !897, line: 32, size: 192, elements: !2792)
!2792 = !{!2793, !2794}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2791, file: !897, line: 33, baseType: !197, size: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2791, file: !897, line: 34, baseType: !2795, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2796, line: 25, baseType: !2797)
!2796 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2796, line: 23, size: 64, elements: !2798)
!2798 = !{!2799}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2797, file: !2796, line: 24, baseType: !2561, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2780, file: !2781, line: 109, baseType: !665, size: 64, offset: 704)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2780, file: !2781, line: 112, baseType: !120, size: 32, offset: 768)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2780, file: !2781, line: 114, baseType: !120, size: 32, offset: 800)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2780, file: !2781, line: 115, baseType: !2326, size: 64, offset: 832)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2780, file: !2781, line: 118, baseType: !120, size: 32, offset: 896)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2780, file: !2781, line: 119, baseType: !18, size: 32, offset: 928)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2780, file: !2781, line: 121, baseType: !2807, size: 64, offset: 960)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2781, line: 80, size: 448, elements: !2809)
!2809 = !{!2810, !2811, !2817}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2808, file: !2781, line: 81, baseType: !336, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2808, file: !2781, line: 82, baseType: !2812, size: 128, offset: 64)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2781, line: 75, size: 128, elements: !2813)
!2813 = !{!2814, !2815}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2812, file: !2781, line: 76, baseType: !2326, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2812, file: !2781, line: 77, baseType: !2816, size: 64, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2808, file: !2781, line: 83, baseType: !1600, size: 256, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2780, file: !2781, line: 132, baseType: !18, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2780, file: !2781, line: 133, baseType: !18, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2780, file: !2781, line: 138, baseType: !18, size: 32, offset: 1056)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2780, file: !2781, line: 139, baseType: !197, size: 128, offset: 1088)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2780, file: !2781, line: 142, baseType: !2437, size: 512, offset: 1216)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2780, file: !2781, line: 143, baseType: !2445, size: 64, offset: 1728)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2780, file: !2781, line: 150, baseType: !2825, size: 256, offset: 1792)
!2825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2826, size: 256, elements: !1736)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2781, line: 38, size: 128, elements: !2827)
!2827 = !{!2828, !2829}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2826, file: !2781, line: 39, baseType: !292, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2826, file: !2781, line: 40, baseType: !292, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2780, file: !2781, line: 156, baseType: !2831, size: 192, offset: 2048)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2781, line: 66, size: 192, elements: !2832)
!2832 = !{!2833}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2831, file: !2781, line: 67, baseType: !2834, size: 192)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2781, line: 47, size: 192, elements: !2835)
!2835 = !{!2836, !2837, !2838}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2834, file: !2781, line: 48, baseType: !606, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2834, file: !2781, line: 49, baseType: !606, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2834, file: !2781, line: 50, baseType: !606, size: 64, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2780, file: !2781, line: 160, baseType: !2726, size: 640, offset: 2240)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2780, file: !2781, line: 163, baseType: !2841, size: 256, offset: 2880)
!2841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 256, elements: !674)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2780, file: !2781, line: 169, baseType: !652, size: 64, offset: 3136)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2780, file: !2781, line: 172, baseType: !120, size: 32, offset: 3200)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2780, file: !2781, line: 174, baseType: !2845, size: 64, offset: 3264)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2781, line: 174, flags: DIFlagFwdDecl)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2780, file: !2781, line: 185, baseType: !2848, size: 64, offset: 3328)
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !259, line: 860, baseType: !2849)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 853, size: 64, elements: !2850)
!2850 = !{!2851, !2852}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2849, file: !259, line: 858, baseType: !258, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2849, file: !259, line: 859, baseType: !316, size: 32, offset: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2780, file: !2781, line: 186, baseType: !292, size: 64, offset: 3392)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2780, file: !2781, line: 186, baseType: !292, size: 64, offset: 3456)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2780, file: !2781, line: 186, baseType: !292, size: 64, offset: 3520)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2780, file: !2781, line: 186, baseType: !292, size: 64, offset: 3584)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2780, file: !2781, line: 187, baseType: !292, size: 64, offset: 3648)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2780, file: !2781, line: 188, baseType: !292, size: 64, offset: 3712)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2780, file: !2781, line: 189, baseType: !2714, size: 192, offset: 3776)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2780, file: !2781, line: 190, baseType: !182, size: 64, offset: 3968)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2780, file: !2781, line: 190, baseType: !182, size: 64, offset: 4032)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2780, file: !2781, line: 190, baseType: !182, size: 64, offset: 4096)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2780, file: !2781, line: 190, baseType: !182, size: 64, offset: 4160)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2780, file: !2781, line: 191, baseType: !182, size: 64, offset: 4224)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2780, file: !2781, line: 191, baseType: !182, size: 64, offset: 4288)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2780, file: !2781, line: 191, baseType: !182, size: 64, offset: 4352)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2780, file: !2781, line: 191, baseType: !182, size: 64, offset: 4416)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2780, file: !2781, line: 192, baseType: !182, size: 64, offset: 4480)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2780, file: !2781, line: 192, baseType: !182, size: 64, offset: 4544)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2780, file: !2781, line: 192, baseType: !182, size: 64, offset: 4608)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2780, file: !2781, line: 192, baseType: !182, size: 64, offset: 4672)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2780, file: !2781, line: 193, baseType: !182, size: 64, offset: 4736)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2780, file: !2781, line: 193, baseType: !182, size: 64, offset: 4800)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2780, file: !2781, line: 194, baseType: !2875, size: 448, offset: 4864)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2876, line: 12, size: 448, elements: !2877)
!2876 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2877 = !{!2878, !2879, !2880, !2881, !2882, !2883, !2884}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2875, file: !2876, line: 15, baseType: !292, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2875, file: !2876, line: 17, baseType: !292, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2875, file: !2876, line: 19, baseType: !292, size: 64, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2875, file: !2876, line: 21, baseType: !292, size: 64, offset: 192)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2875, file: !2876, line: 29, baseType: !292, size: 64, offset: 256)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2875, file: !2876, line: 35, baseType: !292, size: 64, offset: 320)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2875, file: !2876, line: 44, baseType: !292, size: 64, offset: 384)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2780, file: !2781, line: 202, baseType: !294, size: 64, offset: 5312)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2780, file: !2781, line: 213, baseType: !2887, size: 2048, offset: 5376)
!2887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2888, size: 2048, elements: !2749)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2889, line: 43, size: 128, elements: !2890)
!2889 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2890 = !{!2891, !2892}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2888, file: !2889, line: 44, baseType: !181, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2888, file: !2889, line: 45, baseType: !181, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2780, file: !2781, line: 216, baseType: !2894, size: 448, offset: 7424)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2781, line: 30, size: 448, elements: !2895)
!2895 = !{!2896, !2897, !2898, !2899, !2900, !2901, !2902}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2894, file: !2781, line: 31, baseType: !120, size: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2894, file: !2781, line: 32, baseType: !539, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2894, file: !2781, line: 33, baseType: !182, size: 64, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2894, file: !2781, line: 34, baseType: !292, size: 64, offset: 192)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2894, file: !2781, line: 34, baseType: !292, size: 64, offset: 256)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2894, file: !2781, line: 35, baseType: !182, size: 64, offset: 320)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2894, file: !2781, line: 35, baseType: !182, size: 64, offset: 384)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2780, file: !2781, line: 219, baseType: !2904, size: 64, offset: 7872)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2781, line: 219, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2780, file: !2781, line: 222, baseType: !18, size: 32, offset: 7936)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2780, file: !2781, line: 223, baseType: !2908, size: 64, offset: 8000)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2781, line: 223, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2780, file: !2781, line: 230, baseType: !809, size: 8, offset: 8064)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2780, file: !2781, line: 231, baseType: !778, size: 16, offset: 8080)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2780, file: !2781, line: 232, baseType: !778, size: 16, offset: 8096)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2780, file: !2781, line: 234, baseType: !1024, size: 64, offset: 8128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2780, file: !2781, line: 237, baseType: !613, size: 256, offset: 8192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2780, file: !2781, line: 243, baseType: !750, size: 320, offset: 8448)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2327, file: !1321, line: 1111, baseType: !2917, size: 64, offset: 15424)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2781, line: 20, size: 16640, elements: !2919)
!2919 = !{!2920, !2921, !2922, !2923}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2918, file: !2781, line: 21, baseType: !316, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2918, file: !2781, line: 22, baseType: !656, size: 32, offset: 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2918, file: !2781, line: 23, baseType: !678, size: 192, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2918, file: !2781, line: 24, baseType: !2924, size: 16384, offset: 256)
!2924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2925, size: 16384, elements: !509)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !897, line: 51, size: 256, elements: !2926)
!2926 = !{!2927}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2925, file: !897, line: 52, baseType: !2928, size: 256)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !897, line: 37, size: 256, elements: !2929)
!2929 = !{!2930, !2937, !2938, !2942}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2928, file: !897, line: 39, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2932, line: 83, baseType: !2933)
!2932 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2932, line: 82, baseType: !2935)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{null, !120}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2928, file: !897, line: 40, baseType: !182, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2928, file: !897, line: 46, baseType: !2939, size: 64, offset: 128)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2932, line: 86, baseType: !2940)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2932, line: 85, baseType: !1951)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2928, file: !897, line: 48, baseType: !2795, size: 64, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2327, file: !1321, line: 1112, baseType: !2795, size: 64, offset: 15488)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2327, file: !1321, line: 1113, baseType: !2795, size: 64, offset: 15552)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2327, file: !1321, line: 1115, baseType: !2795, size: 64, offset: 15616)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2327, file: !1321, line: 1116, baseType: !2791, size: 192, offset: 15680)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2327, file: !1321, line: 1117, baseType: !182, size: 64, offset: 15872)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2327, file: !1321, line: 1118, baseType: !178, size: 64, offset: 15936)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2327, file: !1321, line: 1119, baseType: !18, size: 32, offset: 16000)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2327, file: !1321, line: 1121, baseType: !594, size: 64, offset: 16064)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2327, file: !1321, line: 1125, baseType: !2952, size: 64, offset: 16128)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1321, line: 43, flags: DIFlagFwdDecl)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2327, file: !1321, line: 1127, baseType: !223, size: 32, offset: 16192)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2327, file: !1321, line: 1128, baseType: !18, size: 32, offset: 16224)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2327, file: !1321, line: 1130, baseType: !2957, size: 128, offset: 16256)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2958, line: 37, size: 128, elements: !2959)
!2958 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2959 = !{!2960, !2961, !2962}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2957, file: !2958, line: 38, baseType: !120, size: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2957, file: !2958, line: 39, baseType: !336, size: 32, offset: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2957, file: !2958, line: 40, baseType: !2963, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2958, line: 24, flags: DIFlagFwdDecl)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2327, file: !1321, line: 1131, baseType: !2966, size: 256, offset: 16384)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2967, line: 12, size: 256, elements: !2968)
!2967 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2968 = !{!2969, !2970, !2971, !2972}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2966, file: !2967, line: 13, baseType: !401, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2966, file: !2967, line: 14, baseType: !182, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2966, file: !2967, line: 15, baseType: !182, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2966, file: !2967, line: 16, baseType: !809, size: 8, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2327, file: !1321, line: 1134, baseType: !292, size: 64, offset: 16640)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2327, file: !1321, line: 1135, baseType: !292, size: 64, offset: 16704)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2327, file: !1321, line: 1138, baseType: !316, size: 32, offset: 16768)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2327, file: !1321, line: 1141, baseType: !618, size: 32, offset: 16800)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2327, file: !1321, line: 1143, baseType: !2978, size: 64, offset: 16832)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1321, line: 735, size: 64, elements: !2979)
!2979 = !{!2980}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2978, file: !1321, line: 736, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2327, file: !1321, line: 1147, baseType: !2496, size: 128, offset: 16896)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2327, file: !1321, line: 1149, baseType: !2326, size: 64, offset: 17024)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2327, file: !1321, line: 1151, baseType: !2985, size: 64, offset: 17088)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1321, line: 1151, flags: DIFlagFwdDecl)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2327, file: !1321, line: 1188, baseType: !206, size: 64, offset: 17152)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2327, file: !1321, line: 1191, baseType: !2989, size: 64, offset: 17216)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1321, line: 44, flags: DIFlagFwdDecl)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2327, file: !1321, line: 1194, baseType: !2992, size: 64, offset: 17280)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1321, line: 45, flags: DIFlagFwdDecl)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2327, file: !1321, line: 1197, baseType: !2995, size: 64, offset: 17344)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1321, line: 61, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2327, file: !1321, line: 1199, baseType: !2998, size: 64, offset: 17408)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3000, line: 99, size: 128, elements: !3001)
!3000 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3001 = !{!3002, !3003, !3004}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2999, file: !3000, line: 100, baseType: !604, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2999, file: !3000, line: 101, baseType: !336, size: 32, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2999, file: !3000, line: 103, baseType: !220, size: 16, offset: 96)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2327, file: !1321, line: 1202, baseType: !3006, size: 64, offset: 17472)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1321, line: 48, flags: DIFlagFwdDecl)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2327, file: !1321, line: 1205, baseType: !182, size: 64, offset: 17536)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2327, file: !1321, line: 1206, baseType: !3010, size: 64, offset: 17600)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !897, line: 14, baseType: !3012)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !897, line: 12, size: 384, elements: !3013)
!3013 = !{!3014}
!3014 = !DIDerivedType(tag: DW_TAG_member, scope: !3012, file: !897, line: 13, baseType: !3015, size: 384)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3012, file: !897, line: 13, size: 384, elements: !3016)
!3016 = !{!3017, !3018, !3019, !3020}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3015, file: !897, line: 13, baseType: !120, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3015, file: !897, line: 13, baseType: !120, size: 32, offset: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3015, file: !897, line: 13, baseType: !120, size: 32, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3015, file: !897, line: 13, baseType: !3021, size: 256, offset: 128)
!3021 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3022, line: 37, size: 256, elements: !3023)
!3022 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3023 = !{!3024, !3029, !3042, !3048, !3057, !3084, !3089}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3021, file: !3022, line: 42, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3021, file: !3022, line: 39, size: 64, elements: !3026)
!3026 = !{!3027, !3028}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3025, file: !3022, line: 40, baseType: !2691, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3025, file: !3022, line: 41, baseType: !229, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3021, file: !3022, line: 50, baseType: !3030, size: 192)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3021, file: !3022, line: 45, size: 192, elements: !3031)
!3031 = !{!3032, !3034, !3035, !3041}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3030, file: !3022, line: 46, baseType: !3033, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !180, line: 95, baseType: !120)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3030, file: !3022, line: 47, baseType: !120, size: 32, offset: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3030, file: !3022, line: 48, baseType: !3036, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3022, line: 11, baseType: !3037)
!3037 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3022, line: 8, size: 64, elements: !3038)
!3038 = !{!3039, !3040}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3037, file: !3022, line: 9, baseType: !120, size: 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3037, file: !3022, line: 10, baseType: !206, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3030, file: !3022, line: 49, baseType: !120, size: 32, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3021, file: !3022, line: 57, baseType: !3043, size: 128)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3021, file: !3022, line: 53, size: 128, elements: !3044)
!3044 = !{!3045, !3046, !3047}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3043, file: !3022, line: 54, baseType: !2691, size: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3043, file: !3022, line: 55, baseType: !229, size: 32, offset: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3043, file: !3022, line: 56, baseType: !3036, size: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3021, file: !3022, line: 66, baseType: !3049, size: 256)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3021, file: !3022, line: 60, size: 256, elements: !3050)
!3050 = !{!3051, !3052, !3053, !3054, !3056}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3049, file: !3022, line: 61, baseType: !2691, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3049, file: !3022, line: 62, baseType: !229, size: 32, offset: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3049, file: !3022, line: 63, baseType: !120, size: 32, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3049, file: !3022, line: 64, baseType: !3055, size: 64, offset: 128)
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !180, line: 94, baseType: !538)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3049, file: !3022, line: 65, baseType: !3055, size: 64, offset: 192)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3021, file: !3022, line: 105, baseType: !3058, size: 256)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3021, file: !3022, line: 69, size: 256, elements: !3059)
!3059 = !{!3060, !3061}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3058, file: !3022, line: 70, baseType: !206, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, scope: !3058, file: !3022, line: 79, baseType: !3062, size: 192, offset: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3058, file: !3022, line: 79, size: 192, elements: !3063)
!3063 = !{!3064, !3065, !3066, !3073, !3078}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3062, file: !3022, line: 81, baseType: !120, size: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3062, file: !3022, line: 86, baseType: !778, size: 16)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3062, file: !3022, line: 92, baseType: !3067, size: 192)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3062, file: !3022, line: 88, size: 192, elements: !3068)
!3068 = !{!3069, !3071, !3072}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3067, file: !3022, line: 89, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2480)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3067, file: !3022, line: 90, baseType: !206, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3067, file: !3022, line: 91, baseType: !206, size: 64, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3062, file: !3022, line: 97, baseType: !3074, size: 96)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3062, file: !3022, line: 94, size: 96, elements: !3075)
!3075 = !{!3076, !3077}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3074, file: !3022, line: 95, baseType: !3070, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3074, file: !3022, line: 96, baseType: !288, size: 32, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3062, file: !3022, line: 103, baseType: !3079, size: 128)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3062, file: !3022, line: 99, size: 128, elements: !3080)
!3080 = !{!3081, !3082, !3083}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3079, file: !3022, line: 100, baseType: !182, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3079, file: !3022, line: 101, baseType: !288, size: 32, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3079, file: !3022, line: 102, baseType: !288, size: 32, offset: 96)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3021, file: !3022, line: 111, baseType: !3085, size: 128)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3021, file: !3022, line: 108, size: 128, elements: !3086)
!3086 = !{!3087, !3088}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3085, file: !3022, line: 109, baseType: !539, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3085, file: !3022, line: 110, baseType: !120, size: 32, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3021, file: !3022, line: 118, baseType: !3090, size: 128)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3021, file: !3022, line: 114, size: 128, elements: !3091)
!3091 = !{!3092, !3093, !3094}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3090, file: !3022, line: 115, baseType: !206, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3090, file: !3022, line: 116, baseType: !120, size: 32, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3090, file: !3022, line: 117, baseType: !18, size: 32, offset: 96)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2327, file: !1321, line: 1208, baseType: !2875, size: 448, offset: 17664)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2327, file: !1321, line: 1215, baseType: !292, size: 64, offset: 18112)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2327, file: !1321, line: 1217, baseType: !292, size: 64, offset: 18176)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2327, file: !1321, line: 1219, baseType: !292, size: 64, offset: 18240)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2327, file: !1321, line: 1223, baseType: !3100, size: 64, offset: 18304)
!3100 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !160, line: 99, baseType: !3101)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 99, size: 64, elements: !3102)
!3102 = !{!3103}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3101, file: !160, line: 99, baseType: !2561, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2327, file: !1321, line: 1225, baseType: !258, size: 32, offset: 18368)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2327, file: !1321, line: 1226, baseType: !120, size: 32, offset: 18400)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2327, file: !1321, line: 1227, baseType: !120, size: 32, offset: 18432)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2327, file: !1321, line: 1231, baseType: !3108, size: 64, offset: 18496)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1321, line: 1231, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2327, file: !1321, line: 1233, baseType: !197, size: 128, offset: 18560)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2327, file: !1321, line: 1240, baseType: !3112, size: 64, offset: 18688)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1321, line: 62, flags: DIFlagFwdDecl)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2327, file: !1321, line: 1242, baseType: !3115, size: 64, offset: 18752)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1321, line: 1242, flags: DIFlagFwdDecl)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2327, file: !1321, line: 1244, baseType: !197, size: 128, offset: 18816)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2327, file: !1321, line: 1245, baseType: !3119, size: 64, offset: 18944)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1321, line: 51, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2327, file: !1321, line: 1246, baseType: !613, size: 256, offset: 19008)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2327, file: !1321, line: 1247, baseType: !18, size: 32, offset: 19264)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2327, file: !1321, line: 1250, baseType: !3124, size: 64, offset: 19328)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1321, line: 57, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2327, file: !1321, line: 1251, baseType: !613, size: 256, offset: 19392)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2327, file: !1321, line: 1252, baseType: !197, size: 128, offset: 19648)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2327, file: !1321, line: 1259, baseType: !1319, size: 64, offset: 19776)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2327, file: !1321, line: 1260, baseType: !778, size: 16, offset: 19840)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2327, file: !1321, line: 1261, baseType: !778, size: 16, offset: 19856)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2327, file: !1321, line: 1314, baseType: !3132, size: 64, offset: 19904)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3134, line: 62, size: 256, align: 256, elements: !3135)
!3134 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3135 = !{!3136, !3137, !3138, !3139, !3140, !3141, !3142}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3133, file: !3134, line: 75, baseType: !288, size: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3133, file: !3134, line: 90, baseType: !288, size: 32, offset: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3133, file: !3134, line: 112, baseType: !293, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3133, file: !3134, line: 132, baseType: !288, size: 32, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3133, file: !3134, line: 140, baseType: !288, size: 32, offset: 160)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3133, file: !3134, line: 149, baseType: !288, size: 32, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3133, file: !3134, line: 154, baseType: !3143, offset: 224)
!3143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !693)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2327, file: !1321, line: 1315, baseType: !286, size: 32, offset: 19968)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2327, file: !1321, line: 1316, baseType: !286, size: 32, offset: 20000)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2327, file: !1321, line: 1321, baseType: !182, size: 64, offset: 20032)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2327, file: !1321, line: 1325, baseType: !120, size: 32, offset: 20096)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2327, file: !1321, line: 1326, baseType: !120, size: 32, offset: 20128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2327, file: !1321, line: 1327, baseType: !120, size: 32, offset: 20160)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2327, file: !1321, line: 1328, baseType: !120, size: 32, offset: 20192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2327, file: !1321, line: 1329, baseType: !591, size: 128, align: 64, offset: 20224)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2327, file: !1321, line: 1332, baseType: !3153, size: 128, offset: 20352)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3154, line: 51, size: 128, elements: !3155)
!3154 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3155 = !{!3156, !3161, !3162}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3153, file: !3154, line: 60, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3158, line: 7, size: 64, elements: !3159)
!3158 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3159 = !{!3160}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3157, file: !3158, line: 12, baseType: !2558, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3153, file: !3154, line: 63, baseType: !809, size: 8, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3153, file: !3154, line: 70, baseType: !809, size: 8, offset: 72)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2327, file: !1321, line: 1335, baseType: !1372, size: 64, offset: 20480)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2327, file: !1321, line: 1337, baseType: !3165, size: 128, offset: 20544)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3154, line: 39, size: 128, elements: !3166)
!3166 = !{!3167, !3168, !3169}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3165, file: !3154, line: 40, baseType: !183, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3165, file: !3154, line: 42, baseType: !288, size: 32, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3165, file: !3154, line: 43, baseType: !288, size: 32, offset: 96)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2327, file: !1321, line: 1340, baseType: !3171, size: 64, offset: 20672)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1321, line: 69, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2327, file: !1321, line: 1351, baseType: !120, size: 32, offset: 20736)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2327, file: !1321, line: 1352, baseType: !120, size: 32, offset: 20768)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2327, file: !1321, line: 1354, baseType: !182, size: 64, offset: 20800)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2327, file: !1321, line: 1364, baseType: !292, size: 64, offset: 20864)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2327, file: !1321, line: 1365, baseType: !292, size: 64, offset: 20928)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2327, file: !1321, line: 1412, baseType: !182, size: 64, offset: 20992)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2327, file: !1321, line: 1453, baseType: !3180, size: 64, offset: 21056)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1321, line: 1453, flags: DIFlagFwdDecl)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2327, file: !1321, line: 1457, baseType: !3183, size: 64, offset: 21120)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !79, line: 61, size: 576, elements: !3185)
!3185 = !{!3186, !3187, !3206, !3209, !3210, !3243, !3253}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3184, file: !79, line: 62, baseType: !78, size: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, scope: !3184, file: !79, line: 64, baseType: !3188, size: 192, offset: 64)
!3188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3184, file: !79, line: 64, size: 192, elements: !3189)
!3189 = !{!3190, !3201}
!3190 = !DIDerivedType(tag: DW_TAG_member, scope: !3188, file: !79, line: 65, baseType: !3191, size: 192)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3188, file: !79, line: 65, size: 192, elements: !3192)
!3192 = !{!3193, !3200}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3191, file: !79, line: 66, baseType: !3194, size: 128)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3195, line: 50, size: 128, elements: !3196)
!3195 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3196 = !{!3197, !3198, !3199}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3194, file: !3195, line: 52, baseType: !182, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3194, file: !3195, line: 54, baseType: !18, size: 32, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3194, file: !3195, line: 55, baseType: !18, size: 32, offset: 96)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3191, file: !79, line: 67, baseType: !182, size: 64, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_member, scope: !3188, file: !79, line: 70, baseType: !3202, size: 192)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3188, file: !79, line: 70, size: 192, elements: !3203)
!3203 = !{!3204, !3205}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3202, file: !79, line: 71, baseType: !591, size: 128, align: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3202, file: !79, line: 72, baseType: !182, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3184, file: !79, line: 76, baseType: !3207, size: 64, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !79, line: 76, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3184, file: !79, line: 77, baseType: !182, size: 64, offset: 320)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3184, file: !79, line: 79, baseType: !3211, size: 64, offset: 384)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3195, line: 25, size: 256, elements: !3213)
!3213 = !{!3214, !3220, !3224}
!3214 = !DIDerivedType(tag: DW_TAG_member, scope: !3212, file: !3195, line: 26, baseType: !3215, size: 128)
!3215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3212, file: !3195, line: 26, size: 128, elements: !3216)
!3216 = !{!3217, !3219}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3215, file: !3195, line: 27, baseType: !3218, size: 128)
!3218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 128, elements: !2749)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3215, file: !3195, line: 28, baseType: !3218, size: 128)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3212, file: !3195, line: 31, baseType: !3221, size: 64, offset: 128)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3223)
!3223 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3195, line: 23, flags: DIFlagFwdDecl)
!3224 = !DIDerivedType(tag: DW_TAG_member, scope: !3212, file: !3195, line: 33, baseType: !3225, size: 64, offset: 192)
!3225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3212, file: !3195, line: 33, size: 64, elements: !3226)
!3226 = !{!3227, !3233, !3238}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3225, file: !3195, line: 38, baseType: !3228, size: 64)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3225, file: !3195, line: 34, size: 64, elements: !3229)
!3229 = !{!3230, !3231, !3232}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3228, file: !3195, line: 35, baseType: !735, size: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3228, file: !3195, line: 36, baseType: !344, size: 8, offset: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3228, file: !3195, line: 37, baseType: !344, size: 8, offset: 40)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3225, file: !3195, line: 42, baseType: !3234, size: 16)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3225, file: !3195, line: 39, size: 16, elements: !3235)
!3235 = !{!3236, !3237}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3234, file: !3195, line: 40, baseType: !344, size: 8)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3234, file: !3195, line: 41, baseType: !344, size: 8, offset: 8)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3225, file: !3195, line: 46, baseType: !3239, size: 16)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3225, file: !3195, line: 43, size: 16, elements: !3240)
!3240 = !{!3241, !3242}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3239, file: !3195, line: 44, baseType: !344, size: 8)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3239, file: !3195, line: 45, baseType: !344, size: 8, offset: 8)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3184, file: !79, line: 81, baseType: !3244, size: 64, offset: 448)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !79, line: 85, size: 384, elements: !3246)
!3246 = !{!3247, !3248, !3249, !3250, !3251, !3252}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3245, file: !79, line: 86, baseType: !3207, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3245, file: !79, line: 87, baseType: !182, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3245, file: !79, line: 88, baseType: !182, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3245, file: !79, line: 89, baseType: !182, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3245, file: !79, line: 90, baseType: !809, size: 8, offset: 256)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3245, file: !79, line: 92, baseType: !3244, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3184, file: !79, line: 82, baseType: !18, size: 32, offset: 512)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2327, file: !1321, line: 1463, baseType: !3255, offset: 21184)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1321, line: 739, elements: !1045)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2327, file: !1321, line: 1470, baseType: !591, size: 128, align: 64, offset: 21184)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2327, file: !1321, line: 1471, baseType: !656, size: 32, offset: 21312)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2327, file: !1321, line: 1472, baseType: !120, size: 32, offset: 21344)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2327, file: !1321, line: 1474, baseType: !2326, size: 64, offset: 21376)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2327, file: !1321, line: 1475, baseType: !1846, size: 320, offset: 21440)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2327, file: !1321, line: 1478, baseType: !3262, size: 64, offset: 21760)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3264, line: 49, size: 512, elements: !3265)
!3264 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3272, !3273, !3274, !3276}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3263, file: !3264, line: 50, baseType: !3262, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3263, file: !3264, line: 51, baseType: !206, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3263, file: !3264, line: 52, baseType: !182, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3263, file: !3264, line: 53, baseType: !182, size: 64, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3263, file: !3264, line: 54, baseType: !3271, size: 64, offset: 256)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3263, file: !3264, line: 56, baseType: !18, size: 32, offset: 320)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3263, file: !3264, line: 58, baseType: !18, size: 32, offset: 352)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3263, file: !3264, line: 59, baseType: !3275, size: 64, offset: 384)
!3275 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !177, line: 159, baseType: !292)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3263, file: !3264, line: 60, baseType: !1140, size: 64, offset: 448)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2327, file: !1321, line: 1482, baseType: !656, size: 32, offset: 21824)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2327, file: !1321, line: 1489, baseType: !206, size: 64, offset: 21888)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2327, file: !1321, line: 1504, baseType: !206, size: 64, offset: 21952)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2327, file: !1321, line: 1505, baseType: !293, size: 64, offset: 22016)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2327, file: !1321, line: 1506, baseType: !292, size: 64, offset: 22080)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2327, file: !1321, line: 1507, baseType: !293, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2327, file: !1321, line: 1508, baseType: !293, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2327, file: !1321, line: 1509, baseType: !293, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2327, file: !1321, line: 1510, baseType: !591, size: 128, align: 64, offset: 22208)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2327, file: !1321, line: 1511, baseType: !120, size: 32, offset: 22336)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2327, file: !1321, line: 1515, baseType: !3288, size: 64, offset: 22400)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !586, line: 56, size: 64, elements: !3289)
!3289 = !{!3290}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3288, file: !586, line: 57, baseType: !589, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2327, file: !1321, line: 1518, baseType: !3288, size: 64, offset: 22464)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2327, file: !1321, line: 1528, baseType: !591, size: 128, align: 64, offset: 22528)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2327, file: !1321, line: 1552, baseType: !3294, size: 35328, offset: 23040)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3295, line: 430, size: 35328, elements: !3296)
!3295 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3296 = !{!3297, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3326, !3327, !3328, !3329, !3330, !3331, !3334, !3335, !3336, !3337}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3294, file: !3295, line: 432, baseType: !3298, size: 192)
!3298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3299, size: 192, elements: !505)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3300, line: 16, size: 64, elements: !3301)
!3300 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3301 = !{!3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3299, file: !3300, line: 17, baseType: !351, size: 16)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3299, file: !3300, line: 18, baseType: !351, size: 16, offset: 16)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3299, file: !3300, line: 19, baseType: !351, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3299, file: !3300, line: 19, baseType: !351, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3299, file: !3300, line: 19, baseType: !351, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3299, file: !3300, line: 19, baseType: !351, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3299, file: !3300, line: 19, baseType: !351, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3299, file: !3300, line: 20, baseType: !351, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3299, file: !3300, line: 20, baseType: !351, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3299, file: !3300, line: 20, baseType: !351, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3299, file: !3300, line: 20, baseType: !351, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3299, file: !3300, line: 20, baseType: !351, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3299, file: !3300, line: 20, baseType: !351, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3294, file: !3295, line: 436, baseType: !182, size: 64, offset: 192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3294, file: !3295, line: 440, baseType: !220, size: 16, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3294, file: !3295, line: 441, baseType: !220, size: 16, offset: 272)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3294, file: !3295, line: 442, baseType: !220, size: 16, offset: 288)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3294, file: !3295, line: 443, baseType: !220, size: 16, offset: 304)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3294, file: !3295, line: 447, baseType: !182, size: 64, offset: 320)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3294, file: !3295, line: 448, baseType: !182, size: 64, offset: 384)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3294, file: !3295, line: 459, baseType: !3323, size: 256, offset: 448)
!3323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3324, size: 256, elements: !674)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3295, line: 428, flags: DIFlagFwdDecl)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3294, file: !3295, line: 461, baseType: !182, size: 64, offset: 704)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3294, file: !3295, line: 463, baseType: !182, size: 64, offset: 768)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3294, file: !3295, line: 465, baseType: !182, size: 64, offset: 832)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3294, file: !3295, line: 466, baseType: !182, size: 64, offset: 896)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3294, file: !3295, line: 467, baseType: !182, size: 64, offset: 960)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3294, file: !3295, line: 473, baseType: !3332, size: 64, offset: 1024)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3295, line: 10, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3294, file: !3295, line: 480, baseType: !182, size: 64, offset: 1088)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3294, file: !3295, line: 482, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3294, file: !3295, line: 491, baseType: !286, size: 32, offset: 1184)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3294, file: !3295, line: 501, baseType: !3338, size: 33792, offset: 1536)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3339, line: 448, size: 33792, elements: !3340)
!3339 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3340 = !{!3341, !3342, !3343, !3505, !3506, !3512, !3513}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3338, file: !3339, line: 461, baseType: !18, size: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3338, file: !3339, line: 468, baseType: !182, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3338, file: !3339, line: 476, baseType: !3344, size: 64, offset: 128)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3339, line: 356, size: 33280, align: 512, elements: !3346)
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3345, file: !3339, line: 358, baseType: !18, size: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3345, file: !3339, line: 361, baseType: !18, size: 32, offset: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3345, file: !3339, line: 364, baseType: !292, size: 64, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3345, file: !3339, line: 367, baseType: !292, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3345, file: !3339, line: 370, baseType: !292, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3345, file: !3339, line: 373, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3345, file: !3339, line: 376, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3345, file: !3339, line: 391, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3345, file: !3339, line: 394, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3345, file: !3339, line: 397, baseType: !3357, size: 32768, offset: 512)
!3357 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3339, line: 348, size: 32768, elements: !3358)
!3358 = !{!3359, !3374, !3411, !3488, !3501}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3357, file: !3339, line: 349, baseType: !3360, size: 896)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3339, line: 12, size: 896, elements: !3361)
!3361 = !{!3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3373}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3360, file: !3339, line: 13, baseType: !286, size: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3360, file: !3339, line: 14, baseType: !286, size: 32, offset: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3360, file: !3339, line: 15, baseType: !286, size: 32, offset: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3360, file: !3339, line: 16, baseType: !286, size: 32, offset: 96)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3360, file: !3339, line: 17, baseType: !286, size: 32, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3360, file: !3339, line: 18, baseType: !286, size: 32, offset: 160)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3360, file: !3339, line: 19, baseType: !286, size: 32, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3360, file: !3339, line: 22, baseType: !3370, size: 640, offset: 224)
!3370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 640, elements: !3371)
!3371 = !{!3372}
!3372 = !DISubrange(count: 20)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3360, file: !3339, line: 25, baseType: !286, size: 32, offset: 864)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3357, file: !3339, line: 350, baseType: !3375, size: 4096, align: 128)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3339, line: 34, size: 4096, align: 128, elements: !3376)
!3376 = !{!3377, !3378, !3379, !3380, !3381, !3396, !3397, !3398, !3400, !3402, !3406}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3375, file: !3339, line: 35, baseType: !351, size: 16)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3375, file: !3339, line: 36, baseType: !351, size: 16, offset: 16)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3375, file: !3339, line: 37, baseType: !351, size: 16, offset: 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3375, file: !3339, line: 38, baseType: !351, size: 16, offset: 48)
!3381 = !DIDerivedType(tag: DW_TAG_member, scope: !3375, file: !3339, line: 39, baseType: !3382, size: 128, offset: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3375, file: !3339, line: 39, size: 128, elements: !3383)
!3383 = !{!3384, !3389}
!3384 = !DIDerivedType(tag: DW_TAG_member, scope: !3382, file: !3339, line: 40, baseType: !3385, size: 128)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3382, file: !3339, line: 40, size: 128, elements: !3386)
!3386 = !{!3387, !3388}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3385, file: !3339, line: 41, baseType: !292, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3385, file: !3339, line: 42, baseType: !292, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !3382, file: !3339, line: 44, baseType: !3390, size: 128)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3382, file: !3339, line: 44, size: 128, elements: !3391)
!3391 = !{!3392, !3393, !3394, !3395}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3390, file: !3339, line: 45, baseType: !286, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3390, file: !3339, line: 46, baseType: !286, size: 32, offset: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3390, file: !3339, line: 47, baseType: !286, size: 32, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3390, file: !3339, line: 48, baseType: !286, size: 32, offset: 96)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3375, file: !3339, line: 51, baseType: !286, size: 32, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3375, file: !3339, line: 52, baseType: !286, size: 32, offset: 224)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3375, file: !3339, line: 55, baseType: !3399, size: 1024, offset: 256)
!3399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 1024, elements: !302)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3375, file: !3339, line: 58, baseType: !3401, size: 2048, offset: 1280)
!3401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 2048, elements: !509)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3375, file: !3339, line: 60, baseType: !3403, size: 384, offset: 3328)
!3403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 384, elements: !3404)
!3404 = !{!3405}
!3405 = !DISubrange(count: 12)
!3406 = !DIDerivedType(tag: DW_TAG_member, scope: !3375, file: !3339, line: 62, baseType: !3407, size: 384, offset: 3712)
!3407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3375, file: !3339, line: 62, size: 384, elements: !3408)
!3408 = !{!3409, !3410}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3407, file: !3339, line: 63, baseType: !3403, size: 384)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3407, file: !3339, line: 64, baseType: !3403, size: 384)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3357, file: !3339, line: 351, baseType: !3412, size: 1088)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3339, line: 79, size: 1088, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3487}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3412, file: !3339, line: 80, baseType: !286, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3412, file: !3339, line: 81, baseType: !286, size: 32, offset: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3412, file: !3339, line: 82, baseType: !286, size: 32, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3412, file: !3339, line: 83, baseType: !286, size: 32, offset: 96)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3412, file: !3339, line: 84, baseType: !286, size: 32, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3412, file: !3339, line: 85, baseType: !286, size: 32, offset: 160)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3412, file: !3339, line: 86, baseType: !286, size: 32, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3412, file: !3339, line: 88, baseType: !3370, size: 640, offset: 224)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3412, file: !3339, line: 89, baseType: !344, size: 8, offset: 864)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3412, file: !3339, line: 90, baseType: !344, size: 8, offset: 872)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3412, file: !3339, line: 91, baseType: !344, size: 8, offset: 880)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3412, file: !3339, line: 92, baseType: !344, size: 8, offset: 888)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3412, file: !3339, line: 93, baseType: !344, size: 8, offset: 896)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3412, file: !3339, line: 94, baseType: !344, size: 8, offset: 904)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3412, file: !3339, line: 95, baseType: !3429, size: 64, offset: 960)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3431, line: 11, size: 128, elements: !3432)
!3431 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3432 = !{!3433, !3434}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3430, file: !3431, line: 12, baseType: !539, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3430, file: !3431, line: 13, baseType: !3435, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3437, line: 103, size: 1344, elements: !3438)
!3437 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3438 = !{!3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3467, !3468, !3469}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3436, file: !3437, line: 109, baseType: !182, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3436, file: !3437, line: 110, baseType: !182, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3436, file: !3437, line: 111, baseType: !182, size: 64, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3436, file: !3437, line: 112, baseType: !182, size: 64, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3436, file: !3437, line: 113, baseType: !182, size: 64, offset: 256)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3436, file: !3437, line: 114, baseType: !182, size: 64, offset: 320)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3436, file: !3437, line: 117, baseType: !182, size: 64, offset: 384)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3436, file: !3437, line: 118, baseType: !182, size: 64, offset: 448)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3436, file: !3437, line: 119, baseType: !182, size: 64, offset: 512)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3436, file: !3437, line: 120, baseType: !182, size: 64, offset: 576)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3436, file: !3437, line: 121, baseType: !182, size: 64, offset: 640)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3436, file: !3437, line: 122, baseType: !182, size: 64, offset: 704)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3436, file: !3437, line: 123, baseType: !182, size: 64, offset: 768)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3436, file: !3437, line: 124, baseType: !182, size: 64, offset: 832)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3436, file: !3437, line: 125, baseType: !182, size: 64, offset: 896)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3436, file: !3437, line: 139, baseType: !182, size: 64, offset: 960)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3436, file: !3437, line: 142, baseType: !182, size: 64, offset: 1024)
!3456 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !3437, line: 144, baseType: !3457, size: 64, offset: 1088)
!3457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3436, file: !3437, line: 144, size: 64, elements: !3458)
!3458 = !{!3459, !3460, !3461}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3457, file: !3437, line: 146, baseType: !351, size: 16)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3457, file: !3437, line: 148, baseType: !292, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3457, file: !3437, line: 150, baseType: !3462, size: 64)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3437, line: 59, size: 64, elements: !3463)
!3463 = !{!3464, !3465, !3466}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3462, file: !3437, line: 61, baseType: !292, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3462, file: !3437, line: 63, baseType: !292, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3462, file: !3437, line: 65, baseType: !292, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3436, file: !3437, line: 153, baseType: !182, size: 64, offset: 1152)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3436, file: !3437, line: 154, baseType: !182, size: 64, offset: 1216)
!3469 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !3437, line: 156, baseType: !3470, size: 64, offset: 1280)
!3470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3436, file: !3437, line: 156, size: 64, elements: !3471)
!3471 = !{!3472, !3473, !3474}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3470, file: !3437, line: 158, baseType: !351, size: 16)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3470, file: !3437, line: 160, baseType: !292, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3470, file: !3437, line: 162, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3437, line: 69, size: 64, elements: !3476)
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3475, file: !3437, line: 71, baseType: !292, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3475, file: !3437, line: 73, baseType: !292, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3475, file: !3437, line: 75, baseType: !292, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3475, file: !3437, line: 77, baseType: !292, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3475, file: !3437, line: 80, baseType: !292, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3475, file: !3437, line: 83, baseType: !292, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3475, file: !3437, line: 86, baseType: !292, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3475, file: !3437, line: 88, baseType: !292, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3475, file: !3437, line: 93, baseType: !292, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3475, file: !3437, line: 100, baseType: !292, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3412, file: !3339, line: 96, baseType: !286, size: 32, offset: 1024)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3357, file: !3339, line: 352, baseType: !3489, size: 4608, align: 512)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3339, line: 333, size: 4608, align: 512, elements: !3490)
!3490 = !{!3491, !3492, !3499}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3489, file: !3339, line: 334, baseType: !3375, size: 4096, align: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3489, file: !3339, line: 335, baseType: !3493, size: 512, offset: 4096)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3339, line: 312, size: 512, elements: !3494)
!3494 = !{!3495, !3496, !3497}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3493, file: !3339, line: 313, baseType: !292, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3493, file: !3339, line: 314, baseType: !292, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3493, file: !3339, line: 315, baseType: !3498, size: 384, offset: 128)
!3498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 384, elements: !796)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3489, file: !3339, line: 336, baseType: !3500, offset: 4608)
!3500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, elements: !693)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3357, file: !3339, line: 353, baseType: !3502, size: 32768)
!3502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 32768, elements: !3503)
!3503 = !{!3504}
!3504 = !DISubrange(count: 4096)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3338, file: !3339, line: 484, baseType: !3344, size: 64, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3338, file: !3339, line: 491, baseType: !3507, size: 128, offset: 256)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3339, line: 404, size: 128, elements: !3508)
!3508 = !{!3509, !3510, !3511}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3507, file: !3339, line: 424, baseType: !292, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3507, file: !3339, line: 432, baseType: !18, size: 32, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3507, file: !3339, line: 440, baseType: !18, size: 32, offset: 96)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3338, file: !3339, line: 498, baseType: !3507, size: 128, offset: 384)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3338, file: !3339, line: 508, baseType: !3345, size: 33280, align: 512, offset: 512)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2309, file: !2310, line: 16, baseType: !678, size: 192, offset: 512)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2309, file: !2310, line: 17, baseType: !336, size: 32, offset: 704)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !413, file: !25, line: 1240, baseType: !206, size: 64, offset: 6912)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !413, file: !25, line: 1243, baseType: !286, size: 32, offset: 6976)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !413, file: !25, line: 1245, baseType: !766, size: 64, offset: 7040)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !413, file: !25, line: 1246, baseType: !766, size: 64, offset: 7104)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !413, file: !25, line: 1248, baseType: !288, size: 32, offset: 7168)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !413, file: !25, line: 1249, baseType: !3522, size: 64, offset: 7232)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !25, line: 634, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !413, file: !25, line: 1252, baseType: !3525, size: 256, offset: 7296)
!3525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !302)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !413, file: !25, line: 1253, baseType: !3527, size: 128, offset: 7552)
!3527 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3528, line: 21, baseType: !3529)
!3528 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3528, line: 19, size: 128, elements: !3530)
!3530 = !{!3531}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3529, file: !3528, line: 20, baseType: !3532, size: 128)
!3532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 128, elements: !2749)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !413, file: !25, line: 1255, baseType: !18, size: 32, offset: 7680)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !413, file: !25, line: 1261, baseType: !613, size: 256, offset: 7744)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !413, file: !25, line: 1267, baseType: !376, size: 64, offset: 8000)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !413, file: !25, line: 1269, baseType: !356, size: 64, offset: 8064)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !413, file: !25, line: 1271, baseType: !3538, size: 448, offset: 8128)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2089, line: 63, size: 448, elements: !3539)
!3539 = !{!3540, !3545, !3546, !3547, !3548, !3549, !3550}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3538, file: !2089, line: 64, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!182, !3544, !2087}
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3538, file: !2089, line: 66, baseType: !3541, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3538, file: !2089, line: 69, baseType: !539, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3538, file: !2089, line: 70, baseType: !120, size: 32, offset: 192)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3538, file: !2089, line: 71, baseType: !18, size: 32, offset: 224)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3538, file: !2089, line: 74, baseType: !197, size: 128, offset: 256)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3538, file: !2089, line: 85, baseType: !3551, size: 64, offset: 384)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !413, file: !25, line: 1274, baseType: !604, size: 64, offset: 8576)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !413, file: !25, line: 1280, baseType: !604, size: 64, offset: 8640)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !413, file: !25, line: 1283, baseType: !120, size: 32, offset: 8704)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !413, file: !25, line: 1286, baseType: !1424, size: 32, offset: 8736)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !413, file: !25, line: 1289, baseType: !1908, size: 64, offset: 8768)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !413, file: !25, line: 1290, baseType: !665, size: 64, offset: 8832)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !413, file: !25, line: 1297, baseType: !892, size: 64, offset: 8896)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !413, file: !25, line: 1304, baseType: !3560, size: 64, offset: 8960)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3561, line: 49, size: 64, elements: !3562)
!3561 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3562 = !{!3563}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3560, file: !3561, line: 50, baseType: !3564, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3561, line: 41, size: 512, align: 512, elements: !3566)
!3566 = !{!3567, !3568, !3573}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3565, file: !3561, line: 43, baseType: !316, size: 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3565, file: !3561, line: 45, baseType: !3569, size: 192, offset: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3561, line: 29, size: 192, elements: !3570)
!3570 = !{!3571, !3572}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3569, file: !3561, line: 30, baseType: !197, size: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3569, file: !3561, line: 32, baseType: !539, size: 64, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3565, file: !3561, line: 46, baseType: !539, size: 64, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !413, file: !25, line: 1305, baseType: !3560, size: 64, offset: 9024)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !413, file: !25, line: 1306, baseType: !591, size: 128, align: 64, offset: 9088)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !413, file: !25, line: 1307, baseType: !1179, size: 256, offset: 9216)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !413, file: !25, line: 1309, baseType: !613, size: 256, offset: 9472)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !413, file: !25, line: 1314, baseType: !120, size: 32, offset: 9728)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !413, file: !25, line: 1317, baseType: !316, size: 32, align: 512, offset: 10240)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !413, file: !25, line: 1318, baseType: !197, size: 128, offset: 10304)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !413, file: !25, line: 1320, baseType: !316, size: 32, offset: 10432)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !413, file: !25, line: 1321, baseType: !197, size: 128, offset: 10496)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !407, file: !408, line: 73, baseType: !120, size: 32, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !407, file: !408, line: 74, baseType: !3585, size: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !717, line: 42, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !358, file: !254, line: 141, baseType: !3589, size: 64, offset: 704)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!120, !2149, !809}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !358, file: !254, line: 142, baseType: !3593, size: 64, offset: 768)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!252, !252, !3596}
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !253, file: !254, line: 96, baseType: !412, size: 64, offset: 832)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !253, file: !254, line: 97, baseType: !182, size: 64, offset: 896)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !253, file: !254, line: 98, baseType: !206, size: 64, offset: 960)
!3601 = !DIDerivedType(tag: DW_TAG_member, scope: !253, file: !254, line: 100, baseType: !3602, size: 128, offset: 1024)
!3602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !253, file: !254, line: 100, size: 128, elements: !3603)
!3603 = !{!3604, !3605}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3602, file: !254, line: 101, baseType: !197, size: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3602, file: !254, line: 102, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !253, file: !254, line: 104, baseType: !197, size: 128, offset: 1152)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !253, file: !254, line: 105, baseType: !197, size: 128, offset: 1280)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !253, file: !254, line: 113, baseType: !3610, size: 128, offset: 1408)
!3610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !253, file: !254, line: 109, size: 128, elements: !3611)
!3611 = !{!3612, !3613, !3614}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3610, file: !254, line: 110, baseType: !669, size: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3610, file: !254, line: 111, baseType: !268, size: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3610, file: !254, line: 112, baseType: !591, size: 128, align: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !246, file: !25, line: 1968, baseType: !3616, size: 64, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!376, !252, !215, !3619}
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3621, line: 10, size: 128, elements: !3622)
!3621 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3622 = !{!3623, !3624}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3620, file: !3621, line: 11, baseType: !1464, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3620, file: !3621, line: 12, baseType: !206, size: 64, offset: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !246, file: !25, line: 1969, baseType: !3626, size: 64, offset: 128)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!120, !3585, !215, !120}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !246, file: !25, line: 1970, baseType: !3630, size: 64, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!240, !215, !120, !809}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !246, file: !25, line: 1972, baseType: !3634, size: 64, offset: 256)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!120, !252, !401, !120}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !246, file: !25, line: 1974, baseType: !3638, size: 64, offset: 320)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!120, !3585, !215, !252, !219, !809}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !246, file: !25, line: 1976, baseType: !3642, size: 64, offset: 384)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!120, !252, !215, !252}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !246, file: !25, line: 1977, baseType: !3646, size: 64, offset: 448)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!120, !215, !252}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !246, file: !25, line: 1978, baseType: !3650, size: 64, offset: 512)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!120, !3585, !215, !252, !376}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !246, file: !25, line: 1980, baseType: !3654, size: 64, offset: 576)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!120, !3585, !215, !252, !219}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !246, file: !25, line: 1982, baseType: !3646, size: 64, offset: 640)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !246, file: !25, line: 1983, baseType: !3659, size: 64, offset: 704)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!120, !3585, !215, !252, !219, !417}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !246, file: !25, line: 1985, baseType: !3663, size: 64, offset: 768)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!120, !3585, !215, !252, !215, !252, !18}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !246, file: !25, line: 1987, baseType: !3667, size: 64, offset: 832)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!120, !3585, !252, !3670}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !25, line: 226, size: 640, elements: !3672)
!3672 = !{!3673, !3674, !3675, !3685, !3694, !3695, !3700, !3701, !3702}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3671, file: !25, line: 227, baseType: !18, size: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3671, file: !25, line: 228, baseType: !219, size: 16, offset: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, scope: !3671, file: !25, line: 241, baseType: !3676, size: 32, offset: 64)
!3676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3671, file: !25, line: 241, size: 32, elements: !3677)
!3677 = !{!3678, !3679}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3676, file: !25, line: 242, baseType: !223, size: 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3676, file: !25, line: 243, baseType: !3680, size: 32)
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3681, line: 16, baseType: !3682)
!3681 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3681, line: 14, size: 32, elements: !3683)
!3683 = !{!3684}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3682, file: !3681, line: 15, baseType: !228, size: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, scope: !3671, file: !25, line: 245, baseType: !3686, size: 32, offset: 96)
!3686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3671, file: !25, line: 245, size: 32, elements: !3687)
!3687 = !{!3688, !3689}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3686, file: !25, line: 246, baseType: !232, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3686, file: !25, line: 247, baseType: !3690, size: 32)
!3690 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3681, line: 20, baseType: !3691)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3681, line: 18, size: 32, elements: !3692)
!3692 = !{!3693}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3691, file: !3681, line: 19, baseType: !236, size: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3671, file: !25, line: 249, baseType: !422, size: 64, offset: 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3671, file: !25, line: 250, baseType: !3696, size: 128, offset: 192)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !767, line: 13, size: 128, elements: !3697)
!3697 = !{!3698, !3699}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3696, file: !767, line: 14, baseType: !766, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3696, file: !767, line: 15, baseType: !539, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3671, file: !25, line: 251, baseType: !3696, size: 128, offset: 320)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3671, file: !25, line: 252, baseType: !3696, size: 128, offset: 448)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3671, file: !25, line: 259, baseType: !578, size: 64, offset: 576)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !246, file: !25, line: 1988, baseType: !3704, size: 64, offset: 896)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!120, !3585, !2149, !3707, !286, !18}
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3709, line: 22, size: 1280, elements: !3710)
!3709 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3710 = !{!3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3708, file: !3709, line: 23, baseType: !286, size: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3708, file: !3709, line: 24, baseType: !219, size: 16, offset: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3708, file: !3709, line: 25, baseType: !18, size: 32, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3708, file: !3709, line: 26, baseType: !774, size: 32, offset: 96)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3708, file: !3709, line: 27, baseType: !292, size: 64, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3708, file: !3709, line: 28, baseType: !292, size: 64, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3708, file: !3709, line: 41, baseType: !292, size: 64, offset: 256)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3708, file: !3709, line: 42, baseType: !417, size: 32, offset: 320)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3708, file: !3709, line: 43, baseType: !417, size: 32, offset: 352)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3708, file: !3709, line: 44, baseType: !223, size: 32, offset: 384)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3708, file: !3709, line: 45, baseType: !232, size: 32, offset: 416)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3708, file: !3709, line: 46, baseType: !422, size: 64, offset: 448)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3708, file: !3709, line: 47, baseType: !3696, size: 128, offset: 512)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3708, file: !3709, line: 48, baseType: !3696, size: 128, offset: 640)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3708, file: !3709, line: 49, baseType: !3696, size: 128, offset: 768)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3708, file: !3709, line: 50, baseType: !3696, size: 128, offset: 896)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3708, file: !3709, line: 51, baseType: !292, size: 64, offset: 1024)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3708, file: !3709, line: 52, baseType: !292, size: 64, offset: 1088)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3708, file: !3709, line: 53, baseType: !286, size: 32, offset: 1152)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3708, file: !3709, line: 54, baseType: !286, size: 32, offset: 1184)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3708, file: !3709, line: 55, baseType: !292, size: 64, offset: 1216)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !246, file: !25, line: 1990, baseType: !3733, size: 64, offset: 960)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!536, !252, !401, !178}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !246, file: !25, line: 1991, baseType: !3737, size: 64, offset: 1024)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!120, !215, !3740, !292, !292}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !25, line: 55, flags: DIFlagFwdDecl)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !246, file: !25, line: 1993, baseType: !3743, size: 64, offset: 1088)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!120, !215, !120}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !246, file: !25, line: 1994, baseType: !3747, size: 64, offset: 1152)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!120, !215, !252, !578, !18, !219}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !246, file: !25, line: 1997, baseType: !3751, size: 64, offset: 1216)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!120, !3585, !215, !578, !219}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !246, file: !25, line: 1999, baseType: !3755, size: 64, offset: 1280)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!240, !3585, !252, !120}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !246, file: !25, line: 2001, baseType: !3759, size: 64, offset: 1344)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!120, !3585, !252, !240, !120}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !246, file: !25, line: 2003, baseType: !3763, size: 64, offset: 1408)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!120, !3585, !252, !3766}
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !25, line: 76, flags: DIFlagFwdDecl)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !246, file: !25, line: 2005, baseType: !3769, size: 64, offset: 1472)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!120, !252, !3766}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !246, file: !25, line: 2006, baseType: !3773, size: 64, offset: 1536)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!3776, !215}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !25, line: 3192, size: 192, elements: !3778)
!3778 = !{!3779, !3786}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3777, file: !25, line: 3193, baseType: !3780, size: 128)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3781, line: 296, size: 128, elements: !3782)
!3781 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3782 = !{!3783, !3784, !3785}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3780, file: !3781, line: 297, baseType: !316, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3780, file: !3781, line: 299, baseType: !176, size: 32, offset: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3780, file: !3781, line: 300, baseType: !206, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3777, file: !25, line: 3194, baseType: !286, size: 32, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !216, file: !25, line: 655, baseType: !412, size: 64, offset: 448)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !216, file: !25, line: 656, baseType: !211, size: 64, offset: 512)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !216, file: !25, line: 659, baseType: !206, size: 64, offset: 576)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !216, file: !25, line: 663, baseType: !182, size: 64, offset: 640)
!3791 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !25, line: 671, baseType: !3792, size: 32, offset: 704)
!3792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !25, line: 671, size: 32, elements: !3793)
!3793 = !{!3794, !3796}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3792, file: !25, line: 672, baseType: !3795, size: 32)
!3795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3792, file: !25, line: 673, baseType: !18, size: 32)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !216, file: !25, line: 675, baseType: !417, size: 32, offset: 736)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !216, file: !25, line: 676, baseType: !422, size: 64, offset: 768)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !216, file: !25, line: 677, baseType: !3696, size: 128, offset: 832)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !216, file: !25, line: 678, baseType: !3696, size: 128, offset: 960)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !216, file: !25, line: 679, baseType: !3696, size: 128, offset: 1088)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !216, file: !25, line: 680, baseType: !316, size: 32, offset: 1216)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !216, file: !25, line: 681, baseType: !220, size: 16, offset: 1248)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !216, file: !25, line: 682, baseType: !344, size: 8, offset: 1264)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !216, file: !25, line: 683, baseType: !344, size: 8, offset: 1272)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !216, file: !25, line: 684, baseType: !2222, size: 64, offset: 1280)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !216, file: !25, line: 691, baseType: !182, size: 64, offset: 1344)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !216, file: !25, line: 692, baseType: !750, size: 320, offset: 1408)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !216, file: !25, line: 694, baseType: !182, size: 64, offset: 1728)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !216, file: !25, line: 695, baseType: !182, size: 64, offset: 1792)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !216, file: !25, line: 697, baseType: !669, size: 128, offset: 1856)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !216, file: !25, line: 698, baseType: !197, size: 128, offset: 1984)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !216, file: !25, line: 707, baseType: !197, size: 128, offset: 2112)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !216, file: !25, line: 708, baseType: !197, size: 128, offset: 2240)
!3815 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !25, line: 709, baseType: !3816, size: 128, offset: 2368)
!3816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !25, line: 709, size: 128, elements: !3817)
!3817 = !{!3818, !3819}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3816, file: !25, line: 710, baseType: !665, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3816, file: !25, line: 711, baseType: !591, size: 128, align: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !216, file: !25, line: 713, baseType: !606, size: 64, offset: 2496)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !216, file: !25, line: 714, baseType: !606, size: 64, offset: 2560)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !216, file: !25, line: 715, baseType: !336, size: 32, offset: 2624)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !216, file: !25, line: 716, baseType: !336, size: 32, offset: 2656)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !216, file: !25, line: 717, baseType: !336, size: 32, offset: 2688)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !216, file: !25, line: 719, baseType: !336, size: 32, offset: 2720)
!3826 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !25, line: 721, baseType: !3827, size: 64, offset: 2752)
!3827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !25, line: 721, size: 64, elements: !3828)
!3828 = !{!3829, !3830}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3827, file: !25, line: 722, baseType: !928, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3827, file: !25, line: 723, baseType: !1976, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !216, file: !25, line: 725, baseType: !3832, size: 64, offset: 2816)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !25, line: 725, flags: DIFlagFwdDecl)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !216, file: !25, line: 726, baseType: !212, size: 1536, align: 64, offset: 2880)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !216, file: !25, line: 727, baseType: !197, size: 128, offset: 4416)
!3836 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !25, line: 728, baseType: !3837, size: 64, offset: 4544)
!3837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !25, line: 728, size: 64, elements: !3838)
!3838 = !{!3839, !3840, !3843, !3844}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3837, file: !25, line: 729, baseType: !1372, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3837, file: !25, line: 730, baseType: !3841, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !25, line: 730, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3837, file: !25, line: 731, baseType: !401, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3837, file: !25, line: 732, baseType: !18, size: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !216, file: !25, line: 735, baseType: !288, size: 32, offset: 4608)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !216, file: !25, line: 738, baseType: !288, size: 32, offset: 4640)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !216, file: !25, line: 739, baseType: !3522, size: 64, offset: 4672)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !216, file: !25, line: 750, baseType: !206, size: 64, offset: 4736)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !212, file: !25, line: 474, baseType: !3780, size: 128, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !212, file: !25, line: 475, baseType: !750, size: 320, offset: 192)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !212, file: !25, line: 476, baseType: !176, size: 32, offset: 512)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !212, file: !25, line: 477, baseType: !336, size: 32, offset: 544)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !212, file: !25, line: 482, baseType: !2496, size: 128, offset: 576)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !212, file: !25, line: 483, baseType: !182, size: 64, offset: 704)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !212, file: !25, line: 484, baseType: !182, size: 64, offset: 768)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !212, file: !25, line: 485, baseType: !3857, size: 64, offset: 832)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3859)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !25, line: 404, size: 1280, elements: !3860)
!3860 = !{!3861, !3865, !3935, !3939, !3943, !3949, !3953, !3957, !3962, !3966, !3970, !3974, !3975, !3979, !3983, !3987, !3992, !3996, !4003, !4004}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3859, file: !25, line: 405, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!120, !183, !1988}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3859, file: !25, line: 406, baseType: !3866, size: 64, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!120, !578, !3869}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !49, line: 293, size: 1536, elements: !3871)
!3871 = !{!3872, !3902, !3916}
!3872 = !DIDerivedType(tag: DW_TAG_member, scope: !3870, file: !49, line: 295, baseType: !3873, size: 512)
!3873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3870, file: !49, line: 295, size: 512, elements: !3874)
!3874 = !{!3875, !3901}
!3875 = !DIDerivedType(tag: DW_TAG_member, scope: !3873, file: !49, line: 296, baseType: !3876, size: 448)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3873, file: !49, line: 296, size: 448, elements: !3877)
!3877 = !{!3878, !3879, !3888, !3889, !3890, !3899, !3900}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3876, file: !49, line: 298, baseType: !182, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, scope: !3876, file: !49, line: 299, baseType: !3880, size: 128, offset: 64)
!3880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3876, file: !49, line: 299, size: 128, elements: !3881)
!3881 = !{!3882, !3883}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3880, file: !49, line: 300, baseType: !197, size: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, scope: !3880, file: !49, line: 302, baseType: !3884, size: 128)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3880, file: !49, line: 302, size: 128, elements: !3885)
!3885 = !{!3886, !3887}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3884, file: !49, line: 303, baseType: !206, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3884, file: !49, line: 305, baseType: !18, size: 32, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3876, file: !49, line: 310, baseType: !211, size: 64, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3876, file: !49, line: 311, baseType: !182, size: 64, offset: 256)
!3890 = !DIDerivedType(tag: DW_TAG_member, scope: !3876, file: !49, line: 312, baseType: !3891, size: 64, offset: 320)
!3891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3876, file: !49, line: 312, size: 64, elements: !3892)
!3892 = !{!3893, !3894}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3891, file: !49, line: 313, baseType: !206, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3891, file: !49, line: 314, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !49, line: 257, baseType: !3896)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 255, size: 64, elements: !3897)
!3897 = !{!3898}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3896, file: !49, line: 256, baseType: !182, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3876, file: !49, line: 316, baseType: !336, size: 32, offset: 384)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3876, file: !49, line: 317, baseType: !336, size: 32, offset: 416)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3873, file: !49, line: 323, baseType: !184, size: 512, align: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, scope: !3870, file: !49, line: 325, baseType: !3903, size: 512, offset: 512)
!3903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3870, file: !49, line: 325, size: 512, elements: !3904)
!3904 = !{!3905, !3915}
!3905 = !DIDerivedType(tag: DW_TAG_member, scope: !3903, file: !49, line: 326, baseType: !3906, size: 320)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3903, file: !49, line: 326, size: 320, elements: !3907)
!3907 = !{!3908, !3909, !3910, !3911, !3912, !3913, !3914}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3906, file: !49, line: 327, baseType: !182, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3906, file: !49, line: 328, baseType: !182, size: 64, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3906, file: !49, line: 329, baseType: !182, size: 64, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3906, file: !49, line: 331, baseType: !336, size: 32, offset: 192)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3906, file: !49, line: 332, baseType: !336, size: 32, offset: 224)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3906, file: !49, line: 333, baseType: !336, size: 32, offset: 256)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3906, file: !49, line: 335, baseType: !18, size: 32, offset: 288)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3903, file: !49, line: 339, baseType: !184, size: 512, align: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, scope: !3870, file: !49, line: 341, baseType: !3917, size: 512, offset: 1024)
!3917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3870, file: !49, line: 341, size: 512, elements: !3918)
!3918 = !{!3919, !3928, !3934}
!3919 = !DIDerivedType(tag: DW_TAG_member, scope: !3917, file: !49, line: 342, baseType: !3920, size: 384)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3917, file: !49, line: 342, size: 384, elements: !3921)
!3921 = !{!3922, !3923, !3924, !3925, !3926, !3927}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3920, file: !49, line: 343, baseType: !182, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3920, file: !49, line: 344, baseType: !182, size: 64, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3920, file: !49, line: 346, baseType: !206, size: 64, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3920, file: !49, line: 347, baseType: !206, size: 64, offset: 192)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3920, file: !49, line: 348, baseType: !206, size: 64, offset: 256)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3920, file: !49, line: 349, baseType: !206, size: 64, offset: 320)
!3928 = !DIDerivedType(tag: DW_TAG_member, scope: !3917, file: !49, line: 352, baseType: !3929, size: 256)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3917, file: !49, line: 352, size: 256, elements: !3930)
!3930 = !{!3931, !3932, !3933}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3929, file: !49, line: 353, baseType: !182, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3929, file: !49, line: 354, baseType: !182, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3929, file: !49, line: 356, baseType: !197, size: 128, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3917, file: !49, line: 359, baseType: !184, size: 512, align: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3859, file: !25, line: 409, baseType: !3936, size: 64, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!120, !211, !1988}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3859, file: !25, line: 412, baseType: !3940, size: 64, offset: 192)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!809, !211, !3869}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3859, file: !25, line: 414, baseType: !3944, size: 64, offset: 256)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !3947}
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !25, line: 310, flags: DIFlagFwdDecl)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3859, file: !25, line: 416, baseType: !3950, size: 64, offset: 320)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!120, !578, !211, !422, !18, !3271, !1387}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3859, file: !25, line: 419, baseType: !3954, size: 64, offset: 384)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!120, !578, !211, !422, !18, !18, !183, !206}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3859, file: !25, line: 424, baseType: !3958, size: 64, offset: 448)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!3961, !211, !3961}
!3961 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !177, line: 131, baseType: !292)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3859, file: !25, line: 425, baseType: !3963, size: 64, offset: 512)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{null, !3869, !178, !178}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3859, file: !25, line: 426, baseType: !3967, size: 64, offset: 576)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!809, !3869, !176}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3859, file: !25, line: 427, baseType: !3971, size: 64, offset: 640)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{null, !3869}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3859, file: !25, line: 428, baseType: !947, size: 64, offset: 704)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3859, file: !25, line: 433, baseType: !3976, size: 64, offset: 768)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!120, !211, !3869, !3869, !85}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3859, file: !25, line: 435, baseType: !3980, size: 64, offset: 832)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!120, !3869}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3859, file: !25, line: 436, baseType: !3984, size: 64, offset: 896)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!809, !3869, !178, !178}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3859, file: !25, line: 438, baseType: !3988, size: 64, offset: 960)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{null, !3869, !3991, !3991}
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3859, file: !25, line: 439, baseType: !3993, size: 64, offset: 1024)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!120, !211, !183}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3859, file: !25, line: 442, baseType: !3997, size: 64, offset: 1088)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!120, !4000, !578, !4002}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !25, line: 66, flags: DIFlagFwdDecl)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3859, file: !25, line: 444, baseType: !1379, size: 64, offset: 1152)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3859, file: !25, line: 445, baseType: !4005, size: 64, offset: 1216)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!120, !950, !972}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !25, line: 486, baseType: !182, size: 64, offset: 896)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !212, file: !25, line: 487, baseType: !750, size: 320, offset: 960)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !212, file: !25, line: 488, baseType: !1424, size: 32, offset: 1280)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !212, file: !25, line: 489, baseType: !316, size: 32, offset: 1312)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !212, file: !25, line: 490, baseType: !197, size: 128, offset: 1344)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !212, file: !25, line: 491, baseType: !206, size: 64, offset: 1472)
!4014 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !49, line: 107, baseType: !4015, size: 64, offset: 192)
!4015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !49, line: 107, size: 64, elements: !4016)
!4016 = !{!4017, !4018}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4015, file: !49, line: 108, baseType: !182, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4015, file: !49, line: 109, baseType: !182, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !191, file: !49, line: 117, baseType: !182, size: 64, offset: 256)
!4020 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !49, line: 119, baseType: !4021, size: 320)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !49, line: 119, size: 320, elements: !4022)
!4022 = !{!4023, !4024, !4027, !4028, !4029}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4021, file: !49, line: 124, baseType: !182, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4021, file: !49, line: 125, baseType: !4025, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !49, line: 125, flags: DIFlagFwdDecl)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4021, file: !49, line: 126, baseType: !182, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4021, file: !49, line: 127, baseType: !182, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_member, scope: !4021, file: !49, line: 128, baseType: !4030, size: 64, offset: 256)
!4030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4021, file: !49, line: 128, size: 64, elements: !4031)
!4031 = !{!4032, !4033}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4030, file: !49, line: 133, baseType: !182, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4030, file: !49, line: 138, baseType: !604, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !49, line: 141, baseType: !4035, size: 64)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !49, line: 141, size: 64, elements: !4036)
!4036 = !{!4037}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4035, file: !49, line: 142, baseType: !182, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !49, line: 144, baseType: !4039, size: 128)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !49, line: 144, size: 128, elements: !4040)
!4040 = !{!4041, !4112}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4039, file: !49, line: 146, baseType: !4042, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !65, line: 126, size: 1216, elements: !4044)
!4044 = !{!4045, !4055, !4076, !4077, !4078, !4079, !4080, !4094, !4095, !4096}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4043, file: !65, line: 127, baseType: !4046, size: 384)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !65, line: 21, size: 384, elements: !4047)
!4047 = !{!4048, !4049, !4051, !4052, !4053, !4054}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4046, file: !65, line: 22, baseType: !182, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4046, file: !65, line: 23, baseType: !4050, size: 64, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4046, file: !65, line: 24, baseType: !4050, size: 64, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4046, file: !65, line: 25, baseType: !182, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4046, file: !65, line: 26, baseType: !182, size: 64, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4046, file: !65, line: 27, baseType: !182, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4043, file: !65, line: 128, baseType: !4056, size: 128, offset: 384)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4057, line: 105, size: 128, elements: !4058)
!4057 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4058 = !{!4059, !4060}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4056, file: !4057, line: 110, baseType: !182, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4056, file: !4057, line: 118, baseType: !4061, size: 64, offset: 64)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4057, line: 95, size: 448, elements: !4063)
!4063 = !{!4064, !4065, !4071, !4072, !4073, !4074, !4075}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4062, file: !4057, line: 96, baseType: !604, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4062, file: !4057, line: 97, baseType: !4066, size: 64, offset: 64)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4057, line: 60, baseType: !4068)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{null, !4070}
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4062, file: !4057, line: 98, baseType: !4066, size: 64, offset: 128)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4062, file: !4057, line: 99, baseType: !809, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4062, file: !4057, line: 100, baseType: !809, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4062, file: !4057, line: 101, baseType: !591, size: 128, align: 64, offset: 256)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4062, file: !4057, line: 102, baseType: !4070, size: 64, offset: 384)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4043, file: !65, line: 129, baseType: !1600, size: 256, offset: 512)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4043, file: !65, line: 130, baseType: !64, size: 32, offset: 768)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4043, file: !65, line: 131, baseType: !18, size: 32, offset: 800)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4043, file: !65, line: 132, baseType: !182, size: 64, offset: 832)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4043, file: !65, line: 133, baseType: !4081, size: 64, offset: 896)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4083)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !65, line: 77, size: 192, elements: !4084)
!4084 = !{!4085, !4089, !4090}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4083, file: !65, line: 83, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{null, !183}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4083, file: !65, line: 89, baseType: !1245, size: 64, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4083, file: !65, line: 100, baseType: !4091, size: 64, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!120, !4042, !182, !182, !120}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4043, file: !65, line: 134, baseType: !206, size: 64, offset: 960)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4043, file: !65, line: 135, baseType: !120, size: 32, offset: 1024)
!4096 = !DIDerivedType(tag: DW_TAG_member, scope: !4043, file: !65, line: 136, baseType: !4097, size: 128, offset: 1088)
!4097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4043, file: !65, line: 136, size: 128, elements: !4098)
!4098 = !{!4099, !4105}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4097, file: !65, line: 137, baseType: !4100, size: 128)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4101, line: 6, size: 128, elements: !4102)
!4101 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4102 = !{!4103, !4104}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4100, file: !4101, line: 7, baseType: !292, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4100, file: !4101, line: 8, baseType: !292, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, scope: !4097, file: !65, line: 138, baseType: !4106)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4097, file: !65, line: 138, elements: !4107)
!4107 = !{!4108, !4110}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4106, file: !65, line: 138, baseType: !4109)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !65, line: 138, elements: !1045)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4106, file: !65, line: 138, baseType: !4111)
!4111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4100, elements: !693)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4039, file: !49, line: 147, baseType: !206, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !188, file: !49, line: 161, baseType: !591, size: 128, align: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, scope: !184, file: !49, line: 164, baseType: !4115, size: 32, offset: 384)
!4115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !184, file: !49, line: 164, size: 32, elements: !4116)
!4116 = !{!4117, !4118}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4115, file: !49, line: 169, baseType: !336, size: 32)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4115, file: !49, line: 177, baseType: !18, size: 32)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !184, file: !49, line: 181, baseType: !336, size: 32, offset: 416)
!4120 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !177, line: 149, baseType: !292)
!4121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !177, line: 42, baseType: !182)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4123 = !{!0, !7}
!4124 = !{i32 7, !"Dwarf Version", i32 5}
!4125 = !{i32 2, !"Debug Info Version", i32 3}
!4126 = !{i32 1, !"wchar_size", i32 2}
!4127 = !{i32 8, !"cf-protection-branch", i32 1}
!4128 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4129 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4130 = !{i32 1, !"Code Model", i32 2}
!4131 = !{i32 1, !"override-stack-alignment", i32 8}
!4132 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4133 = distinct !DISubprogram(name: "dma_common_get_sgtable", scope: !14, file: !14, line: 18, type: !4134, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4690)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!120, !4136, !4422, !206, !4120, !178, !182}
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !105, line: 705, size: 5824, elements: !4138)
!4138 = !{!4139, !4140, !4141, !4144, !4145, !4198, !4268, !4269, !4270, !4271, !4272, !4279, !4371, !4384, !4394, !4502, !4504, !4505, !4506, !4510, !4517, !4518, !4521, !4524, !4528, !4632, !4633, !4634, !4635, !4636, !4637, !4667, !4668, !4669, !4672, !4675, !4684, !4685, !4686, !4687, !4688, !4689}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4137, file: !105, line: 706, baseType: !464, size: 512)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4137, file: !105, line: 707, baseType: !4136, size: 64, offset: 512)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4137, file: !105, line: 709, baseType: !4142, size: 64, offset: 576)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !105, line: 37, flags: DIFlagFwdDecl)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4137, file: !105, line: 711, baseType: !376, size: 64, offset: 640)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4137, file: !105, line: 712, baseType: !4146, size: 64, offset: 704)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4148)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !105, line: 89, size: 384, elements: !4149)
!4149 = !{!4150, !4151, !4152, !4158, !4163, !4167}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4148, file: !105, line: 90, baseType: !376, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4148, file: !105, line: 91, baseType: !550, size: 64, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4148, file: !105, line: 92, baseType: !4153, size: 64, offset: 128)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!120, !4156, !500}
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4137)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4148, file: !105, line: 93, baseType: !4159, size: 64, offset: 192)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!401, !4156, !4162, !1475, !1476}
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4148, file: !105, line: 95, baseType: !4164, size: 64, offset: 256)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{null, !4136}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4148, file: !105, line: 97, baseType: !4168, size: 64, offset: 320)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4170)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !112, line: 286, size: 1472, elements: !4171)
!4171 = !{!4172, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4170, file: !112, line: 287, baseType: !4173, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!120, !4136}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4170, file: !112, line: 288, baseType: !4164, size: 64, offset: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4170, file: !112, line: 289, baseType: !4173, size: 64, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4170, file: !112, line: 290, baseType: !4173, size: 64, offset: 192)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4170, file: !112, line: 291, baseType: !4173, size: 64, offset: 256)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4170, file: !112, line: 292, baseType: !4173, size: 64, offset: 320)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4170, file: !112, line: 293, baseType: !4173, size: 64, offset: 384)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4170, file: !112, line: 294, baseType: !4173, size: 64, offset: 448)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4170, file: !112, line: 295, baseType: !4173, size: 64, offset: 512)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4170, file: !112, line: 296, baseType: !4173, size: 64, offset: 576)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4170, file: !112, line: 297, baseType: !4173, size: 64, offset: 640)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4170, file: !112, line: 298, baseType: !4173, size: 64, offset: 704)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4170, file: !112, line: 299, baseType: !4173, size: 64, offset: 768)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4170, file: !112, line: 300, baseType: !4173, size: 64, offset: 832)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4170, file: !112, line: 301, baseType: !4173, size: 64, offset: 896)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4170, file: !112, line: 302, baseType: !4173, size: 64, offset: 960)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4170, file: !112, line: 303, baseType: !4173, size: 64, offset: 1024)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4170, file: !112, line: 304, baseType: !4173, size: 64, offset: 1088)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4170, file: !112, line: 305, baseType: !4173, size: 64, offset: 1152)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4170, file: !112, line: 306, baseType: !4173, size: 64, offset: 1216)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4170, file: !112, line: 307, baseType: !4173, size: 64, offset: 1280)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4170, file: !112, line: 308, baseType: !4173, size: 64, offset: 1344)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4170, file: !112, line: 309, baseType: !4173, size: 64, offset: 1408)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4137, file: !105, line: 714, baseType: !4199, size: 64, offset: 768)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4201)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4202, line: 80, size: 1344, elements: !4203)
!4202 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4203 = !{!4204, !4205, !4206, !4207, !4208, !4209, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4267}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4201, file: !4202, line: 81, baseType: !376, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4201, file: !4202, line: 82, baseType: !376, size: 64, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4201, file: !4202, line: 83, baseType: !550, size: 64, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4201, file: !4202, line: 84, baseType: !550, size: 64, offset: 192)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4201, file: !4202, line: 85, baseType: !550, size: 64, offset: 256)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4201, file: !4202, line: 87, baseType: !4210, size: 64, offset: 320)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!120, !4136, !4213}
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !99, line: 96, size: 1152, elements: !4215)
!4215 = !{!4216, !4217, !4218, !4219, !4220, !4221, !4222, !4226, !4230, !4231, !4232, !4233, !4234, !4242, !4243, !4244, !4245, !4246, !4247}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4214, file: !99, line: 97, baseType: !376, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4214, file: !99, line: 98, baseType: !4199, size: 64, offset: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4214, file: !99, line: 100, baseType: !451, size: 64, offset: 128)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4214, file: !99, line: 101, baseType: !376, size: 64, offset: 192)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4214, file: !99, line: 103, baseType: !809, size: 8, offset: 256)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4214, file: !99, line: 104, baseType: !98, size: 32, offset: 288)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4214, file: !99, line: 106, baseType: !4223, size: 64, offset: 320)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4225)
!4225 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !99, line: 106, flags: DIFlagFwdDecl)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4214, file: !99, line: 107, baseType: !4227, size: 64, offset: 384)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4229)
!4229 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !99, line: 107, flags: DIFlagFwdDecl)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4214, file: !99, line: 109, baseType: !4173, size: 64, offset: 448)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4214, file: !99, line: 110, baseType: !4164, size: 64, offset: 512)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4214, file: !99, line: 111, baseType: !4173, size: 64, offset: 576)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4214, file: !99, line: 112, baseType: !4164, size: 64, offset: 640)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4214, file: !99, line: 113, baseType: !4235, size: 64, offset: 704)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!120, !4136, !4238}
!4238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !112, line: 60, baseType: !4239)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !112, line: 58, size: 32, elements: !4240)
!4240 = !{!4241}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4239, file: !112, line: 59, baseType: !120, size: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4214, file: !99, line: 114, baseType: !4173, size: 64, offset: 768)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4214, file: !99, line: 115, baseType: !550, size: 64, offset: 832)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4214, file: !99, line: 116, baseType: !550, size: 64, offset: 896)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4214, file: !99, line: 118, baseType: !4168, size: 64, offset: 960)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4214, file: !99, line: 119, baseType: !4164, size: 64, offset: 1024)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4214, file: !99, line: 121, baseType: !4248, size: 64, offset: 1088)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !99, line: 121, flags: DIFlagFwdDecl)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4201, file: !4202, line: 88, baseType: !4153, size: 64, offset: 384)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4201, file: !4202, line: 89, baseType: !4173, size: 64, offset: 448)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4201, file: !4202, line: 90, baseType: !4164, size: 64, offset: 512)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4201, file: !4202, line: 91, baseType: !4164, size: 64, offset: 576)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4201, file: !4202, line: 92, baseType: !4164, size: 64, offset: 640)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4201, file: !4202, line: 94, baseType: !4173, size: 64, offset: 704)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4201, file: !4202, line: 95, baseType: !4173, size: 64, offset: 768)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4201, file: !4202, line: 97, baseType: !4235, size: 64, offset: 832)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4201, file: !4202, line: 98, baseType: !4173, size: 64, offset: 896)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4201, file: !4202, line: 100, baseType: !4173, size: 64, offset: 960)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4201, file: !4202, line: 102, baseType: !4173, size: 64, offset: 1024)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4201, file: !4202, line: 103, baseType: !4164, size: 64, offset: 1088)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4201, file: !4202, line: 105, baseType: !4168, size: 64, offset: 1152)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4201, file: !4202, line: 107, baseType: !4264, size: 64, offset: 1216)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4266)
!4266 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4202, line: 107, flags: DIFlagFwdDecl)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4201, file: !4202, line: 109, baseType: !809, size: 8, offset: 1280)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4137, file: !105, line: 715, baseType: !4213, size: 64, offset: 832)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4137, file: !105, line: 717, baseType: !206, size: 64, offset: 896)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4137, file: !105, line: 719, baseType: !206, size: 64, offset: 960)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4137, file: !105, line: 721, baseType: !613, size: 256, offset: 1024)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4137, file: !105, line: 725, baseType: !4273, size: 448, offset: 1280)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !105, line: 517, size: 448, elements: !4274)
!4274 = !{!4275, !4276, !4277, !4278}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4273, file: !105, line: 518, baseType: !197, size: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4273, file: !105, line: 519, baseType: !197, size: 128, offset: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4273, file: !105, line: 520, baseType: !197, size: 128, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4273, file: !105, line: 521, baseType: !104, size: 32, offset: 384)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4137, file: !105, line: 726, baseType: !4280, size: 2496, offset: 1728)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !112, line: 663, size: 2496, elements: !4281)
!4281 = !{!4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4364, !4368}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4280, file: !112, line: 664, baseType: !4238, size: 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4280, file: !112, line: 665, baseType: !18, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4280, file: !112, line: 666, baseType: !18, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4280, file: !112, line: 667, baseType: !809, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4280, file: !112, line: 668, baseType: !809, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4280, file: !112, line: 669, baseType: !809, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4280, file: !112, line: 670, baseType: !809, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4280, file: !112, line: 671, baseType: !809, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4280, file: !112, line: 672, baseType: !809, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4280, file: !112, line: 673, baseType: !809, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4280, file: !112, line: 674, baseType: !809, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4280, file: !112, line: 675, baseType: !286, size: 32, offset: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4280, file: !112, line: 676, baseType: !316, size: 32, offset: 96)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4280, file: !112, line: 678, baseType: !197, size: 128, offset: 128)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4280, file: !112, line: 679, baseType: !1600, size: 256, offset: 256)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4280, file: !112, line: 680, baseType: !4298, size: 64, offset: 512)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4300, line: 43, size: 1536, elements: !4301)
!4300 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4301 = !{!4302, !4303, !4304, !4305, !4306, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4299, file: !4300, line: 44, baseType: !376, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4299, file: !4300, line: 45, baseType: !120, size: 32, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4299, file: !4300, line: 46, baseType: !197, size: 128, offset: 128)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4299, file: !4300, line: 47, baseType: !316, size: 32, offset: 256)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4299, file: !4300, line: 48, baseType: !4307, size: 64, offset: 320)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !112, line: 629, flags: DIFlagFwdDecl)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4299, file: !4300, line: 49, baseType: !1846, size: 320, offset: 384)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4299, file: !4300, line: 50, baseType: !182, size: 64, offset: 704)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4299, file: !4300, line: 51, baseType: !2445, size: 64, offset: 768)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4299, file: !4300, line: 52, baseType: !2445, size: 64, offset: 832)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4299, file: !4300, line: 53, baseType: !2445, size: 64, offset: 896)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4299, file: !4300, line: 54, baseType: !2445, size: 64, offset: 960)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4299, file: !4300, line: 55, baseType: !2445, size: 64, offset: 1024)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4299, file: !4300, line: 56, baseType: !182, size: 64, offset: 1088)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4299, file: !4300, line: 57, baseType: !182, size: 64, offset: 1152)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4299, file: !4300, line: 58, baseType: !182, size: 64, offset: 1216)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4299, file: !4300, line: 59, baseType: !182, size: 64, offset: 1280)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4299, file: !4300, line: 60, baseType: !182, size: 64, offset: 1344)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4299, file: !4300, line: 61, baseType: !4136, size: 64, offset: 1408)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4299, file: !4300, line: 62, baseType: !809, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4299, file: !4300, line: 63, baseType: !809, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4280, file: !112, line: 681, baseType: !809, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4280, file: !112, line: 682, baseType: !809, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4280, file: !112, line: 683, baseType: !809, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4280, file: !112, line: 684, baseType: !18, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4280, file: !112, line: 685, baseType: !18, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4280, file: !112, line: 690, baseType: !2437, size: 512, offset: 640)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4280, file: !112, line: 691, baseType: !292, size: 64, offset: 1152)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4280, file: !112, line: 692, baseType: !1179, size: 256, offset: 1216)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4280, file: !112, line: 693, baseType: !678, size: 192, offset: 1472)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4280, file: !112, line: 694, baseType: !4307, size: 64, offset: 1664)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4280, file: !112, line: 695, baseType: !336, size: 32, offset: 1728)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4280, file: !112, line: 696, baseType: !336, size: 32, offset: 1760)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4280, file: !112, line: 697, baseType: !18, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4280, file: !112, line: 698, baseType: !18, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4280, file: !112, line: 699, baseType: !18, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4280, file: !112, line: 700, baseType: !18, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4280, file: !112, line: 701, baseType: !18, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4280, file: !112, line: 702, baseType: !18, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4280, file: !112, line: 703, baseType: !809, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4280, file: !112, line: 704, baseType: !18, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4280, file: !112, line: 705, baseType: !18, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4280, file: !112, line: 706, baseType: !18, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4280, file: !112, line: 707, baseType: !18, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4280, file: !112, line: 708, baseType: !18, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4280, file: !112, line: 709, baseType: !18, size: 32, offset: 1824)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4280, file: !112, line: 710, baseType: !111, size: 32, offset: 1856)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4280, file: !112, line: 711, baseType: !119, size: 32, offset: 1888)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4280, file: !112, line: 712, baseType: !119, size: 32, offset: 1920)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4280, file: !112, line: 713, baseType: !120, size: 32, offset: 1952)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4280, file: !112, line: 714, baseType: !120, size: 32, offset: 1984)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4280, file: !112, line: 715, baseType: !292, size: 64, offset: 2048)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4280, file: !112, line: 716, baseType: !292, size: 64, offset: 2112)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4280, file: !112, line: 717, baseType: !292, size: 64, offset: 2176)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4280, file: !112, line: 718, baseType: !292, size: 64, offset: 2240)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4280, file: !112, line: 720, baseType: !4359, size: 64, offset: 2304)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !112, line: 632, size: 64, elements: !4361)
!4361 = !{!4362, !4363}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4360, file: !112, line: 633, baseType: !316, size: 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4360, file: !112, line: 634, baseType: !18, size: 32, offset: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4280, file: !112, line: 721, baseType: !4365, size: 64, offset: 2368)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{null, !4136, !735}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4280, file: !112, line: 722, baseType: !4369, size: 64, offset: 2432)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !112, line: 722, flags: DIFlagFwdDecl)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4137, file: !105, line: 727, baseType: !4372, size: 64, offset: 4224)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !112, line: 742, size: 1792, elements: !4374)
!4374 = !{!4375, !4376, !4377, !4381, !4382, !4383}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4373, file: !112, line: 743, baseType: !4170, size: 1472)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4373, file: !112, line: 744, baseType: !4173, size: 64, offset: 1472)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4373, file: !112, line: 745, baseType: !4378, size: 64, offset: 1536)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{null, !4136, !809}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4373, file: !112, line: 746, baseType: !4173, size: 64, offset: 1600)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4373, file: !112, line: 747, baseType: !4164, size: 64, offset: 1664)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4373, file: !112, line: 748, baseType: !4164, size: 64, offset: 1728)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4137, file: !105, line: 736, baseType: !4385, size: 128, offset: 4288)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !105, line: 529, size: 128, elements: !4386)
!4386 = !{!4387, !4391}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4385, file: !105, line: 531, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4390, line: 13, flags: DIFlagFwdDecl)
!4390 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4385, file: !105, line: 532, baseType: !4392, size: 64, offset: 64)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !105, line: 49, flags: DIFlagFwdDecl)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4137, file: !105, line: 738, baseType: !4395, size: 64, offset: 4416)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4397)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !4398, line: 23, size: 1600, elements: !4399)
!4398 = !DIFile(filename: "./include/linux/dma-map-ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4d66bec2a94b0bd77a1dc531a459703")
!4399 = !{!4400, !4401, !4406, !4410, !4414, !4418, !4437, !4441, !4445, !4447, !4451, !4455, !4459, !4463, !4467, !4468, !4472, !4473, !4477, !4478, !4482, !4486, !4490, !4494, !4498}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4397, file: !4398, line: 24, baseType: !18, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4397, file: !4398, line: 26, baseType: !4402, size: 64, offset: 64)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!206, !4136, !178, !4405, !176, !182}
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4397, file: !4398, line: 29, baseType: !4407, size: 64, offset: 128)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{null, !4136, !178, !206, !4120, !182}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_pages", scope: !4397, file: !4398, line: 31, baseType: !4411, size: 64, offset: 192)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!183, !4136, !178, !4405, !127, !176}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !4397, file: !4398, line: 34, baseType: !4415, size: 64, offset: 256)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{null, !4136, !178, !183, !4120, !127}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_noncontiguous", scope: !4397, file: !4398, line: 36, baseType: !4419, size: 64, offset: 320)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!4422, !4136, !178, !127, !176, !182}
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !2, line: 39, size: 128, elements: !4424)
!4424 = !{!4425, !4435, !4436}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4423, file: !2, line: 40, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !2, line: 11, size: 256, elements: !4428)
!4428 = !{!4429, !4430, !4431, !4432, !4433, !4434}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4427, file: !2, line: 12, baseType: !182, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4427, file: !2, line: 13, baseType: !18, size: 32, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4427, file: !2, line: 14, baseType: !18, size: 32, offset: 96)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4427, file: !2, line: 15, baseType: !4120, size: 64, offset: 128)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4427, file: !2, line: 17, baseType: !18, size: 32, offset: 192)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4427, file: !2, line: 20, baseType: !18, size: 32, offset: 224)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !4423, file: !2, line: 41, baseType: !18, size: 32, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !4423, file: !2, line: 42, baseType: !18, size: 32, offset: 96)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "free_noncontiguous", scope: !4397, file: !4398, line: 39, baseType: !4438, size: 64, offset: 384)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{null, !4136, !178, !4422, !127}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4397, file: !4398, line: 41, baseType: !4442, size: 64, offset: 448)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!120, !4136, !1011, !206, !4120, !178, !182}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "get_sgtable", scope: !4397, file: !4398, line: 44, baseType: !4446, size: 64, offset: 512)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "map_page", scope: !4397, file: !4398, line: 48, baseType: !4448, size: 64, offset: 576)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!4120, !4136, !183, !182, !178, !127, !182}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_page", scope: !4397, file: !4398, line: 51, baseType: !4452, size: 64, offset: 640)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{null, !4136, !4120, !178, !127, !182}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "map_sg", scope: !4397, file: !4398, line: 59, baseType: !4456, size: 64, offset: 704)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!120, !4136, !4426, !120, !127, !182}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_sg", scope: !4397, file: !4398, line: 61, baseType: !4460, size: 64, offset: 768)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{null, !4136, !4426, !120, !127, !182}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "map_resource", scope: !4397, file: !4398, line: 63, baseType: !4464, size: 64, offset: 832)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!4120, !4136, !3275, !178, !127, !182}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_resource", scope: !4397, file: !4398, line: 66, baseType: !4452, size: 64, offset: 896)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "sync_single_for_cpu", scope: !4397, file: !4398, line: 69, baseType: !4469, size: 64, offset: 960)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{null, !4136, !4120, !178, !127}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "sync_single_for_device", scope: !4397, file: !4398, line: 71, baseType: !4469, size: 64, offset: 1024)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "sync_sg_for_cpu", scope: !4397, file: !4398, line: 74, baseType: !4474, size: 64, offset: 1088)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{null, !4136, !4426, !120, !127}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "sync_sg_for_device", scope: !4397, file: !4398, line: 76, baseType: !4474, size: 64, offset: 1152)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "cache_sync", scope: !4397, file: !4398, line: 78, baseType: !4479, size: 64, offset: 1216)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{null, !4136, !206, !178, !127}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "dma_supported", scope: !4397, file: !4398, line: 80, baseType: !4483, size: 64, offset: 1280)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!120, !4136, !292}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "get_required_mask", scope: !4397, file: !4398, line: 81, baseType: !4487, size: 64, offset: 1344)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!292, !4136}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "max_mapping_size", scope: !4397, file: !4398, line: 82, baseType: !4491, size: 64, offset: 1408)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!178, !4136}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "opt_mapping_size", scope: !4397, file: !4398, line: 83, baseType: !4495, size: 64, offset: 1472)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!178}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "get_merge_boundary", scope: !4397, file: !4398, line: 84, baseType: !4499, size: 64, offset: 1536)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!182, !4136}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4137, file: !105, line: 740, baseType: !4503, size: 64, offset: 4480)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4137, file: !105, line: 741, baseType: !292, size: 64, offset: 4544)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4137, file: !105, line: 746, baseType: !292, size: 64, offset: 4608)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4137, file: !105, line: 747, baseType: !4507, size: 64, offset: 4672)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4509)
!4509 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !105, line: 747, flags: DIFlagFwdDecl)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4137, file: !105, line: 749, baseType: !4511, size: 64, offset: 4736)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !105, line: 428, size: 128, elements: !4513)
!4513 = !{!4514, !4515, !4516}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4512, file: !105, line: 433, baseType: !18, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4512, file: !105, line: 434, baseType: !18, size: 32, offset: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4512, file: !105, line: 435, baseType: !182, size: 64, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4137, file: !105, line: 751, baseType: !197, size: 128, offset: 4800)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4137, file: !105, line: 762, baseType: !4519, size: 64, offset: 4928)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !105, line: 762, flags: DIFlagFwdDecl)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4137, file: !105, line: 770, baseType: !4522, offset: 4992)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4523, line: 5, elements: !1045)
!4523 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4137, file: !105, line: 772, baseType: !4525, size: 64, offset: 4992)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4527, line: 18, flags: DIFlagFwdDecl)
!4527 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4137, file: !105, line: 773, baseType: !4529, size: 64, offset: 5056)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4531, line: 41, size: 512, elements: !4532)
!4531 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4532 = !{!4533, !4534, !4628, !4629, !4630, !4631}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4530, file: !4531, line: 42, baseType: !4529, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4530, file: !4531, line: 43, baseType: !4535, size: 64, offset: 64)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4537)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4531, line: 125, size: 1408, elements: !4538)
!4538 = !{!4539, !4543, !4547, !4553, !4557, !4558, !4563, !4567, !4571, !4575, !4579, !4580, !4584, !4588, !4592, !4603, !4604, !4605, !4606, !4616, !4620, !4624}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4537, file: !4531, line: 126, baseType: !4540, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!4529, !4529}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4537, file: !4531, line: 127, baseType: !4544, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{null, !4529}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4537, file: !4531, line: 128, baseType: !4548, size: 64, offset: 128)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!809, !4551}
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4530)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4537, file: !4531, line: 129, baseType: !4554, size: 64, offset: 192)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!1140, !4551, !4156}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4537, file: !4531, line: 131, baseType: !4548, size: 64, offset: 256)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4537, file: !4531, line: 133, baseType: !4559, size: 64, offset: 320)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!4562, !4551}
!4562 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4531, line: 132, flags: DIFlagFwdDecl)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4537, file: !4531, line: 134, baseType: !4564, size: 64, offset: 384)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!809, !4551, !376}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4537, file: !4531, line: 136, baseType: !4568, size: 64, offset: 448)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!120, !4551, !376, !18, !206, !178}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4537, file: !4531, line: 141, baseType: !4572, size: 64, offset: 512)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!120, !4551, !376, !1923, !178}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4537, file: !4531, line: 144, baseType: !4576, size: 64, offset: 576)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!376, !4551}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4537, file: !4531, line: 145, baseType: !4576, size: 64, offset: 640)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4537, file: !4531, line: 146, baseType: !4581, size: 64, offset: 704)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!4529, !4551}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4537, file: !4531, line: 148, baseType: !4585, size: 64, offset: 768)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!4529, !4551, !4529}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4537, file: !4531, line: 151, baseType: !4589, size: 64, offset: 832)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!4529, !4551, !376}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4537, file: !4531, line: 153, baseType: !4593, size: 64, offset: 896)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!120, !4551, !376, !376, !18, !18, !4596}
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4531, line: 94, size: 640, elements: !4598)
!4598 = !{!4599, !4600, !4601}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4597, file: !4531, line: 95, baseType: !4529, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4597, file: !4531, line: 96, baseType: !18, size: 32, offset: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4597, file: !4531, line: 97, baseType: !4602, size: 512, offset: 128)
!4602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 512, elements: !2480)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4537, file: !4531, line: 158, baseType: !4585, size: 64, offset: 960)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4537, file: !4531, line: 161, baseType: !4581, size: 64, offset: 1024)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4537, file: !4531, line: 163, baseType: !4540, size: 64, offset: 1088)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4537, file: !4531, line: 164, baseType: !4607, size: 64, offset: 1152)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!120, !4551, !4610}
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4531, line: 73, size: 128, elements: !4612)
!4612 = !{!4613, !4614, !4615}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4611, file: !4531, line: 74, baseType: !18, size: 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4611, file: !4531, line: 75, baseType: !18, size: 32, offset: 32)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4611, file: !4531, line: 76, baseType: !4551, size: 64, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4537, file: !4531, line: 166, baseType: !4617, size: 64, offset: 1216)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!206, !4529, !120}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4537, file: !4531, line: 167, baseType: !4621, size: 64, offset: 1280)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!120, !4551, !18}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4537, file: !4531, line: 168, baseType: !4625, size: 64, offset: 1344)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!120, !4529}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4530, file: !4531, line: 44, baseType: !4136, size: 64, offset: 128)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4530, file: !4531, line: 45, baseType: !197, size: 128, offset: 192)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4530, file: !4531, line: 46, baseType: !197, size: 128, offset: 320)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4530, file: !4531, line: 47, baseType: !344, size: 8, offset: 448)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4137, file: !105, line: 776, baseType: !120, size: 32, offset: 5120)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4137, file: !105, line: 778, baseType: !417, size: 32, offset: 5152)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4137, file: !105, line: 779, baseType: !286, size: 32, offset: 5184)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4137, file: !105, line: 781, baseType: !316, size: 32, offset: 5216)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4137, file: !105, line: 782, baseType: !197, size: 128, offset: 5248)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4137, file: !105, line: 784, baseType: !4638, size: 64, offset: 5376)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4640)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4641, line: 52, size: 768, elements: !4642)
!4641 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4642 = !{!4643, !4644, !4645, !4646, !4647, !4651, !4655, !4656, !4657, !4658, !4662, !4666}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4640, file: !4641, line: 53, baseType: !376, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4640, file: !4641, line: 55, baseType: !550, size: 64, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4640, file: !4641, line: 56, baseType: !550, size: 64, offset: 128)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4640, file: !4641, line: 58, baseType: !4153, size: 64, offset: 192)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4640, file: !4641, line: 59, baseType: !4648, size: 64, offset: 256)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!401, !4156, !4162}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4640, file: !4641, line: 61, baseType: !4652, size: 64, offset: 320)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{null, !4638}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4640, file: !4641, line: 62, baseType: !4164, size: 64, offset: 384)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4640, file: !4641, line: 64, baseType: !4173, size: 64, offset: 448)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4640, file: !4641, line: 66, baseType: !1440, size: 64, offset: 512)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4640, file: !4641, line: 67, baseType: !4659, size: 64, offset: 576)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!1140, !4156}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4640, file: !4641, line: 69, baseType: !4663, size: 64, offset: 640)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{null, !4156, !1475, !1476}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4640, file: !4641, line: 71, baseType: !4168, size: 64, offset: 704)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4137, file: !105, line: 785, baseType: !550, size: 64, offset: 5440)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4137, file: !105, line: 787, baseType: !4164, size: 64, offset: 5504)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4137, file: !105, line: 788, baseType: !4670, size: 64, offset: 5568)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !105, line: 46, flags: DIFlagFwdDecl)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4137, file: !105, line: 789, baseType: !4673, size: 64, offset: 5632)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !105, line: 48, flags: DIFlagFwdDecl)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4137, file: !105, line: 791, baseType: !4676, size: 64, offset: 5696)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !105, line: 597, size: 128, elements: !4678)
!4678 = !{!4679, !4680, !4681, !4682, !4683}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4677, file: !105, line: 598, baseType: !134, size: 32)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4677, file: !105, line: 599, baseType: !143, size: 32, offset: 32)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4677, file: !105, line: 600, baseType: !148, size: 32, offset: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4677, file: !105, line: 601, baseType: !809, size: 8, offset: 96)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4677, file: !105, line: 602, baseType: !809, size: 8, offset: 104)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4137, file: !105, line: 793, baseType: !153, size: 32, offset: 5760)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4137, file: !105, line: 795, baseType: !809, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4137, file: !105, line: 796, baseType: !809, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4137, file: !105, line: 797, baseType: !809, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4137, file: !105, line: 798, baseType: !809, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4137, file: !105, line: 799, baseType: !809, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4690 = !{!4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698}
!4691 = !DILocalVariable(name: "dev", arg: 1, scope: !4133, file: !14, line: 18, type: !4136)
!4692 = !DILocalVariable(name: "sgt", arg: 2, scope: !4133, file: !14, line: 18, type: !4422)
!4693 = !DILocalVariable(name: "cpu_addr", arg: 3, scope: !4133, file: !14, line: 19, type: !206)
!4694 = !DILocalVariable(name: "dma_addr", arg: 4, scope: !4133, file: !14, line: 19, type: !4120)
!4695 = !DILocalVariable(name: "size", arg: 5, scope: !4133, file: !14, line: 19, type: !178)
!4696 = !DILocalVariable(name: "attrs", arg: 6, scope: !4133, file: !14, line: 20, type: !182)
!4697 = !DILocalVariable(name: "page", scope: !4133, file: !14, line: 22, type: !183)
!4698 = !DILocalVariable(name: "ret", scope: !4133, file: !14, line: 23, type: !120)
!4699 = !DILocation(line: 18, column: 43, scope: !4133)
!4700 = !DILocation(line: 18, column: 65, scope: !4133)
!4701 = !DILocation(line: 19, column: 10, scope: !4133)
!4702 = !DILocation(line: 19, column: 31, scope: !4133)
!4703 = !DILocation(line: 19, column: 48, scope: !4133)
!4704 = !DILocation(line: 20, column: 18, scope: !4133)
!4705 = !DILocation(line: 22, column: 2, scope: !4133)
!4706 = !DILocation(line: 22, column: 15, scope: !4133)
!4707 = !DILocation(line: 22, column: 47, scope: !4133)
!4708 = !DILocation(line: 22, column: 22, scope: !4133)
!4709 = !DILocation(line: 23, column: 2, scope: !4133)
!4710 = !DILocation(line: 23, column: 6, scope: !4133)
!4711 = !DILocation(line: 25, column: 23, scope: !4133)
!4712 = !DILocation(line: 25, column: 8, scope: !4133)
!4713 = !DILocation(line: 25, column: 6, scope: !4133)
!4714 = !DILocation(line: 26, column: 7, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4133, file: !14, line: 26, column: 6)
!4716 = !DILocation(line: 26, column: 6, scope: !4133)
!4717 = !DILocation(line: 27, column: 15, scope: !4715)
!4718 = !DILocation(line: 27, column: 20, scope: !4715)
!4719 = !DILocation(line: 27, column: 25, scope: !4715)
!4720 = !DILocation(line: 27, column: 31, scope: !4715)
!4721 = !DILocation(line: 27, column: 3, scope: !4715)
!4722 = !DILocation(line: 28, column: 9, scope: !4133)
!4723 = !DILocation(line: 29, column: 1, scope: !4133)
!4724 = !DILocation(line: 28, column: 2, scope: !4133)
!4725 = distinct !DISubprogram(name: "dma_common_vaddr_to_page", scope: !14, file: !14, line: 8, type: !4726, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4728)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!183, !206}
!4728 = !{!4729}
!4729 = !DILocalVariable(name: "cpu_addr", arg: 1, scope: !4725, file: !14, line: 8, type: !206)
!4730 = !DILocation(line: 8, column: 52, scope: !4725)
!4731 = !DILocation(line: 10, column: 22, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4725, file: !14, line: 10, column: 6)
!4733 = !DILocation(line: 10, column: 6, scope: !4732)
!4734 = !DILocation(line: 10, column: 6, scope: !4725)
!4735 = !DILocation(line: 11, column: 26, scope: !4732)
!4736 = !DILocation(line: 11, column: 10, scope: !4732)
!4737 = !DILocation(line: 11, column: 3, scope: !4732)
!4738 = !DILocation(line: 12, column: 9, scope: !4725)
!4739 = !DILocation(line: 12, column: 2, scope: !4725)
!4740 = !DILocation(line: 13, column: 1, scope: !4725)
!4741 = !DISubprogram(name: "sg_alloc_table", scope: !2, file: !2, line: 440, type: !4742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!120, !4422, !18, !176}
!4744 = distinct !DISubprogram(name: "sg_set_page", scope: !2, file: !2, line: 136, type: !4745, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4747)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{null, !4426, !183, !18, !18}
!4747 = !{!4748, !4749, !4750, !4751}
!4748 = !DILocalVariable(name: "sg", arg: 1, scope: !4744, file: !2, line: 136, type: !4426)
!4749 = !DILocalVariable(name: "page", arg: 2, scope: !4744, file: !2, line: 136, type: !183)
!4750 = !DILocalVariable(name: "len", arg: 3, scope: !4744, file: !2, line: 137, type: !18)
!4751 = !DILocalVariable(name: "offset", arg: 4, scope: !4744, file: !2, line: 137, type: !18)
!4752 = !DILocation(line: 136, column: 52, scope: !4744)
!4753 = !DILocation(line: 136, column: 69, scope: !4744)
!4754 = !DILocation(line: 137, column: 24, scope: !4744)
!4755 = !DILocation(line: 137, column: 42, scope: !4744)
!4756 = !DILocation(line: 139, column: 17, scope: !4744)
!4757 = !DILocation(line: 139, column: 21, scope: !4744)
!4758 = !DILocation(line: 139, column: 2, scope: !4744)
!4759 = !DILocation(line: 140, column: 15, scope: !4744)
!4760 = !DILocation(line: 140, column: 2, scope: !4744)
!4761 = !DILocation(line: 140, column: 6, scope: !4744)
!4762 = !DILocation(line: 140, column: 13, scope: !4744)
!4763 = !DILocation(line: 141, column: 15, scope: !4744)
!4764 = !DILocation(line: 141, column: 2, scope: !4744)
!4765 = !DILocation(line: 141, column: 6, scope: !4744)
!4766 = !DILocation(line: 141, column: 13, scope: !4744)
!4767 = !DILocation(line: 142, column: 1, scope: !4744)
!4768 = distinct !DISubprogram(name: "dma_common_mmap", scope: !14, file: !14, line: 34, type: !4443, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4769)
!4769 = !{!4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780}
!4770 = !DILocalVariable(name: "dev", arg: 1, scope: !4768, file: !14, line: 34, type: !4136)
!4771 = !DILocalVariable(name: "vma", arg: 2, scope: !4768, file: !14, line: 34, type: !1011)
!4772 = !DILocalVariable(name: "cpu_addr", arg: 3, scope: !4768, file: !14, line: 35, type: !206)
!4773 = !DILocalVariable(name: "dma_addr", arg: 4, scope: !4768, file: !14, line: 35, type: !4120)
!4774 = !DILocalVariable(name: "size", arg: 5, scope: !4768, file: !14, line: 35, type: !178)
!4775 = !DILocalVariable(name: "attrs", arg: 6, scope: !4768, file: !14, line: 36, type: !182)
!4776 = !DILocalVariable(name: "user_count", scope: !4768, file: !14, line: 39, type: !182)
!4777 = !DILocalVariable(name: "count", scope: !4768, file: !14, line: 40, type: !182)
!4778 = !DILocalVariable(name: "off", scope: !4768, file: !14, line: 41, type: !182)
!4779 = !DILocalVariable(name: "page", scope: !4768, file: !14, line: 42, type: !183)
!4780 = !DILocalVariable(name: "ret", scope: !4768, file: !14, line: 43, type: !120)
!4781 = !DILocation(line: 34, column: 36, scope: !4768)
!4782 = !DILocation(line: 34, column: 64, scope: !4768)
!4783 = !DILocation(line: 35, column: 9, scope: !4768)
!4784 = !DILocation(line: 35, column: 30, scope: !4768)
!4785 = !DILocation(line: 35, column: 47, scope: !4768)
!4786 = !DILocation(line: 36, column: 17, scope: !4768)
!4787 = !DILocation(line: 39, column: 2, scope: !4768)
!4788 = !DILocation(line: 39, column: 16, scope: !4768)
!4789 = !DILocation(line: 39, column: 39, scope: !4768)
!4790 = !DILocation(line: 39, column: 29, scope: !4768)
!4791 = !DILocation(line: 40, column: 2, scope: !4768)
!4792 = !DILocation(line: 40, column: 16, scope: !4768)
!4793 = !DILocation(line: 40, column: 24, scope: !4768)
!4794 = !DILocation(line: 40, column: 41, scope: !4768)
!4795 = !DILocation(line: 41, column: 2, scope: !4768)
!4796 = !DILocation(line: 41, column: 16, scope: !4768)
!4797 = !DILocation(line: 41, column: 22, scope: !4768)
!4798 = !DILocation(line: 41, column: 27, scope: !4768)
!4799 = !DILocation(line: 42, column: 2, scope: !4768)
!4800 = !DILocation(line: 42, column: 15, scope: !4768)
!4801 = !DILocation(line: 42, column: 47, scope: !4768)
!4802 = !DILocation(line: 42, column: 22, scope: !4768)
!4803 = !DILocation(line: 43, column: 2, scope: !4768)
!4804 = !DILocation(line: 43, column: 6, scope: !4768)
!4805 = !DILocation(line: 45, column: 2, scope: !4768)
!4806 = !DILocation(line: 45, column: 7, scope: !4768)
!4807 = !DILocation(line: 45, column: 22, scope: !4768)
!4808 = !DILocation(line: 45, column: 33, scope: !4768)
!4809 = !DILocation(line: 45, column: 38, scope: !4768)
!4810 = !DILocation(line: 45, column: 43, scope: !4768)
!4811 = !DILocation(line: 45, column: 57, scope: !4768)
!4812 = !DILocation(line: 50, column: 6, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4768, file: !14, line: 50, column: 6)
!4814 = !DILocation(line: 50, column: 13, scope: !4813)
!4815 = !DILocation(line: 50, column: 10, scope: !4813)
!4816 = !DILocation(line: 50, column: 19, scope: !4813)
!4817 = !DILocation(line: 50, column: 22, scope: !4813)
!4818 = !DILocation(line: 50, column: 35, scope: !4813)
!4819 = !DILocation(line: 50, column: 43, scope: !4813)
!4820 = !DILocation(line: 50, column: 41, scope: !4813)
!4821 = !DILocation(line: 50, column: 33, scope: !4813)
!4822 = !DILocation(line: 50, column: 6, scope: !4768)
!4823 = !DILocation(line: 51, column: 3, scope: !4813)
!4824 = !DILocation(line: 53, column: 25, scope: !4768)
!4825 = !DILocation(line: 53, column: 30, scope: !4768)
!4826 = !DILocation(line: 53, column: 35, scope: !4768)
!4827 = !DILocation(line: 54, column: 4, scope: !4768)
!4828 = !DILocation(line: 54, column: 24, scope: !4768)
!4829 = !DILocation(line: 54, column: 29, scope: !4768)
!4830 = !DILocation(line: 54, column: 22, scope: !4768)
!4831 = !DILocation(line: 55, column: 4, scope: !4768)
!4832 = !DILocation(line: 55, column: 15, scope: !4768)
!4833 = !DILocation(line: 55, column: 30, scope: !4768)
!4834 = !DILocation(line: 55, column: 35, scope: !4768)
!4835 = !DILocation(line: 53, column: 9, scope: !4768)
!4836 = !DILocation(line: 53, column: 2, scope: !4768)
!4837 = !DILocation(line: 59, column: 1, scope: !4768)
!4838 = distinct !DISubprogram(name: "vma_pages", scope: !1225, file: !1225, line: 3418, type: !1303, scopeLine: 3419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4839)
!4839 = !{!4840}
!4840 = !DILocalVariable(name: "vma", arg: 1, scope: !4838, file: !1225, line: 3418, type: !1011)
!4841 = !DILocation(line: 3418, column: 62, scope: !4838)
!4842 = !DILocation(line: 3420, column: 10, scope: !4838)
!4843 = !DILocation(line: 3420, column: 15, scope: !4838)
!4844 = !DILocation(line: 3420, column: 24, scope: !4838)
!4845 = !DILocation(line: 3420, column: 29, scope: !4838)
!4846 = !DILocation(line: 3420, column: 22, scope: !4838)
!4847 = !DILocation(line: 3420, column: 39, scope: !4838)
!4848 = !DILocation(line: 3420, column: 2, scope: !4838)
!4849 = !DISubprogram(name: "dma_pgprot", scope: !4398, file: !4398, line: 357, type: !4850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!1193, !4136, !1193, !182}
!4852 = !DISubprogram(name: "remap_pfn_range", scope: !1225, file: !1225, line: 3464, type: !4853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!120, !1011, !182, !182, !182, !1193}
!4855 = distinct !DISubprogram(name: "dma_common_alloc_pages", scope: !14, file: !14, line: 61, type: !4412, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4856)
!4856 = !{!4857, !4858, !4859, !4860, !4861, !4862, !4863}
!4857 = !DILocalVariable(name: "dev", arg: 1, scope: !4855, file: !14, line: 61, type: !4136)
!4858 = !DILocalVariable(name: "size", arg: 2, scope: !4855, file: !14, line: 61, type: !178)
!4859 = !DILocalVariable(name: "dma_handle", arg: 3, scope: !4855, file: !14, line: 62, type: !4405)
!4860 = !DILocalVariable(name: "dir", arg: 4, scope: !4855, file: !14, line: 62, type: !127)
!4861 = !DILocalVariable(name: "gfp", arg: 5, scope: !4855, file: !14, line: 62, type: !176)
!4862 = !DILocalVariable(name: "ops", scope: !4855, file: !14, line: 64, type: !4395)
!4863 = !DILocalVariable(name: "page", scope: !4855, file: !14, line: 65, type: !183)
!4864 = !DILocation(line: 61, column: 52, scope: !4855)
!4865 = !DILocation(line: 61, column: 64, scope: !4855)
!4866 = !DILocation(line: 62, column: 15, scope: !4855)
!4867 = !DILocation(line: 62, column: 51, scope: !4855)
!4868 = !DILocation(line: 62, column: 62, scope: !4855)
!4869 = !DILocation(line: 64, column: 2, scope: !4855)
!4870 = !DILocation(line: 64, column: 28, scope: !4855)
!4871 = !DILocation(line: 64, column: 46, scope: !4855)
!4872 = !DILocation(line: 64, column: 34, scope: !4855)
!4873 = !DILocation(line: 65, column: 2, scope: !4855)
!4874 = !DILocation(line: 65, column: 15, scope: !4855)
!4875 = !DILocation(line: 67, column: 30, scope: !4855)
!4876 = !DILocation(line: 67, column: 35, scope: !4855)
!4877 = !DILocation(line: 67, column: 41, scope: !4855)
!4878 = !DILocation(line: 67, column: 9, scope: !4855)
!4879 = !DILocation(line: 67, column: 7, scope: !4855)
!4880 = !DILocation(line: 68, column: 7, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4855, file: !14, line: 68, column: 6)
!4882 = !DILocation(line: 68, column: 6, scope: !4855)
!4883 = !DILocation(line: 69, column: 39, scope: !4881)
!4884 = !DILocation(line: 69, column: 27, scope: !4881)
!4885 = !DILocation(line: 69, column: 45, scope: !4881)
!4886 = !DILocation(line: 69, column: 60, scope: !4881)
!4887 = !DILocation(line: 69, column: 50, scope: !4881)
!4888 = !DILocation(line: 69, column: 10, scope: !4881)
!4889 = !DILocation(line: 69, column: 8, scope: !4881)
!4890 = !DILocation(line: 69, column: 3, scope: !4881)
!4891 = !DILocation(line: 70, column: 7, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4855, file: !14, line: 70, column: 6)
!4893 = !DILocation(line: 70, column: 6, scope: !4855)
!4894 = !DILocation(line: 71, column: 3, scope: !4892)
!4895 = !DILocation(line: 73, column: 16, scope: !4855)
!4896 = !DILocation(line: 73, column: 21, scope: !4855)
!4897 = !DILocation(line: 73, column: 30, scope: !4855)
!4898 = !DILocation(line: 73, column: 35, scope: !4855)
!4899 = !DILocation(line: 73, column: 44, scope: !4855)
!4900 = !DILocation(line: 73, column: 50, scope: !4855)
!4901 = !DILocation(line: 73, column: 3, scope: !4855)
!4902 = !DILocation(line: 73, column: 14, scope: !4855)
!4903 = !DILocation(line: 75, column: 7, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4855, file: !14, line: 75, column: 6)
!4905 = !DILocation(line: 75, column: 6, scope: !4904)
!4906 = !DILocation(line: 75, column: 18, scope: !4904)
!4907 = !DILocation(line: 75, column: 6, scope: !4855)
!4908 = !DILocation(line: 76, column: 23, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4904, file: !14, line: 75, column: 40)
!4910 = !DILocation(line: 76, column: 28, scope: !4909)
!4911 = !DILocation(line: 76, column: 34, scope: !4909)
!4912 = !DILocation(line: 76, column: 3, scope: !4909)
!4913 = !DILocation(line: 77, column: 3, scope: !4909)
!4914 = !DILocation(line: 80, column: 9, scope: !4855)
!4915 = !DILocation(line: 80, column: 32, scope: !4855)
!4916 = !DILocation(line: 80, column: 2, scope: !4855)
!4917 = !DILocation(line: 81, column: 9, scope: !4855)
!4918 = !DILocation(line: 81, column: 2, scope: !4855)
!4919 = !DILocation(line: 82, column: 1, scope: !4855)
!4920 = distinct !DISubprogram(name: "get_dma_ops", scope: !4398, file: !4398, line: 90, type: !4921, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4923)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!4395, !4136}
!4923 = !{!4924}
!4924 = !DILocalVariable(name: "dev", arg: 1, scope: !4920, file: !4398, line: 90, type: !4136)
!4925 = !DILocation(line: 90, column: 68, scope: !4920)
!4926 = !DILocation(line: 92, column: 6, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4920, file: !4398, line: 92, column: 6)
!4928 = !DILocation(line: 92, column: 11, scope: !4927)
!4929 = !DILocation(line: 92, column: 6, scope: !4920)
!4930 = !DILocation(line: 93, column: 10, scope: !4927)
!4931 = !DILocation(line: 93, column: 15, scope: !4927)
!4932 = !DILocation(line: 93, column: 3, scope: !4927)
!4933 = !DILocation(line: 94, column: 9, scope: !4920)
!4934 = !DILocation(line: 94, column: 2, scope: !4920)
!4935 = !DILocation(line: 95, column: 1, scope: !4920)
!4936 = distinct !DISubprogram(name: "dma_alloc_contiguous", scope: !4398, file: !4398, line: 160, type: !4937, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4939)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!183, !4136, !178, !176}
!4939 = !{!4940, !4941, !4942}
!4940 = !DILocalVariable(name: "dev", arg: 1, scope: !4936, file: !4398, line: 160, type: !4136)
!4941 = !DILocalVariable(name: "size", arg: 2, scope: !4936, file: !4398, line: 160, type: !178)
!4942 = !DILocalVariable(name: "gfp", arg: 3, scope: !4936, file: !4398, line: 161, type: !176)
!4943 = !DILocation(line: 160, column: 64, scope: !4936)
!4944 = !DILocation(line: 160, column: 76, scope: !4936)
!4945 = !DILocation(line: 161, column: 9, scope: !4936)
!4946 = !DILocation(line: 163, column: 2, scope: !4936)
!4947 = distinct !DISubprogram(name: "alloc_pages_node", scope: !9, file: !9, line: 254, type: !4948, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4950)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!183, !120, !176, !18}
!4950 = !{!4951, !4952, !4953}
!4951 = !DILocalVariable(name: "nid", arg: 1, scope: !4947, file: !9, line: 254, type: !120)
!4952 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !4947, file: !9, line: 254, type: !176)
!4953 = !DILocalVariable(name: "order", arg: 3, scope: !4947, file: !9, line: 255, type: !18)
!4954 = !DILocation(line: 254, column: 49, scope: !4947)
!4955 = !DILocation(line: 254, column: 60, scope: !4947)
!4956 = !DILocation(line: 255, column: 20, scope: !4947)
!4957 = !DILocation(line: 257, column: 6, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4947, file: !9, line: 257, column: 6)
!4959 = !DILocation(line: 257, column: 10, scope: !4958)
!4960 = !DILocation(line: 257, column: 6, scope: !4947)
!4961 = !DILocation(line: 258, column: 9, scope: !4958)
!4962 = !DILocation(line: 258, column: 7, scope: !4958)
!4963 = !DILocation(line: 258, column: 3, scope: !4958)
!4964 = !DILocation(line: 260, column: 28, scope: !4947)
!4965 = !DILocation(line: 260, column: 33, scope: !4947)
!4966 = !DILocation(line: 260, column: 43, scope: !4947)
!4967 = !DILocation(line: 260, column: 9, scope: !4947)
!4968 = !DILocation(line: 260, column: 2, scope: !4947)
!4969 = distinct !DISubprogram(name: "dev_to_node", scope: !105, file: !105, line: 882, type: !4174, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4970)
!4970 = !{!4971}
!4971 = !DILocalVariable(name: "dev", arg: 1, scope: !4969, file: !105, line: 882, type: !4136)
!4972 = !DILocation(line: 882, column: 46, scope: !4969)
!4973 = !DILocation(line: 884, column: 9, scope: !4969)
!4974 = !DILocation(line: 884, column: 14, scope: !4969)
!4975 = !DILocation(line: 884, column: 2, scope: !4969)
!4976 = distinct !DISubprogram(name: "get_order", scope: !4977, file: !4977, line: 29, type: !4978, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4980)
!4977 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6ad2a20729bf2780fb61509a4eca111b")
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!120, !182}
!4980 = !{!4981}
!4981 = !DILocalVariable(name: "size", arg: 1, scope: !4976, file: !4977, line: 29, type: !182)
!4982 = !DILocation(line: 29, column: 72, scope: !4976)
!4983 = !DILocation(line: 31, column: 27, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4976, file: !4977, line: 31, column: 6)
!4985 = !DILocation(line: 31, column: 6, scope: !4984)
!4986 = !DILocation(line: 31, column: 6, scope: !4976)
!4987 = !DILocation(line: 32, column: 8, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4989, file: !4977, line: 32, column: 7)
!4989 = distinct !DILexicalBlock(scope: !4984, file: !4977, line: 31, column: 34)
!4990 = !DILocation(line: 32, column: 7, scope: !4989)
!4991 = !DILocation(line: 33, column: 4, scope: !4988)
!4992 = !DILocation(line: 35, column: 7, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4989, file: !4977, line: 35, column: 7)
!4994 = !DILocation(line: 35, column: 12, scope: !4993)
!4995 = !DILocation(line: 35, column: 7, scope: !4989)
!4996 = !DILocation(line: 36, column: 4, scope: !4993)
!4997 = !DILocation(line: 38, column: 10, scope: !4989)
!4998 = !DILocation(line: 38, column: 28, scope: !4989)
!4999 = !DILocation(line: 38, column: 41, scope: !4989)
!5000 = !DILocation(line: 38, column: 3, scope: !4989)
!5001 = !DILocation(line: 41, column: 6, scope: !4976)
!5002 = !DILocation(line: 42, column: 7, scope: !4976)
!5003 = !DILocation(line: 46, column: 15, scope: !4976)
!5004 = !DILocation(line: 46, column: 9, scope: !4976)
!5005 = !DILocation(line: 46, column: 2, scope: !4976)
!5006 = !DILocation(line: 48, column: 1, scope: !4976)
!5007 = distinct !DISubprogram(name: "dma_free_contiguous", scope: !4398, file: !4398, line: 165, type: !5008, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5010)
!5008 = !DISubroutineType(types: !5009)
!5009 = !{null, !4136, !183, !178}
!5010 = !{!5011, !5012, !5013}
!5011 = !DILocalVariable(name: "dev", arg: 1, scope: !5007, file: !4398, line: 165, type: !4136)
!5012 = !DILocalVariable(name: "page", arg: 2, scope: !5007, file: !4398, line: 165, type: !183)
!5013 = !DILocalVariable(name: "size", arg: 3, scope: !5007, file: !4398, line: 166, type: !178)
!5014 = !DILocation(line: 165, column: 55, scope: !5007)
!5015 = !DILocation(line: 165, column: 73, scope: !5007)
!5016 = !DILocation(line: 166, column: 10, scope: !5007)
!5017 = !DILocation(line: 168, column: 15, scope: !5007)
!5018 = !DILocation(line: 168, column: 31, scope: !5007)
!5019 = !DILocation(line: 168, column: 21, scope: !5007)
!5020 = !DILocation(line: 168, column: 2, scope: !5007)
!5021 = !DILocation(line: 169, column: 1, scope: !5007)
!5022 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1225, file: !1225, line: 2176, type: !5023, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5027)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!206, !5025}
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!5027 = !{!5028}
!5028 = !DILocalVariable(name: "page", arg: 1, scope: !5022, file: !1225, line: 2176, type: !5025)
!5029 = !DILocation(line: 2176, column: 69, scope: !5022)
!5030 = !DILocation(line: 2178, column: 9, scope: !5022)
!5031 = !DILocation(line: 2178, column: 2, scope: !5022)
!5032 = distinct !DISubprogram(name: "dma_common_free_pages", scope: !14, file: !14, line: 84, type: !4416, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5033)
!5033 = !{!5034, !5035, !5036, !5037, !5038, !5039}
!5034 = !DILocalVariable(name: "dev", arg: 1, scope: !5032, file: !14, line: 84, type: !4136)
!5035 = !DILocalVariable(name: "size", arg: 2, scope: !5032, file: !14, line: 84, type: !178)
!5036 = !DILocalVariable(name: "page", arg: 3, scope: !5032, file: !14, line: 84, type: !183)
!5037 = !DILocalVariable(name: "dma_handle", arg: 4, scope: !5032, file: !14, line: 85, type: !4120)
!5038 = !DILocalVariable(name: "dir", arg: 5, scope: !5032, file: !14, line: 85, type: !127)
!5039 = !DILocalVariable(name: "ops", scope: !5032, file: !14, line: 87, type: !4395)
!5040 = !DILocation(line: 84, column: 43, scope: !5032)
!5041 = !DILocation(line: 84, column: 55, scope: !5032)
!5042 = !DILocation(line: 84, column: 74, scope: !5032)
!5043 = !DILocation(line: 85, column: 14, scope: !5032)
!5044 = !DILocation(line: 85, column: 50, scope: !5032)
!5045 = !DILocation(line: 87, column: 2, scope: !5032)
!5046 = !DILocation(line: 87, column: 28, scope: !5032)
!5047 = !DILocation(line: 87, column: 46, scope: !5032)
!5048 = !DILocation(line: 87, column: 34, scope: !5032)
!5049 = !DILocation(line: 89, column: 6, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5032, file: !14, line: 89, column: 6)
!5051 = !DILocation(line: 89, column: 11, scope: !5050)
!5052 = !DILocation(line: 89, column: 6, scope: !5032)
!5053 = !DILocation(line: 90, column: 3, scope: !5050)
!5054 = !DILocation(line: 90, column: 8, scope: !5050)
!5055 = !DILocation(line: 90, column: 19, scope: !5050)
!5056 = !DILocation(line: 90, column: 24, scope: !5050)
!5057 = !DILocation(line: 90, column: 36, scope: !5050)
!5058 = !DILocation(line: 90, column: 42, scope: !5050)
!5059 = !DILocation(line: 92, column: 22, scope: !5032)
!5060 = !DILocation(line: 92, column: 27, scope: !5032)
!5061 = !DILocation(line: 92, column: 33, scope: !5032)
!5062 = !DILocation(line: 92, column: 2, scope: !5032)
!5063 = !DILocation(line: 93, column: 1, scope: !5032)
!5064 = !DISubprogram(name: "is_vmalloc_addr", scope: !1225, file: !1225, line: 1148, type: !5065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!809, !1140}
!5067 = !DISubprogram(name: "vmalloc_to_page", scope: !1225, file: !1225, line: 1138, type: !5068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!183, !1140}
!5070 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !5071, file: !5071, line: 22, type: !5072, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5074)
!5071 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!182, !182}
!5074 = !{!5075, !5076}
!5075 = !DILocalVariable(name: "x", arg: 1, scope: !5070, file: !5071, line: 22, type: !182)
!5076 = !DILocalVariable(name: "y", scope: !5070, file: !5071, line: 24, type: !182)
!5077 = !DILocation(line: 22, column: 72, scope: !5070)
!5078 = !DILocation(line: 24, column: 2, scope: !5070)
!5079 = !DILocation(line: 24, column: 16, scope: !5070)
!5080 = !DILocation(line: 24, column: 20, scope: !5070)
!5081 = !DILocation(line: 24, column: 22, scope: !5070)
!5082 = !DILocation(line: 27, column: 6, scope: !5070)
!5083 = !DILocation(line: 27, column: 12, scope: !5070)
!5084 = !DILocation(line: 27, column: 16, scope: !5070)
!5085 = !DILocation(line: 27, column: 14, scope: !5070)
!5086 = !DILocation(line: 27, column: 11, scope: !5070)
!5087 = !DILocation(line: 27, column: 21, scope: !5070)
!5088 = !DILocation(line: 27, column: 55, scope: !5070)
!5089 = !DILocation(line: 27, column: 53, scope: !5070)
!5090 = !DILocation(line: 27, column: 8, scope: !5070)
!5091 = !DILocation(line: 27, column: 4, scope: !5070)
!5092 = !DILocation(line: 29, column: 9, scope: !5070)
!5093 = !DILocation(line: 30, column: 1, scope: !5070)
!5094 = !DILocation(line: 29, column: 2, scope: !5070)
!5095 = distinct !DISubprogram(name: "sg_assign_page", scope: !2, file: !2, line: 107, type: !5096, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5098)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{null, !4426, !183}
!5098 = !{!5099, !5100, !5101}
!5099 = !DILocalVariable(name: "sg", arg: 1, scope: !5095, file: !2, line: 107, type: !4426)
!5100 = !DILocalVariable(name: "page", arg: 2, scope: !5095, file: !2, line: 107, type: !183)
!5101 = !DILocalVariable(name: "page_link", scope: !5095, file: !2, line: 109, type: !182)
!5102 = !DILocation(line: 107, column: 55, scope: !5095)
!5103 = !DILocation(line: 107, column: 72, scope: !5095)
!5104 = !DILocation(line: 109, column: 2, scope: !5095)
!5105 = !DILocation(line: 109, column: 16, scope: !5095)
!5106 = !DILocation(line: 109, column: 28, scope: !5095)
!5107 = !DILocation(line: 109, column: 32, scope: !5095)
!5108 = !DILocation(line: 109, column: 42, scope: !5095)
!5109 = !DILocation(line: 115, column: 2, scope: !5095)
!5110 = !DILocation(line: 115, column: 2, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5112, file: !2, line: 115, column: 2)
!5112 = distinct !DILexicalBlock(scope: !5095, file: !2, line: 115, column: 2)
!5113 = !DILocation(line: 115, column: 2, scope: !5112)
!5114 = !DILocation(line: 115, column: 2, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5111, file: !2, line: 115, column: 2)
!5116 = !DILocation(line: 115, column: 2, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5115, file: !2, line: 115, column: 2)
!5118 = !DILocation(line: 115, column: 2, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5115, file: !2, line: 115, column: 2)
!5120 = !{i64 2154514753, i64 2154514782, i64 2154514828, i64 2154514886, i64 2154514940, i64 2154514994, i64 2154515049, i64 2154515080}
!5121 = !DILocation(line: 119, column: 18, scope: !5095)
!5122 = !DILocation(line: 119, column: 46, scope: !5095)
!5123 = !DILocation(line: 119, column: 30, scope: !5095)
!5124 = !DILocation(line: 119, column: 28, scope: !5095)
!5125 = !DILocation(line: 119, column: 2, scope: !5095)
!5126 = !DILocation(line: 119, column: 6, scope: !5095)
!5127 = !DILocation(line: 119, column: 16, scope: !5095)
!5128 = !DILocation(line: 120, column: 1, scope: !5095)
!5129 = distinct !DISubprogram(name: "get_arch_dma_ops", scope: !5130, file: !5130, line: 7, type: !5131, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!5130 = !DIFile(filename: "./arch/x86/include/asm/dma-mapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9545fbbf1cdfd1a02d031cd6056140a3")
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!4395}
!5133 = !DILocation(line: 9, column: 9, scope: !5129)
!5134 = !DILocation(line: 9, column: 2, scope: !5129)
!5135 = distinct !DISubprogram(name: "numa_mem_id", scope: !5136, file: !5136, line: 168, type: !1718, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!5136 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!5137 = !DILocation(line: 170, column: 9, scope: !5135)
!5138 = !DILocation(line: 170, column: 2, scope: !5135)
!5139 = distinct !DISubprogram(name: "__alloc_pages_node", scope: !9, file: !9, line: 232, type: !4948, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5140)
!5140 = !{!5141, !5142, !5143}
!5141 = !DILocalVariable(name: "nid", arg: 1, scope: !5139, file: !9, line: 232, type: !120)
!5142 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !5139, file: !9, line: 232, type: !176)
!5143 = !DILocalVariable(name: "order", arg: 3, scope: !5139, file: !9, line: 232, type: !18)
!5144 = !DILocation(line: 232, column: 24, scope: !5139)
!5145 = !DILocation(line: 232, column: 35, scope: !5139)
!5146 = !DILocation(line: 232, column: 58, scope: !5139)
!5147 = !DILocation(line: 235, column: 23, scope: !5139)
!5148 = !DILocation(line: 235, column: 28, scope: !5139)
!5149 = !DILocation(line: 235, column: 2, scope: !5139)
!5150 = !DILocation(line: 237, column: 23, scope: !5139)
!5151 = !DILocation(line: 237, column: 33, scope: !5139)
!5152 = !DILocation(line: 237, column: 40, scope: !5139)
!5153 = !DILocation(line: 237, column: 9, scope: !5139)
!5154 = !DILocation(line: 237, column: 2, scope: !5139)
!5155 = distinct !DISubprogram(name: "numa_node_id", scope: !5136, file: !5136, line: 87, type: !1718, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5156)
!5156 = !{!5157, !5159, !5161}
!5157 = !DILocalVariable(name: "pscr_ret__", scope: !5158, file: !5136, line: 89, type: !120)
!5158 = distinct !DILexicalBlock(scope: !5155, file: !5136, line: 89, column: 9)
!5159 = !DILocalVariable(name: "__vpp_verify", scope: !5160, file: !5136, line: 89, type: !1140)
!5160 = distinct !DILexicalBlock(scope: !5158, file: !5136, line: 89, column: 9)
!5161 = !DILocalVariable(name: "pfo_val__", scope: !5162, file: !5136, line: 89, type: !286)
!5162 = distinct !DILexicalBlock(scope: !5158, file: !5136, line: 89, column: 9)
!5163 = !DILocation(line: 89, column: 9, scope: !5158)
!5164 = !DILocation(line: 89, column: 9, scope: !5160)
!5165 = !DILocation(line: 89, column: 9, scope: !5162)
!5166 = !{i64 2152034794}
!5167 = !DILocation(line: 89, column: 9, scope: !5155)
!5168 = !DILocation(line: 89, column: 2, scope: !5155)
!5169 = distinct !DISubprogram(name: "warn_if_node_offline", scope: !9, file: !9, line: 213, type: !5170, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5172)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{null, !120, !176}
!5172 = !{!5173, !5174, !5175}
!5173 = !DILocalVariable(name: "this_node", arg: 1, scope: !5169, file: !9, line: 213, type: !120)
!5174 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !5169, file: !9, line: 213, type: !176)
!5175 = !DILocalVariable(name: "warn_gfp", scope: !5169, file: !9, line: 215, type: !176)
!5176 = !DILocation(line: 213, column: 45, scope: !5169)
!5177 = !DILocation(line: 213, column: 62, scope: !5169)
!5178 = !DILocation(line: 215, column: 2, scope: !5169)
!5179 = !DILocation(line: 215, column: 8, scope: !5169)
!5180 = !DILocation(line: 215, column: 19, scope: !5169)
!5181 = !DILocation(line: 215, column: 28, scope: !5169)
!5182 = !DILocation(line: 217, column: 6, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5169, file: !9, line: 217, column: 6)
!5184 = !DILocation(line: 217, column: 15, scope: !5183)
!5185 = !DILocation(line: 217, column: 6, scope: !5169)
!5186 = !DILocation(line: 218, column: 3, scope: !5183)
!5187 = !DILocation(line: 220, column: 6, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5169, file: !9, line: 220, column: 6)
!5189 = !DILocation(line: 220, column: 6, scope: !5169)
!5190 = !DILocation(line: 221, column: 3, scope: !5188)
!5191 = !DILocation(line: 223, column: 2, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5169, file: !9, line: 223, column: 2)
!5193 = !DILocation(line: 223, column: 2, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5192, file: !9, line: 223, column: 2)
!5195 = !DILocation(line: 224, column: 2, scope: !5169)
!5196 = !DILocation(line: 225, column: 1, scope: !5169)
!5197 = !DISubprogram(name: "__alloc_pages", scope: !9, file: !9, line: 177, type: !5198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!183, !176, !18, !120, !5200}
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!5201 = distinct !DISubprogram(name: "node_state", scope: !160, file: !160, line: 421, type: !5202, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5204)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!120, !120, !159}
!5204 = !{!5205, !5206}
!5205 = !DILocalVariable(name: "node", arg: 1, scope: !5201, file: !160, line: 421, type: !120)
!5206 = !DILocalVariable(name: "state", arg: 2, scope: !5201, file: !160, line: 421, type: !159)
!5207 = !DILocation(line: 421, column: 34, scope: !5201)
!5208 = !DILocation(line: 421, column: 57, scope: !5201)
!5209 = !DILocation(line: 423, column: 9, scope: !5201)
!5210 = !DILocation(line: 423, column: 2, scope: !5201)
!5211 = !DISubprogram(name: "_printk", scope: !5212, file: !5212, line: 153, type: !5213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5212 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5213 = !DISubroutineType(types: !5214)
!5214 = !{!120, !376, null}
!5215 = !DISubprogram(name: "dump_stack", scope: !5212, file: !5212, line: 193, type: !1951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5216 = distinct !DISubprogram(name: "const_test_bit", scope: !5217, file: !5217, line: 166, type: !5218, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5223)
!5217 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!809, !182, !5220}
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5221, size: 64)
!5221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5222)
!5222 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !182)
!5223 = !{!5224, !5225, !5226, !5227, !5228}
!5224 = !DILocalVariable(name: "nr", arg: 1, scope: !5216, file: !5217, line: 166, type: !182)
!5225 = !DILocalVariable(name: "addr", arg: 2, scope: !5216, file: !5217, line: 166, type: !5220)
!5226 = !DILocalVariable(name: "p", scope: !5216, file: !5217, line: 168, type: !4122)
!5227 = !DILocalVariable(name: "mask", scope: !5216, file: !5217, line: 169, type: !182)
!5228 = !DILocalVariable(name: "val", scope: !5216, file: !5217, line: 170, type: !182)
!5229 = !DILocation(line: 166, column: 30, scope: !5216)
!5230 = !DILocation(line: 166, column: 64, scope: !5216)
!5231 = !DILocation(line: 168, column: 2, scope: !5216)
!5232 = !DILocation(line: 168, column: 23, scope: !5216)
!5233 = !DILocation(line: 168, column: 50, scope: !5216)
!5234 = !DILocation(line: 168, column: 57, scope: !5216)
!5235 = !DILocation(line: 168, column: 55, scope: !5216)
!5236 = !DILocation(line: 169, column: 2, scope: !5216)
!5237 = !DILocation(line: 169, column: 16, scope: !5216)
!5238 = !DILocation(line: 169, column: 23, scope: !5216)
!5239 = !DILocation(line: 170, column: 2, scope: !5216)
!5240 = !DILocation(line: 170, column: 16, scope: !5216)
!5241 = !DILocation(line: 170, column: 23, scope: !5216)
!5242 = !DILocation(line: 170, column: 22, scope: !5216)
!5243 = !DILocation(line: 172, column: 12, scope: !5216)
!5244 = !DILocation(line: 172, column: 18, scope: !5216)
!5245 = !DILocation(line: 172, column: 16, scope: !5216)
!5246 = !DILocation(line: 172, column: 10, scope: !5216)
!5247 = !DILocation(line: 172, column: 9, scope: !5216)
!5248 = !DILocation(line: 173, column: 1, scope: !5216)
!5249 = !DILocation(line: 172, column: 2, scope: !5216)
!5250 = distinct !DISubprogram(name: "_test_bit", scope: !5251, file: !5251, line: 139, type: !5218, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5252)
!5251 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5252 = !{!5253, !5254}
!5253 = !DILocalVariable(name: "nr", arg: 1, scope: !5250, file: !5251, line: 139, type: !182)
!5254 = !DILocalVariable(name: "addr", arg: 2, scope: !5250, file: !5251, line: 139, type: !5220)
!5255 = !DILocation(line: 139, column: 25, scope: !5250)
!5256 = !DILocation(line: 139, column: 59, scope: !5250)
!5257 = !DILocation(line: 141, column: 25, scope: !5250)
!5258 = !DILocation(line: 141, column: 32, scope: !5250)
!5259 = !DILocation(line: 141, column: 30, scope: !5250)
!5260 = !DILocation(line: 141, column: 2, scope: !5250)
!5261 = !DILocation(line: 142, column: 23, scope: !5250)
!5262 = !DILocation(line: 142, column: 27, scope: !5250)
!5263 = !DILocation(line: 142, column: 9, scope: !5250)
!5264 = !DILocation(line: 142, column: 2, scope: !5250)
!5265 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5266, file: !5266, line: 66, type: !5267, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5272)
!5266 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5267 = !DISubroutineType(types: !5268)
!5268 = !{null, !5269, !178}
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5271)
!5271 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5272 = !{!5273, !5274}
!5273 = !DILocalVariable(name: "v", arg: 1, scope: !5265, file: !5266, line: 66, type: !5269)
!5274 = !DILocalVariable(name: "size", arg: 2, scope: !5265, file: !5266, line: 66, type: !178)
!5275 = !DILocation(line: 66, column: 73, scope: !5265)
!5276 = !DILocation(line: 66, column: 83, scope: !5265)
!5277 = !DILocation(line: 68, column: 19, scope: !5265)
!5278 = !DILocation(line: 68, column: 22, scope: !5265)
!5279 = !DILocation(line: 68, column: 2, scope: !5265)
!5280 = !DILocation(line: 69, column: 2, scope: !5265)
!5281 = !DILocation(line: 70, column: 1, scope: !5265)
!5282 = distinct !DISubprogram(name: "arch_test_bit", scope: !5283, file: !5283, line: 237, type: !5218, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5284)
!5283 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5284 = !{!5285, !5286}
!5285 = !DILocalVariable(name: "nr", arg: 1, scope: !5282, file: !5283, line: 237, type: !182)
!5286 = !DILocalVariable(name: "addr", arg: 2, scope: !5282, file: !5283, line: 237, type: !5220)
!5287 = !DILocation(line: 237, column: 29, scope: !5282)
!5288 = !DILocation(line: 237, column: 63, scope: !5282)
!5289 = !DILocation(line: 239, column: 30, scope: !5282)
!5290 = !DILocation(line: 239, column: 9, scope: !5282)
!5291 = !DILocation(line: 239, column: 54, scope: !5282)
!5292 = !DILocation(line: 239, column: 58, scope: !5282)
!5293 = !DILocation(line: 239, column: 36, scope: !5282)
!5294 = !DILocation(line: 240, column: 26, scope: !5282)
!5295 = !DILocation(line: 240, column: 30, scope: !5282)
!5296 = !DILocation(line: 240, column: 8, scope: !5282)
!5297 = !DILocation(line: 239, column: 2, scope: !5282)
!5298 = distinct !DISubprogram(name: "kasan_check_read", scope: !5299, file: !5299, line: 40, type: !5300, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5302)
!5299 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5300 = !DISubroutineType(types: !5301)
!5301 = !{!809, !5269, !18}
!5302 = !{!5303, !5304}
!5303 = !DILocalVariable(name: "p", arg: 1, scope: !5298, file: !5299, line: 40, type: !5269)
!5304 = !DILocalVariable(name: "size", arg: 2, scope: !5298, file: !5299, line: 40, type: !18)
!5305 = !DILocation(line: 40, column: 58, scope: !5298)
!5306 = !DILocation(line: 40, column: 74, scope: !5298)
!5307 = !DILocation(line: 42, column: 2, scope: !5298)
!5308 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5309, file: !5309, line: 229, type: !5310, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5312)
!5309 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5310 = !DISubroutineType(types: !5311)
!5311 = !{null, !5269, !178, !120}
!5312 = !{!5313, !5314, !5315}
!5313 = !DILocalVariable(name: "ptr", arg: 1, scope: !5308, file: !5309, line: 229, type: !5269)
!5314 = !DILocalVariable(name: "size", arg: 2, scope: !5308, file: !5309, line: 229, type: !178)
!5315 = !DILocalVariable(name: "type", arg: 3, scope: !5308, file: !5309, line: 230, type: !120)
!5316 = !DILocation(line: 229, column: 60, scope: !5308)
!5317 = !DILocation(line: 229, column: 72, scope: !5308)
!5318 = !DILocation(line: 230, column: 15, scope: !5308)
!5319 = !DILocation(line: 230, column: 23, scope: !5308)
!5320 = distinct !DISubprogram(name: "constant_test_bit", scope: !5283, file: !5283, line: 204, type: !5321, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5323)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!809, !539, !5220}
!5323 = !{!5324, !5325}
!5324 = !DILocalVariable(name: "nr", arg: 1, scope: !5320, file: !5283, line: 204, type: !539)
!5325 = !DILocalVariable(name: "addr", arg: 2, scope: !5320, file: !5283, line: 204, type: !5220)
!5326 = !DILocation(line: 204, column: 52, scope: !5320)
!5327 = !DILocation(line: 204, column: 86, scope: !5320)
!5328 = !DILocation(line: 206, column: 19, scope: !5320)
!5329 = !DILocation(line: 206, column: 22, scope: !5320)
!5330 = !DILocation(line: 206, column: 15, scope: !5320)
!5331 = !DILocation(line: 207, column: 4, scope: !5320)
!5332 = !DILocation(line: 207, column: 9, scope: !5320)
!5333 = !DILocation(line: 207, column: 12, scope: !5320)
!5334 = !DILocation(line: 206, column: 44, scope: !5320)
!5335 = !DILocation(line: 207, column: 37, scope: !5320)
!5336 = !DILocation(line: 206, column: 2, scope: !5320)
!5337 = distinct !DISubprogram(name: "variable_test_bit", scope: !5283, file: !5283, line: 224, type: !5321, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5338)
!5338 = !{!5339, !5340, !5341}
!5339 = !DILocalVariable(name: "nr", arg: 1, scope: !5337, file: !5283, line: 224, type: !539)
!5340 = !DILocalVariable(name: "addr", arg: 2, scope: !5337, file: !5283, line: 224, type: !5220)
!5341 = !DILocalVariable(name: "oldbit", scope: !5337, file: !5283, line: 226, type: !809)
!5342 = !DILocation(line: 224, column: 52, scope: !5337)
!5343 = !DILocation(line: 224, column: 86, scope: !5337)
!5344 = !DILocation(line: 226, column: 2, scope: !5337)
!5345 = !DILocation(line: 226, column: 7, scope: !5337)
!5346 = !DILocation(line: 231, column: 33, scope: !5337)
!5347 = !DILocation(line: 231, column: 46, scope: !5337)
!5348 = !DILocation(line: 228, column: 2, scope: !5337)
!5349 = !{i64 2148100006, i64 2148100080}
!5350 = !DILocation(line: 233, column: 9, scope: !5337)
!5351 = !{i8 0, i8 2}
!5352 = !DILocation(line: 234, column: 1, scope: !5337)
!5353 = !DILocation(line: 233, column: 2, scope: !5337)
!5354 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5355, file: !5355, line: 30, type: !5356, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5358)
!5355 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!5356 = !DISubroutineType(types: !5357)
!5357 = !{!120, !292}
!5358 = !{!5359}
!5359 = !DILocalVariable(name: "n", arg: 1, scope: !5354, file: !5355, line: 30, type: !292)
!5360 = !DILocation(line: 30, column: 21, scope: !5354)
!5361 = !DILocation(line: 32, column: 15, scope: !5354)
!5362 = !DILocation(line: 32, column: 9, scope: !5354)
!5363 = !DILocation(line: 32, column: 18, scope: !5354)
!5364 = !DILocation(line: 32, column: 2, scope: !5354)
!5365 = distinct !DISubprogram(name: "fls64", scope: !5283, file: !5283, line: 401, type: !5366, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5368)
!5366 = !DISubroutineType(types: !5367)
!5367 = !{!120, !293}
!5368 = !{!5369, !5370}
!5369 = !DILocalVariable(name: "x", arg: 1, scope: !5365, file: !5283, line: 401, type: !293)
!5370 = !DILocalVariable(name: "bitpos", scope: !5365, file: !5283, line: 403, type: !120)
!5371 = !DILocation(line: 401, column: 40, scope: !5365)
!5372 = !DILocation(line: 403, column: 2, scope: !5365)
!5373 = !DILocation(line: 403, column: 6, scope: !5365)
!5374 = !DILocation(line: 409, column: 2, scope: !5365)
!5375 = !DILocation(line: 411, column: 14, scope: !5365)
!5376 = !{i64 599109}
!5377 = !DILocation(line: 412, column: 9, scope: !5365)
!5378 = !DILocation(line: 412, column: 16, scope: !5365)
!5379 = !DILocation(line: 413, column: 1, scope: !5365)
!5380 = !DILocation(line: 412, column: 2, scope: !5365)
!5381 = !DISubprogram(name: "__free_pages", scope: !9, file: !9, line: 302, type: !5382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{null, !183, !18}
