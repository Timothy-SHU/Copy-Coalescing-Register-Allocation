; ModuleID = 'mm/workingset.c'
source_filename = "mm/workingset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_workingset__341_814_workingset_init\22, \22a\22\09\09"
module asm "__initcall__kmod_workingset__341_814_workingset_init6:\09\09\09"
module asm ".long\09__initstub__kmod_workingset__341_814_workingset_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.list_lru = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.36 }
%struct.atomic_t = type { i32 }
%union.anon.36 = type { i64 }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.41 }
%union.anon.41 = type { i64 }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.folio = type { %union.anon.16, %union.anon.31, %union.anon.33 }
%union.anon.16 = type { %struct.page }
%struct.page = type { i64, %union.anon.21, %union.anon.30, %struct.atomic_t, [8 x i8] }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %union.anon.23, ptr, %union.anon.25, i64 }
%union.anon.23 = type { %struct.list_head }
%union.anon.25 = type { i64 }
%union.anon.30 = type { %struct.atomic_t }
%union.anon.31 = type { %struct.page }
%union.anon.33 = type { %struct.page }
%struct.pglist_data = type { [4 x %struct.zone], [2 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i64, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i64, i64, i64, [56 x i8], %struct.cacheline_padding, %struct.lruvec, i64, [48 x i8], %struct.cacheline_padding, ptr, [41 x %struct.atomic64_t], ptr, [40 x i8] }
%struct.zone = type { [4 x i64], i64, i64, [4 x i64], i32, ptr, ptr, ptr, i32, i32, i64, %struct.atomic64_t, i64, i64, ptr, i32, [28 x i8], %struct.cacheline_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.cacheline_padding, i64, i64, [2 x i64], i64, i64, i32, i32, i32, i8, i8, [2 x i8], %struct.cacheline_padding, [10 x %struct.atomic64_t], [6 x %struct.atomic64_t] }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.zonelist = type { [257 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cacheline_padding = type { [0 x i8] }
%struct.anon.32 = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.14, [64 x ptr], %union.anon.15 }
%union.anon.14 = type { %struct.list_head }
%union.anon.15 = type { [3 x [1 x i64]] }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.28 = type { i64 }
%struct.shrink_control = type { i32, i32, i64, i64, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.37, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.38, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.39, ptr, %struct.address_space, %struct.list_head, %union.anon.40, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.37 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.38 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.39 = type { ptr }
%union.anon.40 = type { ptr }

@bucket_order = internal global i32 0, section ".data..read_mostly", align 4, !dbg !0
@shadow_nodes = hidden global %struct.list_lru zeroinitializer, align 8, !dbg !5595
@__UNIQUE_ID___addressable___initstub__kmod_workingset__341_814_workingset_init6342 = internal global ptr @__initstub__kmod_workingset__341_814_workingset_init6, section ".discard.addressable", align 8, !dbg !5593
@node_data = external dso_local global [0 x ptr], align 8
@.str = private unnamed_addr constant [23 x i8] c"include/linux/xarray.h\00", align 1, !dbg !5597
@.str.1 = private unnamed_addr constant [27 x i8] c"include/linux/memcontrol.h\00", align 1, !dbg !5602
@nr_swap_pages = external dso_local global %struct.atomic64_t, align 8
@vmemmap_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@hugetlb_optimize_vmemmap_key = external dso_local global %struct.static_key_false, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"\016workingset: timestamp_bits=%d max_order=%d bucket_order=%u\0A\00", align 1, !dbg !5608
@workingset_shadow_shrinker = internal global %struct.shrinker { ptr @count_shadow_nodes, ptr @scan_shadow_nodes, i64 0, i32 0, i32 6, %struct.list_head zeroinitializer, ptr null }, align 8, !dbg !5616
@.str.3 = private unnamed_addr constant [10 x i8] c"mm-shadow\00", align 1, !dbg !5613
@shadow_nodes_key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5623
@_totalram_pages = external dso_local global %struct.atomic64_t, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"mm/workingset.c\00", align 1, !dbg !5618
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched144 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !5620
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_workingset__341_814_workingset_init6342, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched144], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @workingset_age_nonresident(ptr noundef %lruvec, i64 noundef %nr_pages) #0 align 16 !dbg !5634 {
entry:
  %lruvec.addr = alloca ptr, align 8
  %nr_pages.addr = alloca i64, align 8
  store ptr %lruvec, ptr %lruvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lruvec.addr, metadata !5639, metadata !DIExpression()), !dbg !5641
  store i64 %nr_pages, ptr %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_pages.addr, metadata !5640, metadata !DIExpression()), !dbg !5642
  br label %do.body, !dbg !5643

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, ptr %nr_pages.addr, align 8, !dbg !5644
  %1 = load ptr, ptr %lruvec.addr, align 8, !dbg !5646
  %nonresident_age = getelementptr inbounds %struct.lruvec, ptr %1, i32 0, i32 4, !dbg !5647
  call void @atomic_long_add(i64 noundef %0, ptr noundef %nonresident_age) #11, !dbg !5648
  br label %do.cond, !dbg !5649

do.cond:                                          ; preds = %do.body
  %2 = load ptr, ptr %lruvec.addr, align 8, !dbg !5650
  %call = call ptr @parent_lruvec(ptr noundef %2) #11, !dbg !5651
  store ptr %call, ptr %lruvec.addr, align 8, !dbg !5652
  %tobool = icmp ne ptr %call, null, !dbg !5649
  br i1 %tobool, label %do.body, label %do.end, !dbg !5649, !llvm.loop !5653

do.end:                                           ; preds = %do.cond
  ret void, !dbg !5657
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_add(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !5658 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5663, metadata !DIExpression()), !dbg !5665
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5664, metadata !DIExpression()), !dbg !5666
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5667
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #11, !dbg !5668
  %1 = load i64, ptr %i.addr, align 8, !dbg !5669
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5670
  call void @raw_atomic_long_add(i64 noundef %1, ptr noundef %2) #11, !dbg !5671
  ret void, !dbg !5672
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @parent_lruvec(ptr noundef %lruvec) #3 align 16 !dbg !5673 {
entry:
  %retval = alloca ptr, align 8
  %lruvec.addr = alloca ptr, align 8
  %memcg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lruvec, ptr %lruvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lruvec.addr, metadata !5677, metadata !DIExpression()), !dbg !5679
  call void @llvm.lifetime.start.p0(i64 8, ptr %memcg) #12, !dbg !5680
  call void @llvm.dbg.declare(metadata ptr %memcg, metadata !5678, metadata !DIExpression()), !dbg !5681
  %0 = load ptr, ptr %lruvec.addr, align 8, !dbg !5682
  %call = call ptr @lruvec_memcg(ptr noundef %0) #11, !dbg !5683
  store ptr %call, ptr %memcg, align 8, !dbg !5684
  %1 = load ptr, ptr %memcg, align 8, !dbg !5685
  %tobool = icmp ne ptr %1, null, !dbg !5685
  br i1 %tobool, label %if.end, label %if.then, !dbg !5687

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5688

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %memcg, align 8, !dbg !5689
  %call1 = call ptr @parent_mem_cgroup(ptr noundef %2) #11, !dbg !5690
  store ptr %call1, ptr %memcg, align 8, !dbg !5691
  %3 = load ptr, ptr %memcg, align 8, !dbg !5692
  %tobool2 = icmp ne ptr %3, null, !dbg !5692
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5694

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !5695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5695

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %memcg, align 8, !dbg !5696
  %5 = load ptr, ptr %lruvec.addr, align 8, !dbg !5697
  %call5 = call ptr @lruvec_pgdat(ptr noundef %5) #11, !dbg !5698
  %call6 = call ptr @mem_cgroup_lruvec(ptr noundef %4, ptr noundef %call5) #11, !dbg !5699
  store ptr %call6, ptr %retval, align 8, !dbg !5700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5700

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %memcg) #12, !dbg !5701
  %6 = load ptr, ptr %retval, align 8, !dbg !5701
  ret ptr %6, !dbg !5701
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @workingset_eviction(ptr noundef %folio, ptr noundef %target_memcg) #0 align 16 !dbg !5702 {
entry:
  %retval = alloca ptr, align 8
  %folio.addr = alloca ptr, align 8
  %target_memcg.addr = alloca ptr, align 8
  %pgdat = alloca ptr, align 8
  %eviction = alloca i64, align 8
  %lruvec = alloca ptr, align 8
  %memcgid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5706, metadata !DIExpression()), !dbg !5712
  store ptr %target_memcg, ptr %target_memcg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target_memcg.addr, metadata !5707, metadata !DIExpression()), !dbg !5713
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgdat) #12, !dbg !5714
  call void @llvm.dbg.declare(metadata ptr %pgdat, metadata !5708, metadata !DIExpression()), !dbg !5715
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !5716
  %call = call ptr @folio_pgdat(ptr noundef %0) #11, !dbg !5717
  store ptr %call, ptr %pgdat, align 8, !dbg !5715
  call void @llvm.lifetime.start.p0(i64 8, ptr %eviction) #12, !dbg !5718
  call void @llvm.dbg.declare(metadata ptr %eviction, metadata !5709, metadata !DIExpression()), !dbg !5719
  call void @llvm.lifetime.start.p0(i64 8, ptr %lruvec) #12, !dbg !5720
  call void @llvm.dbg.declare(metadata ptr %lruvec, metadata !5710, metadata !DIExpression()), !dbg !5721
  call void @llvm.lifetime.start.p0(i64 4, ptr %memcgid) #12, !dbg !5722
  call void @llvm.dbg.declare(metadata ptr %memcgid, metadata !5711, metadata !DIExpression()), !dbg !5723
  %call1 = call zeroext i1 @lru_gen_enabled() #11, !dbg !5724
  br i1 %call1, label %if.then, label %if.end, !dbg !5726

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !5727
  %call2 = call ptr @lru_gen_eviction(ptr noundef %1) #11, !dbg !5728
  store ptr %call2, ptr %retval, align 8, !dbg !5729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5729

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %target_memcg.addr, align 8, !dbg !5730
  %3 = load ptr, ptr %pgdat, align 8, !dbg !5731
  %call3 = call ptr @mem_cgroup_lruvec(ptr noundef %2, ptr noundef %3) #11, !dbg !5732
  store ptr %call3, ptr %lruvec, align 8, !dbg !5733
  %4 = load ptr, ptr %lruvec, align 8, !dbg !5734
  %call4 = call ptr @lruvec_memcg(ptr noundef %4) #11, !dbg !5735
  %call5 = call zeroext i16 @mem_cgroup_id(ptr noundef %call4) #11, !dbg !5736
  %conv = zext i16 %call5 to i32, !dbg !5736
  store i32 %conv, ptr %memcgid, align 4, !dbg !5737
  %5 = load ptr, ptr %lruvec, align 8, !dbg !5738
  %nonresident_age = getelementptr inbounds %struct.lruvec, ptr %5, i32 0, i32 4, !dbg !5739
  %call6 = call i64 @atomic_long_read(ptr noundef %nonresident_age) #11, !dbg !5740
  store i64 %call6, ptr %eviction, align 8, !dbg !5741
  %6 = load i32, ptr @bucket_order, align 4, !dbg !5742
  %7 = load i64, ptr %eviction, align 8, !dbg !5743
  %sh_prom = zext i32 %6 to i64, !dbg !5743
  %shr = lshr i64 %7, %sh_prom, !dbg !5743
  store i64 %shr, ptr %eviction, align 8, !dbg !5743
  %8 = load ptr, ptr %lruvec, align 8, !dbg !5744
  %9 = load ptr, ptr %folio.addr, align 8, !dbg !5745
  %call7 = call i64 @folio_nr_pages(ptr noundef %9) #11, !dbg !5746
  call void @workingset_age_nonresident(ptr noundef %8, i64 noundef %call7) #11, !dbg !5747
  %10 = load i32, ptr %memcgid, align 4, !dbg !5748
  %11 = load ptr, ptr %pgdat, align 8, !dbg !5749
  %12 = load i64, ptr %eviction, align 8, !dbg !5750
  %13 = load ptr, ptr %folio.addr, align 8, !dbg !5751
  %call8 = call zeroext i1 @folio_test_workingset(ptr noundef %13) #11, !dbg !5752
  %call9 = call ptr @pack_shadow(i32 noundef %10, ptr noundef %11, i64 noundef %12, i1 noundef zeroext %call8) #11, !dbg !5753
  store ptr %call9, ptr %retval, align 8, !dbg !5754
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5754

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %memcgid) #12, !dbg !5755
  call void @llvm.lifetime.end.p0(i64 8, ptr %lruvec) #12, !dbg !5755
  call void @llvm.lifetime.end.p0(i64 8, ptr %eviction) #12, !dbg !5755
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgdat) #12, !dbg !5755
  %14 = load ptr, ptr %retval, align 8, !dbg !5755
  ret ptr %14, !dbg !5755
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_pgdat(ptr noundef %folio) #3 align 16 !dbg !5756 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5764, metadata !DIExpression()), !dbg !5765
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !5766
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !5767
  %call = call ptr @page_pgdat(ptr noundef %1) #11, !dbg !5768
  ret ptr %call, !dbg !5769
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @lru_gen_enabled() #3 align 16 !dbg !5770 {
entry:
  ret i1 false, !dbg !5772
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lru_gen_eviction(ptr noundef %folio) #0 align 16 !dbg !5773 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5777, metadata !DIExpression()), !dbg !5778
  ret ptr null, !dbg !5779
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @mem_cgroup_lruvec(ptr noundef %memcg, ptr noundef %pgdat) #3 align 16 !dbg !5780 {
entry:
  %memcg.addr = alloca ptr, align 8
  %pgdat.addr = alloca ptr, align 8
  store ptr %memcg, ptr %memcg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg.addr, metadata !5784, metadata !DIExpression()), !dbg !5786
  store ptr %pgdat, ptr %pgdat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdat.addr, metadata !5785, metadata !DIExpression()), !dbg !5787
  %0 = load ptr, ptr %pgdat.addr, align 8, !dbg !5788
  %__lruvec = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 26, !dbg !5789
  ret ptr %__lruvec, !dbg !5790
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @mem_cgroup_id(ptr noundef %memcg) #3 align 16 !dbg !5791 {
entry:
  %memcg.addr = alloca ptr, align 8
  store ptr %memcg, ptr %memcg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg.addr, metadata !5795, metadata !DIExpression()), !dbg !5796
  ret i16 0, !dbg !5797
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lruvec_memcg(ptr noundef %lruvec) #3 align 16 !dbg !5798 {
entry:
  %lruvec.addr = alloca ptr, align 8
  store ptr %lruvec, ptr %lruvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lruvec.addr, metadata !5802, metadata !DIExpression()), !dbg !5803
  ret ptr null, !dbg !5804
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #2 align 16 !dbg !5805 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5811, metadata !DIExpression()), !dbg !5812
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5813
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #11, !dbg !5814
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5815
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #11, !dbg !5816
  ret i64 %call, !dbg !5817
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @folio_nr_pages(ptr noundef %folio) #3 align 16 !dbg !5818 {
entry:
  %retval = alloca i64, align 8
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5822, metadata !DIExpression()), !dbg !5823
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !5824
  %call = call zeroext i1 @folio_test_large(ptr noundef %0) #11, !dbg !5826
  br i1 %call, label %if.end, label %if.then, !dbg !5827

if.then:                                          ; preds = %entry
  store i64 1, ptr %retval, align 8, !dbg !5828
  br label %return, !dbg !5828

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !5829
  %2 = getelementptr inbounds %struct.folio, ptr %1, i32 0, i32 1, !dbg !5830
  %_folio_nr_pages = getelementptr inbounds %struct.anon.32, ptr %2, i32 0, i32 6, !dbg !5830
  %3 = load i32, ptr %_folio_nr_pages, align 4, !dbg !5830
  %conv = zext i32 %3 to i64, !dbg !5829
  store i64 %conv, ptr %retval, align 8, !dbg !5831
  br label %return, !dbg !5831

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, ptr %retval, align 8, !dbg !5832
  ret i64 %4, !dbg !5832
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pack_shadow(i32 noundef %memcgid, ptr noundef %pgdat, i64 noundef %eviction, i1 noundef zeroext %workingset) #0 align 16 !dbg !5833 {
entry:
  %memcgid.addr = alloca i32, align 4
  %pgdat.addr = alloca ptr, align 8
  %eviction.addr = alloca i64, align 8
  %workingset.addr = alloca i8, align 1
  store i32 %memcgid, ptr %memcgid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %memcgid.addr, metadata !5837, metadata !DIExpression()), !dbg !5841
  store ptr %pgdat, ptr %pgdat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdat.addr, metadata !5838, metadata !DIExpression()), !dbg !5842
  store i64 %eviction, ptr %eviction.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eviction.addr, metadata !5839, metadata !DIExpression()), !dbg !5843
  %frombool = zext i1 %workingset to i8
  store i8 %frombool, ptr %workingset.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %workingset.addr, metadata !5840, metadata !DIExpression()), !dbg !5844
  %0 = load i64, ptr %eviction.addr, align 8, !dbg !5845
  %and = and i64 %0, 72057594037927935, !dbg !5845
  store i64 %and, ptr %eviction.addr, align 8, !dbg !5845
  %1 = load i64, ptr %eviction.addr, align 8, !dbg !5846
  %shl = shl i64 %1, 0, !dbg !5847
  %2 = load i32, ptr %memcgid.addr, align 4, !dbg !5848
  %conv = sext i32 %2 to i64, !dbg !5848
  %or = or i64 %shl, %conv, !dbg !5849
  store i64 %or, ptr %eviction.addr, align 8, !dbg !5850
  %3 = load i64, ptr %eviction.addr, align 8, !dbg !5851
  %shl1 = shl i64 %3, 6, !dbg !5852
  %4 = load ptr, ptr %pgdat.addr, align 8, !dbg !5853
  %node_id = getelementptr inbounds %struct.pglist_data, ptr %4, i32 0, i32 6, !dbg !5854
  %5 = load i32, ptr %node_id, align 64, !dbg !5854
  %conv2 = sext i32 %5 to i64, !dbg !5853
  %or3 = or i64 %shl1, %conv2, !dbg !5855
  store i64 %or3, ptr %eviction.addr, align 8, !dbg !5856
  %6 = load i64, ptr %eviction.addr, align 8, !dbg !5857
  %shl4 = shl i64 %6, 1, !dbg !5858
  %7 = load i8, ptr %workingset.addr, align 1, !dbg !5859, !range !5860, !noundef !1267
  %tobool = trunc i8 %7 to i1, !dbg !5859
  %conv5 = zext i1 %tobool to i64, !dbg !5859
  %or6 = or i64 %shl4, %conv5, !dbg !5861
  store i64 %or6, ptr %eviction.addr, align 8, !dbg !5862
  %8 = load i64, ptr %eviction.addr, align 8, !dbg !5863
  %call = call ptr @xa_mk_value(i64 noundef %8) #11, !dbg !5864
  ret ptr %call, !dbg !5865
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_workingset(ptr noundef %folio) #2 align 16 !dbg !5866 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5870, metadata !DIExpression()), !dbg !5871
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !5871
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #11, !dbg !5871
  %call1 = call zeroext i1 @_test_bit(i64 noundef 9, ptr noundef %call) #11, !dbg !5871
  ret i1 %call1, !dbg !5871
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @workingset_test_recent(ptr noundef %shadow, i1 noundef zeroext %file, ptr noundef %workingset) #0 align 16 !dbg !5872 {
entry:
  %retval = alloca i1, align 1
  %shadow.addr = alloca ptr, align 8
  %file.addr = alloca i8, align 1
  %workingset.addr = alloca ptr, align 8
  %eviction_memcg = alloca ptr, align 8
  %eviction_lruvec = alloca ptr, align 8
  %refault_distance = alloca i64, align 8
  %workingset_size = alloca i64, align 8
  %refault = alloca i64, align 8
  %memcgid = alloca i32, align 4
  %pgdat = alloca ptr, align 8
  %eviction = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %shadow, ptr %shadow.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shadow.addr, metadata !5876, metadata !DIExpression()), !dbg !5887
  %frombool = zext i1 %file to i8
  store i8 %frombool, ptr %file.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5877, metadata !DIExpression()), !dbg !5888
  store ptr %workingset, ptr %workingset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workingset.addr, metadata !5878, metadata !DIExpression()), !dbg !5889
  call void @llvm.lifetime.start.p0(i64 8, ptr %eviction_memcg) #12, !dbg !5890
  call void @llvm.dbg.declare(metadata ptr %eviction_memcg, metadata !5879, metadata !DIExpression()), !dbg !5891
  call void @llvm.lifetime.start.p0(i64 8, ptr %eviction_lruvec) #12, !dbg !5892
  call void @llvm.dbg.declare(metadata ptr %eviction_lruvec, metadata !5880, metadata !DIExpression()), !dbg !5893
  call void @llvm.lifetime.start.p0(i64 8, ptr %refault_distance) #12, !dbg !5894
  call void @llvm.dbg.declare(metadata ptr %refault_distance, metadata !5881, metadata !DIExpression()), !dbg !5895
  call void @llvm.lifetime.start.p0(i64 8, ptr %workingset_size) #12, !dbg !5896
  call void @llvm.dbg.declare(metadata ptr %workingset_size, metadata !5882, metadata !DIExpression()), !dbg !5897
  call void @llvm.lifetime.start.p0(i64 8, ptr %refault) #12, !dbg !5898
  call void @llvm.dbg.declare(metadata ptr %refault, metadata !5883, metadata !DIExpression()), !dbg !5899
  call void @llvm.lifetime.start.p0(i64 4, ptr %memcgid) #12, !dbg !5900
  call void @llvm.dbg.declare(metadata ptr %memcgid, metadata !5884, metadata !DIExpression()), !dbg !5901
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgdat) #12, !dbg !5902
  call void @llvm.dbg.declare(metadata ptr %pgdat, metadata !5885, metadata !DIExpression()), !dbg !5903
  call void @llvm.lifetime.start.p0(i64 8, ptr %eviction) #12, !dbg !5904
  call void @llvm.dbg.declare(metadata ptr %eviction, metadata !5886, metadata !DIExpression()), !dbg !5905
  %call = call zeroext i1 @lru_gen_enabled() #11, !dbg !5906
  br i1 %call, label %if.then, label %if.end, !dbg !5908

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %shadow.addr, align 8, !dbg !5909
  %1 = load i8, ptr %file.addr, align 1, !dbg !5910, !range !5860, !noundef !1267
  %tobool = trunc i8 %1 to i1, !dbg !5910
  %2 = load ptr, ptr %workingset.addr, align 8, !dbg !5911
  %call1 = call zeroext i1 @lru_gen_test_recent(ptr noundef %0, i1 noundef zeroext %tobool, ptr noundef %eviction_lruvec, ptr noundef %eviction, ptr noundef %2) #11, !dbg !5912
  store i1 %call1, ptr %retval, align 1, !dbg !5913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5913

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %shadow.addr, align 8, !dbg !5914
  %4 = load ptr, ptr %workingset.addr, align 8, !dbg !5915
  call void @unpack_shadow(ptr noundef %3, ptr noundef %memcgid, ptr noundef %pgdat, ptr noundef %eviction, ptr noundef %4) #11, !dbg !5916
  %5 = load i32, ptr @bucket_order, align 4, !dbg !5917
  %6 = load i64, ptr %eviction, align 8, !dbg !5918
  %sh_prom = zext i32 %5 to i64, !dbg !5918
  %shl = shl i64 %6, %sh_prom, !dbg !5918
  store i64 %shl, ptr %eviction, align 8, !dbg !5918
  %7 = load i32, ptr %memcgid, align 4, !dbg !5919
  %conv = trunc i32 %7 to i16, !dbg !5919
  %call2 = call ptr @mem_cgroup_from_id(i16 noundef zeroext %conv) #11, !dbg !5920
  store ptr %call2, ptr %eviction_memcg, align 8, !dbg !5921
  %call3 = call zeroext i1 @mem_cgroup_disabled() #11, !dbg !5922
  br i1 %call3, label %if.end6, label %land.lhs.true, !dbg !5924

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %eviction_memcg, align 8, !dbg !5925
  %tobool4 = icmp ne ptr %8, null, !dbg !5925
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5926

if.then5:                                         ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !5927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5927

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %eviction_memcg, align 8, !dbg !5928
  %10 = load ptr, ptr %pgdat, align 8, !dbg !5929
  %call7 = call ptr @mem_cgroup_lruvec(ptr noundef %9, ptr noundef %10) #11, !dbg !5930
  store ptr %call7, ptr %eviction_lruvec, align 8, !dbg !5931
  %11 = load ptr, ptr %eviction_lruvec, align 8, !dbg !5932
  %nonresident_age = getelementptr inbounds %struct.lruvec, ptr %11, i32 0, i32 4, !dbg !5933
  %call8 = call i64 @atomic_long_read(ptr noundef %nonresident_age) #11, !dbg !5934
  store i64 %call8, ptr %refault, align 8, !dbg !5935
  %12 = load i64, ptr %refault, align 8, !dbg !5936
  %13 = load i64, ptr %eviction, align 8, !dbg !5937
  %sub = sub i64 %12, %13, !dbg !5938
  %and = and i64 %sub, 72057594037927935, !dbg !5939
  store i64 %and, ptr %refault_distance, align 8, !dbg !5940
  %14 = load ptr, ptr %eviction_lruvec, align 8, !dbg !5941
  %call9 = call i64 @lruvec_page_state(ptr noundef %14, i32 noundef 3) #11, !dbg !5942
  store i64 %call9, ptr %workingset_size, align 8, !dbg !5943
  %15 = load i8, ptr %file.addr, align 1, !dbg !5944, !range !5860, !noundef !1267
  %tobool10 = trunc i8 %15 to i1, !dbg !5944
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !5946

if.then11:                                        ; preds = %if.end6
  %16 = load ptr, ptr %eviction_lruvec, align 8, !dbg !5947
  %call12 = call i64 @lruvec_page_state(ptr noundef %16, i32 noundef 2) #11, !dbg !5949
  %17 = load i64, ptr %workingset_size, align 8, !dbg !5950
  %add = add i64 %17, %call12, !dbg !5950
  store i64 %add, ptr %workingset_size, align 8, !dbg !5950
  br label %if.end13, !dbg !5951

if.end13:                                         ; preds = %if.then11, %if.end6
  %18 = load ptr, ptr %eviction_memcg, align 8, !dbg !5952
  %call14 = call i64 @mem_cgroup_get_nr_swap_pages(ptr noundef %18) #11, !dbg !5954
  %cmp = icmp sgt i64 %call14, 0, !dbg !5955
  br i1 %cmp, label %if.then16, label %if.end24, !dbg !5956

if.then16:                                        ; preds = %if.end13
  %19 = load ptr, ptr %eviction_lruvec, align 8, !dbg !5957
  %call17 = call i64 @lruvec_page_state(ptr noundef %19, i32 noundef 1) #11, !dbg !5959
  %20 = load i64, ptr %workingset_size, align 8, !dbg !5960
  %add18 = add i64 %20, %call17, !dbg !5960
  store i64 %add18, ptr %workingset_size, align 8, !dbg !5960
  %21 = load i8, ptr %file.addr, align 1, !dbg !5961, !range !5860, !noundef !1267
  %tobool19 = trunc i8 %21 to i1, !dbg !5961
  br i1 %tobool19, label %if.then20, label %if.end23, !dbg !5963

if.then20:                                        ; preds = %if.then16
  %22 = load ptr, ptr %eviction_lruvec, align 8, !dbg !5964
  %call21 = call i64 @lruvec_page_state(ptr noundef %22, i32 noundef 0) #11, !dbg !5966
  %23 = load i64, ptr %workingset_size, align 8, !dbg !5967
  %add22 = add i64 %23, %call21, !dbg !5967
  store i64 %add22, ptr %workingset_size, align 8, !dbg !5967
  br label %if.end23, !dbg !5968

if.end23:                                         ; preds = %if.then20, %if.then16
  br label %if.end24, !dbg !5969

if.end24:                                         ; preds = %if.end23, %if.end13
  %24 = load i64, ptr %refault_distance, align 8, !dbg !5970
  %25 = load i64, ptr %workingset_size, align 8, !dbg !5971
  %cmp25 = icmp ule i64 %24, %25, !dbg !5972
  store i1 %cmp25, ptr %retval, align 1, !dbg !5973
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5973

cleanup:                                          ; preds = %if.end24, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %eviction) #12, !dbg !5974
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgdat) #12, !dbg !5974
  call void @llvm.lifetime.end.p0(i64 4, ptr %memcgid) #12, !dbg !5974
  call void @llvm.lifetime.end.p0(i64 8, ptr %refault) #12, !dbg !5974
  call void @llvm.lifetime.end.p0(i64 8, ptr %workingset_size) #12, !dbg !5974
  call void @llvm.lifetime.end.p0(i64 8, ptr %refault_distance) #12, !dbg !5974
  call void @llvm.lifetime.end.p0(i64 8, ptr %eviction_lruvec) #12, !dbg !5974
  call void @llvm.lifetime.end.p0(i64 8, ptr %eviction_memcg) #12, !dbg !5974
  %26 = load i1, ptr %retval, align 1, !dbg !5974
  ret i1 %26, !dbg !5974
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @lru_gen_test_recent(ptr noundef %shadow, i1 noundef zeroext %file, ptr noundef %lruvec, ptr noundef %token, ptr noundef %workingset) #0 align 16 !dbg !5975 {
entry:
  %shadow.addr = alloca ptr, align 8
  %file.addr = alloca i8, align 1
  %lruvec.addr = alloca ptr, align 8
  %token.addr = alloca ptr, align 8
  %workingset.addr = alloca ptr, align 8
  store ptr %shadow, ptr %shadow.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shadow.addr, metadata !5980, metadata !DIExpression()), !dbg !5985
  %frombool = zext i1 %file to i8
  store i8 %frombool, ptr %file.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5981, metadata !DIExpression()), !dbg !5986
  store ptr %lruvec, ptr %lruvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lruvec.addr, metadata !5982, metadata !DIExpression()), !dbg !5987
  store ptr %token, ptr %token.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %token.addr, metadata !5983, metadata !DIExpression()), !dbg !5988
  store ptr %workingset, ptr %workingset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workingset.addr, metadata !5984, metadata !DIExpression()), !dbg !5989
  ret i1 false, !dbg !5990
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unpack_shadow(ptr noundef %shadow, ptr noundef %memcgidp, ptr noundef %pgdat, ptr noundef %evictionp, ptr noundef %workingsetp) #0 align 16 !dbg !5991 {
entry:
  %shadow.addr = alloca ptr, align 8
  %memcgidp.addr = alloca ptr, align 8
  %pgdat.addr = alloca ptr, align 8
  %evictionp.addr = alloca ptr, align 8
  %workingsetp.addr = alloca ptr, align 8
  %entry1 = alloca i64, align 8
  %memcgid = alloca i32, align 4
  %nid = alloca i32, align 4
  %workingset = alloca i8, align 1
  store ptr %shadow, ptr %shadow.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shadow.addr, metadata !5996, metadata !DIExpression()), !dbg !6005
  store ptr %memcgidp, ptr %memcgidp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcgidp.addr, metadata !5997, metadata !DIExpression()), !dbg !6006
  store ptr %pgdat, ptr %pgdat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdat.addr, metadata !5998, metadata !DIExpression()), !dbg !6007
  store ptr %evictionp, ptr %evictionp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %evictionp.addr, metadata !5999, metadata !DIExpression()), !dbg !6008
  store ptr %workingsetp, ptr %workingsetp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workingsetp.addr, metadata !6000, metadata !DIExpression()), !dbg !6009
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #12, !dbg !6010
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6001, metadata !DIExpression()), !dbg !6011
  %0 = load ptr, ptr %shadow.addr, align 8, !dbg !6012
  %call = call i64 @xa_to_value(ptr noundef %0) #11, !dbg !6013
  store i64 %call, ptr %entry1, align 8, !dbg !6011
  call void @llvm.lifetime.start.p0(i64 4, ptr %memcgid) #12, !dbg !6014
  call void @llvm.dbg.declare(metadata ptr %memcgid, metadata !6002, metadata !DIExpression()), !dbg !6015
  call void @llvm.lifetime.start.p0(i64 4, ptr %nid) #12, !dbg !6014
  call void @llvm.dbg.declare(metadata ptr %nid, metadata !6003, metadata !DIExpression()), !dbg !6016
  call void @llvm.lifetime.start.p0(i64 1, ptr %workingset) #12, !dbg !6017
  call void @llvm.dbg.declare(metadata ptr %workingset, metadata !6004, metadata !DIExpression()), !dbg !6018
  %1 = load i64, ptr %entry1, align 8, !dbg !6019
  %and = and i64 %1, 1, !dbg !6020
  %tobool = icmp ne i64 %and, 0, !dbg !6019
  %frombool = zext i1 %tobool to i8, !dbg !6021
  store i8 %frombool, ptr %workingset, align 1, !dbg !6021
  %2 = load i64, ptr %entry1, align 8, !dbg !6022
  %shr = lshr i64 %2, 1, !dbg !6022
  store i64 %shr, ptr %entry1, align 8, !dbg !6022
  %3 = load i64, ptr %entry1, align 8, !dbg !6023
  %and2 = and i64 %3, 63, !dbg !6024
  %conv = trunc i64 %and2 to i32, !dbg !6023
  store i32 %conv, ptr %nid, align 4, !dbg !6025
  %4 = load i64, ptr %entry1, align 8, !dbg !6026
  %shr3 = lshr i64 %4, 6, !dbg !6026
  store i64 %shr3, ptr %entry1, align 8, !dbg !6026
  %5 = load i64, ptr %entry1, align 8, !dbg !6027
  %and4 = and i64 %5, 0, !dbg !6028
  %conv5 = trunc i64 %and4 to i32, !dbg !6027
  store i32 %conv5, ptr %memcgid, align 4, !dbg !6029
  %6 = load i64, ptr %entry1, align 8, !dbg !6030
  %shr6 = lshr i64 %6, 0, !dbg !6030
  store i64 %shr6, ptr %entry1, align 8, !dbg !6030
  %7 = load i32, ptr %memcgid, align 4, !dbg !6031
  %8 = load ptr, ptr %memcgidp.addr, align 8, !dbg !6032
  store i32 %7, ptr %8, align 4, !dbg !6033
  %9 = load i32, ptr %nid, align 4, !dbg !6034
  %idxprom = sext i32 %9 to i64, !dbg !6034
  %arrayidx = getelementptr [0 x ptr], ptr @node_data, i64 0, i64 %idxprom, !dbg !6034
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !6034
  %11 = load ptr, ptr %pgdat.addr, align 8, !dbg !6035
  store ptr %10, ptr %11, align 8, !dbg !6036
  %12 = load i64, ptr %entry1, align 8, !dbg !6037
  %13 = load ptr, ptr %evictionp.addr, align 8, !dbg !6038
  store i64 %12, ptr %13, align 8, !dbg !6039
  %14 = load i8, ptr %workingset, align 1, !dbg !6040, !range !5860, !noundef !1267
  %tobool7 = trunc i8 %14 to i1, !dbg !6040
  %15 = load ptr, ptr %workingsetp.addr, align 8, !dbg !6041
  %frombool8 = zext i1 %tobool7 to i8, !dbg !6042
  store i8 %frombool8, ptr %15, align 1, !dbg !6042
  call void @llvm.lifetime.end.p0(i64 1, ptr %workingset) #12, !dbg !6043
  call void @llvm.lifetime.end.p0(i64 4, ptr %nid) #12, !dbg !6043
  call void @llvm.lifetime.end.p0(i64 4, ptr %memcgid) #12, !dbg !6043
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #12, !dbg !6043
  ret void, !dbg !6043
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @mem_cgroup_from_id(i16 noundef zeroext %id) #3 align 16 !dbg !6044 {
entry:
  %id.addr = alloca i16, align 2
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i16 %id, ptr %id.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !6048, metadata !DIExpression()), !dbg !6054
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6055
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6049, metadata !DIExpression()), !dbg !6055
  %0 = load i16, ptr %id.addr, align 2, !dbg !6055
  %tobool = icmp ne i16 %0, 0, !dbg !6055
  %lnot = xor i1 %tobool, true, !dbg !6055
  %lnot1 = xor i1 %lnot, true, !dbg !6055
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6055
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6055
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !6056
  %tobool2 = icmp ne i32 %1, 0, !dbg !6056
  %lnot3 = xor i1 %tobool2, true, !dbg !6056
  %lnot5 = xor i1 %lnot3, true, !dbg !6056
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6056
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6056
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6056
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6056
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6055

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6056

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !6057
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6051, metadata !DIExpression()), !dbg !6057
  store i32 2307, ptr %__flags, align 4, !dbg !6057
  br label %do.body8, !dbg !6057

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6058

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6058

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6057

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !6060
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 1373, i32 %2, i64 12) #12, !dbg !6060, !srcloc !6062
  br label %do.cond10, !dbg !6060

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6060

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6057

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6063

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6063

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !6056
  br label %do.cond15, !dbg !6057

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6057

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6057

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6055
  %tobool17 = icmp ne i32 %3, 0, !dbg !6055
  %lnot18 = xor i1 %tobool17, true, !dbg !6055
  %lnot20 = xor i1 %lnot18, true, !dbg !6055
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6055
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6055
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6055
  store i64 %expval23, ptr %tmp, align 8, !dbg !6056
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6065
  %4 = load i64, ptr %tmp, align 8, !dbg !6055
  ret ptr null, !dbg !6066
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @mem_cgroup_disabled() #3 align 16 !dbg !6067 {
entry:
  ret i1 true, !dbg !6068
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @lruvec_page_state(ptr noundef %lruvec, i32 noundef %idx) #3 align 16 !dbg !6069 {
entry:
  %lruvec.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store ptr %lruvec, ptr %lruvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lruvec.addr, metadata !6073, metadata !DIExpression()), !dbg !6075
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6074, metadata !DIExpression()), !dbg !6076
  %0 = load ptr, ptr %lruvec.addr, align 8, !dbg !6077
  %call = call ptr @lruvec_pgdat(ptr noundef %0) #11, !dbg !6078
  %1 = load i32, ptr %idx.addr, align 4, !dbg !6079
  %call1 = call i64 @node_page_state(ptr noundef %call, i32 noundef %1) #11, !dbg !6080
  ret i64 %call1, !dbg !6081
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mem_cgroup_get_nr_swap_pages(ptr noundef %memcg) #3 align 16 !dbg !6082 {
entry:
  %memcg.addr = alloca ptr, align 8
  store ptr %memcg, ptr %memcg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg.addr, metadata !6086, metadata !DIExpression()), !dbg !6087
  %call = call i64 @get_nr_swap_pages() #11, !dbg !6088
  ret i64 %call, !dbg !6089
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @workingset_refault(ptr noundef %folio, ptr noundef %shadow) #0 align 16 !dbg !6090 {
entry:
  %folio.addr = alloca ptr, align 8
  %shadow.addr = alloca ptr, align 8
  %file = alloca i8, align 1
  %pgdat = alloca ptr, align 8
  %memcg = alloca ptr, align 8
  %lruvec = alloca ptr, align 8
  %workingset = alloca i8, align 1
  %nr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6094, metadata !DIExpression()), !dbg !6103
  store ptr %shadow, ptr %shadow.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shadow.addr, metadata !6095, metadata !DIExpression()), !dbg !6104
  call void @llvm.lifetime.start.p0(i64 1, ptr %file) #12, !dbg !6105
  call void @llvm.dbg.declare(metadata ptr %file, metadata !6096, metadata !DIExpression()), !dbg !6106
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6107
  %call = call i32 @folio_is_file_lru(ptr noundef %0) #11, !dbg !6108
  %tobool = icmp ne i32 %call, 0, !dbg !6108
  %frombool = zext i1 %tobool to i8, !dbg !6106
  store i8 %frombool, ptr %file, align 1, !dbg !6106
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgdat) #12, !dbg !6109
  call void @llvm.dbg.declare(metadata ptr %pgdat, metadata !6097, metadata !DIExpression()), !dbg !6110
  call void @llvm.lifetime.start.p0(i64 8, ptr %memcg) #12, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %memcg, metadata !6098, metadata !DIExpression()), !dbg !6112
  call void @llvm.lifetime.start.p0(i64 8, ptr %lruvec) #12, !dbg !6113
  call void @llvm.dbg.declare(metadata ptr %lruvec, metadata !6099, metadata !DIExpression()), !dbg !6114
  call void @llvm.lifetime.start.p0(i64 1, ptr %workingset) #12, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %workingset, metadata !6100, metadata !DIExpression()), !dbg !6116
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #12, !dbg !6117
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !6101, metadata !DIExpression()), !dbg !6118
  %call1 = call zeroext i1 @lru_gen_enabled() #11, !dbg !6119
  br i1 %call1, label %if.then, label %if.end, !dbg !6121

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !6122
  %2 = load ptr, ptr %shadow.addr, align 8, !dbg !6124
  call void @lru_gen_refault(ptr noundef %1, ptr noundef %2) #11, !dbg !6125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6126

if.end:                                           ; preds = %entry
  call void @mem_cgroup_flush_stats_ratelimited() #11, !dbg !6127
  call void @rcu_read_lock() #11, !dbg !6128
  %3 = load ptr, ptr %folio.addr, align 8, !dbg !6129
  %call2 = call i64 @folio_nr_pages(ptr noundef %3) #11, !dbg !6130
  store i64 %call2, ptr %nr, align 8, !dbg !6131
  %4 = load ptr, ptr %folio.addr, align 8, !dbg !6132
  %call3 = call ptr @folio_memcg(ptr noundef %4) #11, !dbg !6133
  store ptr %call3, ptr %memcg, align 8, !dbg !6134
  %5 = load ptr, ptr %folio.addr, align 8, !dbg !6135
  %call4 = call ptr @folio_pgdat(ptr noundef %5) #11, !dbg !6136
  store ptr %call4, ptr %pgdat, align 8, !dbg !6137
  %6 = load ptr, ptr %memcg, align 8, !dbg !6138
  %7 = load ptr, ptr %pgdat, align 8, !dbg !6139
  %call5 = call ptr @mem_cgroup_lruvec(ptr noundef %6, ptr noundef %7) #11, !dbg !6140
  store ptr %call5, ptr %lruvec, align 8, !dbg !6141
  %8 = load ptr, ptr %lruvec, align 8, !dbg !6142
  %9 = load i8, ptr %file, align 1, !dbg !6143, !range !5860, !noundef !1267
  %tobool6 = trunc i8 %9 to i1, !dbg !6143
  %conv = zext i1 %tobool6 to i32, !dbg !6143
  %add = add i32 10, %conv, !dbg !6144
  %10 = load i64, ptr %nr, align 8, !dbg !6145
  %conv7 = trunc i64 %10 to i32, !dbg !6145
  call void @mod_lruvec_state(ptr noundef %8, i32 noundef %add, i32 noundef %conv7) #11, !dbg !6146
  %11 = load ptr, ptr %shadow.addr, align 8, !dbg !6147
  %12 = load i8, ptr %file, align 1, !dbg !6149, !range !5860, !noundef !1267
  %tobool8 = trunc i8 %12 to i1, !dbg !6149
  %call9 = call zeroext i1 @workingset_test_recent(ptr noundef %11, i1 noundef zeroext %tobool8, ptr noundef %workingset) #11, !dbg !6150
  br i1 %call9, label %if.end11, label %if.then10, !dbg !6151

if.then10:                                        ; preds = %if.end
  br label %out, !dbg !6152

if.end11:                                         ; preds = %if.end
  %13 = load ptr, ptr %folio.addr, align 8, !dbg !6153
  call void @folio_set_active(ptr noundef %13) #11, !dbg !6154
  %14 = load ptr, ptr %lruvec, align 8, !dbg !6155
  %15 = load i64, ptr %nr, align 8, !dbg !6156
  call void @workingset_age_nonresident(ptr noundef %14, i64 noundef %15) #11, !dbg !6157
  %16 = load ptr, ptr %lruvec, align 8, !dbg !6158
  %17 = load i8, ptr %file, align 1, !dbg !6159, !range !5860, !noundef !1267
  %tobool12 = trunc i8 %17 to i1, !dbg !6159
  %conv13 = zext i1 %tobool12 to i32, !dbg !6159
  %add14 = add i32 12, %conv13, !dbg !6160
  %18 = load i64, ptr %nr, align 8, !dbg !6161
  %conv15 = trunc i64 %18 to i32, !dbg !6161
  call void @mod_lruvec_state(ptr noundef %16, i32 noundef %add14, i32 noundef %conv15) #11, !dbg !6162
  %19 = load i8, ptr %workingset, align 1, !dbg !6163, !range !5860, !noundef !1267
  %tobool16 = trunc i8 %19 to i1, !dbg !6163
  br i1 %tobool16, label %if.then17, label %if.end22, !dbg !6165

if.then17:                                        ; preds = %if.end11
  %20 = load ptr, ptr %folio.addr, align 8, !dbg !6166
  call void @folio_set_workingset(ptr noundef %20) #11, !dbg !6168
  %21 = load ptr, ptr %folio.addr, align 8, !dbg !6169
  call void @lru_note_cost_refault(ptr noundef %21) #11, !dbg !6170
  %22 = load ptr, ptr %lruvec, align 8, !dbg !6171
  %23 = load i8, ptr %file, align 1, !dbg !6172, !range !5860, !noundef !1267
  %tobool18 = trunc i8 %23 to i1, !dbg !6172
  %conv19 = zext i1 %tobool18 to i32, !dbg !6172
  %add20 = add i32 14, %conv19, !dbg !6173
  %24 = load i64, ptr %nr, align 8, !dbg !6174
  %conv21 = trunc i64 %24 to i32, !dbg !6174
  call void @mod_lruvec_state(ptr noundef %22, i32 noundef %add20, i32 noundef %conv21) #11, !dbg !6175
  br label %if.end22, !dbg !6176

if.end22:                                         ; preds = %if.then17, %if.end11
  br label %out, !dbg !6163

out:                                              ; preds = %if.end22, %if.then10
  call void @llvm.dbg.label(metadata !6102), !dbg !6177
  call void @rcu_read_unlock() #11, !dbg !6178
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6179
  br label %cleanup, !dbg !6179

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #12, !dbg !6179
  call void @llvm.lifetime.end.p0(i64 1, ptr %workingset) #12, !dbg !6179
  call void @llvm.lifetime.end.p0(i64 8, ptr %lruvec) #12, !dbg !6179
  call void @llvm.lifetime.end.p0(i64 8, ptr %memcg) #12, !dbg !6179
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgdat) #12, !dbg !6179
  call void @llvm.lifetime.end.p0(i64 1, ptr %file) #12, !dbg !6179
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6179

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_is_file_lru(ptr noundef %folio) #3 align 16 !dbg !6180 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6182, metadata !DIExpression()), !dbg !6183
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6184
  %call = call zeroext i1 @folio_test_swapbacked(ptr noundef %0) #11, !dbg !6185
  %lnot = xor i1 %call, true, !dbg !6186
  %lnot.ext = zext i1 %lnot to i32, !dbg !6186
  ret i32 %lnot.ext, !dbg !6187
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lru_gen_refault(ptr noundef %folio, ptr noundef %shadow) #0 align 16 !dbg !6188 {
entry:
  %folio.addr = alloca ptr, align 8
  %shadow.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6190, metadata !DIExpression()), !dbg !6192
  store ptr %shadow, ptr %shadow.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shadow.addr, metadata !6191, metadata !DIExpression()), !dbg !6193
  ret void, !dbg !6194
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mem_cgroup_flush_stats_ratelimited() #3 align 16 !dbg !6195 {
entry:
  ret void, !dbg !6196
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #2 align 16 !dbg !6197 {
entry:
  call void @__rcu_read_lock() #11, !dbg !6199
  br label %do.body, !dbg !6200

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6201

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6203

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6204

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6206
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_memcg(ptr noundef %folio) #3 align 16 !dbg !6207 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6211, metadata !DIExpression()), !dbg !6212
  ret ptr null, !dbg !6213
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mod_lruvec_state(ptr noundef %lruvec, i32 noundef %idx, i32 noundef %val) #3 align 16 !dbg !6214 {
entry:
  %lruvec.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store ptr %lruvec, ptr %lruvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lruvec.addr, metadata !6219, metadata !DIExpression()), !dbg !6222
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6220, metadata !DIExpression()), !dbg !6223
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6221, metadata !DIExpression()), !dbg !6224
  %0 = load ptr, ptr %lruvec.addr, align 8, !dbg !6225
  %call = call ptr @lruvec_pgdat(ptr noundef %0) #11, !dbg !6226
  %1 = load i32, ptr %idx.addr, align 4, !dbg !6227
  %2 = load i32, ptr %val.addr, align 4, !dbg !6228
  %conv = sext i32 %2 to i64, !dbg !6228
  call void @mod_node_page_state(ptr noundef %call, i32 noundef %1, i64 noundef %conv) #11, !dbg !6229
  ret void, !dbg !6230
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_set_active(ptr noundef %folio) #2 align 16 !dbg !6231 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6233, metadata !DIExpression()), !dbg !6234
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6234
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #11, !dbg !6234
  call void @set_bit(i64 noundef 8, ptr noundef %call) #11, !dbg !6234
  ret void, !dbg !6234
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_set_workingset(ptr noundef %folio) #2 align 16 !dbg !6235 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6237, metadata !DIExpression()), !dbg !6238
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6238
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #11, !dbg !6238
  call void @set_bit(i64 noundef 9, ptr noundef %call) #11, !dbg !6238
  ret void, !dbg !6238
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6239 dso_local void @lru_note_cost_refault(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !6240 {
entry:
  br label %do.body, !dbg !6241

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6242

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #11, !dbg !6244
  br label %do.body1, !dbg !6245

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6246

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6248
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @workingset_activation(ptr noundef %folio) #0 align 16 !dbg !6249 {
entry:
  %folio.addr = alloca ptr, align 8
  %memcg = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6251, metadata !DIExpression()), !dbg !6254
  call void @llvm.lifetime.start.p0(i64 8, ptr %memcg) #12, !dbg !6255
  call void @llvm.dbg.declare(metadata ptr %memcg, metadata !6252, metadata !DIExpression()), !dbg !6256
  call void @rcu_read_lock() #11, !dbg !6257
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6258
  %call = call ptr @folio_memcg_rcu(ptr noundef %0) #11, !dbg !6259
  store ptr %call, ptr %memcg, align 8, !dbg !6260
  %call1 = call zeroext i1 @mem_cgroup_disabled() #11, !dbg !6261
  br i1 %call1, label %if.end, label %land.lhs.true, !dbg !6263

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %memcg, align 8, !dbg !6264
  %tobool = icmp ne ptr %1, null, !dbg !6264
  br i1 %tobool, label %if.end, label %if.then, !dbg !6265

if.then:                                          ; preds = %land.lhs.true
  br label %out, !dbg !6266

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr %folio.addr, align 8, !dbg !6267
  %call2 = call ptr @folio_lruvec(ptr noundef %2) #11, !dbg !6268
  %3 = load ptr, ptr %folio.addr, align 8, !dbg !6269
  %call3 = call i64 @folio_nr_pages(ptr noundef %3) #11, !dbg !6270
  call void @workingset_age_nonresident(ptr noundef %call2, i64 noundef %call3) #11, !dbg !6271
  br label %out, !dbg !6271

out:                                              ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !6253), !dbg !6272
  call void @rcu_read_unlock() #11, !dbg !6273
  call void @llvm.lifetime.end.p0(i64 8, ptr %memcg) #12, !dbg !6274
  ret void, !dbg !6274
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_memcg_rcu(ptr noundef %folio) #3 align 16 !dbg !6275 {
entry:
  %folio.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6277, metadata !DIExpression()), !dbg !6283
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6284
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6278, metadata !DIExpression()), !dbg !6284
  %call = call i32 @rcu_read_lock_held() #11, !dbg !6284
  %tobool = icmp ne i32 %call, 0, !dbg !6284
  %lnot = xor i1 %tobool, true, !dbg !6284
  %lnot1 = xor i1 %lnot, true, !dbg !6284
  %lnot2 = xor i1 %lnot1, true, !dbg !6284
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6284
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6284
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !6285
  %tobool3 = icmp ne i32 %0, 0, !dbg !6285
  %lnot4 = xor i1 %tobool3, true, !dbg !6285
  %lnot6 = xor i1 %lnot4, true, !dbg !6285
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6285
  %conv = sext i32 %lnot.ext7 to i64, !dbg !6285
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6285
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6285
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6284

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6285

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !6286
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6280, metadata !DIExpression()), !dbg !6286
  store i32 2307, ptr %__flags, align 4, !dbg !6286
  br label %do.body9, !dbg !6286

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !6287

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6287

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !6286

do.body10:                                        ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !6289
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 1169, i32 %1, i64 12) #12, !dbg !6289, !srcloc !6291
  br label %do.cond11, !dbg !6289

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6289

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6286

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !6292

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6292

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !6285
  br label %do.cond16, !dbg !6286

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !6286

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !6286

if.end:                                           ; preds = %do.end17, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6284
  %tobool18 = icmp ne i32 %2, 0, !dbg !6284
  %lnot19 = xor i1 %tobool18, true, !dbg !6284
  %lnot21 = xor i1 %lnot19, true, !dbg !6284
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !6284
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !6284
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6284
  store i64 %expval24, ptr %tmp, align 8, !dbg !6285
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6294
  %3 = load i64, ptr %tmp, align 8, !dbg !6284
  ret ptr null, !dbg !6295
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_lruvec(ptr noundef %folio) #3 align 16 !dbg !6296 {
entry:
  %folio.addr = alloca ptr, align 8
  %pgdat = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6300, metadata !DIExpression()), !dbg !6302
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgdat) #12, !dbg !6303
  call void @llvm.dbg.declare(metadata ptr %pgdat, metadata !6301, metadata !DIExpression()), !dbg !6304
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6305
  %call = call ptr @folio_pgdat(ptr noundef %0) #11, !dbg !6306
  store ptr %call, ptr %pgdat, align 8, !dbg !6304
  %1 = load ptr, ptr %pgdat, align 8, !dbg !6307
  %__lruvec = getelementptr inbounds %struct.pglist_data, ptr %1, i32 0, i32 26, !dbg !6308
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgdat) #12, !dbg !6309
  ret ptr %__lruvec, !dbg !6310
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @workingset_update_node(ptr noundef %node) #0 align 16 !dbg !6311 {
entry:
  %node.addr = alloca ptr, align 8
  %mapping = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6315, metadata !DIExpression()), !dbg !6319
  call void @llvm.lifetime.start.p0(i64 8, ptr %mapping) #12, !dbg !6320
  call void @llvm.dbg.declare(metadata ptr %mapping, metadata !6316, metadata !DIExpression()), !dbg !6321
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6317, metadata !DIExpression()), !dbg !6322
  %0 = load ptr, ptr %node.addr, align 8, !dbg !6322
  %array = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 5, !dbg !6322
  %1 = load ptr, ptr %array, align 8, !dbg !6322
  store ptr %1, ptr %__mptr, align 8, !dbg !6322
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6322
  %add.ptr = getelementptr i8, ptr %2, i64 -8, !dbg !6322
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6322
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !6323
  %3 = load ptr, ptr %tmp, align 8, !dbg !6322
  store ptr %3, ptr %mapping, align 8, !dbg !6324
  br label %do.body, !dbg !6325

do.body:                                          ; preds = %entry
  %4 = load ptr, ptr %mapping, align 8, !dbg !6326
  %i_pages = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 1, !dbg !6326
  %xa_lock = getelementptr inbounds %struct.xarray, ptr %i_pages, i32 0, i32 0, !dbg !6326
  br label %do.cond, !dbg !6326

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6326

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %node.addr, align 8, !dbg !6328
  %count = getelementptr inbounds %struct.xa_node, ptr %5, i32 0, i32 2, !dbg !6330
  %6 = load i8, ptr %count, align 2, !dbg !6330
  %conv = zext i8 %6 to i32, !dbg !6328
  %tobool = icmp ne i32 %conv, 0, !dbg !6328
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !6331

land.lhs.true:                                    ; preds = %do.end
  %7 = load ptr, ptr %node.addr, align 8, !dbg !6332
  %count1 = getelementptr inbounds %struct.xa_node, ptr %7, i32 0, i32 2, !dbg !6333
  %8 = load i8, ptr %count1, align 2, !dbg !6333
  %conv2 = zext i8 %8 to i32, !dbg !6332
  %9 = load ptr, ptr %node.addr, align 8, !dbg !6334
  %nr_values = getelementptr inbounds %struct.xa_node, ptr %9, i32 0, i32 3, !dbg !6335
  %10 = load i8, ptr %nr_values, align 1, !dbg !6335
  %conv3 = zext i8 %10 to i32, !dbg !6334
  %cmp = icmp eq i32 %conv2, %conv3, !dbg !6336
  br i1 %cmp, label %if.then, label %if.else, !dbg !6337

if.then:                                          ; preds = %land.lhs.true
  %11 = load ptr, ptr %node.addr, align 8, !dbg !6338
  %12 = getelementptr inbounds %struct.xa_node, ptr %11, i32 0, i32 6, !dbg !6341
  %call = call i32 @list_empty(ptr noundef %12) #11, !dbg !6342
  %tobool5 = icmp ne i32 %call, 0, !dbg !6342
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !6343

if.then6:                                         ; preds = %if.then
  %13 = load ptr, ptr %node.addr, align 8, !dbg !6344
  %14 = getelementptr inbounds %struct.xa_node, ptr %13, i32 0, i32 6, !dbg !6346
  %call7 = call zeroext i1 @list_lru_add(ptr noundef @shadow_nodes, ptr noundef %14) #11, !dbg !6347
  %15 = load ptr, ptr %node.addr, align 8, !dbg !6348
  call void @__inc_lruvec_kmem_state(ptr noundef %15, i32 noundef 9) #11, !dbg !6349
  br label %if.end, !dbg !6350

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end13, !dbg !6351

if.else:                                          ; preds = %land.lhs.true, %do.end
  %16 = load ptr, ptr %node.addr, align 8, !dbg !6352
  %17 = getelementptr inbounds %struct.xa_node, ptr %16, i32 0, i32 6, !dbg !6355
  %call8 = call i32 @list_empty(ptr noundef %17) #11, !dbg !6356
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6356
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !6357

if.then10:                                        ; preds = %if.else
  %18 = load ptr, ptr %node.addr, align 8, !dbg !6358
  %19 = getelementptr inbounds %struct.xa_node, ptr %18, i32 0, i32 6, !dbg !6360
  %call11 = call zeroext i1 @list_lru_del(ptr noundef @shadow_nodes, ptr noundef %19) #11, !dbg !6361
  %20 = load ptr, ptr %node.addr, align 8, !dbg !6362
  call void @__dec_lruvec_kmem_state(ptr noundef %20, i32 noundef 9) #11, !dbg !6363
  br label %if.end12, !dbg !6364

if.end12:                                         ; preds = %if.then10, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %mapping) #12, !dbg !6365
  ret void, !dbg !6365
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !6366 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6373, metadata !DIExpression()), !dbg !6374
  br label %do.body, !dbg !6375

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6377

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6375
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6375
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6375
  store ptr %1, ptr %tmp, align 8, !dbg !6377
  %2 = load ptr, ptr %tmp, align 8, !dbg !6375
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6379
  %cmp = icmp eq ptr %2, %3, !dbg !6380
  %conv = zext i1 %cmp to i32, !dbg !6380
  ret i32 %conv, !dbg !6381
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6382 dso_local zeroext i1 @list_lru_add(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__inc_lruvec_kmem_state(ptr noundef %p, i32 noundef %idx) #3 align 16 !dbg !6386 {
entry:
  %p.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6390, metadata !DIExpression()), !dbg !6392
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6391, metadata !DIExpression()), !dbg !6393
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6394
  %1 = load i32, ptr %idx.addr, align 4, !dbg !6395
  call void @__mod_lruvec_kmem_state(ptr noundef %0, i32 noundef %1, i32 noundef 1) #11, !dbg !6396
  ret void, !dbg !6397
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6398 dso_local zeroext i1 @list_lru_del(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__dec_lruvec_kmem_state(ptr noundef %p, i32 noundef %idx) #3 align 16 !dbg !6399 {
entry:
  %p.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6401, metadata !DIExpression()), !dbg !6403
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6402, metadata !DIExpression()), !dbg !6404
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6405
  %1 = load i32, ptr %idx.addr, align 4, !dbg !6406
  call void @__mod_lruvec_kmem_state(ptr noundef %0, i32 noundef %1, i32 noundef -1) #11, !dbg !6407
  ret void, !dbg !6408
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_workingset__341_814_workingset_init6() #6 section ".init.text" align 16 !dbg !6409 {
entry:
  %call = call i32 @workingset_init() #13, !dbg !6410
  ret i32 %call, !dbg !6410
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @workingset_init() #6 section ".init.text" align 16 !dbg !6411 {
entry:
  %retval = alloca i32, align 4
  %timestamp_bits = alloca i32, align 4
  %max_order = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %timestamp_bits) #12, !dbg !6418
  call void @llvm.dbg.declare(metadata ptr %timestamp_bits, metadata !6413, metadata !DIExpression()), !dbg !6419
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_order) #12, !dbg !6420
  call void @llvm.dbg.declare(metadata ptr %max_order, metadata !6414, metadata !DIExpression()), !dbg !6421
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !6422
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6415, metadata !DIExpression()), !dbg !6423
  br label %do.body, !dbg !6424

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6425

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6425

do.end:                                           ; preds = %do.cond
  store i32 56, ptr %timestamp_bits, align 4, !dbg !6427
  %call = call i64 @totalram_pages() #11, !dbg !6428
  %sub = sub i64 %call, 1, !dbg !6429
  %call1 = call i32 @fls_long(i64 noundef %sub) #11, !dbg !6430
  store i32 %call1, ptr %max_order, align 4, !dbg !6431
  %0 = load i32, ptr %max_order, align 4, !dbg !6432
  %1 = load i32, ptr %timestamp_bits, align 4, !dbg !6434
  %cmp = icmp ugt i32 %0, %1, !dbg !6435
  br i1 %cmp, label %if.then, label %if.end, !dbg !6436

if.then:                                          ; preds = %do.end
  %2 = load i32, ptr %max_order, align 4, !dbg !6437
  %3 = load i32, ptr %timestamp_bits, align 4, !dbg !6438
  %sub2 = sub i32 %2, %3, !dbg !6439
  store i32 %sub2, ptr @bucket_order, align 4, !dbg !6440
  br label %if.end, !dbg !6441

if.end:                                           ; preds = %if.then, %do.end
  br label %do.body3, !dbg !6442

do.body3:                                         ; preds = %if.end
  br label %do.cond4, !dbg !6444

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6444

do.end5:                                          ; preds = %do.cond4
  %4 = load i32, ptr %timestamp_bits, align 4, !dbg !6442
  %5 = load i32, ptr %max_order, align 4, !dbg !6442
  %6 = load i32, ptr @bucket_order, align 4, !dbg !6442
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %4, i32 noundef %5, i32 noundef %6) #13, !dbg !6442
  store i32 %call6, ptr %tmp, align 4, !dbg !6444
  %7 = load i32, ptr %tmp, align 4, !dbg !6442
  %call7 = call i32 (ptr, ptr, ...) @prealloc_shrinker(ptr noundef @workingset_shadow_shrinker, ptr noundef @.str.3) #11, !dbg !6446
  store i32 %call7, ptr %ret, align 4, !dbg !6447
  %8 = load i32, ptr %ret, align 4, !dbg !6448
  %tobool = icmp ne i32 %8, 0, !dbg !6448
  br i1 %tobool, label %if.then8, label %if.end9, !dbg !6450

if.then8:                                         ; preds = %do.end5
  br label %err, !dbg !6451

if.end9:                                          ; preds = %do.end5
  %call10 = call i32 @__list_lru_init(ptr noundef @shadow_nodes, i1 noundef zeroext true, ptr noundef @shadow_nodes_key, ptr noundef @workingset_shadow_shrinker) #11, !dbg !6452
  store i32 %call10, ptr %ret, align 4, !dbg !6453
  %9 = load i32, ptr %ret, align 4, !dbg !6454
  %tobool11 = icmp ne i32 %9, 0, !dbg !6454
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6456

if.then12:                                        ; preds = %if.end9
  br label %err_list_lru, !dbg !6457

if.end13:                                         ; preds = %if.end9
  call void @register_shrinker_prepared(ptr noundef @workingset_shadow_shrinker) #11, !dbg !6458
  store i32 0, ptr %retval, align 4, !dbg !6459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6459

err_list_lru:                                     ; preds = %if.then12
  call void @llvm.dbg.label(metadata !6416), !dbg !6460
  call void @free_prealloced_shrinker(ptr noundef @workingset_shadow_shrinker) #11, !dbg !6461
  br label %err, !dbg !6461

err:                                              ; preds = %err_list_lru, %if.then8
  call void @llvm.dbg.label(metadata !6417), !dbg !6462
  %10 = load i32, ptr %ret, align 4, !dbg !6463
  store i32 %10, ptr %retval, align 4, !dbg !6464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6464

cleanup:                                          ; preds = %err, %if.end13
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !6465
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_order) #12, !dbg !6465
  call void @llvm.lifetime.end.p0(i64 4, ptr %timestamp_bits) #12, !dbg !6465
  %11 = load i32, ptr %retval, align 4, !dbg !6465
  ret i32 %11, !dbg !6465
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !6466 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6474, metadata !DIExpression()), !dbg !6476
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6475, metadata !DIExpression()), !dbg !6477
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6478
  %1 = load i64, ptr %size.addr, align 8, !dbg !6479
  %conv = trunc i64 %1 to i32, !dbg !6479
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !6480
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6481
  %3 = load i64, ptr %size.addr, align 8, !dbg !6481
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !6481
  ret void, !dbg !6482
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_add(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !6483 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6485, metadata !DIExpression()), !dbg !6487
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6486, metadata !DIExpression()), !dbg !6488
  %0 = load i64, ptr %i.addr, align 8, !dbg !6489
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6490
  call void @raw_atomic64_add(i64 noundef %0, ptr noundef %1) #11, !dbg !6491
  ret void, !dbg !6492
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6493 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6498, metadata !DIExpression()), !dbg !6500
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6499, metadata !DIExpression()), !dbg !6501
  ret i1 true, !dbg !6502
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6503 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6508, metadata !DIExpression()), !dbg !6511
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6509, metadata !DIExpression()), !dbg !6512
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6510, metadata !DIExpression()), !dbg !6513
  ret void, !dbg !6514
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_add(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !6515 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6521, metadata !DIExpression()), !dbg !6523
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6522, metadata !DIExpression()), !dbg !6524
  %0 = load i64, ptr %i.addr, align 8, !dbg !6525
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6526
  call void @arch_atomic64_add(i64 noundef %0, ptr noundef %1) #11, !dbg !6527
  ret void, !dbg !6528
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_add(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !6529 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6532, metadata !DIExpression()), !dbg !6534
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6533, metadata !DIExpression()), !dbg !6535
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6536
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6537
  %1 = load i64, ptr %i.addr, align 8, !dbg !6538
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6539
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !6540
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; addq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter1) #12, !dbg !6541, !srcloc !6542
  ret void, !dbg !6543
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @parent_mem_cgroup(ptr noundef %memcg) #3 align 16 !dbg !6544 {
entry:
  %memcg.addr = alloca ptr, align 8
  store ptr %memcg, ptr %memcg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg.addr, metadata !6548, metadata !DIExpression()), !dbg !6549
  ret ptr null, !dbg !6550
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lruvec_pgdat(ptr noundef %lruvec) #3 align 16 !dbg !6551 {
entry:
  %lruvec.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %lruvec, ptr %lruvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lruvec.addr, metadata !6555, metadata !DIExpression()), !dbg !6558
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !6559
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6556, metadata !DIExpression()), !dbg !6559
  %0 = load ptr, ptr %lruvec.addr, align 8, !dbg !6559
  store ptr %0, ptr %__mptr, align 8, !dbg !6559
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6559
  %add.ptr = getelementptr i8, ptr %1, i64 -13440, !dbg !6559
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6559
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !6560
  %2 = load ptr, ptr %tmp, align 8, !dbg !6559
  ret ptr %2, !dbg !6561
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @page_pgdat(ptr noundef %page) #3 align 16 !dbg !6562 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6566, metadata !DIExpression()), !dbg !6567
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6568
  %call = call i32 @page_to_nid(ptr noundef %0) #11, !dbg !6568
  %idxprom = sext i32 %call to i64, !dbg !6568
  %arrayidx = getelementptr [0 x ptr], ptr @node_data, i64 0, i64 %idxprom, !dbg !6568
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !6568
  ret ptr %1, !dbg !6569
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_to_nid(ptr noundef %page) #3 align 16 !dbg !6570 {
entry:
  %page.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6574, metadata !DIExpression()), !dbg !6576
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !6577
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6575, metadata !DIExpression()), !dbg !6578
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6579
  store ptr %0, ptr %p, align 8, !dbg !6578
  %1 = load ptr, ptr %p, align 8, !dbg !6580
  store ptr %1, ptr %tmp, align 8, !dbg !6580
  %2 = load ptr, ptr %tmp, align 8, !dbg !6580
  %flags = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 0, !dbg !6582
  %3 = load i64, ptr %flags, align 16, !dbg !6582
  %shr = lshr i64 %3, 58, !dbg !6583
  %and = and i64 %shr, 63, !dbg !6584
  %conv = trunc i64 %and to i32, !dbg !6585
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !6586
  ret i32 %conv, !dbg !6587
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !6588 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6590, metadata !DIExpression()), !dbg !6592
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6591, metadata !DIExpression()), !dbg !6593
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6594
  %1 = load i64, ptr %size.addr, align 8, !dbg !6595
  %conv = trunc i64 %1 to i32, !dbg !6595
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !6596
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6597
  %3 = load i64, ptr %size.addr, align 8, !dbg !6597
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !6597
  ret void, !dbg !6598
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #2 align 16 !dbg !6599 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6601, metadata !DIExpression()), !dbg !6602
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6603
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #11, !dbg !6604
  ret i64 %call, !dbg !6605
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6606 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6608, metadata !DIExpression()), !dbg !6610
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6609, metadata !DIExpression()), !dbg !6611
  ret i1 true, !dbg !6612
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #2 align 16 !dbg !6613 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6619, metadata !DIExpression()), !dbg !6620
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6621
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #11, !dbg !6622
  ret i64 %call, !dbg !6623
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #2 align 16 !dbg !6624 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6626, metadata !DIExpression()), !dbg !6627
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6628
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6628
  %1 = load volatile i64, ptr %counter, align 8, !dbg !6628
  ret i64 %1, !dbg !6629
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_large(ptr noundef %folio) #3 align 16 !dbg !6630 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6632, metadata !DIExpression()), !dbg !6633
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6634
  %call = call zeroext i1 @folio_test_head(ptr noundef %0) #11, !dbg !6635
  ret i1 %call, !dbg !6636
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_head(ptr noundef %folio) #2 align 16 !dbg !6637 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6639, metadata !DIExpression()), !dbg !6640
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6641
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #11, !dbg !6641
  %call1 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %call) #11, !dbg !6641
  ret i1 %call1, !dbg !6642
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6643 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6648, metadata !DIExpression()), !dbg !6650
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6649, metadata !DIExpression()), !dbg !6651
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6652
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6653
  %div = udiv i64 %1, 64, !dbg !6653
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6654
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !6655
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6656
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6657
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !6658
  ret i1 %call, !dbg !6659
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_flags(ptr noundef %folio, i32 noundef %n) #0 align 16 !dbg !6660 {
entry:
  %folio.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6664, metadata !DIExpression()), !dbg !6667
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6665, metadata !DIExpression()), !dbg !6668
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #12, !dbg !6669
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6666, metadata !DIExpression()), !dbg !6670
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6671
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6672
  store ptr %1, ptr %page, align 8, !dbg !6670
  %2 = load ptr, ptr %page, align 8, !dbg !6673
  %3 = load i32, ptr %n.addr, align 4, !dbg !6674
  %idxprom = zext i32 %3 to i64, !dbg !6673
  %arrayidx = getelementptr %struct.page, ptr %2, i64 %idxprom, !dbg !6673
  %flags = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 0, !dbg !6675
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #12, !dbg !6676
  ret ptr %flags, !dbg !6677
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6678 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6681, metadata !DIExpression()), !dbg !6683
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6682, metadata !DIExpression()), !dbg !6684
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6685
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6686
  br i1 %1, label %cond.true, label %cond.false, !dbg !6686

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6687
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6688
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !6689
  %conv = zext i1 %call to i32, !dbg !6689
  br label %cond.end, !dbg !6686

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6690
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6691
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !6692
  %conv2 = zext i1 %call1 to i32, !dbg !6692
  br label %cond.end, !dbg !6686

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6686
  %tobool = icmp ne i32 %cond, 0, !dbg !6686
  ret i1 %tobool, !dbg !6693
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6694 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6698, metadata !DIExpression()), !dbg !6700
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6699, metadata !DIExpression()), !dbg !6701
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6702
  %and = and i64 %0, 63, !dbg !6703
  %shl = shl i64 1, %and, !dbg !6704
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6705
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6706
  %shr = ashr i64 %2, 6, !dbg !6707
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6705
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6705
  %and1 = and i64 %shl, %3, !dbg !6708
  %cmp = icmp ne i64 %and1, 0, !dbg !6709
  ret i1 %cmp, !dbg !6710
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6711 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6713, metadata !DIExpression()), !dbg !6716
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6714, metadata !DIExpression()), !dbg !6717
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !6718
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6715, metadata !DIExpression()), !dbg !6719
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6720
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6721
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !6722, !srcloc !6723
  %3 = icmp ult i8 %2, 2, !dbg !6722
  call void @llvm.assume(i1 %3), !dbg !6722
  store i8 %2, ptr %oldbit, align 1, !dbg !6722
  %4 = load i8, ptr %oldbit, align 1, !dbg !6724, !range !5860, !noundef !1267
  %tobool = trunc i8 %4 to i1, !dbg !6724
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !6725
  ret i1 %tobool, !dbg !6726
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @xa_mk_value(i64 noundef %v) #3 align 16 !dbg !6727 {
entry:
  %v.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6731, metadata !DIExpression()), !dbg !6737
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6738
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6732, metadata !DIExpression()), !dbg !6738
  %0 = load i64, ptr %v.addr, align 8, !dbg !6738
  %cmp = icmp slt i64 %0, 0, !dbg !6738
  %lnot = xor i1 %cmp, true, !dbg !6738
  %lnot1 = xor i1 %lnot, true, !dbg !6738
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6738
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6738
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !6739
  %tobool = icmp ne i32 %1, 0, !dbg !6739
  %lnot2 = xor i1 %tobool, true, !dbg !6739
  %lnot4 = xor i1 %lnot2, true, !dbg !6739
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6739
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6739
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6739
  %tobool6 = icmp ne i64 %expval, 0, !dbg !6739
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6738

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6739

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !6740
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6734, metadata !DIExpression()), !dbg !6740
  store i32 2305, ptr %__flags, align 4, !dbg !6740
  br label %do.body7, !dbg !6740

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !6741

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !6741

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !6740

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !6743
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 56, i32 %2, i64 12) #12, !dbg !6743, !srcloc !6745
  br label %do.cond9, !dbg !6743

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6743

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !6740

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !6746

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6746

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !6739
  br label %do.cond14, !dbg !6740

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !6740

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !6740

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6738
  %tobool16 = icmp ne i32 %3, 0, !dbg !6738
  %lnot17 = xor i1 %tobool16, true, !dbg !6738
  %lnot19 = xor i1 %lnot17, true, !dbg !6738
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !6738
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !6738
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !6738
  store i64 %expval22, ptr %tmp, align 8, !dbg !6739
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6748
  %4 = load i64, ptr %tmp, align 8, !dbg !6738
  %5 = load i64, ptr %v.addr, align 8, !dbg !6749
  %shl = shl i64 %5, 1, !dbg !6750
  %or = or i64 %shl, 1, !dbg !6751
  %6 = inttoptr i64 %or to ptr, !dbg !6752
  ret ptr %6, !dbg !6753
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @xa_to_value(ptr noundef %entry1) #3 align 16 !dbg !6754 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6758, metadata !DIExpression()), !dbg !6759
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6760
  %1 = ptrtoint ptr %0 to i64, !dbg !6761
  %shr = lshr i64 %1, 1, !dbg !6762
  ret i64 %shr, !dbg !6763
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6764 dso_local i64 @node_page_state(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_nr_swap_pages() #3 align 16 !dbg !6767 {
entry:
  %call = call i64 @atomic_long_read(ptr noundef @nr_swap_pages) #11, !dbg !6770
  ret i64 %call, !dbg !6771
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_swapbacked(ptr noundef %folio) #2 align 16 !dbg !6772 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6774, metadata !DIExpression()), !dbg !6775
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6775
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #11, !dbg !6775
  %call1 = call zeroext i1 @_test_bit(i64 noundef 19, ptr noundef %call) #11, !dbg !6775
  ret i1 %call1, !dbg !6775
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6776 dso_local void @__rcu_read_lock() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6777 dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i64 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6780 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6786, metadata !DIExpression()), !dbg !6788
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6787, metadata !DIExpression()), !dbg !6789
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6790
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6791
  %div = sdiv i64 %1, 64, !dbg !6791
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6792
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !6793
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6794
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6795
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !6796
  ret void, !dbg !6797
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !6798 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6800, metadata !DIExpression()), !dbg !6802
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6801, metadata !DIExpression()), !dbg !6803
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6804
  %1 = load i64, ptr %size.addr, align 8, !dbg !6805
  %conv = trunc i64 %1 to i32, !dbg !6805
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !6806
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6807
  %3 = load i64, ptr %size.addr, align 8, !dbg !6807
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #11, !dbg !6807
  ret void, !dbg !6808
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6809 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6811, metadata !DIExpression()), !dbg !6813
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6812, metadata !DIExpression()), !dbg !6814
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6815
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6817
  br i1 %1, label %if.then, label %if.else, !dbg !6818

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6819
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6819
  %shr = ashr i64 %3, 3, !dbg !6819
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6819
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6821
  %and = and i64 %4, 7, !dbg !6821
  %sh_prom = trunc i64 %and to i32, !dbg !6821
  %shl = shl i32 1, %sh_prom, !dbg !6821
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #12, !dbg !6822, !srcloc !6823
  br label %if.end, !dbg !6824

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6825
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6827
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #12, !dbg !6828, !srcloc !6829
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6830
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6831 dso_local void @__rcu_read_unlock() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rcu_read_lock_held() #3 align 16 !dbg !6832 {
entry:
  ret i32 1, !dbg !6833
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mod_lruvec_kmem_state(ptr noundef %p, i32 noundef %idx, i32 noundef %val) #3 align 16 !dbg !6834 {
entry:
  %p.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6838, metadata !DIExpression()), !dbg !6842
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6839, metadata !DIExpression()), !dbg !6843
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6840, metadata !DIExpression()), !dbg !6844
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #12, !dbg !6845
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6841, metadata !DIExpression()), !dbg !6846
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6847
  %call = call ptr @virt_to_head_page(ptr noundef %0) #11, !dbg !6848
  store ptr %call, ptr %page, align 8, !dbg !6846
  %1 = load ptr, ptr %page, align 8, !dbg !6849
  %call1 = call ptr @page_pgdat(ptr noundef %1) #11, !dbg !6850
  %2 = load i32, ptr %idx.addr, align 4, !dbg !6851
  %3 = load i32, ptr %val.addr, align 4, !dbg !6852
  %conv = sext i32 %3 to i64, !dbg !6852
  call void @__mod_node_page_state(ptr noundef %call1, i32 noundef %2, i64 noundef %conv) #11, !dbg !6853
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #12, !dbg !6854
  ret void, !dbg !6854
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @virt_to_head_page(ptr noundef %x) #3 align 16 !dbg !6855 {
entry:
  %x.addr = alloca ptr, align 8
  %page = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6859, metadata !DIExpression()), !dbg !6861
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #12, !dbg !6862
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6860, metadata !DIExpression()), !dbg !6863
  %0 = load i64, ptr @vmemmap_base, align 8, !dbg !6864
  %1 = inttoptr i64 %0 to ptr, !dbg !6864
  %2 = load ptr, ptr %x.addr, align 8, !dbg !6864
  %3 = ptrtoint ptr %2 to i64, !dbg !6864
  %call = call i64 @__phys_addr_nodebug(i64 noundef %3) #11, !dbg !6864
  %shr = lshr i64 %call, 12, !dbg !6864
  %add.ptr = getelementptr %struct.page, ptr %1, i64 %shr, !dbg !6864
  store ptr %add.ptr, ptr %page, align 8, !dbg !6863
  %4 = load ptr, ptr %page, align 8, !dbg !6865
  %call1 = call i64 @_compound_head(ptr noundef %4) #11, !dbg !6865
  %5 = inttoptr i64 %call1 to ptr, !dbg !6865
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #12, !dbg !6866
  ret ptr %5, !dbg !6867
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6868 dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i64 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #2 align 16 !dbg !6869 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6874, metadata !DIExpression()), !dbg !6876
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #12, !dbg !6877
  call void @llvm.dbg.declare(metadata ptr %y, metadata !6875, metadata !DIExpression()), !dbg !6878
  %0 = load i64, ptr %x.addr, align 8, !dbg !6879
  %sub = sub i64 %0, -2147483648, !dbg !6880
  store i64 %sub, ptr %y, align 8, !dbg !6878
  %1 = load i64, ptr %y, align 8, !dbg !6881
  %2 = load i64, ptr %x.addr, align 8, !dbg !6882
  %3 = load i64, ptr %y, align 8, !dbg !6883
  %cmp = icmp ugt i64 %2, %3, !dbg !6884
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6885

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !6886
  br label %cond.end, !dbg !6885

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !6887
  %sub1 = sub i64 -2147483648, %5, !dbg !6888
  br label %cond.end, !dbg !6885

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !6885
  %add = add i64 %1, %cond, !dbg !6889
  store i64 %add, ptr %x.addr, align 8, !dbg !6890
  %6 = load i64, ptr %x.addr, align 8, !dbg !6891
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #12, !dbg !6892
  ret i64 %6, !dbg !6893
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_compound_head(ptr noundef %page) #3 align 16 !dbg !6894 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %head = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6898, metadata !DIExpression()), !dbg !6900
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #12, !dbg !6901
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6899, metadata !DIExpression()), !dbg !6902
  br label %do.body, !dbg !6903

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6905

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6905

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6903
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !6903
  %compound_head = getelementptr inbounds %struct.anon.28, ptr %1, i32 0, i32 0, !dbg !6903
  %2 = load volatile i64, ptr %compound_head, align 8, !dbg !6903
  store i64 %2, ptr %tmp, align 8, !dbg !6905
  %3 = load i64, ptr %tmp, align 8, !dbg !6903
  store i64 %3, ptr %head, align 8, !dbg !6902
  %4 = load i64, ptr %head, align 8, !dbg !6907
  %and = and i64 %4, 1, !dbg !6907
  %tobool = icmp ne i64 %and, 0, !dbg !6907
  %lnot = xor i1 %tobool, true, !dbg !6907
  %lnot1 = xor i1 %lnot, true, !dbg !6907
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6907
  %conv = sext i32 %lnot.ext to i64, !dbg !6907
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6907
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6907
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6909

if.then:                                          ; preds = %do.end
  %5 = load i64, ptr %head, align 8, !dbg !6910
  %sub = sub i64 %5, 1, !dbg !6911
  store i64 %sub, ptr %retval, align 8, !dbg !6912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6912

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %page.addr, align 8, !dbg !6913
  %call = call ptr @page_fixed_fake_head(ptr noundef %6) #11, !dbg !6914
  %7 = ptrtoint ptr %call to i64, !dbg !6915
  store i64 %7, ptr %retval, align 8, !dbg !6916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6916

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #12, !dbg !6917
  %8 = load i64, ptr %retval, align 8, !dbg !6917
  ret i64 %8, !dbg !6917
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @page_fixed_fake_head(ptr noundef %page) #2 align 16 !dbg !6918 {
entry:
  %retval = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %head = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6922, metadata !DIExpression()), !dbg !6929
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #12, !dbg !6930
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !6923, metadata !DIExpression()), !dbg !6930
  %call = call zeroext i1 @arch_static_branch(ptr noundef @hugetlb_optimize_vmemmap_key, i1 noundef zeroext false) #11, !dbg !6931
  %frombool = zext i1 %call to i8, !dbg !6931
  store i8 %frombool, ptr %branch, align 1, !dbg !6931
  %0 = load i8, ptr %branch, align 1, !dbg !6930, !range !5860, !noundef !1267
  %tobool = trunc i8 %0 to i1, !dbg !6930
  %lnot = xor i1 %tobool, true, !dbg !6930
  %lnot1 = xor i1 %lnot, true, !dbg !6930
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6930
  %conv = sext i32 %lnot.ext to i64, !dbg !6930
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6930
  store i64 %expval, ptr %tmp, align 8, !dbg !6934
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #12, !dbg !6935
  %1 = load i64, ptr %tmp, align 8, !dbg !6930
  %tobool2 = icmp ne i64 %1, 0, !dbg !6935
  br i1 %tobool2, label %if.end, label %if.then, !dbg !6936

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !6937
  store ptr %2, ptr %retval, align 8, !dbg !6938
  br label %return, !dbg !6938

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !6939
  %4 = ptrtoint ptr %3 to i64, !dbg !6939
  %and = and i64 %4, 4095, !dbg !6939
  %cmp = icmp eq i64 %and, 0, !dbg !6939
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !6940

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %page.addr, align 8, !dbg !6941
  %flags = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 0, !dbg !6941
  %6 = ptrtoint ptr %flags to i64, !dbg !6941
  %cmp4 = icmp ne i64 %6, 0, !dbg !6941
  %conv5 = zext i1 %cmp4 to i32, !dbg !6941
  %7 = call i1 @llvm.is.constant.i32(i32 %conv5), !dbg !6941
  br i1 %7, label %land.lhs.true6, label %cond.false, !dbg !6941

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %page.addr, align 8, !dbg !6941
  %flags7 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 0, !dbg !6941
  %9 = ptrtoint ptr %flags7 to i64, !dbg !6941
  %cmp8 = icmp ne i64 %9, 0, !dbg !6941
  br i1 %cmp8, label %land.lhs.true10, label %cond.false, !dbg !6941

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %10 = load ptr, ptr %page.addr, align 8, !dbg !6941
  %flags11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 0, !dbg !6941
  %11 = load i64, ptr %flags11, align 16, !dbg !6941
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !6941
  br i1 %12, label %cond.true, label %cond.false, !dbg !6942

cond.true:                                        ; preds = %land.lhs.true10
  %13 = load ptr, ptr %page.addr, align 8, !dbg !6941
  %flags12 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 0, !dbg !6941
  %call13 = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags12) #11, !dbg !6941
  br i1 %call13, label %if.then18, label %if.end31, !dbg !6941

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true
  %14 = load ptr, ptr %page.addr, align 8, !dbg !6941
  %flags15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 0, !dbg !6941
  %call16 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags15) #11, !dbg !6941
  br i1 %call16, label %if.then18, label %if.end31, !dbg !6942

if.then18:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #12, !dbg !6943
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6926, metadata !DIExpression()), !dbg !6944
  br label %do.body, !dbg !6945

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !6947

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6947

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %page.addr, align 8, !dbg !6945
  %arrayidx = getelementptr %struct.page, ptr %15, i64 1, !dbg !6945
  %16 = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 1, !dbg !6945
  %compound_head = getelementptr inbounds %struct.anon.28, ptr %16, i32 0, i32 0, !dbg !6945
  %17 = load volatile i64, ptr %compound_head, align 8, !dbg !6945
  store i64 %17, ptr %tmp19, align 8, !dbg !6947
  %18 = load i64, ptr %tmp19, align 8, !dbg !6945
  store i64 %18, ptr %head, align 8, !dbg !6944
  %19 = load i64, ptr %head, align 8, !dbg !6949
  %and20 = and i64 %19, 1, !dbg !6949
  %tobool21 = icmp ne i64 %and20, 0, !dbg !6949
  %lnot22 = xor i1 %tobool21, true, !dbg !6949
  %lnot24 = xor i1 %lnot22, true, !dbg !6949
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !6949
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !6949
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 1), !dbg !6949
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !6949
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6951

if.then29:                                        ; preds = %do.end
  %20 = load i64, ptr %head, align 8, !dbg !6952
  %sub = sub i64 %20, 1, !dbg !6953
  %21 = inttoptr i64 %sub to ptr, !dbg !6954
  store ptr %21, ptr %retval, align 8, !dbg !6955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6955

if.end30:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6956
  br label %cleanup, !dbg !6956

cleanup:                                          ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #12, !dbg !6956
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31, !dbg !6957

if.end31:                                         ; preds = %cleanup.cont, %cond.false, %cond.true, %if.end
  %22 = load ptr, ptr %page.addr, align 8, !dbg !6958
  store ptr %22, ptr %retval, align 8, !dbg !6959
  br label %return, !dbg !6959

return:                                           ; preds = %if.end31, %cleanup, %if.then
  %23 = load ptr, ptr %retval, align 8, !dbg !6960
  ret ptr %23, !dbg !6960

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #2 align 16 !dbg !6961 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6978, metadata !DIExpression()), !dbg !6981
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6979, metadata !DIExpression()), !dbg !6982
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6983
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6984, !range !5860, !noundef !1267
  %tobool = trunc i8 %1 to i1, !dbg !6984
  %conv = zext i1 %tobool to i32, !dbg !6984
  %or = or i32 2, %conv, !dbg !6985
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !6986, !srcloc !6987

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6988
  br label %return, !dbg !6988

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6980), !dbg !6989
  store i1 true, ptr %retval, align 1, !dbg !6990
  br label %return, !dbg !6990

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6991
  ret i1 %2, !dbg !6991
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6992 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6995, metadata !DIExpression()), !dbg !7000
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6996, metadata !DIExpression()), !dbg !7001
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !7002
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6997, metadata !DIExpression()), !dbg !7003
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7004
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7005
  %div = udiv i64 %1, 64, !dbg !7005
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7006
  store ptr %add.ptr, ptr %p, align 8, !dbg !7003
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !7007
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6998, metadata !DIExpression()), !dbg !7008
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7009
  %rem = urem i64 %2, 64, !dbg !7009
  %shl = shl i64 1, %rem, !dbg !7009
  store i64 %shl, ptr %mask, align 8, !dbg !7008
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !7010
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6999, metadata !DIExpression()), !dbg !7011
  %3 = load ptr, ptr %p, align 8, !dbg !7012
  %4 = load i64, ptr %3, align 8, !dbg !7013
  store i64 %4, ptr %val, align 8, !dbg !7011
  %5 = load i64, ptr %val, align 8, !dbg !7014
  %6 = load i64, ptr %mask, align 8, !dbg !7015
  %and = and i64 %5, %6, !dbg !7016
  %tobool = icmp ne i64 %and, 0, !dbg !7017
  %lnot = xor i1 %tobool, true, !dbg !7017
  %lnot1 = xor i1 %lnot, true, !dbg !7018
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !7019
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !7019
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !7019
  ret i1 %lnot1, !dbg !7020
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls_long(i64 noundef %l) #3 align 16 !dbg !7021 {
entry:
  %l.addr = alloca i64, align 8
  store i64 %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !7026, metadata !DIExpression()), !dbg !7027
  %0 = load i64, ptr %l.addr, align 8, !dbg !7028
  %call = call i32 @fls64(i64 noundef %0) #11, !dbg !7029
  ret i32 %call, !dbg !7030
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @totalram_pages() #3 align 16 !dbg !7031 {
entry:
  %call = call i64 @atomic_long_read(ptr noundef @_totalram_pages) #11, !dbg !7034
  ret i64 %call, !dbg !7035
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7036 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7040 dso_local i32 @prealloc_shrinker(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7043 dso_local i32 @__list_lru_init(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7047 dso_local void @register_shrinker_prepared(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7050 dso_local void @free_prealloced_shrinker(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #2 align 16 !dbg !7051 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !7055, metadata !DIExpression()), !dbg !7057
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #12, !dbg !7058
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !7056, metadata !DIExpression()), !dbg !7059
  store i32 -1, ptr %bitpos, align 4, !dbg !7059
  %0 = load i32, ptr %bitpos, align 4, !dbg !7060
  %1 = load i64, ptr %x.addr, align 8, !dbg !7061
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #14, !dbg !7060, !srcloc !7062
  store i32 %2, ptr %bitpos, align 4, !dbg !7060
  %3 = load i32, ptr %bitpos, align 4, !dbg !7063
  %add = add i32 %3, 1, !dbg !7064
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #12, !dbg !7065
  ret i32 %add, !dbg !7066
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @count_shadow_nodes(ptr noundef %shrinker, ptr noundef %sc) #0 align 16 !dbg !7067 {
entry:
  %retval = alloca i64, align 8
  %shrinker.addr = alloca ptr, align 8
  %sc.addr = alloca ptr, align 8
  %max_nodes = alloca i64, align 8
  %nodes = alloca i64, align 8
  %pages = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %shrinker, ptr %shrinker.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shrinker.addr, metadata !7069, metadata !DIExpression()), !dbg !7074
  store ptr %sc, ptr %sc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sc.addr, metadata !7070, metadata !DIExpression()), !dbg !7075
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_nodes) #12, !dbg !7076
  call void @llvm.dbg.declare(metadata ptr %max_nodes, metadata !7071, metadata !DIExpression()), !dbg !7077
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodes) #12, !dbg !7078
  call void @llvm.dbg.declare(metadata ptr %nodes, metadata !7072, metadata !DIExpression()), !dbg !7079
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages) #12, !dbg !7080
  call void @llvm.dbg.declare(metadata ptr %pages, metadata !7073, metadata !DIExpression()), !dbg !7081
  %0 = load ptr, ptr %sc.addr, align 8, !dbg !7082
  %call = call i64 @list_lru_shrink_count(ptr noundef @shadow_nodes, ptr noundef %0) #11, !dbg !7083
  store i64 %call, ptr %nodes, align 8, !dbg !7084
  %1 = load i64, ptr %nodes, align 8, !dbg !7085
  %tobool = icmp ne i64 %1, 0, !dbg !7085
  br i1 %tobool, label %if.end, label %if.then, !dbg !7087

if.then:                                          ; preds = %entry
  store i64 -2, ptr %retval, align 8, !dbg !7088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7088

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sc.addr, align 8, !dbg !7089
  %nid = getelementptr inbounds %struct.shrink_control, ptr %2, i32 0, i32 1, !dbg !7089
  %3 = load i32, ptr %nid, align 4, !dbg !7089
  %idxprom = sext i32 %3 to i64, !dbg !7089
  %arrayidx = getelementptr [0 x ptr], ptr @node_data, i64 0, i64 %idxprom, !dbg !7089
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !7089
  %node_present_pages = getelementptr inbounds %struct.pglist_data, ptr %4, i32 0, i32 4, !dbg !7089
  %5 = load i64, ptr %node_present_pages, align 16, !dbg !7089
  store i64 %5, ptr %pages, align 8, !dbg !7090
  %6 = load i64, ptr %pages, align 8, !dbg !7091
  %shr = lshr i64 %6, 3, !dbg !7092
  store i64 %shr, ptr %max_nodes, align 8, !dbg !7093
  %7 = load i64, ptr %nodes, align 8, !dbg !7094
  %8 = load i64, ptr %max_nodes, align 8, !dbg !7096
  %cmp = icmp ule i64 %7, %8, !dbg !7097
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7098

if.then1:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !7099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7099

if.end2:                                          ; preds = %if.end
  %9 = load i64, ptr %nodes, align 8, !dbg !7100
  %10 = load i64, ptr %max_nodes, align 8, !dbg !7101
  %sub = sub i64 %9, %10, !dbg !7102
  store i64 %sub, ptr %retval, align 8, !dbg !7103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7103

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages) #12, !dbg !7104
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodes) #12, !dbg !7104
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_nodes) #12, !dbg !7104
  %11 = load i64, ptr %retval, align 8, !dbg !7104
  ret i64 %11, !dbg !7104
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @scan_shadow_nodes(ptr noundef %shrinker, ptr noundef %sc) #0 align 16 !dbg !7105 {
entry:
  %shrinker.addr = alloca ptr, align 8
  %sc.addr = alloca ptr, align 8
  store ptr %shrinker, ptr %shrinker.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shrinker.addr, metadata !7107, metadata !DIExpression()), !dbg !7109
  store ptr %sc, ptr %sc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sc.addr, metadata !7108, metadata !DIExpression()), !dbg !7110
  %0 = load ptr, ptr %sc.addr, align 8, !dbg !7111
  %call = call i64 @list_lru_shrink_walk_irq(ptr noundef @shadow_nodes, ptr noundef %0, ptr noundef @shadow_lru_isolate, ptr noundef null) #11, !dbg !7112
  ret i64 %call, !dbg !7113
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @list_lru_shrink_count(ptr noundef %lru, ptr noundef %sc) #3 align 16 !dbg !7114 {
entry:
  %lru.addr = alloca ptr, align 8
  %sc.addr = alloca ptr, align 8
  store ptr %lru, ptr %lru.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lru.addr, metadata !7118, metadata !DIExpression()), !dbg !7120
  store ptr %sc, ptr %sc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sc.addr, metadata !7119, metadata !DIExpression()), !dbg !7121
  %0 = load ptr, ptr %lru.addr, align 8, !dbg !7122
  %1 = load ptr, ptr %sc.addr, align 8, !dbg !7123
  %nid = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 1, !dbg !7124
  %2 = load i32, ptr %nid, align 4, !dbg !7124
  %3 = load ptr, ptr %sc.addr, align 8, !dbg !7125
  %memcg = getelementptr inbounds %struct.shrink_control, ptr %3, i32 0, i32 4, !dbg !7126
  %4 = load ptr, ptr %memcg, align 8, !dbg !7126
  %call = call i64 @list_lru_count_one(ptr noundef %0, i32 noundef %2, ptr noundef %4) #11, !dbg !7127
  ret i64 %call, !dbg !7128
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7129 dso_local i64 @list_lru_count_one(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @list_lru_shrink_walk_irq(ptr noundef %lru, ptr noundef %sc, ptr noundef %isolate, ptr noundef %cb_arg) #3 align 16 !dbg !7132 {
entry:
  %lru.addr = alloca ptr, align 8
  %sc.addr = alloca ptr, align 8
  %isolate.addr = alloca ptr, align 8
  %cb_arg.addr = alloca ptr, align 8
  store ptr %lru, ptr %lru.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lru.addr, metadata !7141, metadata !DIExpression()), !dbg !7145
  store ptr %sc, ptr %sc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sc.addr, metadata !7142, metadata !DIExpression()), !dbg !7146
  store ptr %isolate, ptr %isolate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %isolate.addr, metadata !7143, metadata !DIExpression()), !dbg !7147
  store ptr %cb_arg, ptr %cb_arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb_arg.addr, metadata !7144, metadata !DIExpression()), !dbg !7148
  %0 = load ptr, ptr %lru.addr, align 8, !dbg !7149
  %1 = load ptr, ptr %sc.addr, align 8, !dbg !7150
  %nid = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 1, !dbg !7151
  %2 = load i32, ptr %nid, align 4, !dbg !7151
  %3 = load ptr, ptr %sc.addr, align 8, !dbg !7152
  %memcg = getelementptr inbounds %struct.shrink_control, ptr %3, i32 0, i32 4, !dbg !7153
  %4 = load ptr, ptr %memcg, align 8, !dbg !7153
  %5 = load ptr, ptr %isolate.addr, align 8, !dbg !7154
  %6 = load ptr, ptr %cb_arg.addr, align 8, !dbg !7155
  %7 = load ptr, ptr %sc.addr, align 8, !dbg !7156
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %7, i32 0, i32 2, !dbg !7157
  %call = call i64 @list_lru_walk_one_irq(ptr noundef %0, i32 noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %nr_to_scan) #11, !dbg !7158
  ret i64 %call, !dbg !7159
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shadow_lru_isolate(ptr noundef %item, ptr noundef %lru, ptr noundef %lru_lock, ptr noundef %arg) #0 align 16 !dbg !7160 {
entry:
  %item.addr = alloca ptr, align 8
  %lru.addr = alloca ptr, align 8
  %lru_lock.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %mapping = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp33 = alloca i64, align 8
  %__ret_warn_on44 = alloca i32, align 4
  %__flags64 = alloca i32, align 4
  %tmp77 = alloca i64, align 8
  %tmp101 = alloca i32, align 4
  store ptr %item, ptr %item.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !7162, metadata !DIExpression()), !dbg !7187
  store ptr %lru, ptr %lru.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lru.addr, metadata !7163, metadata !DIExpression()), !dbg !7188
  store ptr %lru_lock, ptr %lru_lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lru_lock.addr, metadata !7164, metadata !DIExpression()), !dbg !7189
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !7165, metadata !DIExpression()), !dbg !7190
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #12, !dbg !7191
  call void @llvm.dbg.declare(metadata ptr %node, metadata !7166, metadata !DIExpression()), !dbg !7192
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !7193
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7167, metadata !DIExpression()), !dbg !7193
  %0 = load ptr, ptr %item.addr, align 8, !dbg !7193
  store ptr %0, ptr %__mptr, align 8, !dbg !7193
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7193
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !7193
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7193
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !7194
  %2 = load ptr, ptr %tmp, align 8, !dbg !7193
  store ptr %2, ptr %node, align 8, !dbg !7192
  call void @llvm.lifetime.start.p0(i64 8, ptr %mapping) #12, !dbg !7195
  call void @llvm.dbg.declare(metadata ptr %mapping, metadata !7169, metadata !DIExpression()), !dbg !7196
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !7197
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7170, metadata !DIExpression()), !dbg !7198
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #12, !dbg !7199
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !7171, metadata !DIExpression()), !dbg !7199
  %3 = load ptr, ptr %node, align 8, !dbg !7199
  %array = getelementptr inbounds %struct.xa_node, ptr %3, i32 0, i32 5, !dbg !7199
  %4 = load ptr, ptr %array, align 8, !dbg !7199
  store ptr %4, ptr %__mptr1, align 8, !dbg !7199
  %5 = load ptr, ptr %__mptr1, align 8, !dbg !7199
  %add.ptr3 = getelementptr i8, ptr %5, i64 -8, !dbg !7199
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !7199
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #12, !dbg !7200
  %6 = load ptr, ptr %tmp2, align 8, !dbg !7199
  store ptr %6, ptr %mapping, align 8, !dbg !7201
  %7 = load ptr, ptr %mapping, align 8, !dbg !7202
  %i_pages = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 1, !dbg !7202
  %xa_lock = getelementptr inbounds %struct.xarray, ptr %i_pages, i32 0, i32 0, !dbg !7202
  %call = call i32 @spin_trylock(ptr noundef %xa_lock) #11, !dbg !7202
  %tobool = icmp ne i32 %call, 0, !dbg !7202
  br i1 %tobool, label %if.end, label %if.then, !dbg !7204

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %lru_lock.addr, align 8, !dbg !7205
  call void @spin_unlock_irq(ptr noundef %8) #11, !dbg !7207
  store i32 4, ptr %ret, align 4, !dbg !7208
  br label %out, !dbg !7209

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %mapping, align 8, !dbg !7210
  %host = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 0, !dbg !7212
  %10 = load ptr, ptr %host, align 8, !dbg !7212
  %cmp = icmp ne ptr %10, null, !dbg !7213
  br i1 %cmp, label %if.then4, label %if.end12, !dbg !7214

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %mapping, align 8, !dbg !7215
  %host5 = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 0, !dbg !7218
  %12 = load ptr, ptr %host5, align 8, !dbg !7218
  %i_lock = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 19, !dbg !7219
  %call6 = call i32 @spin_trylock(ptr noundef %i_lock) #11, !dbg !7220
  %tobool7 = icmp ne i32 %call6, 0, !dbg !7220
  br i1 %tobool7, label %if.end11, label %if.then8, !dbg !7221

if.then8:                                         ; preds = %if.then4
  %13 = load ptr, ptr %mapping, align 8, !dbg !7222
  %i_pages9 = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 1, !dbg !7222
  %xa_lock10 = getelementptr inbounds %struct.xarray, ptr %i_pages9, i32 0, i32 0, !dbg !7222
  call void @spin_unlock(ptr noundef %xa_lock10) #11, !dbg !7222
  %14 = load ptr, ptr %lru_lock.addr, align 8, !dbg !7224
  call void @spin_unlock_irq(ptr noundef %14) #11, !dbg !7225
  store i32 4, ptr %ret, align 4, !dbg !7226
  br label %out, !dbg !7227

if.end11:                                         ; preds = %if.then4
  br label %if.end12, !dbg !7228

if.end12:                                         ; preds = %if.end11, %if.end
  %15 = load ptr, ptr %lru.addr, align 8, !dbg !7229
  %16 = load ptr, ptr %item.addr, align 8, !dbg !7230
  call void @list_lru_isolate(ptr noundef %15, ptr noundef %16) #11, !dbg !7231
  %17 = load ptr, ptr %node, align 8, !dbg !7232
  call void @__dec_lruvec_kmem_state(ptr noundef %17, i32 noundef 9) #11, !dbg !7233
  %18 = load ptr, ptr %lru_lock.addr, align 8, !dbg !7234
  call void @spin_unlock(ptr noundef %18) #11, !dbg !7235
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !7236
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7173, metadata !DIExpression()), !dbg !7236
  %19 = load ptr, ptr %node, align 8, !dbg !7236
  %nr_values = getelementptr inbounds %struct.xa_node, ptr %19, i32 0, i32 3, !dbg !7236
  %20 = load i8, ptr %nr_values, align 1, !dbg !7236
  %tobool13 = icmp ne i8 %20, 0, !dbg !7236
  %lnot = xor i1 %tobool13, true, !dbg !7236
  %lnot14 = xor i1 %lnot, true, !dbg !7236
  %lnot15 = xor i1 %lnot14, true, !dbg !7236
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !7236
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !7236
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !7237
  %tobool16 = icmp ne i32 %21, 0, !dbg !7237
  %lnot17 = xor i1 %tobool16, true, !dbg !7237
  %lnot19 = xor i1 %lnot17, true, !dbg !7237
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !7237
  %conv = sext i32 %lnot.ext20 to i64, !dbg !7237
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7237
  %tobool21 = icmp ne i64 %expval, 0, !dbg !7237
  br i1 %tobool21, label %if.then22, label %if.end32, !dbg !7236

if.then22:                                        ; preds = %if.end12
  br label %do.body, !dbg !7237

do.body:                                          ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !7238
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7176, metadata !DIExpression()), !dbg !7238
  store i32 2307, ptr %__flags, align 4, !dbg !7238
  br label %do.body23, !dbg !7238

do.body23:                                        ; preds = %do.body
  br label %do.cond, !dbg !7239

do.cond:                                          ; preds = %do.body23
  br label %do.end, !dbg !7239

do.end:                                           ; preds = %do.cond
  br label %do.body24, !dbg !7238

do.body24:                                        ; preds = %do.end
  %22 = load i32, ptr %__flags, align 4, !dbg !7241
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 737, i32 %22, i64 12) #12, !dbg !7241, !srcloc !7243
  br label %do.cond25, !dbg !7241

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !7241

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !7238

do.body27:                                        ; preds = %do.end26
  br label %do.cond28, !dbg !7244

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !7244

do.end29:                                         ; preds = %do.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !7237
  br label %do.cond30, !dbg !7238

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !7238

do.end31:                                         ; preds = %do.cond30
  br label %if.end32, !dbg !7238

if.end32:                                         ; preds = %do.end31, %if.end12
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !7236
  %tobool34 = icmp ne i32 %23, 0, !dbg !7236
  %lnot35 = xor i1 %tobool34, true, !dbg !7236
  %lnot37 = xor i1 %lnot35, true, !dbg !7236
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !7236
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !7236
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !7236
  store i64 %expval40, ptr %tmp33, align 8, !dbg !7237
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !7246
  %24 = load i64, ptr %tmp33, align 8, !dbg !7236
  %tobool41 = icmp ne i64 %24, 0, !dbg !7246
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !7247

if.then42:                                        ; preds = %if.end32
  br label %out_invalid, !dbg !7248

if.end43:                                         ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on44) #12, !dbg !7249
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on44, metadata !7179, metadata !DIExpression()), !dbg !7249
  %25 = load ptr, ptr %node, align 8, !dbg !7249
  %count = getelementptr inbounds %struct.xa_node, ptr %25, i32 0, i32 2, !dbg !7249
  %26 = load i8, ptr %count, align 2, !dbg !7249
  %conv45 = zext i8 %26 to i32, !dbg !7249
  %27 = load ptr, ptr %node, align 8, !dbg !7249
  %nr_values46 = getelementptr inbounds %struct.xa_node, ptr %27, i32 0, i32 3, !dbg !7249
  %28 = load i8, ptr %nr_values46, align 1, !dbg !7249
  %conv47 = zext i8 %28 to i32, !dbg !7249
  %cmp48 = icmp ne i32 %conv45, %conv47, !dbg !7249
  %lnot50 = xor i1 %cmp48, true, !dbg !7249
  %lnot52 = xor i1 %lnot50, true, !dbg !7249
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !7249
  store i32 %lnot.ext53, ptr %__ret_warn_on44, align 4, !dbg !7249
  %29 = load i32, ptr %__ret_warn_on44, align 4, !dbg !7250
  %tobool54 = icmp ne i32 %29, 0, !dbg !7250
  %lnot55 = xor i1 %tobool54, true, !dbg !7250
  %lnot57 = xor i1 %lnot55, true, !dbg !7250
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !7250
  %conv59 = sext i32 %lnot.ext58 to i64, !dbg !7250
  %expval60 = call i64 @llvm.expect.i64(i64 %conv59, i64 0), !dbg !7250
  %tobool61 = icmp ne i64 %expval60, 0, !dbg !7250
  br i1 %tobool61, label %if.then62, label %if.end76, !dbg !7249

if.then62:                                        ; preds = %if.end43
  br label %do.body63, !dbg !7250

do.body63:                                        ; preds = %if.then62
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags64) #12, !dbg !7251
  call void @llvm.dbg.declare(metadata ptr %__flags64, metadata !7182, metadata !DIExpression()), !dbg !7251
  store i32 2307, ptr %__flags64, align 4, !dbg !7251
  br label %do.body65, !dbg !7251

do.body65:                                        ; preds = %do.body63
  br label %do.cond66, !dbg !7252

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !7252

do.end67:                                         ; preds = %do.cond66
  br label %do.body68, !dbg !7251

do.body68:                                        ; preds = %do.end67
  %30 = load i32, ptr %__flags64, align 4, !dbg !7254
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 739, i32 %30, i64 12) #12, !dbg !7254, !srcloc !7256
  br label %do.cond69, !dbg !7254

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !7254

do.end70:                                         ; preds = %do.cond69
  br label %do.body71, !dbg !7251

do.body71:                                        ; preds = %do.end70
  br label %do.cond72, !dbg !7257

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7257

do.end73:                                         ; preds = %do.cond72
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags64) #12, !dbg !7250
  br label %do.cond74, !dbg !7251

do.cond74:                                        ; preds = %do.end73
  br label %do.end75, !dbg !7251

do.end75:                                         ; preds = %do.cond74
  br label %if.end76, !dbg !7251

if.end76:                                         ; preds = %do.end75, %if.end43
  %31 = load i32, ptr %__ret_warn_on44, align 4, !dbg !7249
  %tobool78 = icmp ne i32 %31, 0, !dbg !7249
  %lnot79 = xor i1 %tobool78, true, !dbg !7249
  %lnot81 = xor i1 %lnot79, true, !dbg !7249
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !7249
  %conv83 = sext i32 %lnot.ext82 to i64, !dbg !7249
  %expval84 = call i64 @llvm.expect.i64(i64 %conv83, i64 0), !dbg !7249
  store i64 %expval84, ptr %tmp77, align 8, !dbg !7250
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on44) #12, !dbg !7259
  %32 = load i64, ptr %tmp77, align 8, !dbg !7249
  %tobool85 = icmp ne i64 %32, 0, !dbg !7259
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !7260

if.then86:                                        ; preds = %if.end76
  br label %out_invalid, !dbg !7261

if.end87:                                         ; preds = %if.end76
  %33 = load ptr, ptr %node, align 8, !dbg !7262
  call void @xa_delete_node(ptr noundef %33, ptr noundef @workingset_update_node) #11, !dbg !7263
  %34 = load ptr, ptr %node, align 8, !dbg !7264
  call void @__inc_lruvec_kmem_state(ptr noundef %34, i32 noundef 16) #11, !dbg !7265
  br label %out_invalid, !dbg !7265

out_invalid:                                      ; preds = %if.end87, %if.then86, %if.then42
  call void @llvm.dbg.label(metadata !7185), !dbg !7266
  %35 = load ptr, ptr %mapping, align 8, !dbg !7267
  %i_pages88 = getelementptr inbounds %struct.address_space, ptr %35, i32 0, i32 1, !dbg !7267
  %xa_lock89 = getelementptr inbounds %struct.xarray, ptr %i_pages88, i32 0, i32 0, !dbg !7267
  call void @spin_unlock_irq(ptr noundef %xa_lock89) #11, !dbg !7267
  %36 = load ptr, ptr %mapping, align 8, !dbg !7268
  %host90 = getelementptr inbounds %struct.address_space, ptr %36, i32 0, i32 0, !dbg !7270
  %37 = load ptr, ptr %host90, align 8, !dbg !7270
  %cmp91 = icmp ne ptr %37, null, !dbg !7271
  br i1 %cmp91, label %if.then93, label %if.end100, !dbg !7272

if.then93:                                        ; preds = %out_invalid
  %38 = load ptr, ptr %mapping, align 8, !dbg !7273
  %call94 = call zeroext i1 @mapping_shrinkable(ptr noundef %38) #11, !dbg !7276
  br i1 %call94, label %if.then95, label %if.end97, !dbg !7277

if.then95:                                        ; preds = %if.then93
  %39 = load ptr, ptr %mapping, align 8, !dbg !7278
  %host96 = getelementptr inbounds %struct.address_space, ptr %39, i32 0, i32 0, !dbg !7279
  %40 = load ptr, ptr %host96, align 8, !dbg !7279
  call void @inode_add_lru(ptr noundef %40) #11, !dbg !7280
  br label %if.end97, !dbg !7280

if.end97:                                         ; preds = %if.then95, %if.then93
  %41 = load ptr, ptr %mapping, align 8, !dbg !7281
  %host98 = getelementptr inbounds %struct.address_space, ptr %41, i32 0, i32 0, !dbg !7282
  %42 = load ptr, ptr %host98, align 8, !dbg !7282
  %i_lock99 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 19, !dbg !7283
  call void @spin_unlock(ptr noundef %i_lock99) #11, !dbg !7284
  br label %if.end100, !dbg !7285

if.end100:                                        ; preds = %if.end97, %out_invalid
  store i32 1, ptr %ret, align 4, !dbg !7286
  br label %out, !dbg !7287

out:                                              ; preds = %if.end100, %if.then8, %if.then
  call void @llvm.dbg.label(metadata !7186), !dbg !7288
  call void @__might_resched(ptr noundef @.str.4, i32 noundef 753, i32 noundef 0) #11, !dbg !7289
  %call102 = call i32 @_cond_resched() #11, !dbg !7289
  store i32 %call102, ptr %tmp101, align 4, !dbg !7289
  %43 = load i32, ptr %tmp101, align 4, !dbg !7289
  %44 = load ptr, ptr %lru_lock.addr, align 8, !dbg !7291
  call void @spin_lock_irq(ptr noundef %44) #11, !dbg !7292
  %45 = load i32, ptr %ret, align 4, !dbg !7293
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !7294
  call void @llvm.lifetime.end.p0(i64 8, ptr %mapping) #12, !dbg !7294
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #12, !dbg !7294
  ret i32 %45, !dbg !7295
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7296 dso_local i64 @list_lru_walk_one_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @spin_trylock(ptr noundef %lock) #2 align 16 !dbg !7299 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7304, metadata !DIExpression()), !dbg !7305
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7306
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7306
  %call = call i32 @_raw_spin_trylock(ptr noundef %1) #11, !dbg !7306
  ret i32 %call, !dbg !7307
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #2 align 16 !dbg !7308 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7312, metadata !DIExpression()), !dbg !7313
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7314
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7314
  call void @_raw_spin_unlock_irq(ptr noundef %1) #11, !dbg !7314
  ret void, !dbg !7315
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #2 align 16 !dbg !7316 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7318, metadata !DIExpression()), !dbg !7319
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7320
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7320
  call void @_raw_spin_unlock(ptr noundef %1) #11, !dbg !7320
  ret void, !dbg !7321
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7322 dso_local void @list_lru_isolate(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7325 dso_local void @xa_delete_node(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @mapping_shrinkable(ptr noundef %mapping) #3 align 16 !dbg !7330 {
entry:
  %retval = alloca i1, align 1
  %mapping.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %__UNIQUE_ID_rcu328 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !7334, metadata !DIExpression()), !dbg !7338
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #12, !dbg !7339
  call void @llvm.dbg.declare(metadata ptr %head, metadata !7335, metadata !DIExpression()), !dbg !7340
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu328) #12, !dbg !7341
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu328, metadata !7336, metadata !DIExpression()), !dbg !7341
  br label %do.body, !dbg !7342

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7344

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7344

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !7342
  %i_pages = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1, !dbg !7342
  %xa_head = getelementptr inbounds %struct.xarray, ptr %i_pages, i32 0, i32 2, !dbg !7342
  %1 = load volatile ptr, ptr %xa_head, align 8, !dbg !7342
  store ptr %1, ptr %tmp, align 8, !dbg !7344
  %2 = load ptr, ptr %tmp, align 8, !dbg !7342
  store ptr %2, ptr %__UNIQUE_ID_rcu328, align 8, !dbg !7341
  %3 = load ptr, ptr %__UNIQUE_ID_rcu328, align 8, !dbg !7341
  store ptr %3, ptr %tmp1, align 8, !dbg !7341
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu328) #12, !dbg !7346
  %4 = load ptr, ptr %tmp1, align 8, !dbg !7341
  store ptr %4, ptr %head, align 8, !dbg !7347
  %5 = load ptr, ptr %head, align 8, !dbg !7348
  %tobool = icmp ne ptr %5, null, !dbg !7348
  br i1 %tobool, label %if.end, label %if.then, !dbg !7350

if.then:                                          ; preds = %do.end
  store i1 true, ptr %retval, align 1, !dbg !7351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7351

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %head, align 8, !dbg !7352
  %call = call zeroext i1 @xa_is_node(ptr noundef %6) #11, !dbg !7354
  br i1 %call, label %if.end4, label %land.lhs.true, !dbg !7355

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %head, align 8, !dbg !7356
  %call2 = call zeroext i1 @xa_is_value(ptr noundef %7) #11, !dbg !7357
  br i1 %call2, label %if.then3, label %if.end4, !dbg !7358

if.then3:                                         ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !7359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7359

if.end4:                                          ; preds = %land.lhs.true, %if.end
  store i1 false, ptr %retval, align 1, !dbg !7360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7360

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #12, !dbg !7361
  %8 = load i1, ptr %retval, align 1, !dbg !7361
  ret i1 %8, !dbg !7361
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7362 dso_local void @inode_add_lru(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #3 align 16 !dbg !7363 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7368, metadata !DIExpression()), !dbg !7371
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !7369, metadata !DIExpression()), !dbg !7372
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !7370, metadata !DIExpression()), !dbg !7373
  ret void, !dbg !7374
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #2 align 16 !dbg !5622 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !7375
  %0 = load ptr, ptr %tmp, align 8, !dbg !7375
  %call = call i32 %0() #11, !dbg !7377
  ret i32 %call, !dbg !7378
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #2 align 16 !dbg !7379 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7381, metadata !DIExpression()), !dbg !7382
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7383
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7383
  call void @_raw_spin_lock_irq(ptr noundef %1) #11, !dbg !7383
  ret void, !dbg !7384
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7385 dso_local i32 @_raw_spin_trylock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7390 dso_local void @_raw_spin_unlock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7393 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @xa_is_node(ptr noundef %entry1) #3 align 16 !dbg !7394 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7398, metadata !DIExpression()), !dbg !7399
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7400
  %call = call zeroext i1 @xa_is_internal(ptr noundef %0) #11, !dbg !7401
  br i1 %call, label %land.rhs, label %land.end, !dbg !7402

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !7403
  %2 = ptrtoint ptr %1 to i64, !dbg !7404
  %cmp = icmp ugt i64 %2, 4096, !dbg !7405
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !7406
  ret i1 %3, !dbg !7407
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @xa_is_value(ptr noundef %entry1) #3 align 16 !dbg !7408 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7410, metadata !DIExpression()), !dbg !7411
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7412
  %1 = ptrtoint ptr %0 to i64, !dbg !7413
  %and = and i64 %1, 1, !dbg !7414
  %tobool = icmp ne i64 %and, 0, !dbg !7413
  ret i1 %tobool, !dbg !7415
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @xa_is_internal(ptr noundef %entry1) #3 align 16 !dbg !7416 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7418, metadata !DIExpression()), !dbg !7419
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7420
  %1 = ptrtoint ptr %0 to i64, !dbg !7421
  %and = and i64 %1, 3, !dbg !7422
  %cmp = icmp eq i64 %and, 2, !dbg !7423
  ret i1 %cmp, !dbg !7424
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7425 dso_local void @_raw_spin_lock_irq(ptr noundef) #5 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone }
attributes #12 = { nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5625, !5626, !5627, !5628, !5629, !5630, !5631, !5632}
!llvm.ident = !{!5633}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bucket_order", scope: !2, file: !3, line: 196, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.workingset.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/workingset\22 -D KBUILD_BASENAME=\22workingset\22 -D KBUILD_MODNAME=\22workingset\22 -D __KBUILD_MODNAME=kmod_workingset -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/workingset.ll mm/workingset.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !385, globals: !5592, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mm/workingset.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1f9dcffa2617e0cdce54d14354a9b182")
!4 = !{!5, !15, !23, !119, !126, !142, !150, !156, !161, !170, !175, !180, !186, !192, !199, !204, !212, !219, !228, !233, !238, !244, !256, !262, !269, !276, !284, !289, !337, !377}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !6, line: 51, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!10 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!11 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!12 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!13 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!14 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !16, line: 9, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!17 = !{!18, !19, !20, !21, !22}
!18 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!19 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!20 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!21 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!22 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !25, file: !24, line: 147, baseType: !7, size: 32, elements: !116)
!24 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !24, line: 135, size: 512, elements: !26)
!26 = !{!27, !31, !33, !35, !39, !40, !56, !114, !115}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !25, file: !24, line: 136, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !25, file: !24, line: 137, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !25, file: !24, line: 138, baseType: !34, size: 32, offset: 128)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !25, file: !24, line: 139, baseType: !36, size: 16, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !37, line: 24, baseType: !38)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !24, line: 150, baseType: !23, size: 32, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !25, file: !24, line: 151, baseType: !41, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !24, line: 64, baseType: !43)
!43 = !DISubroutineType(types: !44)
!44 = !{!34, !45, !34, !32, !46, !52}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 61, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !49, line: 72, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !49, line: 16, baseType: !51)
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !37, line: 52, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !49, line: 88, baseType: !55)
!55 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !25, file: !24, line: 152, baseType: !57, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !24, line: 117, size: 256, elements: !59)
!59 = !{!60, !65}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !58, file: !24, line: 118, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !37, line: 174, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 172, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !62, file: !37, line: 173, baseType: !34, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !58, file: !24, line: 119, baseType: !66, size: 192, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !67, line: 41, baseType: !68)
!67 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !67, line: 37, size: 192, elements: !69)
!69 = !{!70, !108}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !68, file: !67, line: 38, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !72, line: 29, baseType: !73)
!72 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !72, line: 17, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 18, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 18, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !76, file: !72, line: 19, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !80, line: 14, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !79, file: !80, line: 15, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !84, line: 44, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !84, line: 14, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 15, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 15, size: 32, elements: !89)
!89 = !{!90, !91, !101}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !84, line: 16, baseType: !61, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 24, baseType: !92, size: 16)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 24, size: 16, elements: !93)
!93 = !{!94, !100}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !92, file: !84, line: 25, baseType: !95, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !96, line: 17, baseType: !97)
!96 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !98, line: 21, baseType: !99)
!98 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !92, file: !84, line: 26, baseType: !95, size: 8, offset: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 28, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 28, size: 32, elements: !103)
!103 = !{!104, !107}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !102, file: !84, line: 29, baseType: !105, size: 16)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !96, line: 19, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !98, line: 24, baseType: !38)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !102, file: !84, line: 30, baseType: !105, size: 16, offset: 16)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !68, file: !67, line: 39, baseType: !109, size: 128, offset: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !37, line: 190, size: 128, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !37, line: 191, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !37, line: 191, baseType: !112, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !25, file: !24, line: 153, baseType: !32, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !25, file: !24, line: 154, baseType: !32, size: 64, offset: 448)
!116 = !{!117, !118}
!117 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!118 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !120, line: 312, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!123 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!124 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!125 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !127, line: 1325, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!129 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!130 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!131 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!132 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!133 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!134 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!135 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!136 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!137 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!138 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!139 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!140 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!141 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !143, line: 68, baseType: !7, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!144 = !{!145, !146, !147, !148, !149}
!145 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!146 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!147 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!148 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!149 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !151, line: 26, baseType: !7, size: 32, elements: !152)
!151 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!152 = !{!153, !154, !155}
!153 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!154 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!155 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !6, line: 29, baseType: !7, size: 32, elements: !157)
!157 = !{!158, !159, !160}
!158 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!159 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!160 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !6, line: 38, baseType: !7, size: 32, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !169}
!163 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!164 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!165 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!166 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!167 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!168 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!169 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !171, line: 32, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!174 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !176, line: 2052, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!177 = !{!178, !179}
!178 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!179 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !181, line: 54, baseType: !7, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!182 = !{!183, !184, !185}
!183 = !DIEnumerator(name: "USRQUOTA", value: 0)
!184 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!185 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !187, line: 45, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!188 = !{!189, !190, !191}
!189 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!190 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!191 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !193, line: 487, baseType: !7, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!194 = !{!195, !196, !197, !198}
!195 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!196 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!197 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!198 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !200, line: 65, baseType: !7, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!201 = !{!202, !203}
!202 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!203 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !205, line: 620, baseType: !7, size: 32, elements: !206)
!205 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!206 = !{!207, !208, !209, !210, !211}
!207 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!208 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!209 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!210 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!211 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !205, line: 597, baseType: !34, size: 32, elements: !213)
!213 = !{!214, !215, !216, !217, !218}
!214 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!215 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!216 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!217 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!218 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !193, line: 547, baseType: !7, size: 32, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227}
!221 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!222 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!223 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!224 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!225 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!226 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!227 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !193, line: 564, baseType: !7, size: 32, elements: !229)
!229 = !{!230, !231, !232}
!230 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!231 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!232 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !193, line: 577, baseType: !7, size: 32, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!236 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!237 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !193, line: 503, baseType: !7, size: 32, elements: !239)
!239 = !{!240, !241, !242, !243}
!240 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!241 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!242 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!243 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !245, line: 44, baseType: !7, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255}
!247 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!248 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!249 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!250 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!251 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!252 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!253 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!254 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!255 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !257, line: 16, baseType: !7, size: 32, elements: !258)
!257 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!258 = !{!259, !260, !261}
!259 = !DIEnumerator(name: "TT_NONE", value: 0)
!260 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!261 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !263, line: 51, baseType: !7, size: 32, elements: !264)
!263 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!264 = !{!265, !266, !267, !268}
!265 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!266 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!267 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!268 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !270, line: 15, baseType: !7, size: 32, elements: !271)
!270 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!271 = !{!272, !273, !274, !275}
!272 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!273 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!274 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!275 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zone_type", file: !277, line: 720, baseType: !7, size: 32, elements: !278)
!277 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e018db7b4c78b2d835997a33e792065c")
!278 = !{!279, !280, !281, !282, !283}
!279 = !DIEnumerator(name: "ZONE_DMA", value: 0)
!280 = !DIEnumerator(name: "ZONE_DMA32", value: 1)
!281 = !DIEnumerator(name: "ZONE_NORMAL", value: 2)
!282 = !DIEnumerator(name: "ZONE_MOVABLE", value: 3)
!283 = !DIEnumerator(name: "__MAX_NR_ZONES", value: 4)
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !285, line: 10, baseType: !7, size: 32, elements: !286)
!285 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!286 = !{!287, !288}
!287 = !DIEnumerator(name: "false", value: 0)
!288 = !DIEnumerator(name: "true", value: 1)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_stat_item", file: !277, line: 156, baseType: !7, size: 32, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!291 = !DIEnumerator(name: "NR_LRU_BASE", value: 0)
!292 = !DIEnumerator(name: "NR_INACTIVE_ANON", value: 0)
!293 = !DIEnumerator(name: "NR_ACTIVE_ANON", value: 1)
!294 = !DIEnumerator(name: "NR_INACTIVE_FILE", value: 2)
!295 = !DIEnumerator(name: "NR_ACTIVE_FILE", value: 3)
!296 = !DIEnumerator(name: "NR_UNEVICTABLE", value: 4)
!297 = !DIEnumerator(name: "NR_SLAB_RECLAIMABLE_B", value: 5)
!298 = !DIEnumerator(name: "NR_SLAB_UNRECLAIMABLE_B", value: 6)
!299 = !DIEnumerator(name: "NR_ISOLATED_ANON", value: 7)
!300 = !DIEnumerator(name: "NR_ISOLATED_FILE", value: 8)
!301 = !DIEnumerator(name: "WORKINGSET_NODES", value: 9)
!302 = !DIEnumerator(name: "WORKINGSET_REFAULT_BASE", value: 10)
!303 = !DIEnumerator(name: "WORKINGSET_REFAULT_ANON", value: 10)
!304 = !DIEnumerator(name: "WORKINGSET_REFAULT_FILE", value: 11)
!305 = !DIEnumerator(name: "WORKINGSET_ACTIVATE_BASE", value: 12)
!306 = !DIEnumerator(name: "WORKINGSET_ACTIVATE_ANON", value: 12)
!307 = !DIEnumerator(name: "WORKINGSET_ACTIVATE_FILE", value: 13)
!308 = !DIEnumerator(name: "WORKINGSET_RESTORE_BASE", value: 14)
!309 = !DIEnumerator(name: "WORKINGSET_RESTORE_ANON", value: 14)
!310 = !DIEnumerator(name: "WORKINGSET_RESTORE_FILE", value: 15)
!311 = !DIEnumerator(name: "WORKINGSET_NODERECLAIM", value: 16)
!312 = !DIEnumerator(name: "NR_ANON_MAPPED", value: 17)
!313 = !DIEnumerator(name: "NR_FILE_MAPPED", value: 18)
!314 = !DIEnumerator(name: "NR_FILE_PAGES", value: 19)
!315 = !DIEnumerator(name: "NR_FILE_DIRTY", value: 20)
!316 = !DIEnumerator(name: "NR_WRITEBACK", value: 21)
!317 = !DIEnumerator(name: "NR_WRITEBACK_TEMP", value: 22)
!318 = !DIEnumerator(name: "NR_SHMEM", value: 23)
!319 = !DIEnumerator(name: "NR_SHMEM_THPS", value: 24)
!320 = !DIEnumerator(name: "NR_SHMEM_PMDMAPPED", value: 25)
!321 = !DIEnumerator(name: "NR_FILE_THPS", value: 26)
!322 = !DIEnumerator(name: "NR_FILE_PMDMAPPED", value: 27)
!323 = !DIEnumerator(name: "NR_ANON_THPS", value: 28)
!324 = !DIEnumerator(name: "NR_VMSCAN_WRITE", value: 29)
!325 = !DIEnumerator(name: "NR_VMSCAN_IMMEDIATE", value: 30)
!326 = !DIEnumerator(name: "NR_DIRTIED", value: 31)
!327 = !DIEnumerator(name: "NR_WRITTEN", value: 32)
!328 = !DIEnumerator(name: "NR_THROTTLED_WRITTEN", value: 33)
!329 = !DIEnumerator(name: "NR_KERNEL_MISC_RECLAIMABLE", value: 34)
!330 = !DIEnumerator(name: "NR_FOLL_PIN_ACQUIRED", value: 35)
!331 = !DIEnumerator(name: "NR_FOLL_PIN_RELEASED", value: 36)
!332 = !DIEnumerator(name: "NR_KERNEL_STACK_KB", value: 37)
!333 = !DIEnumerator(name: "NR_PAGETABLE", value: 38)
!334 = !DIEnumerator(name: "NR_SECONDARY_PAGETABLE", value: 39)
!335 = !DIEnumerator(name: "NR_SWAPCACHE", value: 40)
!336 = !DIEnumerator(name: "NR_VM_NODE_STAT_ITEMS", value: 41)
!337 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !338, line: 100, baseType: !7, size: 32, elements: !339)
!338 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376}
!340 = !DIEnumerator(name: "PG_locked", value: 0)
!341 = !DIEnumerator(name: "PG_writeback", value: 1)
!342 = !DIEnumerator(name: "PG_referenced", value: 2)
!343 = !DIEnumerator(name: "PG_uptodate", value: 3)
!344 = !DIEnumerator(name: "PG_dirty", value: 4)
!345 = !DIEnumerator(name: "PG_lru", value: 5)
!346 = !DIEnumerator(name: "PG_head", value: 6)
!347 = !DIEnumerator(name: "PG_waiters", value: 7)
!348 = !DIEnumerator(name: "PG_active", value: 8)
!349 = !DIEnumerator(name: "PG_workingset", value: 9)
!350 = !DIEnumerator(name: "PG_error", value: 10)
!351 = !DIEnumerator(name: "PG_slab", value: 11)
!352 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!353 = !DIEnumerator(name: "PG_arch_1", value: 13)
!354 = !DIEnumerator(name: "PG_reserved", value: 14)
!355 = !DIEnumerator(name: "PG_private", value: 15)
!356 = !DIEnumerator(name: "PG_private_2", value: 16)
!357 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!358 = !DIEnumerator(name: "PG_reclaim", value: 18)
!359 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!360 = !DIEnumerator(name: "PG_unevictable", value: 20)
!361 = !DIEnumerator(name: "PG_mlocked", value: 21)
!362 = !DIEnumerator(name: "PG_uncached", value: 22)
!363 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!364 = !DIEnumerator(name: "PG_readahead", value: 18)
!365 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!366 = !DIEnumerator(name: "PG_checked", value: 12)
!367 = !DIEnumerator(name: "PG_swapcache", value: 12)
!368 = !DIEnumerator(name: "PG_fscache", value: 16)
!369 = !DIEnumerator(name: "PG_pinned", value: 12)
!370 = !DIEnumerator(name: "PG_savepinned", value: 4)
!371 = !DIEnumerator(name: "PG_foreign", value: 12)
!372 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!373 = !DIEnumerator(name: "PG_isolated", value: 18)
!374 = !DIEnumerator(name: "PG_reported", value: 3)
!375 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!376 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lru_status", file: !378, line: 19, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!379 = !{!380, !381, !382, !383, !384}
!380 = !DIEnumerator(name: "LRU_REMOVED", value: 0)
!381 = !DIEnumerator(name: "LRU_REMOVED_RETRY", value: 1)
!382 = !DIEnumerator(name: "LRU_ROTATE", value: 2)
!383 = !DIEnumerator(name: "LRU_SKIP", value: 3)
!384 = !DIEnumerator(name: "LRU_RETRY", value: 4)
!385 = !{!32, !386, !5409, !1498, !5548, !2215, !1065, !51, !5551, !5553, !5555, !5558, !5561, !5562, !5563, !5565, !5589}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !176, line: 472, size: 1536, align: 64, elements: !388)
!388 = !{!389, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5403, !5404, !5405, !5406, !5407, !5408}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !387, file: !176, line: 473, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !176, line: 641, size: 4800, elements: !392)
!392 = !{!393, !394, !395, !403, !404, !411, !412, !415, !416, !5193, !5194, !5195, !5196, !5197, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5237, !5240, !5241, !5242, !5251, !5252, !5253, !5254}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !391, file: !176, line: 642, baseType: !36, size: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !391, file: !176, line: 643, baseType: !38, size: 16, offset: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !391, file: !176, line: 644, baseType: !396, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !397, line: 23, baseType: !398)
!397 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 21, size: 32, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !398, file: !397, line: 22, baseType: !401, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !37, line: 37, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !49, line: 49, baseType: !7)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !391, file: !176, line: 645, baseType: !109, size: 128, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !391, file: !176, line: 646, baseType: !405, size: 32, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !397, line: 28, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 26, size: 32, elements: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !406, file: !397, line: 27, baseType: !409, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !37, line: 38, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !49, line: 50, baseType: !7)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !391, file: !176, line: 647, baseType: !7, size: 32, offset: 224)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !391, file: !176, line: 650, baseType: !413, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !176, line: 607, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !391, file: !176, line: 651, baseType: !413, size: 64, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !391, file: !176, line: 654, baseType: !417, size: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !176, line: 1966, size: 2048, align: 512, elements: !420)
!420 = !{!421, !5027, !5037, !5041, !5045, !5049, !5053, !5057, !5061, !5065, !5069, !5070, !5074, !5078, !5115, !5144, !5148, !5154, !5158, !5162, !5166, !5170, !5174, !5180, !5184}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !419, file: !176, line: 1967, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!425, !390, !425, !7}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !427, line: 82, size: 1536, elements: !428)
!427 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!428 = !{!429, !430, !440, !448, !449, !469, !470, !474, !487, !5010, !5011, !5012, !5013, !5019, !5020, !5021}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !426, file: !427, line: 84, baseType: !7, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !426, file: !427, line: 85, baseType: !431, size: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !432, line: 275, baseType: !433)
!432 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !432, line: 275, size: 32, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !433, file: !432, line: 275, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !432, line: 69, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !432, line: 64, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !437, file: !432, line: 65, baseType: !7, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !426, file: !427, line: 86, baseType: !441, size: 128, offset: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !442, line: 38, size: 128, elements: !443)
!442 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!443 = !{!444, !446}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !441, file: !442, line: 39, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !441, file: !442, line: 39, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !426, file: !427, line: 87, baseType: !425, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !426, file: !427, line: 88, baseType: !450, size: 128, offset: 256)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !427, line: 49, size: 128, elements: !451)
!451 = !{!452, !466}
!452 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !427, line: 50, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !427, line: 50, size: 64, elements: !454)
!454 = !{!455, !462}
!455 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !427, line: 51, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !427, line: 51, size: 64, elements: !457)
!457 = !{!458, !461}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !456, file: !427, line: 52, baseType: !459, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !96, line: 21, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !98, line: 27, baseType: !7)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !456, file: !427, line: 52, baseType: !459, size: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !453, file: !427, line: 54, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !96, line: 23, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !98, line: 31, baseType: !465)
!465 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !450, file: !427, line: 56, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !426, file: !427, line: 89, baseType: !390, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !426, file: !427, line: 91, baseType: !471, size: 256, offset: 448)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !426, file: !427, line: 94, baseType: !475, size: 64, offset: 704)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !476, line: 25, size: 64, elements: !477)
!476 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !476, line: 26, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !476, line: 26, size: 64, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !479, file: !476, line: 28, baseType: !464, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !476, line: 30, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !479, file: !476, line: 30, size: 64, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !483, file: !476, line: 31, baseType: !71, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !483, file: !476, line: 32, baseType: !34, size: 32, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !426, file: !427, line: 95, baseType: !488, size: 64, offset: 768)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !427, line: 128, size: 1024, align: 512, elements: !491)
!491 = !{!492, !496, !497, !504, !510, !514, !518, !522, !523, !527, !532, !5000, !5004}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !490, file: !427, line: 129, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!34, !425, !7}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !490, file: !427, line: 130, baseType: !493, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !490, file: !427, line: 131, baseType: !498, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!34, !501, !503}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !490, file: !427, line: 132, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!34, !501, !7, !28, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !490, file: !427, line: 134, baseType: !511, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!34, !501}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !490, file: !427, line: 135, baseType: !515, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!34, !425}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !490, file: !427, line: 136, baseType: !519, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !425}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !490, file: !427, line: 137, baseType: !519, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !490, file: !427, line: 138, baseType: !524, size: 64, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !425, !390}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !490, file: !427, line: 139, baseType: !528, size: 64, offset: 576)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!531, !425, !531, !34}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !490, file: !427, line: 140, baseType: !533, size: 64, offset: 640)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!536, !4999}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !538, line: 70, size: 256, elements: !539)
!538 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!539 = !{!540, !541, !4997, !4998}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !537, file: !538, line: 71, baseType: !425, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !537, file: !538, line: 72, baseType: !542, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !176, line: 1190, size: 10752, elements: !544)
!544 = !{!545, !546, !549, !550, !551, !552, !2572, !2724, !2764, !2849, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2885, !2889, !2890, !3353, !3356, !3414, !3417, !3418, !3419, !3460, !4932, !4933, !4934, !4935, !4936, !4937, !4940, !4941, !4948, !4949, !4950, !4951, !4952, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !543, file: !176, line: 1191, baseType: !109, size: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !543, file: !176, line: 1192, baseType: !547, size: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !37, line: 21, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !37, line: 18, baseType: !459)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !543, file: !176, line: 1193, baseType: !99, size: 8, offset: 160)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !543, file: !176, line: 1194, baseType: !51, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !543, file: !176, line: 1195, baseType: !53, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !543, file: !176, line: 1196, baseType: !553, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !176, line: 2366, size: 576, elements: !555)
!555 = !{!556, !557, !558, !2524, !2551, !2555, !2559, !2560, !2561, !2562, !2564, !2565, !2566, !2568, !2569, !2570, !2571}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !554, file: !176, line: 2367, baseType: !28, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !554, file: !176, line: 2368, baseType: !34, size: 32, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !554, file: !176, line: 2376, baseType: !559, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!34, !562}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !6, line: 90, size: 1216, elements: !564)
!564 = !{!565, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2494, !2495, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !563, file: !6, line: 91, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !6, line: 115, size: 384, elements: !569)
!569 = !{!570, !574, !578, !2479, !2483, !2484}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !568, file: !6, line: 116, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !562}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !568, file: !6, line: 117, baseType: !575, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!34, !562, !562}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !568, file: !6, line: 118, baseType: !579, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!34, !562, !582}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !6, line: 63, size: 320, elements: !584)
!584 = !{!585, !586, !587, !2477, !2478}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !583, file: !6, line: 64, baseType: !28, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !583, file: !6, line: 65, baseType: !5, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!587 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !6, line: 66, baseType: !588, size: 64, offset: 128)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !6, line: 66, size: 64, elements: !589)
!589 = !{!590, !591, !592, !606}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !588, file: !6, line: 67, baseType: !531, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !588, file: !6, line: 68, baseType: !32, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !588, file: !6, line: 69, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !176, line: 2470, size: 256, elements: !595)
!595 = !{!596, !597, !598, !599, !602}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !594, file: !176, line: 2471, baseType: !28, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !594, file: !176, line: 2472, baseType: !28, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !594, file: !176, line: 2473, baseType: !61, size: 32, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !594, file: !176, line: 2474, baseType: !600, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !176, line: 2469, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !594, file: !176, line: 2475, baseType: !603, offset: 256)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: -1)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !588, file: !6, line: 70, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !176, line: 994, size: 1856, align: 64, elements: !609)
!609 = !{!610, !629, !630, !632, !641, !654, !655, !656, !722, !1082, !1091, !1097, !1098, !2467, !2468, !2469, !2470, !2472, !2473, !2476}
!610 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !176, line: 995, baseType: !611, size: 128)
!611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !176, line: 995, size: 128, elements: !612)
!612 = !{!613, !619, !628}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !611, file: !176, line: 996, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !615, line: 60, size: 64, elements: !616)
!615 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !614, file: !615, line: 61, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !611, file: !176, line: 997, baseType: !620, size: 128, align: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !37, line: 232, size: 128, align: 64, elements: !621)
!621 = !{!622, !624}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !620, file: !37, line: 233, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !620, file: !37, line: 234, baseType: !625, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !623}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !611, file: !176, line: 998, baseType: !7, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !608, file: !176, line: 1005, baseType: !71, size: 32, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !608, file: !176, line: 1006, baseType: !631, size: 32, offset: 160)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !37, line: 156, baseType: !7)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !608, file: !176, line: 1007, baseType: !633, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !634, line: 13, baseType: !635)
!634 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !37, line: 181, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 179, size: 64, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !636, file: !37, line: 180, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !96, line: 22, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !98, line: 30, baseType: !55)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !608, file: !176, line: 1008, baseType: !642, size: 256, offset: 256)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !643, line: 66, size: 256, elements: !644)
!643 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!644 = !{!645, !646, !648, !653}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !642, file: !643, line: 67, baseType: !633, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !642, file: !643, line: 68, baseType: !647, size: 32, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !80, line: 23, baseType: !79)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !642, file: !643, line: 70, baseType: !649, size: 32, offset: 96)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !650, line: 15, size: 32, elements: !651)
!650 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !649, file: !650, line: 20, baseType: !61, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !642, file: !643, line: 72, baseType: !109, size: 128, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !608, file: !176, line: 1009, baseType: !53, size: 64, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !608, file: !176, line: 1010, baseType: !7, size: 32, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !608, file: !176, line: 1011, baseType: !657, size: 256, offset: 640)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !176, line: 948, size: 256, elements: !658)
!658 = !{!659, !682, !718, !719, !720, !721}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !657, file: !176, line: 949, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !661, line: 34, baseType: !662)
!661 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !661, line: 25, size: 64, elements: !663)
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !662, file: !661, line: 26, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !666, line: 27, baseType: !667)
!666 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !666, line: 13, size: 64, elements: !668)
!668 = !{!669, !681}
!669 = !DIDerivedType(tag: DW_TAG_member, scope: !667, file: !666, line: 14, baseType: !670, size: 32)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !667, file: !666, line: 14, size: 32, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !670, file: !666, line: 15, baseType: !61, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, scope: !670, file: !666, line: 16, baseType: !674, size: 32)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !670, file: !666, line: 16, size: 32, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !674, file: !666, line: 18, baseType: !95, size: 8)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !674, file: !666, line: 19, baseType: !678, size: 24, offset: 8)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 24, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 3)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !667, file: !666, line: 26, baseType: !83, size: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !657, file: !176, line: 950, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !16, line: 59, size: 768, elements: !685)
!685 = !{!686, !692, !693, !694, !707, !708, !709, !710}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !684, file: !16, line: 61, baseType: !687, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !688, line: 113, baseType: !689)
!688 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !688, line: 111, size: 32, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !689, file: !688, line: 112, baseType: !61, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !684, file: !16, line: 62, baseType: !7, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !684, file: !16, line: 63, baseType: !71, size: 32, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !684, file: !16, line: 65, baseType: !695, size: 256, offset: 128)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 256, elements: !705)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !37, line: 194, size: 64, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !696, file: !37, line: 195, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !37, line: 198, size: 128, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !37, line: 199, baseType: !699, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !700, file: !37, line: 199, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!705 = !{!706}
!706 = !DISubrange(count: 4)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !684, file: !16, line: 66, baseType: !696, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !684, file: !16, line: 68, baseType: !66, size: 192, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !684, file: !16, line: 69, baseType: !620, size: 128, align: 64, offset: 640)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !684, file: !16, line: 70, baseType: !711, offset: 768)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, elements: !604)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !16, line: 54, size: 128, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !712, file: !16, line: 55, baseType: !34, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !712, file: !16, line: 56, baseType: !716, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !16, line: 56, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !657, file: !176, line: 951, baseType: !15, size: 32, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !657, file: !176, line: 952, baseType: !396, size: 32, offset: 160)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !657, file: !176, line: 952, baseType: !396, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !657, file: !176, line: 953, baseType: !34, size: 32, offset: 224)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !608, file: !176, line: 1012, baseType: !723, size: 64, offset: 896)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !726, line: 110, size: 1472, elements: !727)
!726 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !744, !745, !746, !747, !748, !749, !879, !880, !881, !882, !883, !914, !1068, !1069, !1077}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !725, file: !726, line: 111, baseType: !633, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !725, file: !726, line: 112, baseType: !396, size: 32, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !725, file: !726, line: 113, baseType: !405, size: 32, offset: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !725, file: !726, line: 114, baseType: !396, size: 32, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !725, file: !726, line: 115, baseType: !405, size: 32, offset: 160)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !725, file: !726, line: 116, baseType: !396, size: 32, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !725, file: !726, line: 117, baseType: !405, size: 32, offset: 224)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !725, file: !726, line: 118, baseType: !396, size: 32, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !725, file: !726, line: 119, baseType: !405, size: 32, offset: 288)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !725, file: !726, line: 120, baseType: !7, size: 32, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !725, file: !726, line: 121, baseType: !739, size: 64, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !740, line: 24, baseType: !741)
!740 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !740, line: 24, size: 64, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !741, file: !740, line: 24, baseType: !463, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !725, file: !726, line: 122, baseType: !739, size: 64, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !725, file: !726, line: 123, baseType: !739, size: 64, offset: 512)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !725, file: !726, line: 124, baseType: !739, size: 64, offset: 576)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !725, file: !726, line: 125, baseType: !739, size: 64, offset: 640)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !725, file: !726, line: 127, baseType: !99, size: 8, offset: 704)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !725, file: !726, line: 129, baseType: !750, size: 64, offset: 768)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !752, line: 195, size: 1728, elements: !753)
!752 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!753 = !{!754, !755, !760, !772, !781, !784, !785, !792, !793, !794, !795, !798, !799, !800, !802, !803, !843, !864}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !751, file: !752, line: 196, baseType: !687, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !751, file: !752, line: 197, baseType: !756, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !752, line: 28, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !37, line: 104, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !96, line: 20, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !98, line: 26, baseType: !34)
!760 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !752, line: 198, baseType: !761, size: 192, offset: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !752, line: 198, size: 192, elements: !762)
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !761, file: !752, line: 199, baseType: !109, size: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !761, file: !752, line: 200, baseType: !765, size: 192, align: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !766, line: 5, size: 192, align: 64, elements: !767)
!766 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!767 = !{!768, !769, !771}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !765, file: !766, line: 6, baseType: !51, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !765, file: !766, line: 7, baseType: !770, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !765, file: !766, line: 8, baseType: !770, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !751, file: !752, line: 205, baseType: !773, size: 320, offset: 256)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !774, line: 48, size: 320, elements: !775)
!774 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!775 = !{!776, !777, !778, !779, !780}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !773, file: !774, line: 49, baseType: !633, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !773, file: !774, line: 55, baseType: !633, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !773, file: !774, line: 57, baseType: !649, size: 32, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !773, file: !774, line: 59, baseType: !647, size: 32, offset: 160)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !773, file: !774, line: 60, baseType: !109, size: 128, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !751, file: !752, line: 206, baseType: !782, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !752, line: 206, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !751, file: !752, line: 207, baseType: !32, size: 64, offset: 640)
!785 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !752, line: 208, baseType: !786, size: 64, offset: 704)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !752, line: 208, size: 64, elements: !787)
!787 = !{!788, !791}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !786, file: !752, line: 209, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !790, line: 8, baseType: !640)
!790 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!791 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !786, file: !752, line: 210, baseType: !789, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !751, file: !752, line: 212, baseType: !789, size: 64, offset: 768)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !751, file: !752, line: 213, baseType: !396, size: 32, offset: 832)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !751, file: !752, line: 214, baseType: !405, size: 32, offset: 864)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !751, file: !752, line: 215, baseType: !796, size: 32, offset: 896)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !752, line: 31, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 110, baseType: !459)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !751, file: !752, line: 216, baseType: !38, size: 16, offset: 928)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !751, file: !752, line: 217, baseType: !38, size: 16, offset: 944)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !751, file: !752, line: 221, baseType: !801, size: 16, offset: 960)
!801 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !752, line: 228, baseType: !51, size: 64, offset: 1024)
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !752, line: 245, baseType: !804, size: 320, offset: 1088)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !752, line: 245, size: 320, elements: !805)
!805 = !{!806, !835}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !804, file: !752, line: 246, baseType: !807, size: 320)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !752, line: 114, size: 320, elements: !808)
!808 = !{!809, !810, !822, !825, !834}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !807, file: !752, line: 116, baseType: !51, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, scope: !807, file: !752, line: 117, baseType: !811, size: 64, offset: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !807, file: !752, line: 117, size: 64, elements: !812)
!812 = !{!813, !821}
!813 = !DIDerivedType(tag: DW_TAG_member, scope: !811, file: !752, line: 118, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !811, file: !752, line: 118, size: 64, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !814, file: !752, line: 120, baseType: !105, size: 16)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !814, file: !752, line: 121, baseType: !818, size: 48, offset: 16)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 48, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 6)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !811, file: !752, line: 127, baseType: !51, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !807, file: !752, line: 129, baseType: !823, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !752, line: 102, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !807, file: !752, line: 130, baseType: !826, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !752, line: 108, size: 192, elements: !828)
!828 = !{!829, !830, !831}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !827, file: !752, line: 109, baseType: !620, size: 128, align: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !827, file: !752, line: 110, baseType: !687, size: 32, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !827, file: !752, line: 111, baseType: !832, size: 8, offset: 160)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !37, line: 35, baseType: !833)
!833 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !807, file: !752, line: 131, baseType: !28, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !752, line: 247, baseType: !836, size: 320)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !804, file: !752, line: 247, size: 320, elements: !837)
!837 = !{!838, !839, !840, !841, !842}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !836, file: !752, line: 248, baseType: !51, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !836, file: !752, line: 249, baseType: !51, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !836, file: !752, line: 250, baseType: !823, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !836, file: !752, line: 251, baseType: !826, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !836, file: !752, line: 252, baseType: !531, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !752, line: 260, baseType: !844, size: 256, offset: 1408)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !752, line: 260, size: 256, elements: !845)
!845 = !{!846, !852}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !844, file: !752, line: 261, baseType: !847, size: 256)
!847 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !752, line: 134, size: 256, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !847, file: !752, line: 135, baseType: !32, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !847, file: !752, line: 136, baseType: !851, size: 256)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !705)
!852 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !752, line: 262, baseType: !853, size: 256)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !752, line: 262, size: 256, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !853, file: !752, line: 264, baseType: !109, size: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !853, file: !752, line: 265, baseType: !857, size: 128, offset: 128)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !858, line: 22, size: 128, elements: !859)
!858 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!859 = !{!860, !863}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !857, file: !858, line: 23, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !858, line: 23, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !857, file: !858, line: 24, baseType: !51, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !751, file: !752, line: 280, baseType: !865, size: 64, offset: 1664)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !752, line: 176, size: 192, elements: !867)
!867 = !{!868, !877, !878}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !866, file: !752, line: 177, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !752, line: 171, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!34, !750, !873, !875, !750}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !866, file: !752, line: 178, baseType: !750, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !866, file: !752, line: 179, baseType: !823, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !725, file: !726, line: 130, baseType: !750, size: 64, offset: 832)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !725, file: !726, line: 131, baseType: !750, size: 64, offset: 896)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !725, file: !726, line: 132, baseType: !750, size: 64, offset: 960)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !725, file: !726, line: 135, baseType: !32, size: 64, offset: 1024)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !725, file: !726, line: 137, baseType: !884, size: 64, offset: 1088)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !886, line: 14, size: 1088, elements: !887)
!886 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!887 = !{!888, !889, !898, !899, !900, !901, !902, !903}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !885, file: !886, line: 15, baseType: !687, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !885, file: !886, line: 17, baseType: !890, size: 320, offset: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !891, line: 22, size: 320, elements: !892)
!891 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!892 = !{!893, !894, !895, !896}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !890, file: !891, line: 23, baseType: !647, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !890, file: !891, line: 24, baseType: !639, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !890, file: !891, line: 26, baseType: !109, size: 128, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !890, file: !891, line: 28, baseType: !897, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !885, file: !886, line: 19, baseType: !51, size: 64, offset: 384)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !885, file: !886, line: 20, baseType: !633, size: 64, offset: 448)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !885, file: !886, line: 23, baseType: !700, size: 128, offset: 512)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !885, file: !886, line: 24, baseType: !396, size: 32, offset: 640)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !885, file: !886, line: 29, baseType: !633, size: 64, offset: 704)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !885, file: !886, line: 36, baseType: !904, size: 320, offset: 768)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !905, line: 15, size: 320, elements: !906)
!905 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!906 = !{!907, !908, !909, !910, !911, !912, !913}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !904, file: !905, line: 16, baseType: !647, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !904, file: !905, line: 18, baseType: !34, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !904, file: !905, line: 19, baseType: !34, size: 32, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !904, file: !905, line: 20, baseType: !34, size: 32, offset: 96)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !904, file: !905, line: 21, baseType: !34, size: 32, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !904, file: !905, line: 22, baseType: !51, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !904, file: !905, line: 23, baseType: !51, size: 64, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !725, file: !726, line: 138, baseType: !915, size: 64, offset: 1152)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !917, line: 68, size: 4800, elements: !918)
!917 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!918 = !{!919, !941, !942, !943, !944, !945, !946, !947, !958, !959, !960, !961, !962, !963, !975, !1048, !1049, !1063, !1066}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !916, file: !917, line: 69, baseType: !920, size: 576)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !917, line: 23, size: 576, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !920, file: !917, line: 24, baseType: !459, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !917, line: 25, baseType: !924, size: 512, offset: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !920, file: !917, line: 25, size: 512, elements: !925)
!925 = !{!926, !935}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !924, file: !917, line: 26, baseType: !927, size: 480)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 480, elements: !933)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !917, line: 17, size: 96, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !928, file: !917, line: 18, baseType: !459, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !928, file: !917, line: 19, baseType: !459, size: 32, offset: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !928, file: !917, line: 20, baseType: !459, size: 32, offset: 64)
!933 = !{!934}
!934 = !DISubrange(count: 5)
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !917, line: 27, baseType: !936, size: 128)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !917, line: 27, size: 128, elements: !937)
!937 = !{!938, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !936, file: !917, line: 28, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !936, file: !917, line: 29, baseType: !939, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !916, file: !917, line: 70, baseType: !920, size: 576, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !916, file: !917, line: 71, baseType: !920, size: 576, offset: 1152)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !916, file: !917, line: 72, baseType: !915, size: 64, offset: 1728)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !916, file: !917, line: 73, baseType: !34, size: 32, offset: 1792)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !916, file: !917, line: 74, baseType: !396, size: 32, offset: 1824)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !916, file: !917, line: 75, baseType: !405, size: 32, offset: 1856)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !916, file: !917, line: 76, baseType: !948, size: 192, offset: 1920)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !949, line: 9, size: 192, elements: !950)
!949 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!950 = !{!951, !952, !956, !957}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !948, file: !949, line: 10, baseType: !633, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !948, file: !949, line: 11, baseType: !953, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !955)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !949, line: 7, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !948, file: !949, line: 12, baseType: !7, size: 32, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !948, file: !949, line: 13, baseType: !687, size: 32, offset: 160)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !916, file: !917, line: 77, baseType: !51, size: 64, offset: 2112)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !916, file: !917, line: 80, baseType: !832, size: 8, offset: 2176)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !916, file: !917, line: 88, baseType: !109, size: 128, offset: 2240)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !916, file: !917, line: 89, baseType: !750, size: 64, offset: 2368)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !916, file: !917, line: 90, baseType: !773, size: 320, offset: 2432)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !916, file: !917, line: 97, baseType: !964, size: 256, offset: 2752)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !965, line: 98, size: 256, elements: !966)
!965 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!966 = !{!967, !968, !969}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !964, file: !965, line: 99, baseType: !633, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !964, file: !965, line: 100, baseType: !109, size: 128, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !964, file: !965, line: 101, baseType: !970, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !965, line: 21, baseType: !971)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{null, !974}
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !916, file: !917, line: 99, baseType: !976, size: 768, offset: 3008)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !24, line: 199, size: 768, elements: !977)
!977 = !{!978, !983}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !976, file: !24, line: 200, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!34, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !976, file: !24, line: 201, baseType: !984, size: 704, offset: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !24, line: 193, size: 704, elements: !985)
!985 = !{!986, !1044}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !984, file: !24, line: 195, baseType: !987, size: 640)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !24, line: 173, size: 640, elements: !988)
!988 = !{!989, !1001, !1013, !1014, !1034, !1035, !1037, !1043}
!989 = !DIDerivedType(tag: DW_TAG_member, scope: !987, file: !24, line: 174, baseType: !990, size: 192)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !987, file: !24, line: 174, size: 192, elements: !991)
!991 = !{!992, !1000}
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !24, line: 175, baseType: !993, size: 192)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !24, line: 175, size: 192, elements: !994)
!994 = !{!995, !996, !997, !998, !999}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !993, file: !24, line: 176, baseType: !45, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !993, file: !24, line: 177, baseType: !34, size: 32, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !993, file: !24, line: 178, baseType: !34, size: 32, offset: 96)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !993, file: !24, line: 179, baseType: !34, size: 32, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !993, file: !24, line: 180, baseType: !34, size: 32, offset: 160)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !990, file: !24, line: 182, baseType: !620, size: 128, align: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !987, file: !24, line: 184, baseType: !1002, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1004, line: 26, size: 256, elements: !1005)
!1004 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1003, file: !1004, line: 27, baseType: !7, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1003, file: !1004, line: 28, baseType: !1008, size: 192, offset: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1009, line: 43, size: 192, elements: !1010)
!1009 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1008, file: !1009, line: 44, baseType: !647, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1008, file: !1009, line: 45, baseType: !109, size: 128, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !987, file: !24, line: 185, baseType: !45, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !987, file: !24, line: 186, baseType: !1015, size: 64, offset: 320)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !24, line: 204, size: 960, elements: !1017)
!1017 = !{!1018, !1019, !1023, !1030}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1016, file: !24, line: 205, baseType: !976, size: 768)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1016, file: !24, line: 206, baseType: !1020, size: 64, offset: 768)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!982, !1015}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1016, file: !24, line: 207, baseType: !1024, size: 64, offset: 832)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !1027, !1028, !1029}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1016, file: !24, line: 209, baseType: !1031, size: 64, offset: 896)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!34, !1027, !45}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !987, file: !24, line: 187, baseType: !982, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !987, file: !24, line: 188, baseType: !1036, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !987, file: !24, line: 189, baseType: !1038, size: 64, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !24, line: 157, size: 256, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1039, file: !24, line: 158, baseType: !765, size: 192, align: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1039, file: !24, line: 159, baseType: !1027, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !987, file: !24, line: 190, baseType: !696, size: 64, offset: 576)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !984, file: !24, line: 196, baseType: !1045, size: 64, offset: 640)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !766, line: 12, size: 64, elements: !1046)
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1045, file: !766, line: 13, baseType: !770, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !916, file: !917, line: 100, baseType: !1027, size: 64, offset: 3776)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !916, file: !917, line: 102, baseType: !1050, size: 64, offset: 3840)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !917, line: 107, size: 1152, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1061}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1051, file: !917, line: 108, baseType: !700, size: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1051, file: !917, line: 109, baseType: !915, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1051, file: !917, line: 110, baseType: !396, size: 32, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1051, file: !917, line: 111, baseType: !61, size: 32, offset: 224)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1051, file: !917, line: 112, baseType: !1058, size: 640, offset: 256)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 640, elements: !1059)
!1059 = !{!1060}
!1060 = !DISubrange(count: 10)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1051, file: !917, line: 113, baseType: !1062, size: 256, offset: 896)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 256, elements: !705)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !916, file: !917, line: 103, baseType: !1064, size: 640, offset: 3904)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1065, size: 640, elements: !1059)
!1065 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !916, file: !917, line: 104, baseType: !1067, size: 256, offset: 4544)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1065, size: 256, elements: !705)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !725, file: !726, line: 139, baseType: !1050, size: 64, offset: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !725, file: !726, line: 140, baseType: !1070, size: 64, offset: 1280)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !726, line: 25, size: 64, elements: !1072)
!1072 = !{!1073, !1074, !1075}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1071, file: !726, line: 26, baseType: !61, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1071, file: !726, line: 27, baseType: !34, size: 32, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1071, file: !726, line: 28, baseType: !1076, offset: 64)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, elements: !604)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !726, line: 142, baseType: !1078, size: 128, offset: 1344)
!1078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !725, file: !726, line: 142, size: 128, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1078, file: !726, line: 143, baseType: !34, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1078, file: !726, line: 144, baseType: !620, size: 128, align: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !608, file: !176, line: 1013, baseType: !1083, size: 256, offset: 960)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !176, line: 970, size: 256, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1090}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1083, file: !176, line: 971, baseType: !51, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1083, file: !176, line: 972, baseType: !7, size: 32, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1083, file: !176, line: 973, baseType: !7, size: 32, offset: 96)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1083, file: !176, line: 974, baseType: !7, size: 32, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1083, file: !176, line: 975, baseType: !7, size: 32, offset: 160)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1083, file: !176, line: 976, baseType: !53, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !608, file: !176, line: 1014, baseType: !1092, size: 128, offset: 1216)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1093, line: 8, size: 128, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1092, file: !1093, line: 9, baseType: !536, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1092, file: !1093, line: 10, baseType: !425, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !608, file: !176, line: 1015, baseType: !390, size: 64, offset: 1344)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !608, file: !176, line: 1016, baseType: !1099, size: 64, offset: 1408)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1101)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !176, line: 1914, size: 2112, elements: !1102)
!1102 = !{!1103, !2232, !2236, !2240, !2244, !2355, !2356, !2362, !2375, !2379, !2383, !2384, !2388, !2389, !2393, !2398, !2399, !2403, !2407, !2413, !2414, !2418, !2419, !2426, !2430, !2434, !2440, !2444, !2448, !2452, !2456, !2457, !2463}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1101, file: !176, line: 1915, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !120, line: 402, size: 9216, align: 512, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1113, !1889, !1915, !1916, !1917, !1918, !1922, !1925, !1926, !1927, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1995, !1999, !2019, !2037, !2038, !2039, !2040, !2049, !2072, !2073, !2076, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2090, !2091, !2190, !2198, !2199, !2200, !2202, !2206, !2207, !2211, !2212, !2213, !2214, !2216, !2217, !2218, !2225, !2226, !2227, !2231}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1105, file: !120, line: 403, baseType: !119, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1105, file: !120, line: 406, baseType: !109, size: 128, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1105, file: !120, line: 409, baseType: !1110, size: 448, offset: 192)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 448, elements: !1111)
!1111 = !{!1112}
!1112 = !DISubrange(count: 56)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1105, file: !120, line: 417, baseType: !1114, size: 768, offset: 640)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !120, line: 45, size: 768, elements: !1115)
!1115 = !{!1116, !1883, !1884, !1885, !1888}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1114, file: !120, line: 46, baseType: !1117, size: 512)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1118, line: 64, size: 512, elements: !1119)
!1118 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1119 = !{!1120, !1121, !1122, !1124, !1168, !1739, !1873, !1878, !1879, !1880, !1881, !1882}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1117, file: !1118, line: 65, baseType: !28, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1117, file: !1118, line: 66, baseType: !109, size: 128, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1117, file: !1118, line: 67, baseType: !1123, size: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1117, file: !1118, line: 68, baseType: !1125, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1118, line: 168, size: 768, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1126, file: !1118, line: 169, baseType: !109, size: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1126, file: !1118, line: 170, baseType: !71, size: 32, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1126, file: !1118, line: 171, baseType: !1117, size: 512, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1126, file: !1118, line: 172, baseType: !1132, size: 64, offset: 704)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1118, line: 133, size: 192, elements: !1135)
!1135 = !{!1136, !1143, !1148}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1134, file: !1118, line: 134, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1138)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!34, !1141}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1117)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1134, file: !1118, line: 135, baseType: !1144, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!28, !1141}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1134, file: !1118, line: 136, baseType: !1149, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1150)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!34, !1141, !1153}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1118, line: 125, size: 20736, elements: !1155)
!1155 = !{!1156, !1158, !1162, !1163, !1167}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1154, file: !1118, line: 126, baseType: !1157, size: 192)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 192, elements: !679)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1154, file: !1118, line: 127, baseType: !1159, size: 4096, offset: 192)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 4096, elements: !1160)
!1160 = !{!1161}
!1161 = !DISubrange(count: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1154, file: !1118, line: 128, baseType: !34, size: 32, offset: 4288)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1154, file: !1118, line: 129, baseType: !1164, size: 16384, offset: 4320)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 16384, elements: !1165)
!1165 = !{!1166}
!1166 = !DISubrange(count: 2048)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1154, file: !1118, line: 130, baseType: !34, size: 32, offset: 20704)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1117, file: !1118, line: 69, baseType: !1169, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1118, line: 116, size: 384, elements: !1172)
!1172 = !{!1173, !1177, !1199, !1700, !1731, !1735}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1171, file: !1118, line: 117, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !1123}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1171, file: !1118, line: 118, baseType: !1178, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1181, line: 254, size: 128, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1182 = !{!1183, !1195}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1180, file: !1181, line: 255, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!1187, !1123, !1190, !531}
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !37, line: 66, baseType: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !49, line: 73, baseType: !1189)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !49, line: 15, baseType: !1065)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1181, line: 30, size: 128, elements: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1191, file: !1181, line: 31, baseType: !28, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1191, file: !1181, line: 32, baseType: !36, size: 16, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1180, file: !1181, line: 256, baseType: !1196, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!1187, !1123, !1190, !28, !47}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1171, file: !1118, line: 119, baseType: !1200, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1181, line: 84, size: 320, elements: !1204)
!1204 = !{!1205, !1206, !1210, !1696, !1698}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1203, file: !1181, line: 85, baseType: !28, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1203, file: !1181, line: 86, baseType: !1207, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!36, !1123, !1190, !34}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1203, file: !1181, line: 88, baseType: !1211, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!36, !1123, !1214, !34}
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1181, line: 175, size: 512, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1224, !1228, !1229}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1215, file: !1181, line: 176, baseType: !1191, size: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1215, file: !1181, line: 177, baseType: !47, size: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1215, file: !1181, line: 178, baseType: !32, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1215, file: !1181, line: 179, baseType: !1221, size: 64, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!386}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1215, file: !1181, line: 180, baseType: !1225, size: 64, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!1187, !607, !1123, !1214, !531, !53, !47}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1215, file: !1181, line: 182, baseType: !1225, size: 64, offset: 384)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1215, file: !1181, line: 184, baseType: !1230, size: 64, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!34, !607, !1123, !1214, !1233}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !127, line: 625, size: 1344, elements: !1235)
!1235 = !{!1236, !1245, !1403, !1409, !1416, !1417, !1422, !1423, !1428, !1429, !1432, !1689, !1690, !1691, !1692, !1693, !1694}
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !127, line: 628, baseType: !1237, size: 128)
!1237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !127, line: 628, size: 128, elements: !1238)
!1238 = !{!1239, !1244}
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !127, line: 629, baseType: !1240, size: 128)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !127, line: 629, size: 128, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1240, file: !127, line: 631, baseType: !51, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1240, file: !127, line: 632, baseType: !51, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1237, file: !127, line: 635, baseType: !620, size: 128, align: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1234, file: !127, line: 639, baseType: !1246, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !127, line: 733, size: 10240, elements: !1248)
!1248 = !{!1249, !1401}
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1247, file: !127, line: 734, baseType: !1250, size: 10240)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1247, file: !127, line: 734, size: 10240, elements: !1251)
!1251 = !{!1252, !1256, !1270, !1274, !1275, !1276, !1277, !1278, !1279, !1288, !1289, !1290, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1329, !1331, !1334, !1381, !1382, !1383, !1386, !1387, !1388, !1391, !1392, !1393, !1399, !1400}
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !127, line: 739, baseType: !1253, size: 512, align: 512)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1250, file: !127, line: 739, size: 512, align: 512, elements: !1254)
!1254 = !{!1255}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1253, file: !127, line: 747, baseType: !61, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1250, file: !127, line: 750, baseType: !1257, size: 128, offset: 512)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1258, line: 218, size: 128, elements: !1259)
!1258 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1259 = !{!1260, !1268, !1269}
!1260 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !1258, line: 219, baseType: !1261, size: 32)
!1261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !1258, line: 219, size: 32, elements: !1262)
!1262 = !{!1263, !1264}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1261, file: !1258, line: 220, baseType: !71, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1261, file: !1258, line: 221, baseType: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1258, line: 197, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1258, line: 197, elements: !1267)
!1267 = !{}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1257, file: !1258, line: 223, baseType: !7, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1257, file: !1258, line: 224, baseType: !32, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1250, file: !127, line: 752, baseType: !1271, size: 64, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!51, !607, !51, !51, !51, !51}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1250, file: !127, line: 756, baseType: !51, size: 64, offset: 704)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1250, file: !127, line: 757, baseType: !51, size: 64, offset: 768)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1250, file: !127, line: 760, baseType: !51, size: 64, offset: 832)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1250, file: !127, line: 761, baseType: !51, size: 64, offset: 896)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1250, file: !127, line: 763, baseType: !51, size: 64, offset: 960)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1250, file: !127, line: 764, baseType: !1280, size: 64, offset: 1024)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1282, line: 299, baseType: !1283)
!1282 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1282, line: 299, size: 64, elements: !1284)
!1284 = !{!1285}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1283, file: !1282, line: 299, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1287, line: 18, baseType: !51)
!1287 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1250, file: !127, line: 773, baseType: !61, size: 32, offset: 1088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1250, file: !127, line: 785, baseType: !61, size: 32, offset: 1120)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1250, file: !127, line: 795, baseType: !1291, size: 64, offset: 1152)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !127, line: 726, size: 128, elements: !1293)
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1292, file: !127, line: 727, baseType: !463, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1292, file: !127, line: 728, baseType: !34, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1250, file: !127, line: 801, baseType: !51, size: 64, offset: 1216)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1250, file: !127, line: 804, baseType: !633, size: 64, offset: 1280)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1250, file: !127, line: 806, baseType: !34, size: 32, offset: 1344)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1250, file: !127, line: 808, baseType: !71, size: 32, offset: 1376)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1250, file: !127, line: 823, baseType: !773, size: 320, offset: 1408)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1250, file: !127, line: 825, baseType: !109, size: 128, offset: 1728)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1250, file: !127, line: 845, baseType: !34, size: 32, offset: 1856)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1250, file: !127, line: 849, baseType: !51, size: 64, offset: 1920)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1250, file: !127, line: 850, baseType: !51, size: 64, offset: 1984)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1250, file: !127, line: 852, baseType: !51, size: 64, offset: 2048)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1250, file: !127, line: 853, baseType: !51, size: 64, offset: 2112)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1250, file: !127, line: 854, baseType: !635, size: 64, offset: 2176)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1250, file: !127, line: 855, baseType: !51, size: 64, offset: 2240)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1250, file: !127, line: 856, baseType: !51, size: 64, offset: 2304)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1250, file: !127, line: 857, baseType: !51, size: 64, offset: 2368)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1250, file: !127, line: 858, baseType: !51, size: 64, offset: 2432)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1250, file: !127, line: 865, baseType: !436, size: 32, offset: 2496)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1250, file: !127, line: 867, baseType: !71, size: 32, offset: 2528)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1250, file: !127, line: 869, baseType: !51, size: 64, offset: 2560)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1250, file: !127, line: 869, baseType: !51, size: 64, offset: 2624)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1250, file: !127, line: 869, baseType: !51, size: 64, offset: 2688)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1250, file: !127, line: 869, baseType: !51, size: 64, offset: 2752)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1250, file: !127, line: 870, baseType: !51, size: 64, offset: 2816)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1250, file: !127, line: 870, baseType: !51, size: 64, offset: 2880)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1250, file: !127, line: 870, baseType: !51, size: 64, offset: 2944)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1250, file: !127, line: 871, baseType: !51, size: 64, offset: 3008)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1250, file: !127, line: 871, baseType: !51, size: 64, offset: 3072)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1250, file: !127, line: 871, baseType: !51, size: 64, offset: 3136)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1250, file: !127, line: 871, baseType: !51, size: 64, offset: 3200)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1250, file: !127, line: 873, baseType: !1326, size: 3328, offset: 3264)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 3328, elements: !1327)
!1327 = !{!1328}
!1328 = !DISubrange(count: 52)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1250, file: !127, line: 875, baseType: !1330, size: 1280, offset: 6592)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 1280, elements: !705)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1250, file: !127, line: 877, baseType: !1332, size: 64, offset: 7872)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !127, line: 877, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1250, file: !127, line: 880, baseType: !1335, size: 1088, offset: 7936)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1336, line: 72, baseType: !1337)
!1336 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1336, line: 23, size: 1088, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1346, !1347, !1348, !1349, !1376, !1377, !1378}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1337, file: !1336, line: 28, baseType: !463, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1337, file: !1336, line: 38, baseType: !635, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1337, file: !1336, line: 40, baseType: !51, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1337, file: !1336, line: 43, baseType: !773, size: 320, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1337, file: !1336, line: 44, baseType: !1344, size: 64, offset: 512)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1336, line: 44, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1337, file: !1336, line: 48, baseType: !51, size: 64, offset: 576)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1337, file: !1336, line: 59, baseType: !642, size: 256, offset: 640)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1337, file: !1336, line: 60, baseType: !32, size: 64, offset: 896)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1337, file: !1336, line: 61, baseType: !1350, size: 64, offset: 960)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1352)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1353, line: 13, size: 1216, elements: !1354)
!1353 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1352, file: !1353, line: 14, baseType: !32, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1352, file: !1353, line: 15, baseType: !51, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1352, file: !1353, line: 17, baseType: !51, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1352, file: !1353, line: 17, baseType: !51, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1352, file: !1353, line: 18, baseType: !51, size: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1352, file: !1353, line: 18, baseType: !51, size: 64, offset: 320)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1352, file: !1353, line: 19, baseType: !1362, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1352, file: !1353, line: 21, baseType: !1065, size: 64, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1352, file: !1353, line: 23, baseType: !1065, size: 64, offset: 512)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1352, file: !1353, line: 24, baseType: !1065, size: 64, offset: 576)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1352, file: !1353, line: 25, baseType: !1065, size: 64, offset: 640)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1352, file: !1353, line: 26, baseType: !1065, size: 64, offset: 704)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1352, file: !1353, line: 27, baseType: !1065, size: 64, offset: 768)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1352, file: !1353, line: 28, baseType: !1065, size: 64, offset: 832)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1352, file: !1353, line: 29, baseType: !1065, size: 64, offset: 896)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1352, file: !1353, line: 30, baseType: !1065, size: 64, offset: 960)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1352, file: !1353, line: 31, baseType: !1065, size: 64, offset: 1024)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1352, file: !1353, line: 32, baseType: !1065, size: 64, offset: 1088)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1352, file: !1353, line: 33, baseType: !1065, size: 64, offset: 1152)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1337, file: !1336, line: 63, baseType: !61, size: 32, offset: 1024)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1337, file: !1336, line: 69, baseType: !105, size: 16, offset: 1056)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1337, file: !1336, line: 70, baseType: !1379, size: 16, offset: 1072)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !96, line: 18, baseType: !1380)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !98, line: 23, baseType: !801)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1250, file: !127, line: 882, baseType: !51, size: 64, offset: 9024)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1250, file: !127, line: 885, baseType: !71, size: 32, offset: 9088)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1250, file: !127, line: 886, baseType: !1384, size: 64, offset: 9152)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !127, line: 732, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1250, file: !127, line: 901, baseType: !915, size: 64, offset: 9216)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1250, file: !127, line: 904, baseType: !607, size: 64, offset: 9280)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1250, file: !127, line: 906, baseType: !1389, size: 64, offset: 9344)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !127, line: 906, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1250, file: !127, line: 930, baseType: !61, size: 32, offset: 9408)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1250, file: !127, line: 933, baseType: !61, size: 32, offset: 9440)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1250, file: !127, line: 935, baseType: !1394, size: 64, offset: 9472)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !263, line: 103, size: 64, elements: !1395)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1394, file: !263, line: 104, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !263, line: 101, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1250, file: !127, line: 940, baseType: !633, size: 64, offset: 9536)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1250, file: !127, line: 942, baseType: !964, size: 256, offset: 9600)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1247, file: !127, line: 986, baseType: !1402, offset: 10240)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, elements: !604)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1234, file: !127, line: 640, baseType: !1404, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1282, line: 297, baseType: !1405)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1282, line: 297, size: 64, elements: !1406)
!1406 = !{!1407}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1405, file: !1282, line: 297, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1287, line: 19, baseType: !51)
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !127, line: 646, baseType: !1410, size: 64, offset: 256)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !127, line: 646, size: 64, elements: !1411)
!1411 = !{!1412, !1415}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1410, file: !127, line: 647, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !127, line: 542, baseType: !51)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1410, file: !127, line: 648, baseType: !1414, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1234, file: !127, line: 666, baseType: !34, size: 32, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1234, file: !127, line: 667, baseType: !1418, size: 64, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !127, line: 579, size: 320, elements: !1420)
!1420 = !{!1421}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1419, file: !127, line: 580, baseType: !773, size: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1234, file: !127, line: 670, baseType: !832, size: 8, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1234, file: !127, line: 681, baseType: !1424, size: 256, offset: 512)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1234, file: !127, line: 678, size: 256, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1424, file: !127, line: 679, baseType: !765, size: 192, align: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1424, file: !127, line: 680, baseType: !51, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1234, file: !127, line: 689, baseType: !109, size: 128, offset: 768)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1234, file: !127, line: 691, baseType: !1430, size: 64, offset: 896)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !127, line: 691, flags: DIFlagFwdDecl)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1234, file: !127, line: 694, baseType: !1433, size: 64, offset: 960)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1435)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1436, line: 563, size: 1024, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1437 = !{!1438, !1442, !1443, !1447, !1451, !1455, !1633, !1637, !1641, !1645, !1646, !1647, !1651, !1655, !1681, !1685}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1435, file: !1436, line: 564, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !1233}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1435, file: !1436, line: 569, baseType: !1439, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1435, file: !1436, line: 571, baseType: !1444, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!34, !1233, !51}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1435, file: !1436, line: 572, baseType: !1448, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!34, !1233}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1435, file: !1436, line: 578, baseType: !1452, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!34, !1233, !51, !51, !51}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1435, file: !1436, line: 580, baseType: !1456, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !127, line: 1184, baseType: !7)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1436, line: 512, size: 896, elements: !1462)
!1462 = !{!1463, !1472, !1473, !1480, !1487, !1497, !1626, !1627, !1629, !1631}
!1463 = !DIDerivedType(tag: DW_TAG_member, scope: !1461, file: !1436, line: 513, baseType: !1464, size: 320)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1461, file: !1436, line: 513, size: 320, elements: !1465)
!1465 = !{!1466, !1467, !1469, !1470, !1471}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1464, file: !1436, line: 514, baseType: !1233, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1464, file: !1436, line: 515, baseType: !1468, size: 32, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !37, line: 154, baseType: !7)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1464, file: !1436, line: 516, baseType: !51, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1464, file: !1436, line: 517, baseType: !51, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1464, file: !1436, line: 518, baseType: !51, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1461, file: !1436, line: 520, baseType: !126, size: 32, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1461, file: !1436, line: 522, baseType: !1474, size: 64, offset: 384)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1287, line: 22, baseType: !1476)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1287, line: 22, size: 64, elements: !1477)
!1477 = !{!1478}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1476, file: !1287, line: 22, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1287, line: 15, baseType: !51)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1461, file: !1436, line: 524, baseType: !1481, size: 64, offset: 448)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1282, line: 372, baseType: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1282, line: 372, size: 64, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1483, file: !1282, line: 372, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1287, line: 16, baseType: !51)
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1461, file: !1436, line: 527, baseType: !1488, size: 64, offset: 512)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1461, file: !1436, line: 527, size: 64, elements: !1489)
!1489 = !{!1490, !1496}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1488, file: !1436, line: 528, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1287, line: 21, baseType: !1492)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1287, line: 21, size: 64, elements: !1493)
!1493 = !{!1494}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1492, file: !1287, line: 21, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1287, line: 14, baseType: !51)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1488, file: !1436, line: 529, baseType: !1475, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1461, file: !1436, line: 534, baseType: !1498, size: 64, offset: 576)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !127, line: 74, size: 512, align: 128, elements: !1500)
!1500 = !{!1501, !1502, !1620, !1625}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1499, file: !127, line: 75, baseType: !51, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1499, file: !127, line: 83, baseType: !1503, size: 320, offset: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1499, file: !127, line: 83, size: 320, elements: !1504)
!1504 = !{!1505, !1526, !1540, !1544, !1619}
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1503, file: !127, line: 84, baseType: !1506, size: 320)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1503, file: !127, line: 84, size: 320, elements: !1507)
!1507 = !{!1508, !1519, !1520, !1525}
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1506, file: !127, line: 90, baseType: !1509, size: 128)
!1509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1506, file: !127, line: 90, size: 128, elements: !1510)
!1510 = !{!1511, !1512, !1517, !1518}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1509, file: !127, line: 91, baseType: !109, size: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !127, line: 94, baseType: !1513, size: 128)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !127, line: 94, size: 128, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1513, file: !127, line: 96, baseType: !32, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1513, file: !127, line: 98, baseType: !7, size: 32, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1509, file: !127, line: 102, baseType: !109, size: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1509, file: !127, line: 103, baseType: !109, size: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1506, file: !127, line: 106, baseType: !386, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, scope: !1506, file: !127, line: 107, baseType: !1521, size: 64, offset: 192)
!1521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1506, file: !127, line: 107, size: 64, elements: !1522)
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1521, file: !127, line: 108, baseType: !51, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1521, file: !127, line: 109, baseType: !51, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1506, file: !127, line: 117, baseType: !51, size: 64, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1503, file: !127, line: 119, baseType: !1527, size: 320)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1503, file: !127, line: 119, size: 320, elements: !1528)
!1528 = !{!1529, !1530, !1533, !1534, !1535}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1527, file: !127, line: 124, baseType: !51, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1527, file: !127, line: 125, baseType: !1531, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !127, line: 125, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1527, file: !127, line: 126, baseType: !51, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1527, file: !127, line: 127, baseType: !51, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1527, file: !127, line: 128, baseType: !1536, size: 64, offset: 256)
!1536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1527, file: !127, line: 128, size: 64, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1536, file: !127, line: 133, baseType: !51, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1536, file: !127, line: 138, baseType: !633, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, scope: !1503, file: !127, line: 141, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1503, file: !127, line: 141, size: 64, elements: !1542)
!1542 = !{!1543}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1541, file: !127, line: 142, baseType: !51, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1503, file: !127, line: 144, baseType: !1545, size: 128)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1503, file: !127, line: 144, size: 128, elements: !1546)
!1546 = !{!1547, !1618}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1545, file: !127, line: 146, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !143, line: 126, size: 1216, elements: !1550)
!1550 = !{!1551, !1561, !1582, !1583, !1584, !1585, !1586, !1600, !1601, !1602}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1549, file: !143, line: 127, baseType: !1552, size: 384)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !143, line: 21, size: 384, elements: !1553)
!1553 = !{!1554, !1555, !1557, !1558, !1559, !1560}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1552, file: !143, line: 22, baseType: !51, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1552, file: !143, line: 23, baseType: !1556, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1552, file: !143, line: 24, baseType: !1556, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1552, file: !143, line: 25, baseType: !51, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1552, file: !143, line: 26, baseType: !51, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1552, file: !143, line: 27, baseType: !51, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1549, file: !143, line: 128, baseType: !1562, size: 128, offset: 384)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1563, line: 105, size: 128, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1562, file: !1563, line: 110, baseType: !51, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1562, file: !1563, line: 118, baseType: !1567, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1563, line: 95, size: 448, elements: !1569)
!1569 = !{!1570, !1571, !1577, !1578, !1579, !1580, !1581}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1568, file: !1563, line: 96, baseType: !633, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1568, file: !1563, line: 97, baseType: !1572, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1563, line: 60, baseType: !1574)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !1576}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1568, file: !1563, line: 98, baseType: !1572, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1568, file: !1563, line: 99, baseType: !832, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1568, file: !1563, line: 100, baseType: !832, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1568, file: !1563, line: 101, baseType: !620, size: 128, align: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1568, file: !1563, line: 102, baseType: !1576, size: 64, offset: 384)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1549, file: !143, line: 129, baseType: !1003, size: 256, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1549, file: !143, line: 130, baseType: !142, size: 32, offset: 768)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1549, file: !143, line: 131, baseType: !7, size: 32, offset: 800)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1549, file: !143, line: 132, baseType: !51, size: 64, offset: 832)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1549, file: !143, line: 133, baseType: !1587, size: 64, offset: 896)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !143, line: 77, size: 192, elements: !1590)
!1590 = !{!1591, !1595, !1596}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1589, file: !143, line: 83, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !1498}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1589, file: !143, line: 89, baseType: !1456, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1589, file: !143, line: 100, baseType: !1597, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!34, !1548, !51, !51, !34}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1549, file: !143, line: 134, baseType: !32, size: 64, offset: 960)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1549, file: !143, line: 135, baseType: !34, size: 32, offset: 1024)
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !143, line: 136, baseType: !1603, size: 128, offset: 1088)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !143, line: 136, size: 128, elements: !1604)
!1604 = !{!1605, !1611}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1603, file: !143, line: 137, baseType: !1606, size: 128)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1607, line: 6, size: 128, elements: !1608)
!1607 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1606, file: !1607, line: 7, baseType: !463, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1606, file: !1607, line: 8, baseType: !463, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1603, file: !143, line: 138, baseType: !1612)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1603, file: !143, line: 138, elements: !1613)
!1613 = !{!1614, !1616}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1612, file: !143, line: 138, baseType: !1615)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1612, file: !143, line: 138, elements: !1267)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1612, file: !143, line: 138, baseType: !1617)
!1617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1606, elements: !604)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1545, file: !127, line: 147, baseType: !32, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1503, file: !127, line: 161, baseType: !620, size: 128, align: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1499, file: !127, line: 164, baseType: !1621, size: 32, offset: 384)
!1621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1499, file: !127, line: 164, size: 32, elements: !1622)
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1621, file: !127, line: 169, baseType: !61, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1621, file: !127, line: 177, baseType: !7, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1499, file: !127, line: 181, baseType: !61, size: 32, offset: 416)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1461, file: !1436, line: 535, baseType: !1498, size: 64, offset: 640)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1461, file: !1436, line: 541, baseType: !1628, size: 64, offset: 704)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1461, file: !1436, line: 545, baseType: !1630, size: 64, offset: 768)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1461, file: !1436, line: 549, baseType: !1632, size: 64, offset: 832)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1282, line: 520, baseType: !1498)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1435, file: !1436, line: 581, baseType: !1634, size: 64, offset: 384)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!1459, !1460, !7}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1435, file: !1436, line: 582, baseType: !1638, size: 64, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!1459, !1460, !51, !51}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1435, file: !1436, line: 584, baseType: !1642, size: 64, offset: 512)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!51, !1233}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1435, file: !1436, line: 588, baseType: !1456, size: 64, offset: 576)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1435, file: !1436, line: 591, baseType: !1456, size: 64, offset: 640)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1435, file: !1436, line: 597, baseType: !1648, size: 64, offset: 704)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!34, !1233, !51, !32, !34, !34}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1435, file: !1436, line: 603, baseType: !1652, size: 64, offset: 768)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!28, !1233}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1435, file: !1436, line: 613, baseType: !1656, size: 64, offset: 832)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!34, !1233, !1659}
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1661, line: 44, size: 256, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/mempolicy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb371e8a578bad8ff65f30ddf87a2459")
!1662 = !{!1663, !1664, !1665, !1666, !1675, !1676}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1660, file: !1661, line: 45, baseType: !61, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1660, file: !1661, line: 46, baseType: !38, size: 16, offset: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1660, file: !1661, line: 47, baseType: !38, size: 16, offset: 48)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1660, file: !1661, line: 48, baseType: !1667, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1668, line: 99, baseType: !1669)
!1668 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1668, line: 99, size: 64, elements: !1670)
!1670 = !{!1671}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1669, file: !1668, line: 99, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !1673)
!1673 = !{!1674}
!1674 = !DISubrange(count: 1)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "home_node", scope: !1660, file: !1661, line: 49, baseType: !34, size: 32, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !1660, file: !1661, line: 54, baseType: !1677, size: 64, offset: 192)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1660, file: !1661, line: 51, size: 64, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mems_allowed", scope: !1677, file: !1661, line: 52, baseType: !1667, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "user_nodemask", scope: !1677, file: !1661, line: 53, baseType: !1667, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1435, file: !1436, line: 625, baseType: !1682, size: 64, offset: 896)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!1659, !1233, !51}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1435, file: !1436, line: 633, baseType: !1686, size: 64, offset: 960)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!1498, !1233, !51}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1234, file: !127, line: 697, baseType: !51, size: 64, offset: 1024)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1234, file: !127, line: 699, baseType: !607, size: 64, offset: 1088)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1234, file: !127, line: 700, baseType: !32, size: 64, offset: 1152)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1234, file: !127, line: 711, baseType: !633, size: 64, offset: 1216)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1234, file: !127, line: 717, baseType: !1659, size: 64, offset: 1280)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1234, file: !127, line: 722, baseType: !1695, offset: 1344)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !127, line: 570, elements: !1267)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1203, file: !1181, line: 90, baseType: !1697, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1203, file: !1181, line: 91, baseType: !1699, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1171, file: !1118, line: 120, baseType: !1701, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1704, !1141}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1706)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !151, line: 39, size: 384, elements: !1707)
!1707 = !{!1708, !1709, !1713, !1717, !1723, !1727}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1706, file: !151, line: 40, baseType: !150, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1706, file: !151, line: 41, baseType: !1710, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!832}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1706, file: !151, line: 42, baseType: !1714, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!32}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1706, file: !151, line: 43, baseType: !1718, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1362, !1721}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !151, line: 19, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1706, file: !151, line: 44, baseType: !1724, size: 64, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!1362}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1706, file: !151, line: 45, baseType: !1728, size: 64, offset: 320)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !32}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1171, file: !1118, line: 121, baseType: !1732, size: 64, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!1362, !1141}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1171, file: !1118, line: 122, baseType: !1736, size: 64, offset: 320)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !1141, !1028, !1029}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1117, file: !1118, line: 70, baseType: !1740, size: 64, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1742, line: 190, size: 1152, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1865, !1866, !1867, !1868, !1869, !1872}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1741, file: !1742, line: 191, baseType: !61, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1741, file: !1742, line: 192, baseType: !61, size: 32, offset: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1741, file: !1742, line: 202, baseType: !1740, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1741, file: !1742, line: 203, baseType: !28, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1741, file: !1742, line: 205, baseType: !765, size: 192, align: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1741, file: !1742, line: 207, baseType: !1362, size: 64, offset: 384)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1741, file: !1742, line: 208, baseType: !7, size: 32, offset: 448)
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !1742, line: 209, baseType: !1752, size: 256, offset: 512)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !1742, line: 209, size: 256, elements: !1753)
!1753 = !{!1754, !1763, !1767}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1752, file: !1742, line: 210, baseType: !1755, size: 256)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1742, line: 153, size: 256, elements: !1756)
!1756 = !{!1757, !1758, !1759, !1762}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1755, file: !1742, line: 154, baseType: !51, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1755, file: !1742, line: 156, baseType: !1045, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1755, file: !1742, line: 162, baseType: !1760, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1742, line: 162, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1755, file: !1742, line: 167, baseType: !51, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1752, file: !1742, line: 211, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1742, line: 170, size: 64, elements: !1765)
!1765 = !{!1766}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1764, file: !1742, line: 171, baseType: !1740, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1752, file: !1742, line: 212, baseType: !1768, size: 256)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1742, line: 174, size: 256, elements: !1769)
!1769 = !{!1770, !1860, !1863, !1864}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1768, file: !1742, line: 175, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1773)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1742, line: 271, size: 768, elements: !1774)
!1774 = !{!1775, !1833, !1837, !1838, !1839, !1840, !1841, !1845, !1846, !1847, !1848, !1856}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1773, file: !1742, line: 276, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!34, !1779}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1742, line: 251, size: 1216, elements: !1781)
!1781 = !{!1782, !1783, !1784, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1780, file: !1742, line: 253, baseType: !1740, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1780, file: !1742, line: 254, baseType: !607, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1780, file: !1742, line: 255, baseType: !1785, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1787, line: 17, size: 960, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1818, !1819, !1822}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1786, file: !1787, line: 18, baseType: !531, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1786, file: !1787, line: 19, baseType: !47, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1786, file: !1787, line: 20, baseType: !47, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1786, file: !1787, line: 21, baseType: !47, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1786, file: !1787, line: 22, baseType: !47, size: 64, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1786, file: !1787, line: 23, baseType: !53, size: 64, offset: 320)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1786, file: !1787, line: 24, baseType: !53, size: 64, offset: 384)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1786, file: !1787, line: 25, baseType: !642, size: 256, offset: 448)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1786, file: !1787, line: 26, baseType: !1798, size: 64, offset: 704)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1800)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1787, line: 32, size: 256, elements: !1801)
!1801 = !{!1802, !1806, !1810, !1814}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1800, file: !1787, line: 33, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!32, !1785, !52}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1800, file: !1787, line: 34, baseType: !1807, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null, !1785, !32}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1800, file: !1787, line: 35, baseType: !1811, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!32, !1785, !32, !52}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1800, file: !1787, line: 36, baseType: !1815, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!34, !1785, !32}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1786, file: !1787, line: 27, baseType: !34, size: 32, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1786, file: !1787, line: 28, baseType: !1820, size: 64, offset: 832)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1786, file: !1787, line: 29, baseType: !32, size: 64, offset: 896)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1780, file: !1742, line: 256, baseType: !32, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1780, file: !1742, line: 259, baseType: !642, size: 256, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1780, file: !1742, line: 260, baseType: !642, size: 256, offset: 512)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1780, file: !1742, line: 261, baseType: !34, size: 32, offset: 768)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1780, file: !1742, line: 262, baseType: !109, size: 128, offset: 832)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1780, file: !1742, line: 263, baseType: !531, size: 64, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1780, file: !1742, line: 265, baseType: !47, size: 64, offset: 1024)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1780, file: !1742, line: 266, baseType: !832, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1780, file: !1742, line: 267, baseType: !832, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1780, file: !1742, line: 268, baseType: !1433, size: 64, offset: 1152)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1773, file: !1742, line: 277, baseType: !1834, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !1779}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1773, file: !1742, line: 290, baseType: !1815, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1773, file: !1742, line: 292, baseType: !1803, size: 64, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1773, file: !1742, line: 293, baseType: !1811, size: 64, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1773, file: !1742, line: 294, baseType: !1807, size: 64, offset: 320)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1773, file: !1742, line: 296, baseType: !1842, size: 64, offset: 384)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!1187, !1779, !531, !47, !53}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1773, file: !1742, line: 306, baseType: !47, size: 64, offset: 448)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1773, file: !1742, line: 313, baseType: !832, size: 8, offset: 512)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1773, file: !1742, line: 314, baseType: !1842, size: 64, offset: 576)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1773, file: !1742, line: 317, baseType: !1849, size: 64, offset: 640)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!1852, !1779, !1854}
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1853, line: 59, baseType: !7)
!1853 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !176, line: 61, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1773, file: !1742, line: 320, baseType: !1857, size: 64, offset: 704)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!34, !1779, !1233}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1768, file: !1742, line: 176, baseType: !1861, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1742, line: 35, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1768, file: !1742, line: 177, baseType: !53, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1768, file: !1742, line: 178, baseType: !1740, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1741, file: !1742, line: 215, baseType: !32, size: 64, offset: 768)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1741, file: !1742, line: 221, baseType: !463, size: 64, offset: 832)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1741, file: !1742, line: 223, baseType: !38, size: 16, offset: 896)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1741, file: !1742, line: 224, baseType: !36, size: 16, offset: 912)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1741, file: !1742, line: 225, baseType: !1870, size: 64, offset: 960)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1742, line: 36, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1741, file: !1742, line: 227, baseType: !620, size: 128, align: 64, offset: 1024)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1117, file: !1118, line: 71, baseType: !1874, size: 32, offset: 448)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1875, line: 19, size: 32, elements: !1876)
!1875 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1876 = !{!1877}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1874, file: !1875, line: 20, baseType: !687, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1117, file: !1118, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1117, file: !1118, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1117, file: !1118, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1117, file: !1118, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1117, file: !1118, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1114, file: !120, line: 47, baseType: !1104, size: 64, offset: 512)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1114, file: !120, line: 48, baseType: !1123, size: 64, offset: 576)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1114, file: !120, line: 49, baseType: !1886, size: 64, offset: 640)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !120, line: 49, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1114, file: !120, line: 50, baseType: !1002, size: 64, offset: 704)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1105, file: !120, line: 418, baseType: !1890, size: 64, offset: 1408)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !120, line: 53, size: 448, elements: !1892)
!1892 = !{!1893, !1894, !1899, !1903, !1907, !1911}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1891, file: !120, line: 54, baseType: !1191, size: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1891, file: !120, line: 55, baseType: !1895, size: 64, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!1187, !1890, !1898, !531}
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1891, file: !120, line: 57, baseType: !1900, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!1187, !1890, !1898, !28, !47}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1891, file: !120, line: 59, baseType: !1904, size: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1104, !28}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1891, file: !120, line: 60, baseType: !1908, size: 64, offset: 320)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!34, !1104}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1891, file: !120, line: 61, baseType: !1912, size: 64, offset: 384)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !1104}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1105, file: !120, line: 419, baseType: !28, size: 64, offset: 1472)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1105, file: !120, line: 420, baseType: !28, size: 64, offset: 1536)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1105, file: !120, line: 421, baseType: !1123, size: 64, offset: 1600)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1105, file: !120, line: 424, baseType: !1919, size: 64, offset: 1664)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1921)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !120, line: 424, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1105, file: !120, line: 425, baseType: !1923, size: 64, offset: 1728)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !758)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1105, file: !120, line: 426, baseType: !7, size: 32, offset: 1792)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1105, file: !120, line: 435, baseType: !642, size: 256, offset: 1856)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1105, file: !120, line: 437, baseType: !1928, size: 64, offset: 2112)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1930, line: 69, size: 320, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1931 = !{!1932, !1933, !1934, !1951, !1953, !1957, !1958}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1929, file: !1930, line: 70, baseType: !28, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1929, file: !1930, line: 71, baseType: !1104, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1929, file: !1930, line: 72, baseType: !1935, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1937)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1930, line: 47, size: 256, elements: !1938)
!1938 = !{!1939, !1940, !1946, !1950}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1937, file: !1930, line: 49, baseType: !7, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1937, file: !1930, line: 51, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!34, !28, !1944}
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1937, file: !1930, line: 53, baseType: !1947, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!34, !531, !1944}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1937, file: !1930, line: 55, baseType: !1728, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1929, file: !1930, line: 73, baseType: !1952, size: 16, offset: 192)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1929, file: !1930, line: 74, baseType: !1954, size: 8, offset: 208)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !96, line: 16, baseType: !1955)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !98, line: 20, baseType: !1956)
!1956 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1929, file: !1930, line: 75, baseType: !95, size: 8, offset: 216)
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1929, file: !1930, line: 76, baseType: !1959, size: 64, offset: 256)
!1959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1929, file: !1930, line: 76, size: 64, elements: !1960)
!1960 = !{!1961, !1962, !1969}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1959, file: !1930, line: 77, baseType: !32, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1959, file: !1930, line: 78, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1965)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1930, line: 86, size: 128, elements: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1965, file: !1930, line: 87, baseType: !7, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1965, file: !1930, line: 88, baseType: !531, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1959, file: !1930, line: 79, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1930, line: 92, size: 256, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1978, !1979}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1972, file: !1930, line: 94, baseType: !7, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1972, file: !1930, line: 95, baseType: !7, size: 32, offset: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1972, file: !1930, line: 96, baseType: !1977, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1972, file: !1930, line: 97, baseType: !1935, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1972, file: !1930, line: 98, baseType: !32, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1105, file: !120, line: 438, baseType: !7, size: 32, offset: 2176)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1105, file: !120, line: 441, baseType: !7, size: 32, offset: 2208)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1105, file: !120, line: 442, baseType: !1919, size: 64, offset: 2240)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1105, file: !120, line: 443, baseType: !1923, size: 64, offset: 2304)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1105, file: !120, line: 444, baseType: !832, size: 8, offset: 2368)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1105, file: !120, line: 451, baseType: !832, size: 8, offset: 2376)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1105, file: !120, line: 454, baseType: !7, size: 32, offset: 2400)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1105, file: !120, line: 455, baseType: !1988, size: 64, offset: 2432)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1990, line: 23, size: 96, elements: !1991)
!1990 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1991 = !{!1992, !1993, !1994}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1989, file: !1990, line: 24, baseType: !34, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1989, file: !1990, line: 24, baseType: !34, size: 32, offset: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1989, file: !1990, line: 24, baseType: !34, size: 32, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1105, file: !120, line: 458, baseType: !1996, size: 64, offset: 2496)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!34}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1105, file: !120, line: 460, baseType: !2000, size: 4032, align: 512, offset: 2560)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2001, size: 4032, elements: !2017)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !120, line: 362, size: 576, elements: !2002)
!2002 = !{!2003, !2004, !2005}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2001, file: !120, line: 363, baseType: !32, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2001, file: !120, line: 364, baseType: !7, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2001, file: !120, line: 367, baseType: !2006, size: 448, offset: 128)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !120, line: 319, size: 448, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2006, file: !120, line: 320, baseType: !1104, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2006, file: !120, line: 321, baseType: !2010, size: 384, offset: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2011, line: 40, size: 384, elements: !2012)
!2011 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2012 = !{!2013}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2010, file: !2011, line: 41, baseType: !2014, size: 384, align: 64)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 384, align: 64, elements: !2015)
!2015 = !{!2016}
!2016 = !DISubrange(count: 2)
!2017 = !{!2018}
!2018 = !DISubrange(count: 7)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1105, file: !120, line: 463, baseType: !2020, size: 192, offset: 6592)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2021, line: 8, size: 192, elements: !2022)
!2021 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2022 = !{!2023, !2024, !2026}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2020, file: !2021, line: 10, baseType: !7, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2020, file: !2021, line: 11, baseType: !2025, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2020, file: !2021, line: 12, baseType: !2027, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2029, line: 59, size: 48, elements: !2030)
!2029 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2030 = !{!2031, !2032, !2033, !2034, !2035, !2036}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2028, file: !2029, line: 60, baseType: !1379, size: 16)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2028, file: !2029, line: 61, baseType: !1379, size: 16, offset: 16)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2028, file: !2029, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2028, file: !2029, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2028, file: !2029, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2028, file: !2029, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1105, file: !120, line: 465, baseType: !51, size: 64, offset: 6784)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1105, file: !120, line: 469, baseType: !7, size: 32, offset: 6848)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1105, file: !120, line: 470, baseType: !109, size: 128, offset: 6912)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1105, file: !120, line: 471, baseType: !2041, size: 64, offset: 7040)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2043, line: 33, size: 96, elements: !2044)
!2043 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2044 = !{!2045, !2046, !2047, !2048}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2042, file: !2043, line: 37, baseType: !34, size: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2042, file: !2043, line: 43, baseType: !34, size: 32, offset: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2042, file: !2043, line: 45, baseType: !38, size: 16, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2042, file: !2043, line: 47, baseType: !38, size: 16, offset: 80)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1105, file: !120, line: 476, baseType: !2050, size: 64, offset: 7104)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !120, line: 378, size: 256, elements: !2052)
!2052 = !{!2053, !2069, !2070, !2071}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2051, file: !120, line: 379, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2056, line: 204, baseType: !2057)
!2056 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2056, line: 197, size: 192, elements: !2058)
!2058 = !{!2059, !2061, !2062, !2063, !2065, !2067}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2057, file: !2056, line: 198, baseType: !2060, size: 32)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2056, line: 21, baseType: !460)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2057, file: !2056, line: 199, baseType: !99, size: 8, offset: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2057, file: !2056, line: 200, baseType: !99, size: 8, offset: 40)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2057, file: !2056, line: 201, baseType: !2064, size: 16, offset: 48)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2056, line: 17, baseType: !106)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2057, file: !2056, line: 202, baseType: !2066, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2056, line: 16, baseType: !464)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2057, file: !2056, line: 203, baseType: !2068, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2056, line: 22, baseType: !464)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2051, file: !120, line: 380, baseType: !7, size: 32, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2051, file: !120, line: 381, baseType: !531, size: 64, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2051, file: !120, line: 382, baseType: !531, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1105, file: !120, line: 477, baseType: !2051, size: 256, offset: 7168)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1105, file: !120, line: 480, baseType: !2074, size: 64, offset: 7424)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !120, line: 480, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1105, file: !120, line: 483, baseType: !2077, size: 64, offset: 7488)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !120, line: 483, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1105, file: !120, line: 488, baseType: !531, size: 64, offset: 7552)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1105, file: !120, line: 492, baseType: !32, size: 64, offset: 7616)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1105, file: !120, line: 493, baseType: !7, size: 32, offset: 7680)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1105, file: !120, line: 495, baseType: !32, size: 64, offset: 7744)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1105, file: !120, line: 496, baseType: !7, size: 32, offset: 7808)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1105, file: !120, line: 499, baseType: !7, size: 32, offset: 7840)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1105, file: !120, line: 500, baseType: !2086, size: 64, offset: 7872)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2088, line: 45, baseType: !2089)
!2088 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1105, file: !120, line: 503, baseType: !7, size: 32, offset: 7936)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1105, file: !120, line: 504, baseType: !2092, size: 64, offset: 8000)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2095, line: 96, size: 192, elements: !2096)
!2095 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2096 = !{!2097, !2098, !2151, !2154}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2094, file: !2095, line: 97, baseType: !7, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2094, file: !2095, line: 98, baseType: !2099, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2095, line: 24, size: 3072, elements: !2101)
!2101 = !{!2102, !2104, !2105, !2106, !2107, !2120, !2121, !2122, !2123, !2135, !2136, !2137, !2148, !2149, !2150}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2100, file: !2095, line: 26, baseType: !2103, size: 128)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 128, elements: !2015)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2100, file: !2095, line: 27, baseType: !2103, size: 128, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2100, file: !2095, line: 28, baseType: !34, size: 32, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2100, file: !2095, line: 31, baseType: !71, size: 32, align: 512, offset: 512)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2100, file: !2095, line: 32, baseType: !2108, size: 960, offset: 576)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2109, line: 206, size: 960, elements: !2110)
!2109 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2110 = !{!2111, !2112, !2115, !2117, !2118, !2119}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2108, file: !2109, line: 207, baseType: !623, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2108, file: !2109, line: 208, baseType: !2113, size: 256, offset: 64)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2114, size: 256, elements: !705)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2108, file: !2109, line: 209, baseType: !2116, size: 256, offset: 320)
!2116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !705)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2108, file: !2109, line: 213, baseType: !1065, size: 64, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2108, file: !2109, line: 215, baseType: !1067, size: 256, offset: 640)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2108, file: !2109, line: 216, baseType: !95, size: 8, offset: 896)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2100, file: !2095, line: 33, baseType: !51, size: 64, offset: 1536)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2100, file: !2095, line: 34, baseType: !51, size: 64, offset: 1600)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2100, file: !2095, line: 35, baseType: !832, size: 8, offset: 1664)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2100, file: !2095, line: 36, baseType: !2124, size: 320, offset: 1728)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2125, line: 11, size: 320, elements: !2126)
!2125 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2126 = !{!2127, !2128, !2129, !2134}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2124, file: !2125, line: 16, baseType: !700, size: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2124, file: !2125, line: 17, baseType: !51, size: 64, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2124, file: !2125, line: 18, baseType: !2130, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{null, !2133}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2124, file: !2125, line: 19, baseType: !459, size: 32, offset: 256)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2100, file: !2095, line: 37, baseType: !964, size: 256, offset: 2048)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2100, file: !2095, line: 38, baseType: !620, size: 128, align: 64, offset: 2304)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2100, file: !2095, line: 39, baseType: !2138, size: 64, offset: 2432)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2095, line: 49, size: 768, elements: !2140)
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2147}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2139, file: !2095, line: 50, baseType: !71, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2139, file: !2095, line: 51, baseType: !2116, size: 256, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2139, file: !2095, line: 53, baseType: !2116, size: 256, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2139, file: !2095, line: 54, baseType: !51, size: 64, offset: 576)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2139, file: !2095, line: 55, baseType: !2138, size: 64, offset: 640)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2139, file: !2095, line: 56, baseType: !34, size: 32, offset: 704)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2139, file: !2095, line: 57, baseType: !34, size: 32, offset: 736)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2100, file: !2095, line: 40, baseType: !51, size: 64, offset: 2496)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2100, file: !2095, line: 42, baseType: !34, size: 32, offset: 2560)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2100, file: !2095, line: 43, baseType: !2093, size: 64, offset: 2624)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2094, file: !2095, line: 99, baseType: !2152, offset: 128)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2153, line: 211, elements: !1267)
!2153 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2094, file: !2095, line: 100, baseType: !2155, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2095, line: 63, size: 3008, elements: !2157)
!2157 = !{!2158, !2159, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2189}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2156, file: !2095, line: 64, baseType: !2138, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2156, file: !2095, line: 65, baseType: !2160, size: 192, offset: 64)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2138, size: 192, elements: !679)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2156, file: !2095, line: 67, baseType: !34, size: 32, offset: 256)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2156, file: !2095, line: 68, baseType: !642, size: 256, offset: 320)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2156, file: !2095, line: 69, baseType: !71, size: 32, offset: 576)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2156, file: !2095, line: 70, baseType: !642, size: 256, offset: 640)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2156, file: !2095, line: 71, baseType: !51, size: 64, offset: 896)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2156, file: !2095, line: 72, baseType: !51, size: 64, offset: 960)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2156, file: !2095, line: 73, baseType: !51, size: 64, offset: 1024)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2156, file: !2095, line: 74, baseType: !51, size: 64, offset: 1088)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2156, file: !2095, line: 75, baseType: !51, size: 64, offset: 1152)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2156, file: !2095, line: 76, baseType: !51, size: 64, offset: 1216)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2156, file: !2095, line: 77, baseType: !51, size: 64, offset: 1280)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2156, file: !2095, line: 78, baseType: !51, size: 64, offset: 1344)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2156, file: !2095, line: 79, baseType: !832, size: 8, offset: 1408)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2156, file: !2095, line: 80, baseType: !51, size: 64, offset: 1472)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2156, file: !2095, line: 81, baseType: !642, size: 256, offset: 1536)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2156, file: !2095, line: 82, baseType: !1003, size: 256, offset: 1792)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2156, file: !2095, line: 84, baseType: !61, size: 32, offset: 2048)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2156, file: !2095, line: 87, baseType: !51, size: 64, offset: 2112)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2156, file: !2095, line: 88, baseType: !51, size: 64, offset: 2176)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2156, file: !2095, line: 89, baseType: !2181, size: 704, offset: 2240)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !965, line: 111, size: 704, elements: !2182)
!2182 = !{!2183, !2184, !2185, !2188}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2181, file: !965, line: 112, baseType: !964, size: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2181, file: !965, line: 113, baseType: !2124, size: 320, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2181, file: !965, line: 116, baseType: !2186, size: 64, offset: 576)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !965, line: 18, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2181, file: !965, line: 117, baseType: !34, size: 32, offset: 640)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2156, file: !2095, line: 90, baseType: !2093, size: 64, offset: 2944)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1105, file: !120, line: 515, baseType: !2191, size: 64, offset: 8064)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2193, line: 117, size: 128, elements: !2194)
!2193 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2194 = !{!2195, !2196, !2197}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2192, file: !2193, line: 118, baseType: !758, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2192, file: !2193, line: 119, baseType: !758, size: 32, offset: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2192, file: !2193, line: 120, baseType: !1065, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1105, file: !120, line: 516, baseType: !7, size: 32, offset: 8128)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1105, file: !120, line: 519, baseType: !7, size: 32, offset: 8160)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1105, file: !120, line: 520, baseType: !2201, size: 64, offset: 8192)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1105, file: !120, line: 523, baseType: !2203, size: 64, offset: 8256)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !120, line: 523, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1105, file: !120, line: 524, baseType: !7, size: 32, offset: 8320)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1105, file: !120, line: 525, baseType: !2208, size: 64, offset: 8384)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !120, line: 525, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1105, file: !120, line: 526, baseType: !7, size: 32, offset: 8448)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1105, file: !120, line: 533, baseType: !32, size: 64, offset: 8512)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1105, file: !120, line: 534, baseType: !7, size: 32, offset: 8576)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1105, file: !120, line: 535, baseType: !2215, size: 64, offset: 8640)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1105, file: !120, line: 536, baseType: !7, size: 32, offset: 8704)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1105, file: !120, line: 539, baseType: !34, size: 32, offset: 8736)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1105, file: !120, line: 540, baseType: !2219, size: 64, offset: 8768)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2221, line: 32, size: 64, elements: !2222)
!2221 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2222 = !{!2223, !2224}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2220, file: !2221, line: 33, baseType: !758, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2220, file: !2221, line: 34, baseType: !758, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1105, file: !120, line: 563, baseType: !109, size: 128, offset: 8832)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1105, file: !120, line: 565, baseType: !109, size: 128, offset: 8960)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1105, file: !120, line: 568, baseType: !2228, size: 64, offset: 9088)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1105, file: !120, line: 570, baseType: !61, size: 32, offset: 9152)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1101, file: !176, line: 1916, baseType: !2233, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!53, !607, !53, !34}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1101, file: !176, line: 1917, baseType: !2237, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!1187, !607, !531, !47, !52}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1101, file: !176, line: 1918, baseType: !2241, size: 64, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!1187, !607, !28, !47, !52}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1101, file: !176, line: 1919, baseType: !2245, size: 64, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!1187, !2248, !2353}
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !176, line: 373, size: 384, elements: !2250)
!2250 = !{!2251, !2252, !2253, !2257, !2258, !2259, !2260}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2249, file: !176, line: 374, baseType: !607, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2249, file: !176, line: 375, baseType: !53, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2249, file: !176, line: 376, baseType: !2254, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !2248, !1065}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2249, file: !176, line: 377, baseType: !32, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2249, file: !176, line: 378, baseType: !34, size: 32, offset: 256)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2249, file: !176, line: 379, baseType: !105, size: 16, offset: 288)
!2260 = !DIDerivedType(tag: DW_TAG_member, scope: !2249, file: !176, line: 380, baseType: !2261, size: 64, offset: 320)
!2261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !176, line: 380, size: 64, elements: !2262)
!2262 = !{!2263, !2349}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2261, file: !176, line: 386, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !2266, line: 998, size: 448, elements: !2267)
!2266 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!2267 = !{!2268, !2335, !2336}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !2265, file: !2266, line: 999, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !127, line: 293, size: 1536, elements: !2271)
!2271 = !{!2272, !2302, !2316}
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !127, line: 295, baseType: !2273, size: 512)
!2273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2270, file: !127, line: 295, size: 512, elements: !2274)
!2274 = !{!2275, !2301}
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !2273, file: !127, line: 296, baseType: !2276, size: 448)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2273, file: !127, line: 296, size: 448, elements: !2277)
!2277 = !{!2278, !2279, !2288, !2289, !2290, !2299, !2300}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2276, file: !127, line: 298, baseType: !51, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, scope: !2276, file: !127, line: 299, baseType: !2280, size: 128, offset: 64)
!2280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2276, file: !127, line: 299, size: 128, elements: !2281)
!2281 = !{!2282, !2283}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2280, file: !127, line: 300, baseType: !109, size: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !2280, file: !127, line: 302, baseType: !2284, size: 128)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2280, file: !127, line: 302, size: 128, elements: !2285)
!2285 = !{!2286, !2287}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2284, file: !127, line: 303, baseType: !32, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2284, file: !127, line: 305, baseType: !7, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2276, file: !127, line: 310, baseType: !386, size: 64, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2276, file: !127, line: 311, baseType: !51, size: 64, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, scope: !2276, file: !127, line: 312, baseType: !2291, size: 64, offset: 320)
!2291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2276, file: !127, line: 312, size: 64, elements: !2292)
!2292 = !{!2293, !2294}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2291, file: !127, line: 313, baseType: !32, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2291, file: !127, line: 314, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !127, line: 257, baseType: !2296)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 255, size: 64, elements: !2297)
!2297 = !{!2298}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2296, file: !127, line: 256, baseType: !51, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2276, file: !127, line: 316, baseType: !61, size: 32, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2276, file: !127, line: 317, baseType: !61, size: 32, offset: 416)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2273, file: !127, line: 323, baseType: !1499, size: 512, align: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !127, line: 325, baseType: !2303, size: 512, offset: 512)
!2303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2270, file: !127, line: 325, size: 512, elements: !2304)
!2304 = !{!2305, !2315}
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !2303, file: !127, line: 326, baseType: !2306, size: 320)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2303, file: !127, line: 326, size: 320, elements: !2307)
!2307 = !{!2308, !2309, !2310, !2311, !2312, !2313, !2314}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2306, file: !127, line: 327, baseType: !51, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2306, file: !127, line: 328, baseType: !51, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2306, file: !127, line: 329, baseType: !51, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2306, file: !127, line: 331, baseType: !61, size: 32, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2306, file: !127, line: 332, baseType: !61, size: 32, offset: 224)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2306, file: !127, line: 333, baseType: !61, size: 32, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2306, file: !127, line: 335, baseType: !7, size: 32, offset: 288)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2303, file: !127, line: 339, baseType: !1499, size: 512, align: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !127, line: 341, baseType: !2317, size: 512, offset: 1024)
!2317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2270, file: !127, line: 341, size: 512, elements: !2318)
!2318 = !{!2319, !2328, !2334}
!2319 = !DIDerivedType(tag: DW_TAG_member, scope: !2317, file: !127, line: 342, baseType: !2320, size: 384)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2317, file: !127, line: 342, size: 384, elements: !2321)
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2320, file: !127, line: 343, baseType: !51, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2320, file: !127, line: 344, baseType: !51, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2320, file: !127, line: 346, baseType: !32, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2320, file: !127, line: 347, baseType: !32, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2320, file: !127, line: 348, baseType: !32, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2320, file: !127, line: 349, baseType: !32, size: 64, offset: 320)
!2328 = !DIDerivedType(tag: DW_TAG_member, scope: !2317, file: !127, line: 352, baseType: !2329, size: 256)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2317, file: !127, line: 352, size: 256, elements: !2330)
!2330 = !{!2331, !2332, !2333}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2329, file: !127, line: 353, baseType: !51, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2329, file: !127, line: 354, baseType: !51, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2329, file: !127, line: 356, baseType: !109, size: 128, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2317, file: !127, line: 359, baseType: !1499, size: 512, align: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !2265, file: !2266, line: 1000, baseType: !34, size: 32, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2265, file: !2266, line: 1001, baseType: !2337, size: 320, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !67, line: 14, baseType: !2338)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !67, line: 30, size: 320, elements: !2339)
!2339 = !{!2340, !2341, !2342, !2348}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2338, file: !67, line: 31, baseType: !7, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2338, file: !67, line: 32, baseType: !32, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2338, file: !67, line: 33, baseType: !2343, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !67, line: 16, baseType: !2344)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!34, !2347, !7, !34, !32}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2338, file: !67, line: 34, baseType: !109, size: 128, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2261, file: !176, line: 395, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!1187, !32}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !176, line: 69, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1101, file: !176, line: 1920, baseType: !2245, size: 64, offset: 320)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1101, file: !176, line: 1921, baseType: !2357, size: 64, offset: 384)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!34, !2248, !2360, !7}
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !176, line: 53, flags: DIFlagFwdDecl)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1101, file: !176, line: 1923, baseType: !2363, size: 64, offset: 448)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!34, !607, !2366}
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !176, line: 1858, size: 128, elements: !2368)
!2368 = !{!2369, !2374}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2367, file: !176, line: 1859, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !176, line: 1855, baseType: !2371)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!832, !2366, !28, !34, !53, !463, !7}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2367, file: !176, line: 1860, baseType: !53, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1101, file: !176, line: 1924, baseType: !2376, size: 64, offset: 512)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!1852, !607, !1854}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1101, file: !176, line: 1925, baseType: !2380, size: 64, offset: 576)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!1065, !607, !7, !51}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1101, file: !176, line: 1926, baseType: !2380, size: 64, offset: 640)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1101, file: !176, line: 1927, baseType: !2385, size: 64, offset: 704)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!34, !607, !1233}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1101, file: !176, line: 1928, baseType: !51, size: 64, offset: 768)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1101, file: !176, line: 1929, baseType: !2390, size: 64, offset: 832)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!34, !390, !607}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1101, file: !176, line: 1930, baseType: !2394, size: 64, offset: 896)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!34, !607, !2397}
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !176, line: 1061, baseType: !32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1101, file: !176, line: 1931, baseType: !2390, size: 64, offset: 960)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1101, file: !176, line: 1932, baseType: !2400, size: 64, offset: 1024)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!34, !607, !53, !53, !34}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1101, file: !176, line: 1933, baseType: !2404, size: 64, offset: 1088)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!34, !34, !607, !34}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1101, file: !176, line: 1934, baseType: !2408, size: 64, offset: 1152)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!34, !607, !34, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !176, line: 1063, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1101, file: !176, line: 1935, baseType: !1271, size: 64, offset: 1216)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1101, file: !176, line: 1936, baseType: !2415, size: 64, offset: 1280)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!34, !34}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1101, file: !176, line: 1937, baseType: !2408, size: 64, offset: 1344)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1101, file: !176, line: 1938, baseType: !2420, size: 64, offset: 1408)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!1187, !2423, !607, !52, !47, !7}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2425, line: 59, flags: DIFlagFwdDecl)
!2425 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1101, file: !176, line: 1939, baseType: !2427, size: 64, offset: 1472)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!1187, !607, !52, !2423, !47, !7}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1101, file: !176, line: 1940, baseType: !2431, size: 64, offset: 1536)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{null, !607}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1101, file: !176, line: 1941, baseType: !2435, size: 64, offset: 1600)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!34, !607, !34, !2438, !2439}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1101, file: !176, line: 1942, baseType: !2441, size: 64, offset: 1664)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!1065, !607, !34, !53, !53}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1101, file: !176, line: 1944, baseType: !2445, size: 64, offset: 1728)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{null, !1785, !607}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1101, file: !176, line: 1948, baseType: !2449, size: 64, offset: 1792)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!1187, !607, !53, !607, !53, !47, !7}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1101, file: !176, line: 1950, baseType: !2453, size: 64, offset: 1856)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!53, !607, !53, !607, !53, !53, !7}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1101, file: !176, line: 1953, baseType: !2400, size: 64, offset: 1920)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1101, file: !176, line: 1954, baseType: !2458, size: 64, offset: 1984)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!34, !2461, !7}
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !176, line: 1911, flags: DIFlagFwdDecl)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1101, file: !176, line: 1955, baseType: !2464, size: 64, offset: 2048)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!34, !2461, !2360, !7}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !608, file: !176, line: 1018, baseType: !463, size: 64, offset: 1472)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !608, file: !176, line: 1020, baseType: !32, size: 64, offset: 1536)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !608, file: !176, line: 1023, baseType: !32, size: 64, offset: 1600)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !608, file: !176, line: 1027, baseType: !2471, size: 64, offset: 1664)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !608, file: !176, line: 1029, baseType: !386, size: 64, offset: 1728)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !608, file: !176, line: 1030, baseType: !2474, size: 32, offset: 1792)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2475, line: 8, baseType: !459)
!2475 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !608, file: !176, line: 1031, baseType: !2474, size: 32, offset: 1824)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !583, file: !6, line: 72, baseType: !47, size: 64, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !583, file: !6, line: 73, baseType: !34, size: 32, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !568, file: !6, line: 119, baseType: !2480, size: 64, offset: 192)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!34, !562, !32}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !568, file: !6, line: 120, baseType: !559, size: 64, offset: 256)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !568, file: !6, line: 121, baseType: !559, size: 64, offset: 320)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !563, file: !6, line: 92, baseType: !642, size: 256, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !563, file: !6, line: 93, baseType: !553, size: 64, offset: 320)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !563, file: !6, line: 94, baseType: !32, size: 64, offset: 384)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !563, file: !6, line: 95, baseType: !32, size: 64, offset: 448)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !563, file: !6, line: 96, baseType: !425, size: 64, offset: 512)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !563, file: !6, line: 97, baseType: !915, size: 64, offset: 576)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !563, file: !6, line: 98, baseType: !2492, size: 64, offset: 640)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !752, line: 34, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !563, file: !6, line: 99, baseType: !723, size: 64, offset: 704)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !563, file: !6, line: 100, baseType: !2496, size: 128, offset: 768)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !6, line: 76, size: 128, elements: !2497)
!2497 = !{!2498, !2499}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !2496, file: !6, line: 77, baseType: !28, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !2496, file: !6, line: 78, baseType: !2500, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !6, line: 173, size: 640, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2501, file: !6, line: 174, baseType: !687, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2501, file: !6, line: 175, baseType: !95, size: 8, offset: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2501, file: !6, line: 176, baseType: !95, size: 8, offset: 40)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !2501, file: !6, line: 177, baseType: !95, size: 8, offset: 48)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2501, file: !6, line: 178, baseType: !1104, size: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2501, file: !6, line: 179, baseType: !2509, size: 512, offset: 128)
!2509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 512, elements: !2510)
!2510 = !{!2511}
!2511 = !DISubrange(count: 8)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !563, file: !6, line: 101, baseType: !28, size: 64, offset: 896)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !563, file: !6, line: 102, baseType: !32, size: 64, offset: 960)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !563, file: !6, line: 103, baseType: !32, size: 64, offset: 1024)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !563, file: !6, line: 104, baseType: !7, size: 32, offset: 1088)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !563, file: !6, line: 105, baseType: !7, size: 32, offset: 1120)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !563, file: !6, line: 106, baseType: !7, size: 32, offset: 1152)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !563, file: !6, line: 107, baseType: !156, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !563, file: !6, line: 108, baseType: !161, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !563, file: !6, line: 109, baseType: !832, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !563, file: !6, line: 110, baseType: !832, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !563, file: !6, line: 111, baseType: !832, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !563, file: !6, line: 112, baseType: !832, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !554, file: !176, line: 2377, baseType: !2525, size: 64, offset: 192)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2527)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !2528, line: 39, size: 256, elements: !2529)
!2528 = !DIFile(filename: "./include/linux/fs_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7e6f8b2e05f10a6300994e1bfb8d6d3")
!2529 = !{!2530, !2531, !2548, !2549, !2550}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2527, file: !2528, line: 40, baseType: !28, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2527, file: !2528, line: 41, baseType: !2532, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "fs_param_type", file: !2528, line: 22, baseType: !2534)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!34, !2536, !2525, !582, !2537}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parse_result", file: !2528, line: 53, size: 128, elements: !2539)
!2539 = !{!2540, !2541}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "negated", scope: !2538, file: !2528, line: 54, baseType: !832, size: 8)
!2541 = !DIDerivedType(tag: DW_TAG_member, scope: !2538, file: !2528, line: 55, baseType: !2542, size: 64, offset: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2538, file: !2528, line: 55, size: 64, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !2542, file: !2528, line: 56, baseType: !832, size: 8)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "int_32", scope: !2542, file: !2528, line: 57, baseType: !34, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "uint_32", scope: !2542, file: !2528, line: 58, baseType: !7, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "uint_64", scope: !2542, file: !2528, line: 59, baseType: !463, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !2527, file: !2528, line: 42, baseType: !95, size: 8, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2527, file: !2528, line: 43, baseType: !38, size: 16, offset: 144)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2527, file: !2528, line: 47, baseType: !1362, size: 64, offset: 192)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !554, file: !176, line: 2378, baseType: !2552, size: 64, offset: 256)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!425, !553, !34, !28, !32}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !554, file: !176, line: 2380, baseType: !2556, size: 64, offset: 320)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{null, !542}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !554, file: !176, line: 2381, baseType: !1104, size: 64, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !176, line: 2382, baseType: !553, size: 64, offset: 448)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !554, file: !176, line: 2383, baseType: !696, size: 64, offset: 512)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !554, file: !176, line: 2385, baseType: !2563, offset: 576)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2153, line: 206, elements: !1267)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !554, file: !176, line: 2386, baseType: !2563, offset: 576)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !554, file: !176, line: 2387, baseType: !2563, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !554, file: !176, line: 2388, baseType: !2567, offset: 576)
!2567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2563, elements: !679)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !554, file: !176, line: 2390, baseType: !2563, offset: 576)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !554, file: !176, line: 2391, baseType: !2563, offset: 576)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !554, file: !176, line: 2392, baseType: !2563, offset: 576)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !554, file: !176, line: 2393, baseType: !2563, offset: 576)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !543, file: !176, line: 1197, baseType: !2573, size: 64, offset: 384)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2575)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !176, line: 2057, size: 1664, elements: !2576)
!2576 = !{!2577, !2581, !2585, !2586, !2590, !2614, !2618, !2619, !2620, !2624, !2628, !2632, !2633, !2634, !2640, !2644, !2645, !2649, !2650, !2651, !2652, !2656, !2660, !2707, !2722, !2723}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2575, file: !176, line: 2058, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!390, !542}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2575, file: !176, line: 2059, baseType: !2582, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{null, !390}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2575, file: !176, line: 2060, baseType: !2582, size: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2575, file: !176, line: 2062, baseType: !2587, size: 64, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{null, !390, !34}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2575, file: !176, line: 2063, baseType: !2591, size: 64, offset: 256)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!34, !390, !2594}
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !171, line: 42, size: 384, elements: !2596)
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !2595, file: !171, line: 43, baseType: !1065, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !2595, file: !171, line: 45, baseType: !1065, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !2595, file: !171, line: 52, baseType: !53, size: 64, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !2595, file: !171, line: 53, baseType: !53, size: 64, offset: 192)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !2595, file: !171, line: 55, baseType: !170, size: 32, offset: 256)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !2595, file: !171, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !2595, file: !171, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !2595, file: !171, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !2595, file: !171, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !2595, file: !171, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !2595, file: !171, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !2595, file: !171, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !2595, file: !171, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !2595, file: !171, line: 78, baseType: !2611, size: 64, offset: 320)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !171, line: 78, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2575, file: !176, line: 2064, baseType: !2615, size: 64, offset: 320)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!34, !390}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2575, file: !176, line: 2065, baseType: !2582, size: 64, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2575, file: !176, line: 2066, baseType: !2556, size: 64, offset: 448)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2575, file: !176, line: 2067, baseType: !2621, size: 64, offset: 512)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!34, !542, !34}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2575, file: !176, line: 2068, baseType: !2625, size: 64, offset: 576)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!34, !542, !175}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2575, file: !176, line: 2069, baseType: !2629, size: 64, offset: 640)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!34, !542}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2575, file: !176, line: 2070, baseType: !2625, size: 64, offset: 704)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2575, file: !176, line: 2071, baseType: !2629, size: 64, offset: 768)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2575, file: !176, line: 2072, baseType: !2635, size: 64, offset: 832)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!34, !425, !2638}
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !176, line: 62, flags: DIFlagFwdDecl)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2575, file: !176, line: 2073, baseType: !2641, size: 64, offset: 896)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!34, !542, !2025, !531}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2575, file: !176, line: 2074, baseType: !2556, size: 64, offset: 960)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2575, file: !176, line: 2076, baseType: !2646, size: 64, offset: 1024)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!34, !1785, !425}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2575, file: !176, line: 2077, baseType: !2646, size: 64, offset: 1088)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2575, file: !176, line: 2078, baseType: !2646, size: 64, offset: 1152)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2575, file: !176, line: 2079, baseType: !2646, size: 64, offset: 1216)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2575, file: !176, line: 2081, baseType: !2653, size: 64, offset: 1280)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!1187, !542, !34, !531, !47, !53}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2575, file: !176, line: 2082, baseType: !2657, size: 64, offset: 1344)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!1187, !542, !34, !28, !47, !53}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2575, file: !176, line: 2083, baseType: !2661, size: 64, offset: 1408)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!2664, !390}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !181, line: 296, size: 1664, elements: !2667)
!2667 = !{!2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2692, !2693, !2694}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2666, file: !181, line: 297, baseType: !700, size: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2666, file: !181, line: 298, baseType: !109, size: 128, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2666, file: !181, line: 299, baseType: !109, size: 128, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2666, file: !181, line: 300, baseType: !109, size: 128, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2666, file: !181, line: 301, baseType: !642, size: 256, offset: 512)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2666, file: !181, line: 302, baseType: !71, size: 32, offset: 768)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2666, file: !181, line: 303, baseType: !61, size: 32, offset: 800)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2666, file: !181, line: 304, baseType: !542, size: 64, offset: 832)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2666, file: !181, line: 305, baseType: !2677, size: 64, offset: 896)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !181, line: 68, size: 64, elements: !2678)
!2678 = !{!2679, !2691}
!2679 = !DIDerivedType(tag: DW_TAG_member, scope: !2677, file: !181, line: 69, baseType: !2680, size: 32)
!2680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2677, file: !181, line: 69, size: 32, elements: !2681)
!2681 = !{!2682, !2683, !2684}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2680, file: !181, line: 70, baseType: !396, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2680, file: !181, line: 71, baseType: !405, size: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2680, file: !181, line: 72, baseType: !2685, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2686, line: 24, baseType: !2687)
!2686 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2686, line: 22, size: 32, elements: !2688)
!2688 = !{!2689}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2687, file: !2686, line: 23, baseType: !2690, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2686, line: 20, baseType: !402)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2677, file: !181, line: 74, baseType: !180, size: 32, offset: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2666, file: !181, line: 306, baseType: !53, size: 64, offset: 960)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2666, file: !181, line: 307, baseType: !51, size: 64, offset: 1024)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2666, file: !181, line: 308, baseType: !2695, size: 576, offset: 1088)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !181, line: 205, size: 576, elements: !2696)
!2696 = !{!2697, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2695, file: !181, line: 206, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !181, line: 66, baseType: !55)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2695, file: !181, line: 207, baseType: !2698, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2695, file: !181, line: 208, baseType: !2698, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2695, file: !181, line: 209, baseType: !2698, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2695, file: !181, line: 210, baseType: !2698, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2695, file: !181, line: 211, baseType: !2698, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2695, file: !181, line: 212, baseType: !2698, size: 64, offset: 384)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2695, file: !181, line: 213, baseType: !789, size: 64, offset: 448)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2695, file: !181, line: 214, baseType: !789, size: 64, offset: 512)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2575, file: !176, line: 2085, baseType: !2708, size: 64, offset: 1472)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!1065, !542, !2711}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2713, line: 15, size: 256, elements: !2714)
!2713 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2714 = !{!2715, !2716, !2717, !2718, !2719}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2712, file: !2713, line: 16, baseType: !1468, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2712, file: !2713, line: 19, baseType: !34, size: 32, offset: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2712, file: !2713, line: 26, baseType: !51, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2712, file: !2713, line: 33, baseType: !51, size: 64, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2712, file: !2713, line: 36, baseType: !2720, size: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2713, line: 36, flags: DIFlagFwdDecl)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2575, file: !176, line: 2087, baseType: !2708, size: 64, offset: 1536)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2575, file: !176, line: 2089, baseType: !2556, size: 64, offset: 1600)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !543, file: !176, line: 1198, baseType: !2725, size: 64, offset: 448)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2727)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !181, line: 324, size: 704, elements: !2728)
!2728 = !{!2729, !2733, !2737, !2741, !2742, !2743, !2744, !2745, !2750, !2755, !2759}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2727, file: !181, line: 325, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!34, !2665}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2727, file: !181, line: 326, baseType: !2734, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!2665, !542, !34}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2727, file: !181, line: 327, baseType: !2738, size: 64, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{null, !2665}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2727, file: !181, line: 328, baseType: !2730, size: 64, offset: 192)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2727, file: !181, line: 329, baseType: !2730, size: 64, offset: 256)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2727, file: !181, line: 330, baseType: !2730, size: 64, offset: 320)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2727, file: !181, line: 331, baseType: !2621, size: 64, offset: 384)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2727, file: !181, line: 334, baseType: !2746, size: 64, offset: 448)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!2749, !390}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2727, file: !181, line: 335, baseType: !2751, size: 64, offset: 512)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!34, !390, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2727, file: !181, line: 337, baseType: !2756, size: 64, offset: 576)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!34, !390, !2749}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2727, file: !181, line: 339, baseType: !2760, size: 64, offset: 640)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!34, !542, !2763}
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !543, file: !176, line: 1199, baseType: !2765, size: 64, offset: 512)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2767)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !181, line: 430, size: 704, elements: !2768)
!2768 = !{!2769, !2775, !2776, !2780, !2781, !2782, !2797, !2820, !2824, !2825, !2848}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2767, file: !181, line: 431, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!34, !542, !34, !34, !2773}
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2767, file: !181, line: 432, baseType: !2621, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2767, file: !181, line: 433, baseType: !2777, size: 64, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!34, !542, !7}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2767, file: !181, line: 434, baseType: !2777, size: 64, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2767, file: !181, line: 435, baseType: !2621, size: 64, offset: 256)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2767, file: !181, line: 436, baseType: !2783, size: 64, offset: 320)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!34, !542, !34, !2786}
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !181, line: 417, size: 256, elements: !2788)
!2788 = !{!2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2787, file: !181, line: 418, baseType: !34, size: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2787, file: !181, line: 419, baseType: !7, size: 32, offset: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2787, file: !181, line: 420, baseType: !7, size: 32, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2787, file: !181, line: 422, baseType: !7, size: 32, offset: 96)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2787, file: !181, line: 423, baseType: !7, size: 32, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2787, file: !181, line: 424, baseType: !7, size: 32, offset: 160)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2787, file: !181, line: 425, baseType: !7, size: 32, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2787, file: !181, line: 426, baseType: !7, size: 32, offset: 224)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2767, file: !181, line: 437, baseType: !2798, size: 64, offset: 384)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!34, !542, !2677, !2801}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !181, line: 345, size: 960, elements: !2803)
!2803 = !{!2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2802, file: !181, line: 346, baseType: !34, size: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2802, file: !181, line: 347, baseType: !463, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2802, file: !181, line: 348, baseType: !463, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2802, file: !181, line: 349, baseType: !463, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2802, file: !181, line: 350, baseType: !463, size: 64, offset: 256)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2802, file: !181, line: 351, baseType: !463, size: 64, offset: 320)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2802, file: !181, line: 352, baseType: !463, size: 64, offset: 384)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2802, file: !181, line: 353, baseType: !639, size: 64, offset: 448)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2802, file: !181, line: 355, baseType: !639, size: 64, offset: 512)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2802, file: !181, line: 356, baseType: !34, size: 32, offset: 576)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2802, file: !181, line: 357, baseType: !34, size: 32, offset: 608)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2802, file: !181, line: 358, baseType: !463, size: 64, offset: 640)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2802, file: !181, line: 359, baseType: !463, size: 64, offset: 704)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2802, file: !181, line: 360, baseType: !463, size: 64, offset: 768)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2802, file: !181, line: 361, baseType: !639, size: 64, offset: 832)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2802, file: !181, line: 362, baseType: !34, size: 32, offset: 896)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2767, file: !181, line: 438, baseType: !2821, size: 64, offset: 448)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!34, !542, !2763, !2801}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2767, file: !181, line: 440, baseType: !2798, size: 64, offset: 512)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2767, file: !181, line: 441, baseType: !2826, size: 64, offset: 576)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!34, !542, !2829}
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !181, line: 411, size: 1408, elements: !2831)
!2831 = !{!2832, !2833}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2830, file: !181, line: 412, baseType: !7, size: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2830, file: !181, line: 413, baseType: !2834, size: 1344, offset: 64)
!2834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2835, size: 1344, elements: !679)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !181, line: 397, size: 448, elements: !2836)
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2847}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2835, file: !181, line: 398, baseType: !7, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2835, file: !181, line: 399, baseType: !7, size: 32, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2835, file: !181, line: 401, baseType: !7, size: 32, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2835, file: !181, line: 402, baseType: !7, size: 32, offset: 96)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2835, file: !181, line: 403, baseType: !7, size: 32, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2835, file: !181, line: 404, baseType: !7, size: 32, offset: 160)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2835, file: !181, line: 405, baseType: !7, size: 32, offset: 192)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2835, file: !181, line: 406, baseType: !465, size: 64, offset: 256)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2835, file: !181, line: 407, baseType: !2846, size: 64, offset: 320)
!2846 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !37, line: 132, baseType: !463)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2835, file: !181, line: 408, baseType: !2846, size: 64, offset: 384)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2767, file: !181, line: 442, baseType: !2777, size: 64, offset: 640)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !543, file: !176, line: 1200, baseType: !2850, size: 64, offset: 576)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2852)
!2852 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !176, line: 54, flags: DIFlagFwdDecl)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !543, file: !176, line: 1201, baseType: !51, size: 64, offset: 640)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !543, file: !176, line: 1202, baseType: !51, size: 64, offset: 704)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !543, file: !176, line: 1203, baseType: !51, size: 64, offset: 768)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !543, file: !176, line: 1204, baseType: !425, size: 64, offset: 832)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !543, file: !176, line: 1205, baseType: !773, size: 320, offset: 896)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !543, file: !176, line: 1206, baseType: !34, size: 32, offset: 1216)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !543, file: !176, line: 1207, baseType: !61, size: 32, offset: 1248)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !543, file: !176, line: 1209, baseType: !32, size: 64, offset: 1280)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !543, file: !176, line: 1211, baseType: !2862, size: 64, offset: 1344)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2865)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !2866, line: 36, size: 384, elements: !2867)
!2866 = !DIFile(filename: "./include/linux/xattr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b18c2f606ad05d87dee3d79567b8d0c")
!2867 = !{!2868, !2869, !2870, !2871, !2875, !2879}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2865, file: !2866, line: 37, baseType: !28, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !2865, file: !2866, line: 38, baseType: !28, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2865, file: !2866, line: 39, baseType: !34, size: 32, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2865, file: !2866, line: 40, baseType: !2872, size: 64, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!832, !425}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2865, file: !2866, line: 41, baseType: !2876, size: 64, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!34, !2863, !425, !390, !28, !32, !47}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2865, file: !2866, line: 44, baseType: !2880, size: 64, offset: 320)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!34, !2863, !2883, !425, !390, !28, !1362, !47, !34}
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !740, line: 42, flags: DIFlagFwdDecl)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !543, file: !176, line: 1223, baseType: !2886, size: 64, offset: 1408)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !442, line: 34, size: 64, elements: !2887)
!2887 = !{!2888}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2886, file: !442, line: 35, baseType: !445, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !543, file: !176, line: 1224, baseType: !109, size: 128, offset: 1472)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !543, file: !176, line: 1225, baseType: !2891, size: 64, offset: 1600)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2893, line: 40, size: 7424, elements: !2894)
!2893 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2894 = !{!2895, !2897, !2898, !2901, !2905, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2932, !2933}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2892, file: !2893, line: 41, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !37, line: 131, baseType: !463)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2892, file: !2893, line: 42, baseType: !2896, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2892, file: !2893, line: 43, baseType: !2899, size: 64, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2425, line: 1453, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2892, file: !2893, line: 44, baseType: !2902, size: 64, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2904, line: 74, flags: DIFlagFwdDecl)
!2904 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2892, file: !2893, line: 45, baseType: !2906, size: 64, offset: 256)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2893, line: 45, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2892, file: !2893, line: 46, baseType: !51, size: 64, offset: 320)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2892, file: !2893, line: 47, baseType: !832, size: 8, offset: 384)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2892, file: !2893, line: 48, baseType: !95, size: 8, offset: 392)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2892, file: !2893, line: 49, baseType: !832, size: 8, offset: 400)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2892, file: !2893, line: 50, baseType: !832, size: 8, offset: 408)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2892, file: !2893, line: 51, baseType: !547, size: 32, offset: 416)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2892, file: !2893, line: 52, baseType: !61, size: 32, offset: 448)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2892, file: !2893, line: 53, baseType: !71, size: 32, offset: 480)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2892, file: !2893, line: 54, baseType: !390, size: 64, offset: 512)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2892, file: !2893, line: 55, baseType: !32, size: 64, offset: 576)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2892, file: !2893, line: 56, baseType: !32, size: 64, offset: 640)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2892, file: !2893, line: 57, baseType: !2920, size: 64, offset: 704)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2922)
!2922 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2893, line: 57, flags: DIFlagFwdDecl)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2892, file: !2893, line: 58, baseType: !642, size: 256, offset: 768)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2892, file: !2893, line: 60, baseType: !34, size: 32, offset: 1024)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2892, file: !2893, line: 61, baseType: !34, size: 32, offset: 1056)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2892, file: !2893, line: 62, baseType: !1123, size: 64, offset: 1088)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2892, file: !2893, line: 65, baseType: !642, size: 256, offset: 1152)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2892, file: !2893, line: 66, baseType: !542, size: 64, offset: 1408)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2892, file: !2893, line: 68, baseType: !2930, size: 64, offset: 1472)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2893, line: 68, flags: DIFlagFwdDecl)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2892, file: !2893, line: 72, baseType: !832, size: 8, offset: 1536)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2892, file: !2893, line: 77, baseType: !2934, size: 5824, offset: 1600)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !193, line: 705, size: 5824, elements: !2935)
!2935 = !{!2936, !2937, !2939, !2942, !2943, !2996, !3066, !3067, !3068, !3069, !3070, !3077, !3239, !3252, !3262, !3266, !3268, !3269, !3270, !3274, !3281, !3282, !3285, !3288, !3292, !3295, !3296, !3297, !3298, !3299, !3300, !3330, !3331, !3332, !3335, !3338, !3347, !3348, !3349, !3350, !3351, !3352}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2934, file: !193, line: 706, baseType: !1117, size: 512)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2934, file: !193, line: 707, baseType: !2938, size: 64, offset: 512)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2934, file: !193, line: 709, baseType: !2940, size: 64, offset: 576)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !193, line: 37, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2934, file: !193, line: 711, baseType: !28, size: 64, offset: 640)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2934, file: !193, line: 712, baseType: !2944, size: 64, offset: 704)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2946)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !193, line: 89, size: 384, elements: !2947)
!2947 = !{!2948, !2949, !2950, !2956, !2961, !2965}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2946, file: !193, line: 90, baseType: !28, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2946, file: !193, line: 91, baseType: !1200, size: 64, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2946, file: !193, line: 92, baseType: !2951, size: 64, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!34, !2954, !1153}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2934)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2946, file: !193, line: 93, baseType: !2957, size: 64, offset: 192)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!531, !2954, !2960, !1028, !1029}
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2946, file: !193, line: 95, baseType: !2962, size: 64, offset: 256)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !2938}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2946, file: !193, line: 97, baseType: !2966, size: 64, offset: 320)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2968)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !205, line: 286, size: 1472, elements: !2969)
!2969 = !{!2970, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2968, file: !205, line: 287, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!34, !2938}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2968, file: !205, line: 288, baseType: !2962, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2968, file: !205, line: 289, baseType: !2971, size: 64, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2968, file: !205, line: 290, baseType: !2971, size: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2968, file: !205, line: 291, baseType: !2971, size: 64, offset: 256)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2968, file: !205, line: 292, baseType: !2971, size: 64, offset: 320)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2968, file: !205, line: 293, baseType: !2971, size: 64, offset: 384)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2968, file: !205, line: 294, baseType: !2971, size: 64, offset: 448)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2968, file: !205, line: 295, baseType: !2971, size: 64, offset: 512)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2968, file: !205, line: 296, baseType: !2971, size: 64, offset: 576)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2968, file: !205, line: 297, baseType: !2971, size: 64, offset: 640)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2968, file: !205, line: 298, baseType: !2971, size: 64, offset: 704)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2968, file: !205, line: 299, baseType: !2971, size: 64, offset: 768)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2968, file: !205, line: 300, baseType: !2971, size: 64, offset: 832)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2968, file: !205, line: 301, baseType: !2971, size: 64, offset: 896)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2968, file: !205, line: 302, baseType: !2971, size: 64, offset: 960)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2968, file: !205, line: 303, baseType: !2971, size: 64, offset: 1024)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2968, file: !205, line: 304, baseType: !2971, size: 64, offset: 1088)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2968, file: !205, line: 305, baseType: !2971, size: 64, offset: 1152)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2968, file: !205, line: 306, baseType: !2971, size: 64, offset: 1216)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2968, file: !205, line: 307, baseType: !2971, size: 64, offset: 1280)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2968, file: !205, line: 308, baseType: !2971, size: 64, offset: 1344)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2968, file: !205, line: 309, baseType: !2971, size: 64, offset: 1408)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2934, file: !193, line: 714, baseType: !2997, size: 64, offset: 768)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2999)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3000, line: 80, size: 1344, elements: !3001)
!3000 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3001 = !{!3002, !3003, !3004, !3005, !3006, !3007, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3065}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2999, file: !3000, line: 81, baseType: !28, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2999, file: !3000, line: 82, baseType: !28, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2999, file: !3000, line: 83, baseType: !1200, size: 64, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2999, file: !3000, line: 84, baseType: !1200, size: 64, offset: 192)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2999, file: !3000, line: 85, baseType: !1200, size: 64, offset: 256)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2999, file: !3000, line: 87, baseType: !3008, size: 64, offset: 320)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!34, !2938, !3011}
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !187, line: 96, size: 1152, elements: !3013)
!3013 = !{!3014, !3015, !3016, !3017, !3018, !3019, !3020, !3024, !3028, !3029, !3030, !3031, !3032, !3040, !3041, !3042, !3043, !3044, !3045}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3012, file: !187, line: 97, baseType: !28, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3012, file: !187, line: 98, baseType: !2997, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3012, file: !187, line: 100, baseType: !1104, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3012, file: !187, line: 101, baseType: !28, size: 64, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3012, file: !187, line: 103, baseType: !832, size: 8, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3012, file: !187, line: 104, baseType: !186, size: 32, offset: 288)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3012, file: !187, line: 106, baseType: !3021, size: 64, offset: 320)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3023)
!3023 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !187, line: 106, flags: DIFlagFwdDecl)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3012, file: !187, line: 107, baseType: !3025, size: 64, offset: 384)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3027)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !187, line: 107, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3012, file: !187, line: 109, baseType: !2971, size: 64, offset: 448)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3012, file: !187, line: 110, baseType: !2962, size: 64, offset: 512)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3012, file: !187, line: 111, baseType: !2971, size: 64, offset: 576)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3012, file: !187, line: 112, baseType: !2962, size: 64, offset: 640)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3012, file: !187, line: 113, baseType: !3033, size: 64, offset: 704)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!34, !2938, !3036}
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !205, line: 60, baseType: !3037)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !205, line: 58, size: 32, elements: !3038)
!3038 = !{!3039}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3037, file: !205, line: 59, baseType: !34, size: 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3012, file: !187, line: 114, baseType: !2971, size: 64, offset: 768)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3012, file: !187, line: 115, baseType: !1200, size: 64, offset: 832)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3012, file: !187, line: 116, baseType: !1200, size: 64, offset: 896)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3012, file: !187, line: 118, baseType: !2966, size: 64, offset: 960)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3012, file: !187, line: 119, baseType: !2962, size: 64, offset: 1024)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3012, file: !187, line: 121, baseType: !3046, size: 64, offset: 1088)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !187, line: 121, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2999, file: !3000, line: 88, baseType: !2951, size: 64, offset: 384)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2999, file: !3000, line: 89, baseType: !2971, size: 64, offset: 448)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2999, file: !3000, line: 90, baseType: !2962, size: 64, offset: 512)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2999, file: !3000, line: 91, baseType: !2962, size: 64, offset: 576)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2999, file: !3000, line: 92, baseType: !2962, size: 64, offset: 640)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2999, file: !3000, line: 94, baseType: !2971, size: 64, offset: 704)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2999, file: !3000, line: 95, baseType: !2971, size: 64, offset: 768)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2999, file: !3000, line: 97, baseType: !3033, size: 64, offset: 832)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2999, file: !3000, line: 98, baseType: !2971, size: 64, offset: 896)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2999, file: !3000, line: 100, baseType: !2971, size: 64, offset: 960)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2999, file: !3000, line: 102, baseType: !2971, size: 64, offset: 1024)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2999, file: !3000, line: 103, baseType: !2962, size: 64, offset: 1088)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2999, file: !3000, line: 105, baseType: !2966, size: 64, offset: 1152)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2999, file: !3000, line: 107, baseType: !3062, size: 64, offset: 1216)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3064)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3000, line: 107, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2999, file: !3000, line: 109, baseType: !832, size: 8, offset: 1280)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2934, file: !193, line: 715, baseType: !3011, size: 64, offset: 832)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2934, file: !193, line: 717, baseType: !32, size: 64, offset: 896)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2934, file: !193, line: 719, baseType: !32, size: 64, offset: 960)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2934, file: !193, line: 721, baseType: !642, size: 256, offset: 1024)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2934, file: !193, line: 725, baseType: !3071, size: 448, offset: 1280)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !193, line: 517, size: 448, elements: !3072)
!3072 = !{!3073, !3074, !3075, !3076}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3071, file: !193, line: 518, baseType: !109, size: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3071, file: !193, line: 519, baseType: !109, size: 128, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3071, file: !193, line: 520, baseType: !109, size: 128, offset: 256)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3071, file: !193, line: 521, baseType: !192, size: 32, offset: 384)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2934, file: !193, line: 726, baseType: !3078, size: 2496, offset: 1728)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !205, line: 663, size: 2496, elements: !3079)
!3079 = !{!3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3124, !3125, !3126, !3127, !3128, !3129, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3232, !3236}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3078, file: !205, line: 664, baseType: !3036, size: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3078, file: !205, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3078, file: !205, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3078, file: !205, line: 667, baseType: !832, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3078, file: !205, line: 668, baseType: !832, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3078, file: !205, line: 669, baseType: !832, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3078, file: !205, line: 670, baseType: !832, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3078, file: !205, line: 671, baseType: !832, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3078, file: !205, line: 672, baseType: !832, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3078, file: !205, line: 673, baseType: !832, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3078, file: !205, line: 674, baseType: !832, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3078, file: !205, line: 675, baseType: !459, size: 32, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3078, file: !205, line: 676, baseType: !71, size: 32, offset: 96)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3078, file: !205, line: 678, baseType: !109, size: 128, offset: 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3078, file: !205, line: 679, baseType: !1003, size: 256, offset: 256)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3078, file: !205, line: 680, baseType: !3096, size: 64, offset: 512)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3098, line: 43, size: 1536, elements: !3099)
!3098 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3099 = !{!3100, !3101, !3102, !3103, !3104, !3107, !3108, !3109, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3097, file: !3098, line: 44, baseType: !28, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3097, file: !3098, line: 45, baseType: !34, size: 32, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3097, file: !3098, line: 46, baseType: !109, size: 128, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3097, file: !3098, line: 47, baseType: !71, size: 32, offset: 256)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3097, file: !3098, line: 48, baseType: !3105, size: 64, offset: 320)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !205, line: 629, flags: DIFlagFwdDecl)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3097, file: !3098, line: 49, baseType: !2124, size: 320, offset: 384)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3097, file: !3098, line: 50, baseType: !51, size: 64, offset: 704)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3097, file: !3098, line: 51, baseType: !3110, size: 64, offset: 768)
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3111, line: 29, baseType: !639)
!3111 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3097, file: !3098, line: 52, baseType: !3110, size: 64, offset: 832)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3097, file: !3098, line: 53, baseType: !3110, size: 64, offset: 896)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3097, file: !3098, line: 54, baseType: !3110, size: 64, offset: 960)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3097, file: !3098, line: 55, baseType: !3110, size: 64, offset: 1024)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3097, file: !3098, line: 56, baseType: !51, size: 64, offset: 1088)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3097, file: !3098, line: 57, baseType: !51, size: 64, offset: 1152)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3097, file: !3098, line: 58, baseType: !51, size: 64, offset: 1216)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3097, file: !3098, line: 59, baseType: !51, size: 64, offset: 1280)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3097, file: !3098, line: 60, baseType: !51, size: 64, offset: 1344)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3097, file: !3098, line: 61, baseType: !2938, size: 64, offset: 1408)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3097, file: !3098, line: 62, baseType: !832, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3097, file: !3098, line: 63, baseType: !832, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3078, file: !205, line: 681, baseType: !832, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3078, file: !205, line: 682, baseType: !832, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3078, file: !205, line: 683, baseType: !832, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3078, file: !205, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3078, file: !205, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3078, file: !205, line: 690, baseType: !3130, size: 512, offset: 640)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !200, line: 118, size: 512, elements: !3131)
!3131 = !{!3132, !3138, !3139, !3144, !3194, !3195, !3196, !3197}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3130, file: !200, line: 119, baseType: !3133, size: 256)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3134, line: 9, size: 256, elements: !3135)
!3134 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3135 = !{!3136, !3137}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3133, file: !3134, line: 10, baseType: !765, size: 192, align: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3133, file: !3134, line: 11, baseType: !3110, size: 64, offset: 192)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3130, file: !200, line: 120, baseType: !3110, size: 64, offset: 256)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3130, file: !200, line: 121, baseType: !3140, size: 64, offset: 320)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!199, !3143}
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3130, file: !200, line: 122, baseType: !3145, size: 64, offset: 384)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !200, line: 159, size: 512, align: 512, elements: !3147)
!3147 = !{!3148, !3171, !3172, !3175, !3180, !3181, !3189, !3193}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3146, file: !200, line: 160, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !200, line: 215, size: 4608, align: 512, elements: !3151)
!3151 = !{!3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3150, file: !200, line: 216, baseType: !647, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3150, file: !200, line: 217, baseType: !7, size: 32, offset: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3150, file: !200, line: 218, baseType: !7, size: 32, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3150, file: !200, line: 219, baseType: !7, size: 32, offset: 96)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3150, file: !200, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3150, file: !200, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3150, file: !200, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3150, file: !200, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3150, file: !200, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3150, file: !200, line: 226, baseType: !7, size: 32, offset: 160)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3150, file: !200, line: 227, baseType: !38, size: 16, offset: 192)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3150, file: !200, line: 228, baseType: !38, size: 16, offset: 208)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3150, file: !200, line: 229, baseType: !7, size: 32, offset: 224)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3150, file: !200, line: 235, baseType: !3110, size: 64, offset: 256)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3150, file: !200, line: 236, baseType: !3143, size: 64, offset: 320)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3150, file: !200, line: 237, baseType: !3110, size: 64, offset: 384)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3150, file: !200, line: 238, baseType: !3143, size: 64, offset: 448)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3150, file: !200, line: 239, baseType: !3170, size: 4096, align: 512, offset: 512)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3146, size: 4096, align: 512, elements: !2510)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3146, file: !200, line: 161, baseType: !7, size: 32, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3146, file: !200, line: 162, baseType: !3173, size: 32, offset: 96)
!3173 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !37, line: 32, baseType: !3174)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !49, line: 96, baseType: !34)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3146, file: !200, line: 163, baseType: !3176, size: 32, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !432, line: 274, baseType: !3177)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !432, line: 274, size: 32, elements: !3178)
!3178 = !{!3179}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3177, file: !432, line: 274, baseType: !436, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3146, file: !200, line: 164, baseType: !3143, size: 64, offset: 192)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3146, file: !200, line: 165, baseType: !3182, size: 128, offset: 256)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3134, line: 14, size: 128, elements: !3183)
!3183 = !{!3184}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3182, file: !3134, line: 15, baseType: !3185, size: 128)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !766, line: 26, size: 128, elements: !3186)
!3186 = !{!3187, !3188}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3185, file: !766, line: 27, baseType: !1045, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !3185, file: !766, line: 28, baseType: !770, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3146, file: !200, line: 166, baseType: !3190, size: 64, offset: 384)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!3110}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3146, file: !200, line: 167, baseType: !3110, size: 64, offset: 448)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3130, file: !200, line: 123, baseType: !95, size: 8, offset: 448)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3130, file: !200, line: 124, baseType: !95, size: 8, offset: 456)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3130, file: !200, line: 125, baseType: !95, size: 8, offset: 464)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3130, file: !200, line: 126, baseType: !95, size: 8, offset: 472)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3078, file: !205, line: 691, baseType: !463, size: 64, offset: 1152)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3078, file: !205, line: 692, baseType: !964, size: 256, offset: 1216)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3078, file: !205, line: 693, baseType: !66, size: 192, offset: 1472)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3078, file: !205, line: 694, baseType: !3105, size: 64, offset: 1664)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3078, file: !205, line: 695, baseType: !61, size: 32, offset: 1728)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3078, file: !205, line: 696, baseType: !61, size: 32, offset: 1760)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3078, file: !205, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3078, file: !205, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3078, file: !205, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3078, file: !205, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3078, file: !205, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3078, file: !205, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3078, file: !205, line: 703, baseType: !832, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3078, file: !205, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3078, file: !205, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3078, file: !205, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3078, file: !205, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3078, file: !205, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3078, file: !205, line: 709, baseType: !7, size: 32, offset: 1824)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3078, file: !205, line: 710, baseType: !204, size: 32, offset: 1856)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3078, file: !205, line: 711, baseType: !212, size: 32, offset: 1888)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3078, file: !205, line: 712, baseType: !212, size: 32, offset: 1920)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3078, file: !205, line: 713, baseType: !34, size: 32, offset: 1952)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3078, file: !205, line: 714, baseType: !34, size: 32, offset: 1984)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3078, file: !205, line: 715, baseType: !463, size: 64, offset: 2048)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3078, file: !205, line: 716, baseType: !463, size: 64, offset: 2112)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3078, file: !205, line: 717, baseType: !463, size: 64, offset: 2176)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3078, file: !205, line: 718, baseType: !463, size: 64, offset: 2240)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3078, file: !205, line: 720, baseType: !3227, size: 64, offset: 2304)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !205, line: 632, size: 64, elements: !3229)
!3229 = !{!3230, !3231}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3228, file: !205, line: 633, baseType: !71, size: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3228, file: !205, line: 634, baseType: !7, size: 32, offset: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3078, file: !205, line: 721, baseType: !3233, size: 64, offset: 2368)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{null, !2938, !758}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3078, file: !205, line: 722, baseType: !3237, size: 64, offset: 2432)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !205, line: 722, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2934, file: !193, line: 727, baseType: !3240, size: 64, offset: 4224)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !205, line: 742, size: 1792, elements: !3242)
!3242 = !{!3243, !3244, !3245, !3249, !3250, !3251}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3241, file: !205, line: 743, baseType: !2968, size: 1472)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3241, file: !205, line: 744, baseType: !2971, size: 64, offset: 1472)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3241, file: !205, line: 745, baseType: !3246, size: 64, offset: 1536)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !2938, !832}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3241, file: !205, line: 746, baseType: !2971, size: 64, offset: 1600)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3241, file: !205, line: 747, baseType: !2962, size: 64, offset: 1664)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3241, file: !205, line: 748, baseType: !2962, size: 64, offset: 1728)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2934, file: !193, line: 736, baseType: !3253, size: 128, offset: 4288)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !193, line: 529, size: 128, elements: !3254)
!3254 = !{!3255, !3259}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3253, file: !193, line: 531, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3258, line: 13, flags: DIFlagFwdDecl)
!3258 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3253, file: !193, line: 532, baseType: !3260, size: 64, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !193, line: 49, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2934, file: !193, line: 738, baseType: !3263, size: 64, offset: 4416)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3265)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !193, line: 738, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2934, file: !193, line: 740, baseType: !3267, size: 64, offset: 4480)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2934, file: !193, line: 741, baseType: !463, size: 64, offset: 4544)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2934, file: !193, line: 746, baseType: !463, size: 64, offset: 4608)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2934, file: !193, line: 747, baseType: !3271, size: 64, offset: 4672)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3273)
!3273 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !193, line: 747, flags: DIFlagFwdDecl)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2934, file: !193, line: 749, baseType: !3275, size: 64, offset: 4736)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !193, line: 428, size: 128, elements: !3277)
!3277 = !{!3278, !3279, !3280}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3276, file: !193, line: 433, baseType: !7, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3276, file: !193, line: 434, baseType: !7, size: 32, offset: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3276, file: !193, line: 435, baseType: !51, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2934, file: !193, line: 751, baseType: !109, size: 128, offset: 4800)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2934, file: !193, line: 762, baseType: !3283, size: 64, offset: 4928)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !193, line: 762, flags: DIFlagFwdDecl)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2934, file: !193, line: 770, baseType: !3286, offset: 4992)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3287, line: 5, elements: !1267)
!3287 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2934, file: !193, line: 772, baseType: !3289, size: 64, offset: 4992)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3291, line: 18, flags: DIFlagFwdDecl)
!3291 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2934, file: !193, line: 773, baseType: !3293, size: 64, offset: 5056)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3000, line: 22, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2934, file: !193, line: 776, baseType: !34, size: 32, offset: 5120)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2934, file: !193, line: 778, baseType: !547, size: 32, offset: 5152)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2934, file: !193, line: 779, baseType: !459, size: 32, offset: 5184)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2934, file: !193, line: 781, baseType: !71, size: 32, offset: 5216)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2934, file: !193, line: 782, baseType: !109, size: 128, offset: 5248)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2934, file: !193, line: 784, baseType: !3301, size: 64, offset: 5376)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3303)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3304, line: 52, size: 768, elements: !3305)
!3304 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3305 = !{!3306, !3307, !3308, !3309, !3310, !3314, !3318, !3319, !3320, !3321, !3325, !3329}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3303, file: !3304, line: 53, baseType: !28, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3303, file: !3304, line: 55, baseType: !1200, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3303, file: !3304, line: 56, baseType: !1200, size: 64, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3303, file: !3304, line: 58, baseType: !2951, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3303, file: !3304, line: 59, baseType: !3311, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!531, !2954, !2960}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3303, file: !3304, line: 61, baseType: !3315, size: 64, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !3301}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3303, file: !3304, line: 62, baseType: !2962, size: 64, offset: 384)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3303, file: !3304, line: 64, baseType: !2971, size: 64, offset: 448)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3303, file: !3304, line: 66, baseType: !1704, size: 64, offset: 512)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3303, file: !3304, line: 67, baseType: !3322, size: 64, offset: 576)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!1362, !2954}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3303, file: !3304, line: 69, baseType: !3326, size: 64, offset: 640)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !2954, !1028, !1029}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3303, file: !3304, line: 71, baseType: !2966, size: 64, offset: 704)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2934, file: !193, line: 785, baseType: !1200, size: 64, offset: 5440)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2934, file: !193, line: 787, baseType: !2962, size: 64, offset: 5504)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2934, file: !193, line: 788, baseType: !3333, size: 64, offset: 5568)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !193, line: 46, flags: DIFlagFwdDecl)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2934, file: !193, line: 789, baseType: !3336, size: 64, offset: 5632)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !193, line: 48, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2934, file: !193, line: 791, baseType: !3339, size: 64, offset: 5696)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !193, line: 597, size: 128, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3340, file: !193, line: 598, baseType: !219, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3340, file: !193, line: 599, baseType: !228, size: 32, offset: 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3340, file: !193, line: 600, baseType: !233, size: 32, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3340, file: !193, line: 601, baseType: !832, size: 8, offset: 96)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3340, file: !193, line: 602, baseType: !832, size: 8, offset: 104)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2934, file: !193, line: 793, baseType: !238, size: 32, offset: 5760)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2934, file: !193, line: 795, baseType: !832, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2934, file: !193, line: 796, baseType: !832, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2934, file: !193, line: 797, baseType: !832, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2934, file: !193, line: 798, baseType: !832, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2934, file: !193, line: 799, baseType: !832, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !543, file: !176, line: 1226, baseType: !3354, size: 64, offset: 1664)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !176, line: 1226, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !543, file: !176, line: 1227, baseType: !3357, size: 64, offset: 1728)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !245, line: 163, size: 6848, elements: !3359)
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3406, !3407, !3408, !3409, !3411, !3412, !3413}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3358, file: !245, line: 164, baseType: !463, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3358, file: !245, line: 165, baseType: !765, size: 192, align: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3358, file: !245, line: 166, baseType: !109, size: 128, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3358, file: !245, line: 167, baseType: !51, size: 64, offset: 384)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3358, file: !245, line: 168, baseType: !51, size: 64, offset: 448)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3358, file: !245, line: 170, baseType: !1874, size: 32, offset: 512)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3358, file: !245, line: 171, baseType: !7, size: 32, offset: 544)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3358, file: !245, line: 172, baseType: !7, size: 32, offset: 576)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3358, file: !245, line: 173, baseType: !7, size: 32, offset: 608)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3358, file: !245, line: 173, baseType: !7, size: 32, offset: 640)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3358, file: !245, line: 179, baseType: !633, size: 64, offset: 704)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3358, file: !245, line: 184, baseType: !51, size: 64, offset: 768)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3358, file: !245, line: 186, baseType: !3373, size: 4672, offset: 832)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !245, line: 105, size: 4672, elements: !3374)
!3374 = !{!3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3399, !3400, !3401, !3402, !3403, !3404, !3405}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3373, file: !245, line: 106, baseType: !3357, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3373, file: !245, line: 108, baseType: !51, size: 64, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3373, file: !245, line: 109, baseType: !51, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3373, file: !245, line: 111, baseType: !109, size: 128, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3373, file: !245, line: 112, baseType: !109, size: 128, offset: 320)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3373, file: !245, line: 113, baseType: !109, size: 128, offset: 448)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3373, file: !245, line: 114, baseType: !109, size: 128, offset: 576)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3373, file: !245, line: 115, baseType: !71, size: 32, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3373, file: !245, line: 117, baseType: !61, size: 32, offset: 736)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3373, file: !245, line: 118, baseType: !1330, size: 1280, offset: 768)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3373, file: !245, line: 120, baseType: !51, size: 64, offset: 2048)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3373, file: !245, line: 121, baseType: !51, size: 64, offset: 2112)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3373, file: !245, line: 122, baseType: !51, size: 64, offset: 2176)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3373, file: !245, line: 123, baseType: !51, size: 64, offset: 2240)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3373, file: !245, line: 124, baseType: !51, size: 64, offset: 2304)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3373, file: !245, line: 132, baseType: !51, size: 64, offset: 2368)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3373, file: !245, line: 133, baseType: !51, size: 64, offset: 2432)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3373, file: !245, line: 135, baseType: !3393, size: 384, offset: 2496)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3394, line: 76, size: 384, elements: !3395)
!3394 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3395 = !{!3396, !3397, !3398}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3393, file: !3394, line: 78, baseType: !890, size: 320)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3393, file: !3394, line: 80, baseType: !7, size: 32, offset: 320)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3393, file: !3394, line: 81, baseType: !647, size: 32, offset: 352)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3373, file: !245, line: 136, baseType: !34, size: 32, offset: 2880)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3373, file: !245, line: 137, baseType: !244, size: 32, offset: 2912)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3373, file: !245, line: 139, baseType: !71, size: 32, offset: 2944)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3373, file: !245, line: 140, baseType: !109, size: 128, offset: 3008)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3373, file: !245, line: 141, baseType: !2181, size: 704, offset: 3136)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3373, file: !245, line: 142, baseType: !2181, size: 704, offset: 3840)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3373, file: !245, line: 144, baseType: !109, size: 128, offset: 4544)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3358, file: !245, line: 187, baseType: !109, size: 128, offset: 5504)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3358, file: !245, line: 193, baseType: !66, size: 192, offset: 5632)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3358, file: !245, line: 195, baseType: !2938, size: 64, offset: 5824)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3358, file: !245, line: 196, baseType: !3410, size: 512, offset: 5888)
!3410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !1160)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3358, file: !245, line: 197, baseType: !2938, size: 64, offset: 6400)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3358, file: !245, line: 199, baseType: !2124, size: 320, offset: 6464)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3358, file: !245, line: 202, baseType: !425, size: 64, offset: 6784)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !543, file: !176, line: 1228, baseType: !3415, size: 64, offset: 1792)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !176, line: 1228, flags: DIFlagFwdDecl)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !543, file: !176, line: 1229, baseType: !700, size: 128, offset: 1856)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !543, file: !176, line: 1230, baseType: !7, size: 32, offset: 1984)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !543, file: !176, line: 1231, baseType: !3420, size: 2496, offset: 2048)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !181, line: 521, size: 2496, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3426, !3458}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3420, file: !181, line: 522, baseType: !7, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3420, file: !181, line: 523, baseType: !773, size: 320, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3420, file: !181, line: 524, baseType: !3425, size: 192, offset: 384)
!3425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 192, elements: !679)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3420, file: !181, line: 525, baseType: !3427, size: 1728, offset: 576)
!3427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3428, size: 1728, elements: !679)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !181, line: 222, size: 576, elements: !3429)
!3429 = !{!3430, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3428, file: !181, line: 223, baseType: !3431, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !181, line: 445, size: 256, elements: !3433)
!3433 = !{!3434, !3435, !3448, !3449}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3432, file: !181, line: 446, baseType: !34, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3432, file: !181, line: 447, baseType: !3436, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3438)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !181, line: 312, size: 512, elements: !3439)
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3438, file: !181, line: 313, baseType: !2621, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3438, file: !181, line: 314, baseType: !2621, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3438, file: !181, line: 315, baseType: !2621, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3438, file: !181, line: 316, baseType: !2621, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3438, file: !181, line: 317, baseType: !2730, size: 64, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3438, file: !181, line: 318, baseType: !2730, size: 64, offset: 320)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3438, file: !181, line: 319, baseType: !2730, size: 64, offset: 384)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3438, file: !181, line: 320, baseType: !2760, size: 64, offset: 448)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3432, file: !181, line: 448, baseType: !1104, size: 64, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3432, file: !181, line: 449, baseType: !3431, size: 64, offset: 192)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3428, file: !181, line: 224, baseType: !34, size: 32, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3428, file: !181, line: 226, baseType: !109, size: 128, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3428, file: !181, line: 227, baseType: !51, size: 64, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3428, file: !181, line: 228, baseType: !7, size: 32, offset: 320)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3428, file: !181, line: 229, baseType: !7, size: 32, offset: 352)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3428, file: !181, line: 230, baseType: !2698, size: 64, offset: 384)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3428, file: !181, line: 231, baseType: !2698, size: 64, offset: 448)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3428, file: !181, line: 232, baseType: !32, size: 64, offset: 512)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3420, file: !181, line: 526, baseType: !3459, size: 192, offset: 2304)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3436, size: 192, elements: !679)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !543, file: !176, line: 1233, baseType: !3461, size: 2368, offset: 4544)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !176, line: 1184, size: 2368, elements: !3462)
!3462 = !{!3463, !3464, !3465}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3461, file: !176, line: 1185, baseType: !38, size: 16)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3461, file: !176, line: 1186, baseType: !38, size: 16, offset: 16)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3461, file: !176, line: 1187, baseType: !3466, size: 2304, offset: 64)
!3466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3467, size: 2304, elements: !679)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3468, line: 12, size: 768, elements: !3469)
!3468 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3469 = !{!3470, !3478, !3479, !4930, !4931}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3467, file: !3468, line: 13, baseType: !3471, size: 384)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3472, line: 17, size: 384, elements: !3473)
!3472 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3473 = !{!3474, !3475, !3476, !3477}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3471, file: !3472, line: 18, baseType: !34, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3471, file: !3472, line: 19, baseType: !34, size: 32, offset: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3471, file: !3472, line: 20, baseType: !66, size: 192, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3471, file: !3472, line: 22, baseType: !620, size: 128, align: 64, offset: 256)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3467, file: !3468, line: 14, baseType: !1977, size: 64, offset: 384)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3467, file: !3468, line: 15, baseType: !3480, size: 64, offset: 448)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3481, line: 16, size: 64, elements: !3482)
!3481 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3482 = !{!3483}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3480, file: !3481, line: 17, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2425, line: 746, size: 58368, elements: !3486)
!3486 = !{!3487, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3567, !3578, !3598, !3602, !3605, !3636, !3637, !3638, !3639, !3647, !3649, !3650, !3651, !3652, !3653, !3654, !3665, !3666, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3683, !3684, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3772, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3820, !3826, !3827, !3828, !3829, !3830, !3834, !3837, !3844, !3849, !3852, !3855, !3858, !4154, !4353, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4391, !4392, !4393, !4402, !4410, !4411, !4412, !4413, !4414, !4419, !4420, !4421, !4424, !4425, !4428, !4431, !4437, !4444, !4447, !4448, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4547, !4550, !4551, !4554, !4555, !4556, !4559, !4560, !4561, !4562, !4563, !4564, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4596, !4597, !4603, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4685, !4687, !4688, !4689, !4690, !4691, !4692, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4709, !4710, !4711}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3485, file: !2425, line: 752, baseType: !3488, size: 192)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3489, line: 56, size: 192, elements: !3490)
!3489 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3490 = !{!3491, !3492, !3493, !3494}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3488, file: !3489, line: 57, baseType: !51, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3488, file: !3489, line: 58, baseType: !51, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3488, file: !3489, line: 59, baseType: !459, size: 32, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3488, file: !3489, line: 61, baseType: !459, size: 32, offset: 160)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3485, file: !2425, line: 754, baseType: !7, size: 32, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3485, file: !2425, line: 767, baseType: !32, size: 64, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3485, file: !2425, line: 768, baseType: !687, size: 32, offset: 320)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3485, file: !2425, line: 770, baseType: !7, size: 32, offset: 352)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3485, file: !2425, line: 771, baseType: !7, size: 32, offset: 384)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3485, file: !2425, line: 774, baseType: !34, size: 32, offset: 416)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3485, file: !2425, line: 775, baseType: !3502, size: 128, offset: 448)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3503, line: 58, size: 128, elements: !3504)
!3503 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3504 = !{!3505, !3506, !3511, !3512}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3502, file: !3503, line: 59, baseType: !614, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, scope: !3502, file: !3503, line: 60, baseType: !3507, size: 32, offset: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3502, file: !3503, line: 60, size: 32, elements: !3508)
!3508 = !{!3509, !3510}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3507, file: !3503, line: 61, baseType: !7, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3507, file: !3503, line: 62, baseType: !61, size: 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3502, file: !3503, line: 65, baseType: !105, size: 16, offset: 96)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3502, file: !3503, line: 65, baseType: !105, size: 16, offset: 112)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3485, file: !2425, line: 776, baseType: !7, size: 32, offset: 576)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3485, file: !2425, line: 777, baseType: !51, size: 64, offset: 640)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3485, file: !2425, line: 778, baseType: !3484, size: 64, offset: 704)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3485, file: !2425, line: 787, baseType: !34, size: 32, offset: 768)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3485, file: !2425, line: 788, baseType: !34, size: 32, offset: 800)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3485, file: !2425, line: 790, baseType: !34, size: 32, offset: 832)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3485, file: !2425, line: 792, baseType: !34, size: 32, offset: 864)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3485, file: !2425, line: 793, baseType: !34, size: 32, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3485, file: !2425, line: 794, baseType: !34, size: 32, offset: 928)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3485, file: !2425, line: 795, baseType: !7, size: 32, offset: 960)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3485, file: !2425, line: 797, baseType: !3524, size: 2048, offset: 1024)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2425, line: 551, size: 2048, elements: !3525)
!3525 = !{!3526, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3546, !3549, !3550, !3551}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3524, file: !2425, line: 553, baseType: !3527, size: 128)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2425, line: 411, size: 128, elements: !3528)
!3528 = !{!3529, !3530}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3527, file: !2425, line: 412, baseType: !51, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3527, file: !2425, line: 413, baseType: !459, size: 32, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3524, file: !2425, line: 554, baseType: !765, size: 192, align: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3524, file: !2425, line: 555, baseType: !463, size: 64, offset: 320)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3524, file: !2425, line: 556, baseType: !463, size: 64, offset: 384)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3524, file: !2425, line: 558, baseType: !109, size: 128, offset: 448)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3524, file: !2425, line: 559, baseType: !7, size: 32, offset: 576)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3524, file: !2425, line: 561, baseType: !463, size: 64, offset: 640)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3524, file: !2425, line: 562, baseType: !463, size: 64, offset: 704)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3524, file: !2425, line: 563, baseType: !463, size: 64, offset: 768)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3524, file: !2425, line: 564, baseType: !463, size: 64, offset: 832)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3524, file: !2425, line: 565, baseType: !639, size: 64, offset: 896)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3524, file: !2425, line: 566, baseType: !463, size: 64, offset: 960)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3524, file: !2425, line: 568, baseType: !463, size: 64, offset: 1024)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3524, file: !2425, line: 571, baseType: !34, size: 32, offset: 1088)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3524, file: !2425, line: 572, baseType: !3545, size: 64, offset: 1152)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3524, file: !2425, line: 574, baseType: !3547, size: 64, offset: 1216)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2425, line: 49, flags: DIFlagFwdDecl)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3524, file: !2425, line: 576, baseType: !3547, size: 64, offset: 1280)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3524, file: !2425, line: 578, baseType: !51, size: 64, offset: 1344)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3524, file: !2425, line: 588, baseType: !3552, size: 512, align: 512, offset: 1536)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2425, line: 497, size: 512, align: 512, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3552, file: !2425, line: 498, baseType: !463, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3552, file: !2425, line: 499, baseType: !463, size: 64, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3552, file: !2425, line: 500, baseType: !463, size: 64, offset: 128)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3552, file: !2425, line: 501, baseType: !459, size: 32, offset: 192)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3552, file: !2425, line: 502, baseType: !459, size: 32, offset: 224)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3552, file: !2425, line: 503, baseType: !51, size: 64, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3552, file: !2425, line: 504, baseType: !51, size: 64, offset: 320)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3552, file: !2425, line: 505, baseType: !51, size: 64, offset: 384)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3552, file: !2425, line: 506, baseType: !3563, size: 64, align: 64, offset: 448)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2425, line: 445, size: 64, align: 64, elements: !3564)
!3564 = !{!3565, !3566}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3563, file: !2425, line: 446, baseType: !7, size: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3563, file: !2425, line: 447, baseType: !7, size: 32, offset: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3485, file: !2425, line: 798, baseType: !3568, size: 384, offset: 3072)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2425, line: 592, size: 384, elements: !3569)
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3568, file: !2425, line: 593, baseType: !109, size: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3568, file: !2425, line: 594, baseType: !51, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3568, file: !2425, line: 595, baseType: !51, size: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3568, file: !2425, line: 596, baseType: !7, size: 32, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3568, file: !2425, line: 597, baseType: !38, size: 16, offset: 288)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3568, file: !2425, line: 598, baseType: !38, size: 16, offset: 304)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3568, file: !2425, line: 600, baseType: !3577, size: 64, offset: 320)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3485, file: !2425, line: 799, baseType: !3579, size: 1792, offset: 3456)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2425, line: 610, size: 1792, elements: !3580)
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3579, file: !2425, line: 611, baseType: !765, size: 192, align: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3579, file: !2425, line: 618, baseType: !463, size: 64, offset: 192)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3579, file: !2425, line: 619, baseType: !463, size: 64, offset: 256)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3579, file: !2425, line: 620, baseType: !463, size: 64, offset: 320)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3579, file: !2425, line: 621, baseType: !463, size: 64, offset: 384)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3579, file: !2425, line: 622, baseType: !463, size: 64, offset: 448)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3579, file: !2425, line: 629, baseType: !639, size: 64, offset: 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3579, file: !2425, line: 630, baseType: !463, size: 64, offset: 576)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3579, file: !2425, line: 631, baseType: !7, size: 32, offset: 640)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3579, file: !2425, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3579, file: !2425, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3579, file: !2425, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3579, file: !2425, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3579, file: !2425, line: 662, baseType: !3130, size: 512, offset: 704)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3579, file: !2425, line: 671, baseType: !3130, size: 512, offset: 1216)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3579, file: !2425, line: 679, baseType: !3597, size: 64, offset: 1728)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3485, file: !2425, line: 800, baseType: !3599, size: 64, offset: 5248)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3601)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2425, line: 800, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3485, file: !2425, line: 809, baseType: !3603, size: 64, offset: 5312)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2425, line: 70, flags: DIFlagFwdDecl)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3485, file: !2425, line: 825, baseType: !3606, size: 2048, align: 512, offset: 5632)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2425, line: 509, size: 2048, align: 512, elements: !3607)
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3606, file: !2425, line: 511, baseType: !463, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3606, file: !2425, line: 512, baseType: !463, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3606, file: !2425, line: 513, baseType: !463, size: 64, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3606, file: !2425, line: 514, baseType: !463, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3606, file: !2425, line: 515, baseType: !463, size: 64, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3606, file: !2425, line: 516, baseType: !463, size: 64, offset: 320)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3606, file: !2425, line: 518, baseType: !463, size: 64, offset: 384)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3606, file: !2425, line: 519, baseType: !463, size: 64, offset: 448)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3606, file: !2425, line: 520, baseType: !639, size: 64, offset: 512)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3606, file: !2425, line: 522, baseType: !463, size: 64, offset: 576)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3606, file: !2425, line: 523, baseType: !463, size: 64, offset: 640)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3606, file: !2425, line: 524, baseType: !639, size: 64, offset: 704)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3606, file: !2425, line: 526, baseType: !639, size: 64, offset: 768)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3606, file: !2425, line: 527, baseType: !463, size: 64, offset: 832)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3606, file: !2425, line: 529, baseType: !463, size: 64, offset: 896)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3606, file: !2425, line: 530, baseType: !463, size: 64, offset: 960)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3606, file: !2425, line: 531, baseType: !463, size: 64, offset: 1024)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3606, file: !2425, line: 532, baseType: !463, size: 64, offset: 1088)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3606, file: !2425, line: 533, baseType: !463, size: 64, offset: 1152)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3606, file: !2425, line: 535, baseType: !463, size: 64, offset: 1216)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3606, file: !2425, line: 536, baseType: !463, size: 64, offset: 1280)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3606, file: !2425, line: 537, baseType: !463, size: 64, offset: 1344)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3606, file: !2425, line: 538, baseType: !463, size: 64, offset: 1408)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3606, file: !2425, line: 539, baseType: !463, size: 64, offset: 1472)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3606, file: !2425, line: 540, baseType: !463, size: 64, offset: 1536)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3606, file: !2425, line: 541, baseType: !463, size: 64, offset: 1600)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3606, file: !2425, line: 542, baseType: !463, size: 64, offset: 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3606, file: !2425, line: 543, baseType: !463, size: 64, offset: 1728)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3485, file: !2425, line: 833, baseType: !7, size: 32, offset: 7680)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3485, file: !2425, line: 836, baseType: !7, size: 32, offset: 7712)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3485, file: !2425, line: 837, baseType: !34, size: 32, offset: 7744)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3485, file: !2425, line: 838, baseType: !3640, size: 64, offset: 7808)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3642)
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3643, line: 19, baseType: !3644)
!3643 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3643, line: 19, size: 64, elements: !3645)
!3645 = !{!3646}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3644, file: !3643, line: 19, baseType: !1672, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3485, file: !2425, line: 839, baseType: !3648, size: 64, offset: 7872)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3485, file: !2425, line: 840, baseType: !3642, size: 64, offset: 7936)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3485, file: !2425, line: 841, baseType: !32, size: 64, offset: 8000)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3485, file: !2425, line: 843, baseType: !38, size: 16, offset: 8064)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3485, file: !2425, line: 845, baseType: !38, size: 16, offset: 8080)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3485, file: !2425, line: 848, baseType: !34, size: 32, offset: 8096)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3485, file: !2425, line: 849, baseType: !3655, size: 32, offset: 8128)
!3655 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2425, line: 718, size: 32, elements: !3656)
!3656 = !{!3657, !3664}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3655, file: !2425, line: 724, baseType: !3658, size: 32)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3655, file: !2425, line: 719, size: 32, elements: !3659)
!3659 = !{!3660, !3661, !3662, !3663}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3658, file: !2425, line: 720, baseType: !95, size: 8)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3658, file: !2425, line: 721, baseType: !95, size: 8, offset: 8)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3658, file: !2425, line: 722, baseType: !95, size: 8, offset: 16)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3658, file: !2425, line: 723, baseType: !95, size: 8, offset: 24)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3655, file: !2425, line: 725, baseType: !459, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3485, file: !2425, line: 850, baseType: !109, size: 128, offset: 8192)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3485, file: !2425, line: 851, baseType: !3667, size: 64, offset: 8320)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2425, line: 60, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3485, file: !2425, line: 855, baseType: !51, size: 64, offset: 8384)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3485, file: !2425, line: 856, baseType: !95, size: 8, offset: 8448)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3485, file: !2425, line: 857, baseType: !95, size: 8, offset: 8456)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3485, file: !2425, line: 858, baseType: !34, size: 32, offset: 8480)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3485, file: !2425, line: 859, baseType: !109, size: 128, offset: 8512)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3485, file: !2425, line: 860, baseType: !34, size: 32, offset: 8640)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3485, file: !2425, line: 861, baseType: !109, size: 128, offset: 8704)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3485, file: !2425, line: 873, baseType: !3677, size: 256, offset: 8832)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2425, line: 376, size: 256, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3682}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3677, file: !2425, line: 381, baseType: !51, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3677, file: !2425, line: 384, baseType: !465, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3677, file: !2425, line: 389, baseType: !465, size: 64, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3677, file: !2425, line: 392, baseType: !465, size: 64, offset: 192)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3485, file: !2425, line: 875, baseType: !109, size: 128, offset: 9088)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3485, file: !2425, line: 877, baseType: !3685, size: 320, offset: 9216)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3686, line: 86, size: 320, elements: !3687)
!3686 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3687 = !{!3688, !3689, !3690}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3685, file: !3686, line: 87, baseType: !34, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3685, file: !3686, line: 88, baseType: !109, size: 128, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3685, file: !3686, line: 89, baseType: !109, size: 128, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3485, file: !2425, line: 878, baseType: !765, size: 192, align: 64, offset: 9536)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3485, file: !2425, line: 881, baseType: !1246, size: 64, offset: 9728)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3485, file: !2425, line: 882, baseType: !1246, size: 64, offset: 9792)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3485, file: !2425, line: 884, baseType: !34, size: 32, offset: 9856)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3485, file: !2425, line: 885, baseType: !34, size: 32, offset: 9888)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3485, file: !2425, line: 886, baseType: !34, size: 32, offset: 9920)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3485, file: !2425, line: 888, baseType: !34, size: 32, offset: 9952)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3485, file: !2425, line: 890, baseType: !51, size: 64, offset: 9984)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3485, file: !2425, line: 893, baseType: !7, size: 32, offset: 10048)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3485, file: !2425, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3485, file: !2425, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3485, file: !2425, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3485, file: !2425, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3485, file: !2425, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3485, file: !2425, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3485, file: !2425, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3485, file: !2425, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3485, file: !2425, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3485, file: !2425, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3485, file: !2425, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3485, file: !2425, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3485, file: !2425, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3485, file: !2425, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3485, file: !2425, line: 969, baseType: !51, size: 64, offset: 10176)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3485, file: !2425, line: 971, baseType: !3716, size: 448, offset: 10240)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !257, line: 25, size: 448, elements: !3717)
!3717 = !{!3718, !3719, !3724}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3716, file: !257, line: 26, baseType: !51, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3716, file: !257, line: 27, baseType: !3720, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!1065, !3723}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, scope: !3716, file: !257, line: 28, baseType: !3725, size: 320, offset: 128)
!3725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3716, file: !257, line: 28, size: 320, elements: !3726)
!3726 = !{!3727, !3737, !3762}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3725, file: !257, line: 37, baseType: !3728, size: 320)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3725, file: !257, line: 30, size: 320, elements: !3729)
!3729 = !{!3730, !3732, !3733, !3734, !3735, !3736}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3728, file: !257, line: 31, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3728, file: !257, line: 32, baseType: !459, size: 32, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3728, file: !257, line: 33, baseType: !459, size: 32, offset: 96)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3728, file: !257, line: 34, baseType: !459, size: 32, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3728, file: !257, line: 35, baseType: !463, size: 64, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3728, file: !257, line: 36, baseType: !3731, size: 64, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3725, file: !257, line: 47, baseType: !3738, size: 192)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3725, file: !257, line: 39, size: 192, elements: !3739)
!3739 = !{!3740, !3741, !3742, !3761}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3738, file: !257, line: 40, baseType: !3173, size: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3738, file: !257, line: 41, baseType: !256, size: 32, offset: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, scope: !3738, file: !257, line: 42, baseType: !3743, size: 64, offset: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3738, file: !257, line: 42, size: 64, elements: !3744)
!3744 = !{!3745, !3753}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3743, file: !257, line: 43, baseType: !3746, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3748, line: 7, size: 128, elements: !3749)
!3748 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3749 = !{!3750, !3752}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3747, file: !3748, line: 8, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !49, line: 93, baseType: !55)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3747, file: !3748, line: 9, baseType: !55, size: 64, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3743, file: !257, line: 44, baseType: !3754, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3756, line: 7, size: 64, elements: !3757)
!3756 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3757 = !{!3758, !3760}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3755, file: !3756, line: 8, baseType: !3759, size: 32)
!3759 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3756, line: 5, baseType: !758)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3755, file: !3756, line: 9, baseType: !758, size: 32, offset: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3738, file: !257, line: 46, baseType: !463, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3725, file: !257, line: 55, baseType: !3763, size: 256)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3725, file: !257, line: 49, size: 256, elements: !3764)
!3764 = !{!3765, !3768, !3769, !3770, !3771}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3763, file: !257, line: 50, baseType: !3766, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !257, line: 14, flags: DIFlagFwdDecl)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3763, file: !257, line: 51, baseType: !34, size: 32, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3763, file: !257, line: 52, baseType: !34, size: 32, offset: 96)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3763, file: !257, line: 53, baseType: !51, size: 64, offset: 128)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3763, file: !257, line: 54, baseType: !51, size: 64, offset: 192)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3485, file: !2425, line: 973, baseType: !3773, size: 32, offset: 10688)
!3773 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !37, line: 27, baseType: !3774)
!3774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !49, line: 28, baseType: !34)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3485, file: !2425, line: 974, baseType: !3773, size: 32, offset: 10720)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3485, file: !2425, line: 978, baseType: !51, size: 64, offset: 10752)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3485, file: !2425, line: 987, baseType: !3484, size: 64, offset: 10816)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3485, file: !2425, line: 990, baseType: !3484, size: 64, offset: 10880)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3485, file: !2425, line: 995, baseType: !109, size: 128, offset: 10944)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3485, file: !2425, line: 996, baseType: !109, size: 128, offset: 11072)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3485, file: !2425, line: 997, baseType: !3484, size: 64, offset: 11200)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3485, file: !2425, line: 1005, baseType: !109, size: 128, offset: 11264)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3485, file: !2425, line: 1006, baseType: !109, size: 128, offset: 11392)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3485, file: !2425, line: 1009, baseType: !683, size: 64, offset: 11520)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3485, file: !2425, line: 1010, baseType: !3786, size: 512, offset: 11584)
!3786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 512, elements: !705)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3485, file: !2425, line: 1011, baseType: !109, size: 128, offset: 12096)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3485, file: !2425, line: 1012, baseType: !109, size: 128, offset: 12224)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3485, file: !2425, line: 1014, baseType: !1002, size: 64, offset: 12352)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3485, file: !2425, line: 1017, baseType: !2025, size: 64, offset: 12416)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3485, file: !2425, line: 1020, baseType: !2025, size: 64, offset: 12480)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3485, file: !2425, line: 1023, baseType: !32, size: 64, offset: 12544)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3485, file: !2425, line: 1025, baseType: !463, size: 64, offset: 12608)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3485, file: !2425, line: 1026, baseType: !463, size: 64, offset: 12672)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3485, file: !2425, line: 1031, baseType: !463, size: 64, offset: 12736)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3485, file: !2425, line: 1032, baseType: !3797, size: 192, offset: 12800)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2425, line: 324, size: 192, elements: !3798)
!3798 = !{!3799, !3800, !3801}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3797, file: !2425, line: 326, baseType: !463, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3797, file: !2425, line: 327, baseType: !463, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3797, file: !2425, line: 328, baseType: !647, size: 32, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3485, file: !2425, line: 1041, baseType: !51, size: 64, offset: 12992)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3485, file: !2425, line: 1042, baseType: !51, size: 64, offset: 13056)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3485, file: !2425, line: 1045, baseType: !463, size: 64, offset: 13120)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3485, file: !2425, line: 1048, baseType: !463, size: 64, offset: 13184)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3485, file: !2425, line: 1051, baseType: !51, size: 64, offset: 13248)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3485, file: !2425, line: 1052, baseType: !51, size: 64, offset: 13312)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3485, file: !2425, line: 1055, baseType: !3809, size: 640, offset: 13376)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3810, line: 132, size: 640, elements: !3811)
!3810 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3811 = !{!3812, !3818, !3819}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3809, file: !3810, line: 133, baseType: !3813, size: 576)
!3813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3814, size: 576, elements: !679)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3810, line: 117, size: 192, elements: !3815)
!3815 = !{!3816, !3817}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3814, file: !3810, line: 118, baseType: !463, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3814, file: !3810, line: 119, baseType: !3182, size: 128, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3809, file: !3810, line: 134, baseType: !7, size: 32, offset: 576)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3809, file: !3810, line: 135, baseType: !7, size: 32, offset: 608)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3485, file: !2425, line: 1058, baseType: !3821, size: 448, offset: 14016)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3810, line: 144, size: 448, elements: !3822)
!3822 = !{!3823, !3824, !3825}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3821, file: !3810, line: 145, baseType: !620, size: 128, align: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3821, file: !3810, line: 146, baseType: !642, size: 256, offset: 128)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3821, file: !3810, line: 147, baseType: !7, size: 32, offset: 384)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3485, file: !2425, line: 1064, baseType: !723, size: 64, offset: 14464)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3485, file: !2425, line: 1067, baseType: !723, size: 64, offset: 14528)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3485, file: !2425, line: 1070, baseType: !723, size: 64, offset: 14592)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3485, file: !2425, line: 1074, baseType: !750, size: 64, offset: 14656)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3485, file: !2425, line: 1084, baseType: !3831, size: 128, offset: 14720)
!3831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !3832)
!3832 = !{!3833}
!3833 = !DISubrange(count: 16)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3485, file: !2425, line: 1086, baseType: !3835, size: 64, offset: 14848)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2425, line: 55, flags: DIFlagFwdDecl)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3485, file: !2425, line: 1089, baseType: !3838, size: 64, offset: 14912)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3839, line: 12, size: 64, elements: !3840)
!3839 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3840 = !{!3841}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3838, file: !3839, line: 13, baseType: !3842, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3839, line: 8, flags: DIFlagFwdDecl)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3485, file: !2425, line: 1090, baseType: !3845, size: 128, offset: 14976)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3846, line: 13, size: 128, elements: !3847)
!3846 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3847 = !{!3848}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3845, file: !3846, line: 14, baseType: !109, size: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3485, file: !2425, line: 1097, baseType: !3850, size: 64, offset: 15104)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2425, line: 50, flags: DIFlagFwdDecl)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3485, file: !2425, line: 1100, baseType: !3853, size: 64, offset: 15168)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2425, line: 1100, flags: DIFlagFwdDecl)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3485, file: !2425, line: 1103, baseType: !3856, size: 64, offset: 15232)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2425, line: 53, flags: DIFlagFwdDecl)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3485, file: !2425, line: 1107, baseType: !3859, size: 64, offset: 15296)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3861, line: 31, size: 576, elements: !3862)
!3861 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3862 = !{!3863, !3864, !3867, !3870, !3873, !3874, !3875, !3878, !3879}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3860, file: !3861, line: 32, baseType: !687, size: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3860, file: !3861, line: 33, baseType: !3865, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3861, line: 9, flags: DIFlagFwdDecl)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3860, file: !3861, line: 34, baseType: !3868, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3861, line: 10, flags: DIFlagFwdDecl)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3860, file: !3861, line: 35, baseType: !3871, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3861, line: 8, flags: DIFlagFwdDecl)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3860, file: !3861, line: 36, baseType: !716, size: 64, offset: 256)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3860, file: !3861, line: 37, baseType: !2492, size: 64, offset: 320)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3860, file: !3861, line: 38, baseType: !3876, size: 64, offset: 384)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3861, line: 38, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3860, file: !3861, line: 39, baseType: !3876, size: 64, offset: 448)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3860, file: !3861, line: 40, baseType: !3880, size: 64, offset: 512)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3882, line: 771, size: 384, elements: !3883)
!3882 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3883 = !{!3884, !3885, !3886, !3887}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3881, file: !3882, line: 772, baseType: !948, size: 192)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3881, file: !3882, line: 773, baseType: !915, size: 64, offset: 192)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3881, file: !3882, line: 774, baseType: !1050, size: 64, offset: 256)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3881, file: !3882, line: 775, baseType: !3888, size: 64, offset: 320)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3890, line: 209, size: 4736, elements: !3891)
!3890 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3891 = !{!3892, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3889, file: !3890, line: 215, baseType: !3893, size: 896)
!3893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3894, size: 896, elements: !3951)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3890, line: 152, size: 1600, elements: !3896)
!3896 = !{!3897, !4002, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4132}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3895, file: !3890, line: 154, baseType: !3898, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3890, line: 389, size: 7872, elements: !3900)
!3900 = !{!3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3920, !3921, !3925, !3926, !3927, !3928, !3929, !3930, !3948, !3949, !3953, !3954, !3955, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3989, !3992, !3993, !4000}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3899, file: !3890, line: 391, baseType: !3895, size: 1600)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3899, file: !3890, line: 393, baseType: !51, size: 64, offset: 1600)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3899, file: !3890, line: 401, baseType: !34, size: 32, offset: 1664)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3899, file: !3890, line: 404, baseType: !34, size: 32, offset: 1696)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3899, file: !3890, line: 417, baseType: !34, size: 32, offset: 1728)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3899, file: !3890, line: 418, baseType: !34, size: 32, offset: 1760)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3899, file: !3890, line: 419, baseType: !34, size: 32, offset: 1792)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3899, file: !3890, line: 432, baseType: !34, size: 32, offset: 1824)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3899, file: !3890, line: 433, baseType: !34, size: 32, offset: 1856)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3899, file: !3890, line: 434, baseType: !34, size: 32, offset: 1888)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3899, file: !3890, line: 436, baseType: !34, size: 32, offset: 1920)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3899, file: !3890, line: 439, baseType: !7, size: 32, offset: 1952)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3899, file: !3890, line: 441, baseType: !1740, size: 64, offset: 1984)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3899, file: !3890, line: 442, baseType: !3915, size: 448, offset: 2048)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3890, line: 138, size: 448, elements: !3916)
!3916 = !{!3917, !3918, !3919}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3915, file: !3890, line: 140, baseType: !1740, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3915, file: !3890, line: 141, baseType: !51, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3915, file: !3890, line: 142, baseType: !2124, size: 320, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3899, file: !3890, line: 443, baseType: !3915, size: 448, offset: 2496)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3899, file: !3890, line: 446, baseType: !3922, offset: 2944)
!3922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3915, elements: !3923)
!3923 = !{!3924}
!3924 = !DISubrange(count: 0)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3899, file: !3890, line: 455, baseType: !105, size: 16, offset: 2944)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3899, file: !3890, line: 456, baseType: !105, size: 16, offset: 2960)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3899, file: !3890, line: 457, baseType: !105, size: 16, offset: 2976)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3899, file: !3890, line: 458, baseType: !105, size: 16, offset: 2992)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3899, file: !3890, line: 461, baseType: !3893, size: 896, offset: 3008)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3899, file: !3890, line: 463, baseType: !3931, size: 64, offset: 3904)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3890, line: 537, size: 41664, elements: !3933)
!3933 = !{!3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3947}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3932, file: !3890, line: 538, baseType: !1760, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3932, file: !3890, line: 541, baseType: !7, size: 32, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3932, file: !3890, line: 544, baseType: !34, size: 32, offset: 96)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3932, file: !3890, line: 547, baseType: !109, size: 128, offset: 128)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3932, file: !3890, line: 548, baseType: !620, size: 128, align: 64, offset: 256)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3932, file: !3890, line: 555, baseType: !3899, size: 7872, offset: 384)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3932, file: !3890, line: 558, baseType: !3898, size: 64, offset: 8256)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3932, file: !3890, line: 561, baseType: !61, size: 32, offset: 8320)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3932, file: !3890, line: 564, baseType: !7, size: 32, offset: 8352)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3932, file: !3890, line: 567, baseType: !3944, size: 32768, offset: 8384)
!3944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32768, elements: !3945)
!3945 = !{!3946}
!3946 = !DISubrange(count: 4096)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3932, file: !3890, line: 570, baseType: !3410, size: 512, offset: 41152)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3899, file: !3890, line: 469, baseType: !109, size: 128, offset: 3968)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3899, file: !3890, line: 478, baseType: !3950, size: 1792, offset: 4096)
!3950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1792, elements: !3951)
!3951 = !{!3952}
!3952 = !DISubrange(count: 14)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3899, file: !3890, line: 487, baseType: !3898, size: 64, offset: 5888)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3899, file: !3890, line: 488, baseType: !3898, size: 64, offset: 5952)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3899, file: !3890, line: 491, baseType: !3956, size: 64, offset: 6016)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3890, line: 327, size: 896, elements: !3958)
!3958 = !{!3959, !3962, !3972, !3973, !3974, !3975, !3976}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3957, file: !3890, line: 332, baseType: !3960)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3961, line: 64, elements: !1267)
!3961 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3957, file: !3890, line: 333, baseType: !3963, size: 192)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3890, line: 299, size: 192, elements: !3964)
!3964 = !{!3965}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3963, file: !3890, line: 300, baseType: !3966, size: 192)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3967, line: 17, size: 192, elements: !3968)
!3967 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3968 = !{!3969, !3970, !3971}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3966, file: !3967, line: 18, baseType: !463, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3966, file: !3967, line: 19, baseType: !463, size: 64, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3966, file: !3967, line: 20, baseType: !465, size: 64, offset: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3957, file: !3890, line: 339, baseType: !3963, size: 192, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3957, file: !3890, line: 347, baseType: !3963, size: 192, offset: 384)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3957, file: !3890, line: 353, baseType: !3963, size: 192, offset: 576)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3957, file: !3890, line: 366, baseType: !3898, size: 64, offset: 768)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3957, file: !3890, line: 367, baseType: !3898, size: 64, offset: 832)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3899, file: !3890, line: 492, baseType: !109, size: 128, offset: 6080)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3899, file: !3890, line: 495, baseType: !3963, size: 192, offset: 6208)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3899, file: !3890, line: 496, baseType: !3963, size: 192, offset: 6400)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3899, file: !3890, line: 497, baseType: !3797, size: 192, offset: 6592)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3899, file: !3890, line: 503, baseType: !109, size: 128, offset: 6784)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3899, file: !3890, line: 504, baseType: !642, size: 256, offset: 6912)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3899, file: !3890, line: 507, baseType: !66, size: 192, offset: 7168)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3899, file: !3890, line: 510, baseType: !964, size: 256, offset: 7360)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3899, file: !3890, line: 513, baseType: !3986, size: 64, offset: 7616)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3988, line: 214, elements: !1267)
!3988 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3899, file: !3890, line: 516, baseType: !3990, offset: 7680)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3991, line: 76, elements: !1267)
!3991 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3899, file: !3890, line: 519, baseType: !61, size: 32, offset: 7680)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3899, file: !3890, line: 522, baseType: !3994, size: 128, offset: 7712)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3890, line: 370, size: 128, elements: !3995)
!3995 = !{!3996, !3997, !3998, !3999}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3994, file: !3890, line: 372, baseType: !832, size: 8)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3994, file: !3890, line: 375, baseType: !34, size: 32, offset: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3994, file: !3890, line: 380, baseType: !34, size: 32, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3994, file: !3890, line: 386, baseType: !34, size: 32, offset: 96)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3899, file: !3890, line: 529, baseType: !4001, offset: 7872)
!4001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3898, elements: !604)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3895, file: !3890, line: 157, baseType: !4003, size: 64, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3890, line: 669, size: 1984, elements: !4005)
!4005 = !{!4006, !4010, !4014, !4018, !4019, !4020, !4021, !4025, !4029, !4030, !4036, !4040, !4041, !4042, !4046, !4050, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4077, !4078, !4115, !4116}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4004, file: !3890, line: 670, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!3894, !3894}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4004, file: !3890, line: 671, baseType: !4011, size: 64, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!34, !3894}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4004, file: !3890, line: 672, baseType: !4015, size: 64, offset: 128)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{null, !3894}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4004, file: !3890, line: 673, baseType: !4015, size: 64, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4004, file: !3890, line: 674, baseType: !4015, size: 64, offset: 256)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4004, file: !3890, line: 675, baseType: !4015, size: 64, offset: 320)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4004, file: !3890, line: 676, baseType: !4022, size: 64, offset: 384)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{null, !3894, !34}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4004, file: !3890, line: 677, baseType: !4026, size: 64, offset: 448)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!34, !1785, !3894}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4004, file: !3890, line: 679, baseType: !4026, size: 64, offset: 512)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4004, file: !3890, line: 682, baseType: !4031, size: 64, offset: 576)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!34, !4034}
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3890, line: 30, flags: DIFlagFwdDecl)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4004, file: !3890, line: 683, baseType: !4037, size: 64, offset: 640)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !4034}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4004, file: !3890, line: 684, baseType: !4037, size: 64, offset: 704)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4004, file: !3890, line: 685, baseType: !2228, size: 64, offset: 768)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4004, file: !3890, line: 686, baseType: !4043, size: 64, offset: 832)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!34, !3484, !3888}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4004, file: !3890, line: 688, baseType: !4047, size: 64, offset: 896)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !3484, !3888}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4004, file: !3890, line: 689, baseType: !4051, size: 64, offset: 960)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{null, !3484}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4004, file: !3890, line: 690, baseType: !4051, size: 64, offset: 1024)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4004, file: !3890, line: 691, baseType: !4051, size: 64, offset: 1088)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4004, file: !3890, line: 692, baseType: !4015, size: 64, offset: 1152)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4004, file: !3890, line: 694, baseType: !832, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4004, file: !3890, line: 707, baseType: !832, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4004, file: !3890, line: 719, baseType: !832, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4004, file: !3890, line: 722, baseType: !34, size: 32, offset: 1248)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4004, file: !3890, line: 723, baseType: !28, size: 64, offset: 1280)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4004, file: !3890, line: 726, baseType: !28, size: 64, offset: 1344)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4004, file: !3890, line: 729, baseType: !3931, size: 64, offset: 1408)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4004, file: !3890, line: 732, baseType: !4065, size: 192, offset: 1472)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4066, line: 19, size: 192, elements: !4067)
!4066 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4067 = !{!4068, !4075, !4076}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4065, file: !4066, line: 20, baseType: !4069, size: 128)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !4070, line: 296, size: 128, elements: !4071)
!4070 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!4071 = !{!4072, !4073, !4074}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !4069, file: !4070, line: 297, baseType: !71, size: 32)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !4069, file: !4070, line: 299, baseType: !1468, size: 32, offset: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !4069, file: !4070, line: 300, baseType: !32, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4065, file: !4066, line: 21, baseType: !7, size: 32, offset: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4065, file: !4066, line: 22, baseType: !7, size: 32, offset: 160)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4004, file: !3890, line: 738, baseType: !109, size: 128, offset: 1664)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4004, file: !3890, line: 744, baseType: !4079, size: 64, offset: 1792)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3890, line: 580, size: 1728, elements: !4081)
!4081 = !{!4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4091, !4092, !4093, !4097, !4101, !4102, !4103, !4104, !4105, !4109, !4113, !4114}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4080, file: !3890, line: 586, baseType: !3410, size: 512)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4080, file: !3890, line: 587, baseType: !51, size: 64, offset: 512)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4080, file: !3890, line: 593, baseType: !47, size: 64, offset: 576)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4080, file: !3890, line: 596, baseType: !7, size: 32, offset: 640)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4080, file: !3890, line: 604, baseType: !7, size: 32, offset: 672)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4080, file: !3890, line: 610, baseType: !4003, size: 64, offset: 704)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4080, file: !3890, line: 611, baseType: !109, size: 128, offset: 768)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4080, file: !3890, line: 612, baseType: !4090, size: 64, offset: 896)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4080, file: !3890, line: 614, baseType: !1776, size: 64, offset: 960)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4080, file: !3890, line: 615, baseType: !1834, size: 64, offset: 1024)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4080, file: !3890, line: 621, baseType: !4094, size: 64, offset: 1088)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!463, !3894, !4079}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4080, file: !3890, line: 625, baseType: !4098, size: 64, offset: 1152)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!639, !3894, !4079}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4080, file: !3890, line: 628, baseType: !1815, size: 64, offset: 1216)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4080, file: !3890, line: 631, baseType: !1803, size: 64, offset: 1280)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4080, file: !3890, line: 632, baseType: !1811, size: 64, offset: 1344)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4080, file: !3890, line: 633, baseType: !1807, size: 64, offset: 1408)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4080, file: !3890, line: 640, baseType: !4106, size: 64, offset: 1472)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!34, !3894, !4079, !463}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4080, file: !3890, line: 645, baseType: !4110, size: 64, offset: 1536)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!34, !3894, !4079, !639}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4080, file: !3890, line: 654, baseType: !1842, size: 64, offset: 1600)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4080, file: !3890, line: 657, baseType: !1849, size: 64, offset: 1664)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4004, file: !3890, line: 745, baseType: !4079, size: 64, offset: 1856)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4004, file: !3890, line: 754, baseType: !7, size: 32, offset: 1920)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3895, file: !3890, line: 160, baseType: !1562, size: 128, offset: 128)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3895, file: !3890, line: 163, baseType: !109, size: 128, offset: 256)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3895, file: !3890, line: 164, baseType: !109, size: 128, offset: 384)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3895, file: !3890, line: 167, baseType: !109, size: 128, offset: 512)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3895, file: !3890, line: 173, baseType: !34, size: 32, offset: 640)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3895, file: !3890, line: 175, baseType: !7, size: 32, offset: 672)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3895, file: !3890, line: 183, baseType: !463, size: 64, offset: 704)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3895, file: !3890, line: 189, baseType: !61, size: 32, offset: 768)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3895, file: !3890, line: 192, baseType: !964, size: 256, offset: 832)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3895, file: !3890, line: 193, baseType: !4127, size: 448, offset: 1088)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !965, line: 120, size: 448, elements: !4128)
!4128 = !{!4129, !4130, !4131}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4127, file: !965, line: 121, baseType: !964, size: 256)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4127, file: !965, line: 122, baseType: !620, size: 128, align: 64, offset: 256)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4127, file: !965, line: 125, baseType: !2186, size: 64, offset: 384)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3895, file: !3890, line: 199, baseType: !3894, size: 64, offset: 1536)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3889, file: !3890, line: 218, baseType: !687, size: 32, offset: 896)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3889, file: !3890, line: 226, baseType: !3888, size: 64, offset: 960)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3889, file: !3890, line: 229, baseType: !3898, size: 64, offset: 1024)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3889, file: !3890, line: 232, baseType: !34, size: 32, offset: 1088)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3889, file: !3890, line: 241, baseType: !109, size: 128, offset: 1152)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3889, file: !3890, line: 242, baseType: !109, size: 128, offset: 1280)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3889, file: !3890, line: 243, baseType: !109, size: 128, offset: 1408)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3889, file: !3890, line: 246, baseType: !109, size: 128, offset: 1536)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3889, file: !3890, line: 255, baseType: !3950, size: 1792, offset: 1664)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3889, file: !3890, line: 258, baseType: !109, size: 128, offset: 3456)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3889, file: !3890, line: 259, baseType: !109, size: 128, offset: 3584)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3889, file: !3890, line: 265, baseType: !700, size: 128, offset: 3712)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3889, file: !3890, line: 271, baseType: !109, size: 128, offset: 3840)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3889, file: !3890, line: 277, baseType: !109, size: 128, offset: 3968)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3889, file: !3890, line: 278, baseType: !109, size: 128, offset: 4096)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3889, file: !3890, line: 279, baseType: !109, size: 128, offset: 4224)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3889, file: !3890, line: 288, baseType: !3898, size: 64, offset: 4352)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3889, file: !3890, line: 289, baseType: !3898, size: 64, offset: 4416)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3889, file: !3890, line: 290, baseType: !3888, size: 64, offset: 4480)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3889, file: !3890, line: 293, baseType: !832, size: 8, offset: 4544)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3889, file: !3890, line: 296, baseType: !620, size: 128, align: 64, offset: 4608)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3485, file: !2425, line: 1110, baseType: !4155, size: 64, offset: 15360)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4157, line: 93, size: 8768, elements: !4158)
!4157 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4158 = !{!4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4207, !4216, !4217, !4219, !4220, !4221, !4224, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4262, !4263, !4270, !4280, !4343, !4344, !4347, !4348, !4349, !4350, !4351, !4352}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4156, file: !4157, line: 94, baseType: !687, size: 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4156, file: !4157, line: 95, baseType: !61, size: 32, offset: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4156, file: !4157, line: 96, baseType: !34, size: 32, offset: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4156, file: !4157, line: 97, baseType: !34, size: 32, offset: 96)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4156, file: !4157, line: 98, baseType: !109, size: 128, offset: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4156, file: !4157, line: 100, baseType: !66, size: 192, offset: 256)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4156, file: !4157, line: 103, baseType: !3484, size: 64, offset: 448)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4156, file: !4157, line: 106, baseType: !4167, size: 192, offset: 512)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4168, line: 32, size: 192, elements: !4169)
!4168 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4169 = !{!4170, !4171}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4167, file: !4168, line: 33, baseType: !109, size: 128)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4167, file: !4168, line: 34, baseType: !4172, size: 64, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4173, line: 25, baseType: !4174)
!4173 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4173, line: 23, size: 64, elements: !4175)
!4175 = !{!4176}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4174, file: !4173, line: 24, baseType: !1672, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4156, file: !4157, line: 109, baseType: !696, size: 64, offset: 704)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4156, file: !4157, line: 112, baseType: !34, size: 32, offset: 768)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4156, file: !4157, line: 114, baseType: !34, size: 32, offset: 800)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4156, file: !4157, line: 115, baseType: !3484, size: 64, offset: 832)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4156, file: !4157, line: 118, baseType: !34, size: 32, offset: 896)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4156, file: !4157, line: 119, baseType: !7, size: 32, offset: 928)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4156, file: !4157, line: 121, baseType: !4184, size: 64, offset: 960)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4157, line: 80, size: 448, elements: !4186)
!4186 = !{!4187, !4188, !4194}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4185, file: !4157, line: 81, baseType: !61, size: 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4185, file: !4157, line: 82, baseType: !4189, size: 128, offset: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4157, line: 75, size: 128, elements: !4190)
!4190 = !{!4191, !4192}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4189, file: !4157, line: 76, baseType: !3484, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4189, file: !4157, line: 77, baseType: !4193, size: 64, offset: 64)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4185, file: !4157, line: 83, baseType: !1003, size: 256, offset: 192)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4156, file: !4157, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4156, file: !4157, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4156, file: !4157, line: 138, baseType: !7, size: 32, offset: 1056)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4156, file: !4157, line: 139, baseType: !109, size: 128, offset: 1088)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4156, file: !4157, line: 142, baseType: !3130, size: 512, offset: 1216)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4156, file: !4157, line: 143, baseType: !3110, size: 64, offset: 1728)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4156, file: !4157, line: 150, baseType: !4202, size: 256, offset: 1792)
!4202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4203, size: 256, elements: !2015)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4157, line: 38, size: 128, elements: !4204)
!4204 = !{!4205, !4206}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4203, file: !4157, line: 39, baseType: !463, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4203, file: !4157, line: 40, baseType: !463, size: 64, offset: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4156, file: !4157, line: 156, baseType: !4208, size: 192, offset: 2048)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4157, line: 66, size: 192, elements: !4209)
!4209 = !{!4210}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4208, file: !4157, line: 67, baseType: !4211, size: 192)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4157, line: 47, size: 192, elements: !4212)
!4212 = !{!4213, !4214, !4215}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4211, file: !4157, line: 48, baseType: !635, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4211, file: !4157, line: 49, baseType: !635, size: 64, offset: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4211, file: !4157, line: 50, baseType: !635, size: 64, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4156, file: !4157, line: 160, baseType: !3809, size: 640, offset: 2240)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4156, file: !4157, line: 163, baseType: !4218, size: 256, offset: 2880)
!4218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 256, elements: !705)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4156, file: !4157, line: 169, baseType: !683, size: 64, offset: 3136)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4156, file: !4157, line: 172, baseType: !34, size: 32, offset: 3200)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4156, file: !4157, line: 174, baseType: !4222, size: 64, offset: 3264)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4157, line: 174, flags: DIFlagFwdDecl)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4156, file: !4157, line: 185, baseType: !4225, size: 64, offset: 3328)
!4225 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !432, line: 860, baseType: !4226)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !432, line: 853, size: 64, elements: !4227)
!4227 = !{!4228, !4229}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4226, file: !432, line: 858, baseType: !431, size: 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4226, file: !432, line: 859, baseType: !71, size: 32, offset: 32)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4156, file: !4157, line: 186, baseType: !463, size: 64, offset: 3392)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4156, file: !4157, line: 186, baseType: !463, size: 64, offset: 3456)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4156, file: !4157, line: 186, baseType: !463, size: 64, offset: 3520)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4156, file: !4157, line: 186, baseType: !463, size: 64, offset: 3584)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4156, file: !4157, line: 187, baseType: !463, size: 64, offset: 3648)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4156, file: !4157, line: 188, baseType: !463, size: 64, offset: 3712)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4156, file: !4157, line: 189, baseType: !3797, size: 192, offset: 3776)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4156, file: !4157, line: 190, baseType: !51, size: 64, offset: 3968)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4156, file: !4157, line: 190, baseType: !51, size: 64, offset: 4032)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4156, file: !4157, line: 190, baseType: !51, size: 64, offset: 4096)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4156, file: !4157, line: 190, baseType: !51, size: 64, offset: 4160)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4156, file: !4157, line: 191, baseType: !51, size: 64, offset: 4224)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4156, file: !4157, line: 191, baseType: !51, size: 64, offset: 4288)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4156, file: !4157, line: 191, baseType: !51, size: 64, offset: 4352)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4156, file: !4157, line: 191, baseType: !51, size: 64, offset: 4416)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4156, file: !4157, line: 192, baseType: !51, size: 64, offset: 4480)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4156, file: !4157, line: 192, baseType: !51, size: 64, offset: 4544)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4156, file: !4157, line: 192, baseType: !51, size: 64, offset: 4608)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4156, file: !4157, line: 192, baseType: !51, size: 64, offset: 4672)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4156, file: !4157, line: 193, baseType: !51, size: 64, offset: 4736)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4156, file: !4157, line: 193, baseType: !51, size: 64, offset: 4800)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4156, file: !4157, line: 194, baseType: !4252, size: 448, offset: 4864)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4253, line: 12, size: 448, elements: !4254)
!4253 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4254 = !{!4255, !4256, !4257, !4258, !4259, !4260, !4261}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4252, file: !4253, line: 15, baseType: !463, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4252, file: !4253, line: 17, baseType: !463, size: 64, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4252, file: !4253, line: 19, baseType: !463, size: 64, offset: 128)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4252, file: !4253, line: 21, baseType: !463, size: 64, offset: 192)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4252, file: !4253, line: 29, baseType: !463, size: 64, offset: 256)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4252, file: !4253, line: 35, baseType: !463, size: 64, offset: 320)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4252, file: !4253, line: 44, baseType: !463, size: 64, offset: 384)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4156, file: !4157, line: 202, baseType: !465, size: 64, offset: 5312)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4156, file: !4157, line: 213, baseType: !4264, size: 2048, offset: 5376)
!4264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4265, size: 2048, elements: !3832)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4266, line: 43, size: 128, elements: !4267)
!4266 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4267 = !{!4268, !4269}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4265, file: !4266, line: 44, baseType: !50, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4265, file: !4266, line: 45, baseType: !50, size: 64, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4156, file: !4157, line: 216, baseType: !4271, size: 448, offset: 7424)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4157, line: 30, size: 448, elements: !4272)
!4272 = !{!4273, !4274, !4275, !4276, !4277, !4278, !4279}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4271, file: !4157, line: 31, baseType: !34, size: 32)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4271, file: !4157, line: 32, baseType: !1065, size: 64, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4271, file: !4157, line: 33, baseType: !51, size: 64, offset: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4271, file: !4157, line: 34, baseType: !463, size: 64, offset: 192)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4271, file: !4157, line: 34, baseType: !463, size: 64, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4271, file: !4157, line: 35, baseType: !51, size: 64, offset: 320)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4271, file: !4157, line: 35, baseType: !51, size: 64, offset: 384)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4156, file: !4157, line: 219, baseType: !4281, size: 64, offset: 7872)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4283, line: 41, size: 3456, elements: !4284)
!4283 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4284 = !{!4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4299, !4300, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4282, file: !4283, line: 47, baseType: !106, size: 16)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4282, file: !4283, line: 48, baseType: !460, size: 32, offset: 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4282, file: !4283, line: 54, baseType: !97, size: 8, offset: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4282, file: !4283, line: 55, baseType: !97, size: 8, offset: 72)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4282, file: !4283, line: 73, baseType: !464, size: 64, align: 64, offset: 128)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4282, file: !4283, line: 74, baseType: !464, size: 64, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4282, file: !4283, line: 81, baseType: !464, size: 64, offset: 256)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4282, file: !4283, line: 82, baseType: !464, size: 64, offset: 320)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4282, file: !4283, line: 85, baseType: !464, size: 64, offset: 384)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4282, file: !4283, line: 86, baseType: !464, size: 64, offset: 448)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4282, file: !4283, line: 94, baseType: !464, size: 64, offset: 512)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4282, file: !4283, line: 102, baseType: !464, size: 64, offset: 576)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4282, file: !4283, line: 107, baseType: !4298, size: 256, offset: 640)
!4298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !472)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4282, file: !4283, line: 108, baseType: !97, size: 8, align: 64, offset: 896)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4282, file: !4283, line: 110, baseType: !4301, size: 24, offset: 904)
!4301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 24, elements: !679)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4282, file: !4283, line: 111, baseType: !460, size: 32, align: 64, offset: 960)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4282, file: !4283, line: 113, baseType: !460, size: 32, offset: 992)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4282, file: !4283, line: 114, baseType: !460, size: 32, offset: 1024)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4282, file: !4283, line: 115, baseType: !460, size: 32, offset: 1056)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4282, file: !4283, line: 117, baseType: !460, size: 32, offset: 1088)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4282, file: !4283, line: 118, baseType: !464, size: 64, align: 64, offset: 1152)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4282, file: !4283, line: 120, baseType: !464, size: 64, offset: 1216)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4282, file: !4283, line: 121, baseType: !464, size: 64, offset: 1280)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4282, file: !4283, line: 122, baseType: !464, size: 64, offset: 1344)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4282, file: !4283, line: 123, baseType: !464, size: 64, offset: 1408)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4282, file: !4283, line: 133, baseType: !464, size: 64, offset: 1472)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4282, file: !4283, line: 137, baseType: !464, size: 64, offset: 1536)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4282, file: !4283, line: 142, baseType: !464, size: 64, offset: 1600)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4282, file: !4283, line: 143, baseType: !464, size: 64, offset: 1664)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4282, file: !4283, line: 146, baseType: !464, size: 64, offset: 1728)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4282, file: !4283, line: 147, baseType: !464, size: 64, offset: 1792)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4282, file: !4283, line: 148, baseType: !464, size: 64, offset: 1856)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4282, file: !4283, line: 149, baseType: !464, size: 64, offset: 1920)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4282, file: !4283, line: 154, baseType: !464, size: 64, offset: 1984)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4282, file: !4283, line: 155, baseType: !464, size: 64, offset: 2048)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4282, file: !4283, line: 156, baseType: !464, size: 64, offset: 2112)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4282, file: !4283, line: 158, baseType: !464, size: 64, offset: 2176)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4282, file: !4283, line: 159, baseType: !464, size: 64, offset: 2240)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4282, file: !4283, line: 162, baseType: !464, size: 64, offset: 2304)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4282, file: !4283, line: 163, baseType: !464, size: 64, offset: 2368)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4282, file: !4283, line: 164, baseType: !464, size: 64, offset: 2432)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4282, file: !4283, line: 167, baseType: !464, size: 64, offset: 2496)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4282, file: !4283, line: 168, baseType: !464, size: 64, offset: 2560)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4282, file: !4283, line: 171, baseType: !464, size: 64, offset: 2624)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4282, file: !4283, line: 172, baseType: !464, size: 64, offset: 2688)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4282, file: !4283, line: 175, baseType: !464, size: 64, offset: 2752)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4282, file: !4283, line: 178, baseType: !464, size: 64, offset: 2816)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4282, file: !4283, line: 179, baseType: !464, size: 64, offset: 2880)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4282, file: !4283, line: 182, baseType: !460, size: 32, offset: 2944)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4282, file: !4283, line: 186, baseType: !464, size: 64, align: 64, offset: 3008)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4282, file: !4283, line: 194, baseType: !464, size: 64, offset: 3072)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4282, file: !4283, line: 195, baseType: !464, size: 64, offset: 3136)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4282, file: !4283, line: 199, baseType: !464, size: 64, offset: 3200)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4282, file: !4283, line: 200, baseType: !464, size: 64, offset: 3264)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4282, file: !4283, line: 203, baseType: !464, size: 64, offset: 3328)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4282, file: !4283, line: 204, baseType: !464, size: 64, offset: 3392)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4156, file: !4157, line: 222, baseType: !7, size: 32, offset: 7936)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4156, file: !4157, line: 223, baseType: !4345, size: 64, offset: 8000)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4157, line: 223, flags: DIFlagFwdDecl)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4156, file: !4157, line: 230, baseType: !832, size: 8, offset: 8064)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4156, file: !4157, line: 231, baseType: !801, size: 16, offset: 8080)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4156, file: !4157, line: 232, baseType: !801, size: 16, offset: 8096)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4156, file: !4157, line: 234, baseType: !1246, size: 64, offset: 8128)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4156, file: !4157, line: 237, baseType: !642, size: 256, offset: 8192)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4156, file: !4157, line: 243, baseType: !773, size: 320, offset: 8448)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3485, file: !2425, line: 1111, baseType: !4354, size: 64, offset: 15424)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4157, line: 20, size: 16640, elements: !4356)
!4356 = !{!4357, !4358, !4359, !4360}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4355, file: !4157, line: 21, baseType: !71, size: 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4355, file: !4157, line: 22, baseType: !687, size: 32, offset: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4355, file: !4157, line: 23, baseType: !66, size: 192, offset: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4355, file: !4157, line: 24, baseType: !4361, size: 16384, offset: 256)
!4361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4362, size: 16384, elements: !1160)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4168, line: 51, size: 256, elements: !4363)
!4363 = !{!4364}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4362, file: !4168, line: 52, baseType: !4365, size: 256)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4168, line: 37, size: 256, elements: !4366)
!4366 = !{!4367, !4374, !4375, !4379}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4365, file: !4168, line: 39, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4369, line: 83, baseType: !4370)
!4369 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4369, line: 82, baseType: !4372)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{null, !34}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4365, file: !4168, line: 40, baseType: !51, size: 64, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4365, file: !4168, line: 46, baseType: !4376, size: 64, offset: 128)
!4376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4369, line: 86, baseType: !4377)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4369, line: 85, baseType: !2229)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4365, file: !4168, line: 48, baseType: !4172, size: 64, offset: 192)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3485, file: !2425, line: 1112, baseType: !4172, size: 64, offset: 15488)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3485, file: !2425, line: 1113, baseType: !4172, size: 64, offset: 15552)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3485, file: !2425, line: 1115, baseType: !4172, size: 64, offset: 15616)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3485, file: !2425, line: 1116, baseType: !4167, size: 192, offset: 15680)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3485, file: !2425, line: 1117, baseType: !51, size: 64, offset: 15872)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3485, file: !2425, line: 1118, baseType: !47, size: 64, offset: 15936)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3485, file: !2425, line: 1119, baseType: !7, size: 32, offset: 16000)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3485, file: !2425, line: 1121, baseType: !623, size: 64, offset: 16064)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3485, file: !2425, line: 1125, baseType: !4389, size: 64, offset: 16128)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2425, line: 43, flags: DIFlagFwdDecl)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3485, file: !2425, line: 1127, baseType: !396, size: 32, offset: 16192)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3485, file: !2425, line: 1128, baseType: !7, size: 32, offset: 16224)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3485, file: !2425, line: 1130, baseType: !4394, size: 128, offset: 16256)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4395, line: 37, size: 128, elements: !4396)
!4395 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4396 = !{!4397, !4398, !4399}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4394, file: !4395, line: 38, baseType: !34, size: 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4394, file: !4395, line: 39, baseType: !61, size: 32, offset: 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4394, file: !4395, line: 40, baseType: !4400, size: 64, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4395, line: 24, flags: DIFlagFwdDecl)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3485, file: !2425, line: 1131, baseType: !4403, size: 256, offset: 16384)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4404, line: 12, size: 256, elements: !4405)
!4404 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4405 = !{!4406, !4407, !4408, !4409}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4403, file: !4404, line: 13, baseType: !531, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4403, file: !4404, line: 14, baseType: !51, size: 64, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4403, file: !4404, line: 15, baseType: !51, size: 64, offset: 128)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4403, file: !4404, line: 16, baseType: !832, size: 8, offset: 192)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3485, file: !2425, line: 1134, baseType: !463, size: 64, offset: 16640)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3485, file: !2425, line: 1135, baseType: !463, size: 64, offset: 16704)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3485, file: !2425, line: 1138, baseType: !71, size: 32, offset: 16768)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3485, file: !2425, line: 1141, baseType: !647, size: 32, offset: 16800)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3485, file: !2425, line: 1143, baseType: !4415, size: 64, offset: 16832)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2425, line: 735, size: 64, elements: !4416)
!4416 = !{!4417}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4415, file: !2425, line: 736, baseType: !4418, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3485, file: !2425, line: 1147, baseType: !3185, size: 128, offset: 16896)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3485, file: !2425, line: 1149, baseType: !3484, size: 64, offset: 17024)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3485, file: !2425, line: 1151, baseType: !4422, size: 64, offset: 17088)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2425, line: 1151, flags: DIFlagFwdDecl)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3485, file: !2425, line: 1188, baseType: !32, size: 64, offset: 17152)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3485, file: !2425, line: 1191, baseType: !4426, size: 64, offset: 17216)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2425, line: 44, flags: DIFlagFwdDecl)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3485, file: !2425, line: 1194, baseType: !4429, size: 64, offset: 17280)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2425, line: 45, flags: DIFlagFwdDecl)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3485, file: !2425, line: 1197, baseType: !4432, size: 64, offset: 17344)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !4434, line: 155, size: 64, elements: !4435)
!4434 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!4435 = !{!4436}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4433, file: !4434, line: 157, baseType: !51, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3485, file: !2425, line: 1199, baseType: !4438, size: 64, offset: 17408)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2904, line: 99, size: 128, elements: !4440)
!4440 = !{!4441, !4442, !4443}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4439, file: !2904, line: 100, baseType: !633, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4439, file: !2904, line: 101, baseType: !61, size: 32, offset: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4439, file: !2904, line: 103, baseType: !38, size: 16, offset: 96)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3485, file: !2425, line: 1202, baseType: !4445, size: 64, offset: 17472)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2425, line: 48, flags: DIFlagFwdDecl)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3485, file: !2425, line: 1205, baseType: !51, size: 64, offset: 17536)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3485, file: !2425, line: 1206, baseType: !4449, size: 64, offset: 17600)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4168, line: 14, baseType: !4451)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4168, line: 12, size: 384, elements: !4452)
!4452 = !{!4453}
!4453 = !DIDerivedType(tag: DW_TAG_member, scope: !4451, file: !4168, line: 13, baseType: !4454, size: 384)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4451, file: !4168, line: 13, size: 384, elements: !4455)
!4455 = !{!4456, !4457, !4458, !4459}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4454, file: !4168, line: 13, baseType: !34, size: 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4454, file: !4168, line: 13, baseType: !34, size: 32, offset: 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4454, file: !4168, line: 13, baseType: !34, size: 32, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4454, file: !4168, line: 13, baseType: !4460, size: 256, offset: 128)
!4460 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4461, line: 37, size: 256, elements: !4462)
!4461 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4462 = !{!4463, !4468, !4481, !4487, !4496, !4523, !4528}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4460, file: !4461, line: 42, baseType: !4464, size: 64)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4460, file: !4461, line: 39, size: 64, elements: !4465)
!4465 = !{!4466, !4467}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4464, file: !4461, line: 40, baseType: !3774, size: 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4464, file: !4461, line: 41, baseType: !402, size: 32, offset: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4460, file: !4461, line: 50, baseType: !4469, size: 192)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4460, file: !4461, line: 45, size: 192, elements: !4470)
!4470 = !{!4471, !4473, !4474, !4480}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4469, file: !4461, line: 46, baseType: !4472, size: 32)
!4472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !49, line: 95, baseType: !34)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4469, file: !4461, line: 47, baseType: !34, size: 32, offset: 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4469, file: !4461, line: 48, baseType: !4475, size: 64, offset: 64)
!4475 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4461, line: 11, baseType: !4476)
!4476 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4461, line: 8, size: 64, elements: !4477)
!4477 = !{!4478, !4479}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4476, file: !4461, line: 9, baseType: !34, size: 32)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4476, file: !4461, line: 10, baseType: !32, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4469, file: !4461, line: 49, baseType: !34, size: 32, offset: 128)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4460, file: !4461, line: 57, baseType: !4482, size: 128)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4460, file: !4461, line: 53, size: 128, elements: !4483)
!4483 = !{!4484, !4485, !4486}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4482, file: !4461, line: 54, baseType: !3774, size: 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4482, file: !4461, line: 55, baseType: !402, size: 32, offset: 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4482, file: !4461, line: 56, baseType: !4475, size: 64, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4460, file: !4461, line: 66, baseType: !4488, size: 256)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4460, file: !4461, line: 60, size: 256, elements: !4489)
!4489 = !{!4490, !4491, !4492, !4493, !4495}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4488, file: !4461, line: 61, baseType: !3774, size: 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4488, file: !4461, line: 62, baseType: !402, size: 32, offset: 32)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4488, file: !4461, line: 63, baseType: !34, size: 32, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4488, file: !4461, line: 64, baseType: !4494, size: 64, offset: 128)
!4494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !49, line: 94, baseType: !1189)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4488, file: !4461, line: 65, baseType: !4494, size: 64, offset: 192)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4460, file: !4461, line: 105, baseType: !4497, size: 256)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4460, file: !4461, line: 69, size: 256, elements: !4498)
!4498 = !{!4499, !4500}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4497, file: !4461, line: 70, baseType: !32, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, scope: !4497, file: !4461, line: 79, baseType: !4501, size: 192, offset: 64)
!4501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4497, file: !4461, line: 79, size: 192, elements: !4502)
!4502 = !{!4503, !4504, !4505, !4512, !4517}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4501, file: !4461, line: 81, baseType: !34, size: 32)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4501, file: !4461, line: 86, baseType: !801, size: 16)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4501, file: !4461, line: 92, baseType: !4506, size: 192)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4501, file: !4461, line: 88, size: 192, elements: !4507)
!4507 = !{!4508, !4510, !4511}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4506, file: !4461, line: 89, baseType: !4509, size: 64)
!4509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !2510)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4506, file: !4461, line: 90, baseType: !32, size: 64, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4506, file: !4461, line: 91, baseType: !32, size: 64, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4501, file: !4461, line: 97, baseType: !4513, size: 96)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4501, file: !4461, line: 94, size: 96, elements: !4514)
!4514 = !{!4515, !4516}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4513, file: !4461, line: 95, baseType: !4509, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4513, file: !4461, line: 96, baseType: !460, size: 32, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4501, file: !4461, line: 103, baseType: !4518, size: 128)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4501, file: !4461, line: 99, size: 128, elements: !4519)
!4519 = !{!4520, !4521, !4522}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4518, file: !4461, line: 100, baseType: !51, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4518, file: !4461, line: 101, baseType: !460, size: 32, offset: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4518, file: !4461, line: 102, baseType: !460, size: 32, offset: 96)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4460, file: !4461, line: 111, baseType: !4524, size: 128)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4460, file: !4461, line: 108, size: 128, elements: !4525)
!4525 = !{!4526, !4527}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4524, file: !4461, line: 109, baseType: !1065, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4524, file: !4461, line: 110, baseType: !34, size: 32, offset: 64)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4460, file: !4461, line: 118, baseType: !4529, size: 128)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4460, file: !4461, line: 114, size: 128, elements: !4530)
!4530 = !{!4531, !4532, !4533}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4529, file: !4461, line: 115, baseType: !32, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4529, file: !4461, line: 116, baseType: !34, size: 32, offset: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4529, file: !4461, line: 117, baseType: !7, size: 32, offset: 96)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3485, file: !2425, line: 1208, baseType: !4252, size: 448, offset: 17664)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3485, file: !2425, line: 1215, baseType: !463, size: 64, offset: 18112)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3485, file: !2425, line: 1217, baseType: !463, size: 64, offset: 18176)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3485, file: !2425, line: 1219, baseType: !463, size: 64, offset: 18240)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3485, file: !2425, line: 1223, baseType: !1667, size: 64, offset: 18304)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3485, file: !2425, line: 1225, baseType: !431, size: 32, offset: 18368)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3485, file: !2425, line: 1226, baseType: !34, size: 32, offset: 18400)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3485, file: !2425, line: 1227, baseType: !34, size: 32, offset: 18432)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3485, file: !2425, line: 1231, baseType: !3888, size: 64, offset: 18496)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3485, file: !2425, line: 1233, baseType: !109, size: 128, offset: 18560)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3485, file: !2425, line: 1240, baseType: !4545, size: 64, offset: 18688)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2425, line: 62, flags: DIFlagFwdDecl)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3485, file: !2425, line: 1242, baseType: !4548, size: 64, offset: 18752)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2425, line: 1242, flags: DIFlagFwdDecl)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3485, file: !2425, line: 1244, baseType: !109, size: 128, offset: 18816)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3485, file: !2425, line: 1245, baseType: !4552, size: 64, offset: 18944)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2425, line: 51, flags: DIFlagFwdDecl)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3485, file: !2425, line: 1246, baseType: !642, size: 256, offset: 19008)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3485, file: !2425, line: 1247, baseType: !7, size: 32, offset: 19264)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3485, file: !2425, line: 1250, baseType: !4557, size: 64, offset: 19328)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2425, line: 57, flags: DIFlagFwdDecl)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3485, file: !2425, line: 1251, baseType: !642, size: 256, offset: 19392)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3485, file: !2425, line: 1252, baseType: !109, size: 128, offset: 19648)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3485, file: !2425, line: 1259, baseType: !1659, size: 64, offset: 19776)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3485, file: !2425, line: 1260, baseType: !801, size: 16, offset: 19840)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3485, file: !2425, line: 1261, baseType: !801, size: 16, offset: 19856)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3485, file: !2425, line: 1314, baseType: !4565, size: 64, offset: 19904)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4567, line: 62, size: 256, align: 256, elements: !4568)
!4567 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4568 = !{!4569, !4570, !4571, !4572, !4573, !4574, !4575}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4566, file: !4567, line: 75, baseType: !460, size: 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4566, file: !4567, line: 90, baseType: !460, size: 32, offset: 32)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4566, file: !4567, line: 112, baseType: !464, size: 64, offset: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4566, file: !4567, line: 132, baseType: !460, size: 32, offset: 128)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4566, file: !4567, line: 140, baseType: !460, size: 32, offset: 160)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4566, file: !4567, line: 149, baseType: !460, size: 32, offset: 192)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4566, file: !4567, line: 154, baseType: !4576, offset: 224)
!4576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !604)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3485, file: !2425, line: 1315, baseType: !459, size: 32, offset: 19968)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3485, file: !2425, line: 1316, baseType: !459, size: 32, offset: 20000)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3485, file: !2425, line: 1321, baseType: !51, size: 64, offset: 20032)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3485, file: !2425, line: 1325, baseType: !34, size: 32, offset: 20096)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3485, file: !2425, line: 1326, baseType: !34, size: 32, offset: 20128)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3485, file: !2425, line: 1327, baseType: !34, size: 32, offset: 20160)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3485, file: !2425, line: 1328, baseType: !34, size: 32, offset: 20192)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3485, file: !2425, line: 1329, baseType: !620, size: 128, align: 64, offset: 20224)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3485, file: !2425, line: 1332, baseType: !4586, size: 128, offset: 20352)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4587, line: 51, size: 128, elements: !4588)
!4587 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4588 = !{!4589, !4594, !4595}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4586, file: !4587, line: 60, baseType: !4590, size: 64)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4591, line: 7, size: 64, elements: !4592)
!4591 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4592 = !{!4593}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4590, file: !4591, line: 12, baseType: !3644, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4586, file: !4587, line: 63, baseType: !832, size: 8, offset: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4586, file: !4587, line: 70, baseType: !832, size: 8, offset: 72)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3485, file: !2425, line: 1335, baseType: !2423, size: 64, offset: 20480)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3485, file: !2425, line: 1337, baseType: !4598, size: 128, offset: 20544)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4587, line: 39, size: 128, elements: !4599)
!4599 = !{!4600, !4601, !4602}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4598, file: !4587, line: 40, baseType: !1498, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4598, file: !4587, line: 42, baseType: !460, size: 32, offset: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4598, file: !4587, line: 43, baseType: !460, size: 32, offset: 96)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3485, file: !2425, line: 1340, baseType: !4604, size: 64, offset: 20672)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2425, line: 69, flags: DIFlagFwdDecl)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3485, file: !2425, line: 1351, baseType: !34, size: 32, offset: 20736)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3485, file: !2425, line: 1352, baseType: !34, size: 32, offset: 20768)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3485, file: !2425, line: 1354, baseType: !51, size: 64, offset: 20800)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3485, file: !2425, line: 1364, baseType: !463, size: 64, offset: 20864)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3485, file: !2425, line: 1365, baseType: !463, size: 64, offset: 20928)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3485, file: !2425, line: 1412, baseType: !51, size: 64, offset: 20992)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3485, file: !2425, line: 1453, baseType: !2899, size: 64, offset: 21056)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3485, file: !2425, line: 1457, baseType: !4614, size: 64, offset: 21120)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !263, line: 61, size: 576, elements: !4616)
!4616 = !{!4617, !4618, !4637, !4640, !4641, !4674, !4684}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4615, file: !263, line: 62, baseType: !262, size: 32)
!4618 = !DIDerivedType(tag: DW_TAG_member, scope: !4615, file: !263, line: 64, baseType: !4619, size: 192, offset: 64)
!4619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4615, file: !263, line: 64, size: 192, elements: !4620)
!4620 = !{!4621, !4632}
!4621 = !DIDerivedType(tag: DW_TAG_member, scope: !4619, file: !263, line: 65, baseType: !4622, size: 192)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4619, file: !263, line: 65, size: 192, elements: !4623)
!4623 = !{!4624, !4631}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4622, file: !263, line: 66, baseType: !4625, size: 128)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4626, line: 50, size: 128, elements: !4627)
!4626 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4627 = !{!4628, !4629, !4630}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4625, file: !4626, line: 52, baseType: !51, size: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4625, file: !4626, line: 54, baseType: !7, size: 32, offset: 64)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4625, file: !4626, line: 55, baseType: !7, size: 32, offset: 96)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4622, file: !263, line: 67, baseType: !51, size: 64, offset: 128)
!4632 = !DIDerivedType(tag: DW_TAG_member, scope: !4619, file: !263, line: 70, baseType: !4633, size: 192)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4619, file: !263, line: 70, size: 192, elements: !4634)
!4634 = !{!4635, !4636}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4633, file: !263, line: 71, baseType: !620, size: 128, align: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4633, file: !263, line: 72, baseType: !51, size: 64, offset: 128)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4615, file: !263, line: 76, baseType: !4638, size: 64, offset: 256)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !263, line: 76, flags: DIFlagFwdDecl)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4615, file: !263, line: 77, baseType: !51, size: 64, offset: 320)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4615, file: !263, line: 79, baseType: !4642, size: 64, offset: 384)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4626, line: 25, size: 256, elements: !4644)
!4644 = !{!4645, !4651, !4655}
!4645 = !DIDerivedType(tag: DW_TAG_member, scope: !4643, file: !4626, line: 26, baseType: !4646, size: 128)
!4646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4643, file: !4626, line: 26, size: 128, elements: !4647)
!4647 = !{!4648, !4650}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4646, file: !4626, line: 27, baseType: !4649, size: 128)
!4649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !3832)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4646, file: !4626, line: 28, baseType: !4649, size: 128)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4643, file: !4626, line: 31, baseType: !4652, size: 64, offset: 128)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4654)
!4654 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4626, line: 23, flags: DIFlagFwdDecl)
!4655 = !DIDerivedType(tag: DW_TAG_member, scope: !4643, file: !4626, line: 33, baseType: !4656, size: 64, offset: 192)
!4656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4643, file: !4626, line: 33, size: 64, elements: !4657)
!4657 = !{!4658, !4664, !4669}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4656, file: !4626, line: 38, baseType: !4659, size: 64)
!4659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4656, file: !4626, line: 34, size: 64, elements: !4660)
!4660 = !{!4661, !4662, !4663}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4659, file: !4626, line: 35, baseType: !758, size: 32)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4659, file: !4626, line: 36, baseType: !95, size: 8, offset: 32)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4659, file: !4626, line: 37, baseType: !95, size: 8, offset: 40)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4656, file: !4626, line: 42, baseType: !4665, size: 16)
!4665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4656, file: !4626, line: 39, size: 16, elements: !4666)
!4666 = !{!4667, !4668}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4665, file: !4626, line: 40, baseType: !95, size: 8)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4665, file: !4626, line: 41, baseType: !95, size: 8, offset: 8)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4656, file: !4626, line: 46, baseType: !4670, size: 16)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4656, file: !4626, line: 43, size: 16, elements: !4671)
!4671 = !{!4672, !4673}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4670, file: !4626, line: 44, baseType: !95, size: 8)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4670, file: !4626, line: 45, baseType: !95, size: 8, offset: 8)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4615, file: !263, line: 81, baseType: !4675, size: 64, offset: 448)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !263, line: 85, size: 384, elements: !4677)
!4677 = !{!4678, !4679, !4680, !4681, !4682, !4683}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4676, file: !263, line: 86, baseType: !4638, size: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4676, file: !263, line: 87, baseType: !51, size: 64, offset: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4676, file: !263, line: 88, baseType: !51, size: 64, offset: 128)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4676, file: !263, line: 89, baseType: !51, size: 64, offset: 192)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4676, file: !263, line: 90, baseType: !832, size: 8, offset: 256)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4676, file: !263, line: 92, baseType: !4675, size: 64, offset: 320)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4615, file: !263, line: 82, baseType: !7, size: 32, offset: 512)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3485, file: !2425, line: 1463, baseType: !4686, offset: 21184)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2425, line: 739, elements: !1267)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3485, file: !2425, line: 1470, baseType: !620, size: 128, align: 64, offset: 21184)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3485, file: !2425, line: 1471, baseType: !687, size: 32, offset: 21312)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3485, file: !2425, line: 1472, baseType: !34, size: 32, offset: 21344)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3485, file: !2425, line: 1474, baseType: !3484, size: 64, offset: 21376)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3485, file: !2425, line: 1475, baseType: !2124, size: 320, offset: 21440)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3485, file: !2425, line: 1478, baseType: !4693, size: 64, offset: 21760)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2425, line: 1478, flags: DIFlagFwdDecl)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3485, file: !2425, line: 1482, baseType: !687, size: 32, offset: 21824)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3485, file: !2425, line: 1489, baseType: !32, size: 64, offset: 21888)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3485, file: !2425, line: 1504, baseType: !32, size: 64, offset: 21952)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3485, file: !2425, line: 1505, baseType: !464, size: 64, offset: 22016)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3485, file: !2425, line: 1506, baseType: !463, size: 64, offset: 22080)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3485, file: !2425, line: 1507, baseType: !464, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3485, file: !2425, line: 1508, baseType: !464, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3485, file: !2425, line: 1509, baseType: !464, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3485, file: !2425, line: 1510, baseType: !620, size: 128, align: 64, offset: 22208)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3485, file: !2425, line: 1511, baseType: !34, size: 32, offset: 22336)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3485, file: !2425, line: 1515, baseType: !4706, size: 64, offset: 22400)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !615, line: 56, size: 64, elements: !4707)
!4707 = !{!4708}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4706, file: !615, line: 57, baseType: !618, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3485, file: !2425, line: 1518, baseType: !4706, size: 64, offset: 22464)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3485, file: !2425, line: 1528, baseType: !620, size: 128, align: 64, offset: 22528)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3485, file: !2425, line: 1552, baseType: !4712, size: 35328, offset: 23040)
!4712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4713, line: 430, size: 35328, elements: !4714)
!4713 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4714 = !{!4715, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4744, !4745, !4746, !4747, !4748, !4749, !4752, !4753, !4754, !4755}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4712, file: !4713, line: 432, baseType: !4716, size: 192)
!4716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4717, size: 192, elements: !679)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4718, line: 16, size: 64, elements: !4719)
!4718 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4719 = !{!4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4717, file: !4718, line: 17, baseType: !105, size: 16)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4717, file: !4718, line: 18, baseType: !105, size: 16, offset: 16)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4717, file: !4718, line: 19, baseType: !105, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4717, file: !4718, line: 19, baseType: !105, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4717, file: !4718, line: 19, baseType: !105, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4717, file: !4718, line: 19, baseType: !105, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4717, file: !4718, line: 19, baseType: !105, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4717, file: !4718, line: 20, baseType: !105, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4717, file: !4718, line: 20, baseType: !105, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4717, file: !4718, line: 20, baseType: !105, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4717, file: !4718, line: 20, baseType: !105, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4717, file: !4718, line: 20, baseType: !105, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4717, file: !4718, line: 20, baseType: !105, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4712, file: !4713, line: 436, baseType: !51, size: 64, offset: 192)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4712, file: !4713, line: 440, baseType: !38, size: 16, offset: 256)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4712, file: !4713, line: 441, baseType: !38, size: 16, offset: 272)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4712, file: !4713, line: 442, baseType: !38, size: 16, offset: 288)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4712, file: !4713, line: 443, baseType: !38, size: 16, offset: 304)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4712, file: !4713, line: 447, baseType: !51, size: 64, offset: 320)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4712, file: !4713, line: 448, baseType: !51, size: 64, offset: 384)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4712, file: !4713, line: 459, baseType: !4741, size: 256, offset: 448)
!4741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4742, size: 256, elements: !705)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4713, line: 428, flags: DIFlagFwdDecl)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4712, file: !4713, line: 461, baseType: !51, size: 64, offset: 704)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4712, file: !4713, line: 463, baseType: !51, size: 64, offset: 768)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4712, file: !4713, line: 465, baseType: !51, size: 64, offset: 832)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4712, file: !4713, line: 466, baseType: !51, size: 64, offset: 896)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4712, file: !4713, line: 467, baseType: !51, size: 64, offset: 960)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4712, file: !4713, line: 473, baseType: !4750, size: 64, offset: 1024)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4713, line: 10, flags: DIFlagFwdDecl)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4712, file: !4713, line: 480, baseType: !51, size: 64, offset: 1088)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4712, file: !4713, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4712, file: !4713, line: 491, baseType: !459, size: 32, offset: 1184)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4712, file: !4713, line: 501, baseType: !4756, size: 33792, offset: 1536)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4757, line: 448, size: 33792, elements: !4758)
!4757 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4758 = !{!4759, !4760, !4761, !4921, !4922, !4928, !4929}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4756, file: !4757, line: 461, baseType: !7, size: 32)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4756, file: !4757, line: 468, baseType: !51, size: 64, offset: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4756, file: !4757, line: 476, baseType: !4762, size: 64, offset: 128)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4757, line: 356, size: 33280, align: 512, elements: !4764)
!4764 = !{!4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4763, file: !4757, line: 358, baseType: !7, size: 32)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4763, file: !4757, line: 361, baseType: !7, size: 32, offset: 32)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4763, file: !4757, line: 364, baseType: !463, size: 64, offset: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4763, file: !4757, line: 367, baseType: !463, size: 64, offset: 128)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4763, file: !4757, line: 370, baseType: !463, size: 64, offset: 192)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4763, file: !4757, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4763, file: !4757, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4763, file: !4757, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4763, file: !4757, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4763, file: !4757, line: 397, baseType: !4775, size: 32768, offset: 512)
!4775 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4757, line: 348, size: 32768, elements: !4776)
!4776 = !{!4777, !4792, !4829, !4906, !4919}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4775, file: !4757, line: 349, baseType: !4778, size: 896)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4757, line: 12, size: 896, elements: !4779)
!4779 = !{!4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4791}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4778, file: !4757, line: 13, baseType: !459, size: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4778, file: !4757, line: 14, baseType: !459, size: 32, offset: 32)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4778, file: !4757, line: 15, baseType: !459, size: 32, offset: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4778, file: !4757, line: 16, baseType: !459, size: 32, offset: 96)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4778, file: !4757, line: 17, baseType: !459, size: 32, offset: 128)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4778, file: !4757, line: 18, baseType: !459, size: 32, offset: 160)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4778, file: !4757, line: 19, baseType: !459, size: 32, offset: 192)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4778, file: !4757, line: 22, baseType: !4788, size: 640, offset: 224)
!4788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 640, elements: !4789)
!4789 = !{!4790}
!4790 = !DISubrange(count: 20)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4778, file: !4757, line: 25, baseType: !459, size: 32, offset: 864)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4775, file: !4757, line: 350, baseType: !4793, size: 4096, align: 128)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4757, line: 34, size: 4096, align: 128, elements: !4794)
!4794 = !{!4795, !4796, !4797, !4798, !4799, !4814, !4815, !4816, !4818, !4820, !4824}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4793, file: !4757, line: 35, baseType: !105, size: 16)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4793, file: !4757, line: 36, baseType: !105, size: 16, offset: 16)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4793, file: !4757, line: 37, baseType: !105, size: 16, offset: 32)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4793, file: !4757, line: 38, baseType: !105, size: 16, offset: 48)
!4799 = !DIDerivedType(tag: DW_TAG_member, scope: !4793, file: !4757, line: 39, baseType: !4800, size: 128, offset: 64)
!4800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4793, file: !4757, line: 39, size: 128, elements: !4801)
!4801 = !{!4802, !4807}
!4802 = !DIDerivedType(tag: DW_TAG_member, scope: !4800, file: !4757, line: 40, baseType: !4803, size: 128)
!4803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4800, file: !4757, line: 40, size: 128, elements: !4804)
!4804 = !{!4805, !4806}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4803, file: !4757, line: 41, baseType: !463, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4803, file: !4757, line: 42, baseType: !463, size: 64, offset: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, scope: !4800, file: !4757, line: 44, baseType: !4808, size: 128)
!4808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4800, file: !4757, line: 44, size: 128, elements: !4809)
!4809 = !{!4810, !4811, !4812, !4813}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4808, file: !4757, line: 45, baseType: !459, size: 32)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4808, file: !4757, line: 46, baseType: !459, size: 32, offset: 32)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4808, file: !4757, line: 47, baseType: !459, size: 32, offset: 64)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4808, file: !4757, line: 48, baseType: !459, size: 32, offset: 96)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4793, file: !4757, line: 51, baseType: !459, size: 32, offset: 192)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4793, file: !4757, line: 52, baseType: !459, size: 32, offset: 224)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4793, file: !4757, line: 55, baseType: !4817, size: 1024, offset: 256)
!4817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 1024, elements: !472)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4793, file: !4757, line: 58, baseType: !4819, size: 2048, offset: 1280)
!4819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 2048, elements: !1160)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4793, file: !4757, line: 60, baseType: !4821, size: 384, offset: 3328)
!4821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 384, elements: !4822)
!4822 = !{!4823}
!4823 = !DISubrange(count: 12)
!4824 = !DIDerivedType(tag: DW_TAG_member, scope: !4793, file: !4757, line: 62, baseType: !4825, size: 384, offset: 3712)
!4825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4793, file: !4757, line: 62, size: 384, elements: !4826)
!4826 = !{!4827, !4828}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4825, file: !4757, line: 63, baseType: !4821, size: 384)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4825, file: !4757, line: 64, baseType: !4821, size: 384)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4775, file: !4757, line: 351, baseType: !4830, size: 1088)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4757, line: 79, size: 1088, elements: !4831)
!4831 = !{!4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4905}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4830, file: !4757, line: 80, baseType: !459, size: 32)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4830, file: !4757, line: 81, baseType: !459, size: 32, offset: 32)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4830, file: !4757, line: 82, baseType: !459, size: 32, offset: 64)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4830, file: !4757, line: 83, baseType: !459, size: 32, offset: 96)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4830, file: !4757, line: 84, baseType: !459, size: 32, offset: 128)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4830, file: !4757, line: 85, baseType: !459, size: 32, offset: 160)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4830, file: !4757, line: 86, baseType: !459, size: 32, offset: 192)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4830, file: !4757, line: 88, baseType: !4788, size: 640, offset: 224)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4830, file: !4757, line: 89, baseType: !95, size: 8, offset: 864)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4830, file: !4757, line: 90, baseType: !95, size: 8, offset: 872)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4830, file: !4757, line: 91, baseType: !95, size: 8, offset: 880)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4830, file: !4757, line: 92, baseType: !95, size: 8, offset: 888)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4830, file: !4757, line: 93, baseType: !95, size: 8, offset: 896)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4830, file: !4757, line: 94, baseType: !95, size: 8, offset: 904)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4830, file: !4757, line: 95, baseType: !4847, size: 64, offset: 960)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4849, line: 11, size: 128, elements: !4850)
!4849 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4850 = !{!4851, !4852}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4848, file: !4849, line: 12, baseType: !1065, size: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4848, file: !4849, line: 13, baseType: !4853, size: 64, offset: 64)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4855, line: 103, size: 1344, elements: !4856)
!4855 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4856 = !{!4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4885, !4886, !4887}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4854, file: !4855, line: 109, baseType: !51, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4854, file: !4855, line: 110, baseType: !51, size: 64, offset: 64)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4854, file: !4855, line: 111, baseType: !51, size: 64, offset: 128)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4854, file: !4855, line: 112, baseType: !51, size: 64, offset: 192)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4854, file: !4855, line: 113, baseType: !51, size: 64, offset: 256)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4854, file: !4855, line: 114, baseType: !51, size: 64, offset: 320)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4854, file: !4855, line: 117, baseType: !51, size: 64, offset: 384)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4854, file: !4855, line: 118, baseType: !51, size: 64, offset: 448)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4854, file: !4855, line: 119, baseType: !51, size: 64, offset: 512)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4854, file: !4855, line: 120, baseType: !51, size: 64, offset: 576)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4854, file: !4855, line: 121, baseType: !51, size: 64, offset: 640)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4854, file: !4855, line: 122, baseType: !51, size: 64, offset: 704)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4854, file: !4855, line: 123, baseType: !51, size: 64, offset: 768)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4854, file: !4855, line: 124, baseType: !51, size: 64, offset: 832)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4854, file: !4855, line: 125, baseType: !51, size: 64, offset: 896)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4854, file: !4855, line: 139, baseType: !51, size: 64, offset: 960)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4854, file: !4855, line: 142, baseType: !51, size: 64, offset: 1024)
!4874 = !DIDerivedType(tag: DW_TAG_member, scope: !4854, file: !4855, line: 144, baseType: !4875, size: 64, offset: 1088)
!4875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4854, file: !4855, line: 144, size: 64, elements: !4876)
!4876 = !{!4877, !4878, !4879}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4875, file: !4855, line: 146, baseType: !105, size: 16)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4875, file: !4855, line: 148, baseType: !463, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4875, file: !4855, line: 150, baseType: !4880, size: 64)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4855, line: 59, size: 64, elements: !4881)
!4881 = !{!4882, !4883, !4884}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4880, file: !4855, line: 61, baseType: !463, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4880, file: !4855, line: 63, baseType: !463, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4880, file: !4855, line: 65, baseType: !463, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4854, file: !4855, line: 153, baseType: !51, size: 64, offset: 1152)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4854, file: !4855, line: 154, baseType: !51, size: 64, offset: 1216)
!4887 = !DIDerivedType(tag: DW_TAG_member, scope: !4854, file: !4855, line: 156, baseType: !4888, size: 64, offset: 1280)
!4888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4854, file: !4855, line: 156, size: 64, elements: !4889)
!4889 = !{!4890, !4891, !4892}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4888, file: !4855, line: 158, baseType: !105, size: 16)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4888, file: !4855, line: 160, baseType: !463, size: 64)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4888, file: !4855, line: 162, baseType: !4893, size: 64)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4855, line: 69, size: 64, elements: !4894)
!4894 = !{!4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4893, file: !4855, line: 71, baseType: !463, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4893, file: !4855, line: 73, baseType: !463, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4893, file: !4855, line: 75, baseType: !463, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4893, file: !4855, line: 77, baseType: !463, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4893, file: !4855, line: 80, baseType: !463, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4893, file: !4855, line: 83, baseType: !463, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4893, file: !4855, line: 86, baseType: !463, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4893, file: !4855, line: 88, baseType: !463, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4893, file: !4855, line: 93, baseType: !463, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4893, file: !4855, line: 100, baseType: !463, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4830, file: !4757, line: 96, baseType: !459, size: 32, offset: 1024)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4775, file: !4757, line: 352, baseType: !4907, size: 4608, align: 512)
!4907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4757, line: 333, size: 4608, align: 512, elements: !4908)
!4908 = !{!4909, !4910, !4917}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4907, file: !4757, line: 334, baseType: !4793, size: 4096, align: 128)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4907, file: !4757, line: 335, baseType: !4911, size: 512, offset: 4096)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4757, line: 312, size: 512, elements: !4912)
!4912 = !{!4913, !4914, !4915}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4911, file: !4757, line: 313, baseType: !463, size: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4911, file: !4757, line: 314, baseType: !463, size: 64, offset: 64)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4911, file: !4757, line: 315, baseType: !4916, size: 384, offset: 128)
!4916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 384, elements: !819)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4907, file: !4757, line: 336, baseType: !4918, offset: 4608)
!4918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, elements: !604)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4775, file: !4757, line: 353, baseType: !4920, size: 32768)
!4920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 32768, elements: !3945)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4756, file: !4757, line: 484, baseType: !4762, size: 64, offset: 192)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4756, file: !4757, line: 491, baseType: !4923, size: 128, offset: 256)
!4923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4757, line: 404, size: 128, elements: !4924)
!4924 = !{!4925, !4926, !4927}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4923, file: !4757, line: 424, baseType: !463, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4923, file: !4757, line: 432, baseType: !7, size: 32, offset: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4923, file: !4757, line: 440, baseType: !7, size: 32, offset: 96)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4756, file: !4757, line: 498, baseType: !4923, size: 128, offset: 384)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4756, file: !4757, line: 508, baseType: !4763, size: 33280, align: 512, offset: 512)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3467, file: !3468, line: 16, baseType: !66, size: 192, offset: 512)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3467, file: !3468, line: 17, baseType: !61, size: 32, offset: 704)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !543, file: !176, line: 1240, baseType: !32, size: 64, offset: 6912)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !543, file: !176, line: 1243, baseType: !459, size: 32, offset: 6976)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !543, file: !176, line: 1245, baseType: !789, size: 64, offset: 7040)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !543, file: !176, line: 1246, baseType: !789, size: 64, offset: 7104)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !543, file: !176, line: 1248, baseType: !460, size: 32, offset: 7168)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !543, file: !176, line: 1249, baseType: !4938, size: 64, offset: 7232)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !176, line: 634, flags: DIFlagFwdDecl)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !543, file: !176, line: 1252, baseType: !4298, size: 256, offset: 7296)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !543, file: !176, line: 1253, baseType: !4942, size: 128, offset: 7552)
!4942 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4943, line: 21, baseType: !4944)
!4943 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4944 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4943, line: 19, size: 128, elements: !4945)
!4945 = !{!4946}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4944, file: !4943, line: 20, baseType: !4947, size: 128)
!4947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !3832)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !543, file: !176, line: 1255, baseType: !7, size: 32, offset: 7680)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !543, file: !176, line: 1261, baseType: !642, size: 256, offset: 7744)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !543, file: !176, line: 1267, baseType: !28, size: 64, offset: 8000)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !543, file: !176, line: 1269, baseType: !488, size: 64, offset: 8064)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !543, file: !176, line: 1271, baseType: !4953, size: 448, offset: 8128)
!4953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2713, line: 63, size: 448, elements: !4954)
!4954 = !{!4955, !4960, !4961, !4962, !4963, !4964, !4965}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4953, file: !2713, line: 64, baseType: !4956, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!51, !4959, !2711}
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4953, file: !2713, line: 66, baseType: !4956, size: 64, offset: 64)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4953, file: !2713, line: 69, baseType: !1065, size: 64, offset: 128)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4953, file: !2713, line: 70, baseType: !34, size: 32, offset: 192)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4953, file: !2713, line: 71, baseType: !7, size: 32, offset: 224)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4953, file: !2713, line: 74, baseType: !109, size: 128, offset: 256)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4953, file: !2713, line: 85, baseType: !4966, size: 64, offset: 384)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !543, file: !176, line: 1274, baseType: !633, size: 64, offset: 8576)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !543, file: !176, line: 1280, baseType: !633, size: 64, offset: 8640)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !543, file: !176, line: 1283, baseType: !34, size: 32, offset: 8704)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !543, file: !176, line: 1286, baseType: !2474, size: 32, offset: 8736)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !543, file: !176, line: 1289, baseType: !2186, size: 64, offset: 8768)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !543, file: !176, line: 1290, baseType: !696, size: 64, offset: 8832)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !543, file: !176, line: 1297, baseType: !915, size: 64, offset: 8896)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !543, file: !176, line: 1304, baseType: !4975, size: 64, offset: 8960)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !378, line: 49, size: 64, elements: !4976)
!4976 = !{!4977}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4975, file: !378, line: 50, baseType: !4978, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !378, line: 41, size: 512, align: 512, elements: !4980)
!4980 = !{!4981, !4982, !4987}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4979, file: !378, line: 43, baseType: !71, size: 32)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4979, file: !378, line: 45, baseType: !4983, size: 192, offset: 64)
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !378, line: 29, size: 192, elements: !4984)
!4984 = !{!4985, !4986}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4983, file: !378, line: 30, baseType: !109, size: 128)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4983, file: !378, line: 32, baseType: !1065, size: 64, offset: 128)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4979, file: !378, line: 46, baseType: !1065, size: 64, offset: 256)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !543, file: !176, line: 1305, baseType: !4975, size: 64, offset: 9024)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !543, file: !176, line: 1306, baseType: !620, size: 128, align: 64, offset: 9088)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !543, file: !176, line: 1307, baseType: !964, size: 256, offset: 9216)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !543, file: !176, line: 1309, baseType: !642, size: 256, offset: 9472)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !543, file: !176, line: 1314, baseType: !34, size: 32, offset: 9728)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !543, file: !176, line: 1317, baseType: !71, size: 32, align: 512, offset: 10240)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !543, file: !176, line: 1318, baseType: !109, size: 128, offset: 10304)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !543, file: !176, line: 1320, baseType: !71, size: 32, offset: 10432)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !543, file: !176, line: 1321, baseType: !109, size: 128, offset: 10496)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !537, file: !538, line: 73, baseType: !34, size: 32, offset: 128)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !537, file: !538, line: 74, baseType: !2883, size: 64, offset: 192)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !490, file: !427, line: 141, baseType: !5001, size: 64, offset: 704)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!34, !2773, !832}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !490, file: !427, line: 142, baseType: !5005, size: 64, offset: 768)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!425, !425, !5008}
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !426, file: !427, line: 96, baseType: !542, size: 64, offset: 832)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !426, file: !427, line: 97, baseType: !51, size: 64, offset: 896)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !426, file: !427, line: 98, baseType: !32, size: 64, offset: 960)
!5013 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !427, line: 100, baseType: !5014, size: 128, offset: 1024)
!5014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !427, line: 100, size: 128, elements: !5015)
!5015 = !{!5016, !5017}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5014, file: !427, line: 101, baseType: !109, size: 128)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5014, file: !427, line: 102, baseType: !5018, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !426, file: !427, line: 104, baseType: !109, size: 128, offset: 1152)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !426, file: !427, line: 105, baseType: !109, size: 128, offset: 1280)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !426, file: !427, line: 113, baseType: !5022, size: 128, offset: 1408)
!5022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !427, line: 109, size: 128, elements: !5023)
!5023 = !{!5024, !5025, !5026}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5022, file: !427, line: 110, baseType: !700, size: 128)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5022, file: !427, line: 111, baseType: !441, size: 128)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5022, file: !427, line: 112, baseType: !620, size: 128, align: 64)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !419, file: !176, line: 1968, baseType: !5028, size: 64, offset: 64)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!28, !425, !390, !5031}
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5033, line: 10, size: 128, elements: !5034)
!5033 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5034 = !{!5035, !5036}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5032, file: !5033, line: 11, baseType: !1728, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5032, file: !5033, line: 12, baseType: !32, size: 64, offset: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !419, file: !176, line: 1969, baseType: !5038, size: 64, offset: 128)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!34, !2883, !390, !34}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !419, file: !176, line: 1970, baseType: !5042, size: 64, offset: 192)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DISubroutineType(types: !5044)
!5044 = !{!413, !390, !34, !832}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !419, file: !176, line: 1972, baseType: !5046, size: 64, offset: 256)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!34, !425, !531, !34}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !419, file: !176, line: 1974, baseType: !5050, size: 64, offset: 320)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!34, !2883, !390, !425, !36, !832}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !419, file: !176, line: 1976, baseType: !5054, size: 64, offset: 384)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!34, !425, !390, !425}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !419, file: !176, line: 1977, baseType: !5058, size: 64, offset: 448)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!34, !390, !425}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !419, file: !176, line: 1978, baseType: !5062, size: 64, offset: 512)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!34, !2883, !390, !425, !28}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !419, file: !176, line: 1980, baseType: !5066, size: 64, offset: 576)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!34, !2883, !390, !425, !36}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !419, file: !176, line: 1982, baseType: !5058, size: 64, offset: 640)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !419, file: !176, line: 1983, baseType: !5071, size: 64, offset: 704)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!34, !2883, !390, !425, !36, !547}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !419, file: !176, line: 1985, baseType: !5075, size: 64, offset: 768)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!34, !2883, !390, !425, !390, !425, !7}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !419, file: !176, line: 1987, baseType: !5079, size: 64, offset: 832)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!34, !2883, !425, !5082}
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !176, line: 226, size: 640, elements: !5084)
!5084 = !{!5085, !5086, !5087, !5097, !5106, !5107, !5112, !5113, !5114}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5083, file: !176, line: 227, baseType: !7, size: 32)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5083, file: !176, line: 228, baseType: !36, size: 16, offset: 32)
!5087 = !DIDerivedType(tag: DW_TAG_member, scope: !5083, file: !176, line: 241, baseType: !5088, size: 32, offset: 64)
!5088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5083, file: !176, line: 241, size: 32, elements: !5089)
!5089 = !{!5090, !5091}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5088, file: !176, line: 242, baseType: !396, size: 32)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5088, file: !176, line: 243, baseType: !5092, size: 32)
!5092 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5093, line: 16, baseType: !5094)
!5093 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5093, line: 14, size: 32, elements: !5095)
!5095 = !{!5096}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5094, file: !5093, line: 15, baseType: !401, size: 32)
!5097 = !DIDerivedType(tag: DW_TAG_member, scope: !5083, file: !176, line: 245, baseType: !5098, size: 32, offset: 96)
!5098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5083, file: !176, line: 245, size: 32, elements: !5099)
!5099 = !{!5100, !5101}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5098, file: !176, line: 246, baseType: !405, size: 32)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5098, file: !176, line: 247, baseType: !5102, size: 32)
!5102 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5093, line: 20, baseType: !5103)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5093, line: 18, size: 32, elements: !5104)
!5104 = !{!5105}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5103, file: !5093, line: 19, baseType: !409, size: 32)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5083, file: !176, line: 249, baseType: !53, size: 64, offset: 128)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5083, file: !176, line: 250, baseType: !5108, size: 128, offset: 192)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !790, line: 13, size: 128, elements: !5109)
!5109 = !{!5110, !5111}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5108, file: !790, line: 14, baseType: !789, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5108, file: !790, line: 15, baseType: !1065, size: 64, offset: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5083, file: !176, line: 251, baseType: !5108, size: 128, offset: 320)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5083, file: !176, line: 252, baseType: !5108, size: 128, offset: 448)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5083, file: !176, line: 259, baseType: !607, size: 64, offset: 576)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !419, file: !176, line: 1988, baseType: !5116, size: 64, offset: 896)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = !DISubroutineType(types: !5118)
!5118 = !{!34, !2883, !2773, !5119, !459, !7}
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5121, line: 22, size: 1280, elements: !5122)
!5121 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5122 = !{!5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5120, file: !5121, line: 23, baseType: !459, size: 32)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5120, file: !5121, line: 24, baseType: !36, size: 16, offset: 32)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5120, file: !5121, line: 25, baseType: !7, size: 32, offset: 64)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5120, file: !5121, line: 26, baseType: !797, size: 32, offset: 96)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5120, file: !5121, line: 27, baseType: !463, size: 64, offset: 128)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5120, file: !5121, line: 28, baseType: !463, size: 64, offset: 192)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5120, file: !5121, line: 41, baseType: !463, size: 64, offset: 256)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5120, file: !5121, line: 42, baseType: !547, size: 32, offset: 320)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5120, file: !5121, line: 43, baseType: !547, size: 32, offset: 352)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5120, file: !5121, line: 44, baseType: !396, size: 32, offset: 384)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5120, file: !5121, line: 45, baseType: !405, size: 32, offset: 416)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5120, file: !5121, line: 46, baseType: !53, size: 64, offset: 448)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5120, file: !5121, line: 47, baseType: !5108, size: 128, offset: 512)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5120, file: !5121, line: 48, baseType: !5108, size: 128, offset: 640)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5120, file: !5121, line: 49, baseType: !5108, size: 128, offset: 768)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5120, file: !5121, line: 50, baseType: !5108, size: 128, offset: 896)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5120, file: !5121, line: 51, baseType: !463, size: 64, offset: 1024)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5120, file: !5121, line: 52, baseType: !463, size: 64, offset: 1088)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5120, file: !5121, line: 53, baseType: !459, size: 32, offset: 1152)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5120, file: !5121, line: 54, baseType: !459, size: 32, offset: 1184)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5120, file: !5121, line: 55, baseType: !463, size: 64, offset: 1216)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !419, file: !176, line: 1990, baseType: !5145, size: 64, offset: 960)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!1187, !425, !531, !47}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !419, file: !176, line: 1991, baseType: !5149, size: 64, offset: 1024)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!34, !390, !5152, !463, !463}
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !176, line: 55, flags: DIFlagFwdDecl)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !419, file: !176, line: 1993, baseType: !5155, size: 64, offset: 1088)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!34, !390, !34}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !419, file: !176, line: 1994, baseType: !5159, size: 64, offset: 1152)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DISubroutineType(types: !5161)
!5161 = !{!34, !390, !425, !607, !7, !36}
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !419, file: !176, line: 1997, baseType: !5163, size: 64, offset: 1216)
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5164 = !DISubroutineType(types: !5165)
!5165 = !{!34, !2883, !390, !607, !36}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !419, file: !176, line: 1999, baseType: !5167, size: 64, offset: 1280)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!413, !2883, !425, !34}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !419, file: !176, line: 2001, baseType: !5171, size: 64, offset: 1344)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DISubroutineType(types: !5173)
!5173 = !{!34, !2883, !425, !413, !34}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !419, file: !176, line: 2003, baseType: !5175, size: 64, offset: 1408)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{!34, !2883, !425, !5178}
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !176, line: 76, flags: DIFlagFwdDecl)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !419, file: !176, line: 2005, baseType: !5181, size: 64, offset: 1472)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!34, !425, !5178}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !419, file: !176, line: 2006, baseType: !5185, size: 64, offset: 1536)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!5188, !390}
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5189, size: 64)
!5189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !176, line: 3192, size: 192, elements: !5190)
!5190 = !{!5191, !5192}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5189, file: !176, line: 3193, baseType: !4069, size: 128)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5189, file: !176, line: 3194, baseType: !459, size: 32, offset: 128)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !391, file: !176, line: 655, baseType: !542, size: 64, offset: 448)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !391, file: !176, line: 656, baseType: !386, size: 64, offset: 512)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !391, file: !176, line: 659, baseType: !32, size: 64, offset: 576)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !391, file: !176, line: 663, baseType: !51, size: 64, offset: 640)
!5197 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !176, line: 671, baseType: !5198, size: 32, offset: 704)
!5198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !176, line: 671, size: 32, elements: !5199)
!5199 = !{!5200, !5202}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5198, file: !176, line: 672, baseType: !5201, size: 32)
!5201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5198, file: !176, line: 673, baseType: !7, size: 32)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !391, file: !176, line: 675, baseType: !547, size: 32, offset: 736)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !391, file: !176, line: 676, baseType: !53, size: 64, offset: 768)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !391, file: !176, line: 677, baseType: !5108, size: 128, offset: 832)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !391, file: !176, line: 678, baseType: !5108, size: 128, offset: 960)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !391, file: !176, line: 679, baseType: !5108, size: 128, offset: 1088)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !391, file: !176, line: 680, baseType: !71, size: 32, offset: 1216)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !391, file: !176, line: 681, baseType: !38, size: 16, offset: 1248)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !391, file: !176, line: 682, baseType: !95, size: 8, offset: 1264)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !391, file: !176, line: 683, baseType: !95, size: 8, offset: 1272)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !391, file: !176, line: 684, baseType: !2846, size: 64, offset: 1280)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !391, file: !176, line: 691, baseType: !51, size: 64, offset: 1344)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !391, file: !176, line: 692, baseType: !773, size: 320, offset: 1408)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !391, file: !176, line: 694, baseType: !51, size: 64, offset: 1728)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !391, file: !176, line: 695, baseType: !51, size: 64, offset: 1792)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !391, file: !176, line: 697, baseType: !700, size: 128, offset: 1856)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !391, file: !176, line: 698, baseType: !109, size: 128, offset: 1984)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !391, file: !176, line: 707, baseType: !109, size: 128, offset: 2112)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !391, file: !176, line: 708, baseType: !109, size: 128, offset: 2240)
!5221 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !176, line: 709, baseType: !5222, size: 128, offset: 2368)
!5222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !176, line: 709, size: 128, elements: !5223)
!5223 = !{!5224, !5225}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5222, file: !176, line: 710, baseType: !696, size: 64)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5222, file: !176, line: 711, baseType: !620, size: 128, align: 64)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !391, file: !176, line: 713, baseType: !635, size: 64, offset: 2496)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !391, file: !176, line: 714, baseType: !635, size: 64, offset: 2560)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !391, file: !176, line: 715, baseType: !61, size: 32, offset: 2624)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !391, file: !176, line: 716, baseType: !61, size: 32, offset: 2656)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !391, file: !176, line: 717, baseType: !61, size: 32, offset: 2688)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !391, file: !176, line: 719, baseType: !61, size: 32, offset: 2720)
!5232 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !176, line: 721, baseType: !5233, size: 64, offset: 2752)
!5233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !176, line: 721, size: 64, elements: !5234)
!5234 = !{!5235, !5236}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5233, file: !176, line: 722, baseType: !1099, size: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5233, file: !176, line: 723, baseType: !2582, size: 64)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !391, file: !176, line: 725, baseType: !5238, size: 64, offset: 2816)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !176, line: 725, flags: DIFlagFwdDecl)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !391, file: !176, line: 726, baseType: !387, size: 1536, align: 64, offset: 2880)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !391, file: !176, line: 727, baseType: !109, size: 128, offset: 4416)
!5242 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !176, line: 728, baseType: !5243, size: 64, offset: 4544)
!5243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !176, line: 728, size: 64, elements: !5244)
!5244 = !{!5245, !5246, !5249, !5250}
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5243, file: !176, line: 729, baseType: !2423, size: 64)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5243, file: !176, line: 730, baseType: !5247, size: 64)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !176, line: 730, flags: DIFlagFwdDecl)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5243, file: !176, line: 731, baseType: !531, size: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5243, file: !176, line: 732, baseType: !7, size: 32)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !391, file: !176, line: 735, baseType: !460, size: 32, offset: 4608)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !391, file: !176, line: 738, baseType: !460, size: 32, offset: 4640)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !391, file: !176, line: 739, baseType: !4938, size: 64, offset: 4672)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !391, file: !176, line: 750, baseType: !32, size: 64, offset: 4736)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !387, file: !176, line: 474, baseType: !4069, size: 128, offset: 64)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !387, file: !176, line: 475, baseType: !773, size: 320, offset: 192)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !387, file: !176, line: 476, baseType: !1468, size: 32, offset: 512)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !387, file: !176, line: 477, baseType: !61, size: 32, offset: 544)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !387, file: !176, line: 482, baseType: !3185, size: 128, offset: 576)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !387, file: !176, line: 483, baseType: !51, size: 64, offset: 704)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !387, file: !176, line: 484, baseType: !51, size: 64, offset: 768)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !387, file: !176, line: 485, baseType: !5263, size: 64, offset: 832)
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5265)
!5265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !176, line: 404, size: 1280, elements: !5266)
!5266 = !{!5267, !5271, !5275, !5279, !5283, !5299, !5304, !5308, !5312, !5316, !5320, !5324, !5325, !5329, !5333, !5337, !5342, !5346, !5398, !5399}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5265, file: !176, line: 405, baseType: !5268, size: 64)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!34, !1498, !2594}
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5265, file: !176, line: 406, baseType: !5272, size: 64, offset: 64)
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!34, !607, !2269}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5265, file: !176, line: 409, baseType: !5276, size: 64, offset: 128)
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5277, size: 64)
!5277 = !DISubroutineType(types: !5278)
!5278 = !{!34, !386, !2594}
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5265, file: !176, line: 412, baseType: !5280, size: 64, offset: 192)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{!832, !386, !2269}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5265, file: !176, line: 414, baseType: !5284, size: 64, offset: 256)
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5285 = !DISubroutineType(types: !5286)
!5286 = !{null, !5287}
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !2266, line: 1276, size: 448, elements: !5289)
!5289 = !{!5290, !5291, !5292, !5294, !5295, !5296, !5297, !5298}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5288, file: !2266, line: 1277, baseType: !607, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5288, file: !2266, line: 1278, baseType: !386, size: 64, offset: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5288, file: !2266, line: 1279, baseType: !5293, size: 64, offset: 128)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5288, file: !2266, line: 1281, baseType: !51, size: 64, offset: 192)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5288, file: !2266, line: 1282, baseType: !7, size: 32, offset: 256)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5288, file: !2266, line: 1283, baseType: !7, size: 32, offset: 288)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5288, file: !2266, line: 1284, baseType: !832, size: 8, offset: 320)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5288, file: !2266, line: 1285, baseType: !51, size: 64, offset: 384)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5265, file: !176, line: 416, baseType: !5300, size: 64, offset: 320)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!34, !607, !386, !53, !7, !5303, !2439}
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5265, file: !176, line: 419, baseType: !5305, size: 64, offset: 384)
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = !DISubroutineType(types: !5307)
!5307 = !{!34, !607, !386, !53, !7, !7, !1498, !32}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5265, file: !176, line: 424, baseType: !5309, size: 64, offset: 448)
!5309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5310, size: 64)
!5310 = !DISubroutineType(types: !5311)
!5311 = !{!2896, !386, !2896}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5265, file: !176, line: 425, baseType: !5313, size: 64, offset: 512)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{null, !2269, !47, !47}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5265, file: !176, line: 426, baseType: !5317, size: 64, offset: 576)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!832, !2269, !1468}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5265, file: !176, line: 427, baseType: !5321, size: 64, offset: 640)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DISubroutineType(types: !5323)
!5323 = !{null, !2269}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5265, file: !176, line: 428, baseType: !2245, size: 64, offset: 704)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5265, file: !176, line: 433, baseType: !5326, size: 64, offset: 768)
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5327, size: 64)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!34, !386, !2269, !2269, !269}
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5265, file: !176, line: 435, baseType: !5330, size: 64, offset: 832)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{!34, !2269}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5265, file: !176, line: 436, baseType: !5334, size: 64, offset: 896)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!832, !2269, !47, !47}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5265, file: !176, line: 438, baseType: !5338, size: 64, offset: 960)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{null, !2269, !5341, !5341}
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5265, file: !176, line: 439, baseType: !5343, size: 64, offset: 1024)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!34, !386, !1498}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5265, file: !176, line: 442, baseType: !5347, size: 64, offset: 1088)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{!34, !5350, !607, !5397}
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !4434, line: 282, size: 2176, elements: !5352)
!5352 = !{!5353, !5354, !5355, !5356, !5357, !5358, !5359, !5361, !5368, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394, !5395}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5351, file: !4434, line: 283, baseType: !1562, size: 128)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5351, file: !4434, line: 284, baseType: !51, size: 64, offset: 128)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5351, file: !4434, line: 285, baseType: !801, size: 16, offset: 192)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5351, file: !4434, line: 286, baseType: !3685, size: 320, offset: 256)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5351, file: !4434, line: 287, baseType: !1956, size: 8, offset: 576)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5351, file: !4434, line: 288, baseType: !7, size: 32, offset: 608)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5351, file: !4434, line: 289, baseType: !5360, size: 64, offset: 640)
!5360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5351, file: !4434, line: 290, baseType: !5362, size: 64, offset: 704)
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !4434, line: 250, size: 64, elements: !5364)
!5364 = !{!5365, !5366, !5367}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5363, file: !4434, line: 251, baseType: !71, size: 32)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5363, file: !4434, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5363, file: !4434, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5351, file: !4434, line: 291, baseType: !5369, size: 128, offset: 768)
!5369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !4434, line: 274, size: 128, elements: !5370)
!5370 = !{!5371, !5372}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5369, file: !4434, line: 275, baseType: !5363, size: 64)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5369, file: !4434, line: 276, baseType: !5363, size: 64, offset: 64)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5351, file: !4434, line: 292, baseType: !7, size: 32, offset: 896)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5351, file: !4434, line: 293, baseType: !7, size: 32, offset: 928)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5351, file: !4434, line: 294, baseType: !7, size: 32, offset: 960)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5351, file: !4434, line: 295, baseType: !7, size: 32, offset: 992)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5351, file: !4434, line: 296, baseType: !7, size: 32, offset: 1024)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5351, file: !4434, line: 297, baseType: !7, size: 32, offset: 1056)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5351, file: !4434, line: 298, baseType: !1977, size: 64, offset: 1088)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5351, file: !4434, line: 299, baseType: !5381, size: 64, offset: 1152)
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !4434, line: 269, size: 96, elements: !5383)
!5383 = !{!5384, !5385}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5382, file: !4434, line: 270, baseType: !5363, size: 64)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5382, file: !4434, line: 271, baseType: !7, size: 32, offset: 64)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5351, file: !4434, line: 300, baseType: !1045, size: 64, offset: 1216)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5351, file: !4434, line: 301, baseType: !2891, size: 64, offset: 1280)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5351, file: !4434, line: 302, baseType: !607, size: 64, offset: 1344)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5351, file: !4434, line: 303, baseType: !7, size: 32, offset: 1408)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5351, file: !4434, line: 304, baseType: !1003, size: 256, offset: 1472)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5351, file: !4434, line: 305, baseType: !71, size: 32, offset: 1728)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5351, file: !4434, line: 318, baseType: !71, size: 32, offset: 1760)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5351, file: !4434, line: 322, baseType: !964, size: 256, offset: 1792)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5351, file: !4434, line: 323, baseType: !5369, size: 128, offset: 2048)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5351, file: !4434, line: 324, baseType: !5396, offset: 2176)
!5396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3685, elements: !604)
!5397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5265, file: !176, line: 444, baseType: !2431, size: 64, offset: 1152)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5265, file: !176, line: 445, baseType: !5400, size: 64, offset: 1216)
!5400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5401, size: 64)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!34, !2248, !2353}
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !387, file: !176, line: 486, baseType: !51, size: 64, offset: 896)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !387, file: !176, line: 487, baseType: !773, size: 320, offset: 960)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !387, file: !176, line: 488, baseType: !2474, size: 32, offset: 1280)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !387, file: !176, line: 489, baseType: !71, size: 32, offset: 1312)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !387, file: !176, line: 490, baseType: !109, size: 128, offset: 1344)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !387, file: !176, line: 491, baseType: !32, size: 64, offset: 1472)
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pglist_data", file: !277, line: 1266, size: 112128, elements: !5411)
!5411 = !{!5412, !5484, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5506, !5507, !5508, !5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5532, !5533, !5534, !5543, !5545}
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "node_zones", scope: !5410, file: !277, line: 1272, baseType: !5413, size: 38912, align: 512)
!5413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5414, size: 38912, align: 512, elements: !705)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zone", file: !277, line: 815, size: 9728, align: 512, elements: !5415)
!5415 = !{!5416, !5417, !5418, !5419, !5420, !5421, !5422, !5434, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5457, !5466, !5467, !5468, !5469, !5470, !5471, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "_watermark", scope: !5414, file: !277, line: 819, baseType: !2116, size: 256)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "watermark_boost", scope: !5414, file: !277, line: 820, baseType: !51, size: 64, offset: 256)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_highatomic", scope: !5414, file: !277, line: 822, baseType: !51, size: 64, offset: 320)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "lowmem_reserve", scope: !5414, file: !277, line: 833, baseType: !1067, size: 256, offset: 384)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5414, file: !277, line: 836, baseType: !34, size: 32, offset: 640)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "zone_pgdat", scope: !5414, file: !277, line: 838, baseType: !5409, size: 64, offset: 704)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_pageset", scope: !5414, file: !277, line: 839, baseType: !5423, size: 64, offset: 768)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5424, size: 64)
!5424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_pages", file: !277, line: 684, size: 2048, align: 512, elements: !5425)
!5425 = !{!5426, !5427, !5428, !5429, !5430, !5431, !5432}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5424, file: !277, line: 685, baseType: !71, size: 32)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5424, file: !277, line: 686, baseType: !34, size: 32, offset: 32)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !5424, file: !277, line: 687, baseType: !34, size: 32, offset: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5424, file: !277, line: 688, baseType: !34, size: 32, offset: 96)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "free_factor", scope: !5424, file: !277, line: 689, baseType: !801, size: 16, offset: 128)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !5424, file: !277, line: 691, baseType: !801, size: 16, offset: 144)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !5424, file: !277, line: 695, baseType: !5433, size: 1536, offset: 192)
!5433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1536, elements: !4822)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_zonestats", scope: !5414, file: !277, line: 840, baseType: !5435, size: 64, offset: 832)
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5436, size: 64)
!5436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_zonestat", file: !277, line: 698, size: 512, elements: !5437)
!5437 = !{!5438, !5440, !5441}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat_diff", scope: !5436, file: !277, line: 700, baseType: !5439, size: 80)
!5439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1954, size: 80, elements: !1059)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "stat_threshold", scope: !5436, file: !277, line: 701, baseType: !1954, size: 8, offset: 80)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "vm_numa_event", scope: !5436, file: !277, line: 709, baseType: !5442, size: 384, offset: 128)
!5442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 384, elements: !819)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "pageset_high", scope: !5414, file: !277, line: 845, baseType: !34, size: 32, offset: 896)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "pageset_batch", scope: !5414, file: !277, line: 846, baseType: !34, size: 32, offset: 928)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "zone_start_pfn", scope: !5414, file: !277, line: 857, baseType: !51, size: 64, offset: 960)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "managed_pages", scope: !5414, file: !277, line: 901, baseType: !633, size: 64, offset: 1024)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "spanned_pages", scope: !5414, file: !277, line: 902, baseType: !51, size: 64, offset: 1088)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "present_pages", scope: !5414, file: !277, line: 903, baseType: !51, size: 64, offset: 1152)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5414, file: !277, line: 911, baseType: !28, size: 64, offset: 1216)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !5414, file: !277, line: 927, baseType: !34, size: 32, offset: 1280)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !5414, file: !277, line: 930, baseType: !5452, align: 512, offset: 1536)
!5452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cacheline_padding", file: !5453, line: 93, align: 512, elements: !5454)
!5453 = !DIFile(filename: "./include/linux/cache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "599edcbe9a1f0cbc1eddd4ed9f4096ef")
!5454 = !{!5455}
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5452, file: !5453, line: 94, baseType: !5456)
!5456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !3923)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "free_area", scope: !5414, file: !277, line: 933, baseType: !5458, size: 6336, offset: 1536)
!5458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5459, size: 6336, elements: !5464)
!5459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "free_area", file: !277, line: 113, size: 576, elements: !5460)
!5460 = !{!5461, !5463}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !5459, file: !277, line: 114, baseType: !5462, size: 512)
!5462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 512, elements: !705)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_free", scope: !5459, file: !277, line: 115, baseType: !51, size: 64, offset: 512)
!5464 = !{!5465}
!5465 = !DISubrange(count: 11)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5414, file: !277, line: 941, baseType: !51, size: 64, offset: 7872)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5414, file: !277, line: 944, baseType: !71, size: 32, offset: 7936)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !5414, file: !277, line: 947, baseType: !5452, align: 512, offset: 8192)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_drift_mark", scope: !5414, file: !277, line: 954, baseType: !51, size: 64, offset: 8192)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "compact_cached_free_pfn", scope: !5414, file: !277, line: 958, baseType: !51, size: 64, offset: 8256)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "compact_cached_migrate_pfn", scope: !5414, file: !277, line: 960, baseType: !5472, size: 128, offset: 8320)
!5472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !2015)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "compact_init_migrate_pfn", scope: !5414, file: !277, line: 961, baseType: !51, size: 64, offset: 8448)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "compact_init_free_pfn", scope: !5414, file: !277, line: 962, baseType: !51, size: 64, offset: 8512)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "compact_considered", scope: !5414, file: !277, line: 972, baseType: !7, size: 32, offset: 8576)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "compact_defer_shift", scope: !5414, file: !277, line: 973, baseType: !7, size: 32, offset: 8608)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "compact_order_failed", scope: !5414, file: !277, line: 974, baseType: !34, size: 32, offset: 8640)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "compact_blockskip_flush", scope: !5414, file: !277, line: 979, baseType: !832, size: 8, offset: 8672)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "contiguous", scope: !5414, file: !277, line: 982, baseType: !832, size: 8, offset: 8680)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3_", scope: !5414, file: !277, line: 984, baseType: !5452, align: 512, offset: 8704)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat", scope: !5414, file: !277, line: 986, baseType: !1058, size: 640, offset: 8704)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_numa_event", scope: !5414, file: !277, line: 987, baseType: !5483, size: 384, offset: 9344)
!5483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 384, elements: !819)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "node_zonelists", scope: !5410, file: !277, line: 1279, baseType: !5485, size: 65792, offset: 38912)
!5485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5486, size: 65792, elements: !2015)
!5486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zonelist", file: !277, line: 1214, size: 32896, elements: !5487)
!5487 = !{!5488}
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "_zonerefs", scope: !5486, file: !277, line: 1215, baseType: !5489, size: 32896)
!5489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5490, size: 32896, elements: !5495)
!5490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zoneref", file: !277, line: 1195, size: 128, elements: !5491)
!5491 = !{!5492, !5494}
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !5490, file: !277, line: 1196, baseType: !5493, size: 64)
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "zone_idx", scope: !5490, file: !277, line: 1197, baseType: !34, size: 32, offset: 64)
!5495 = !{!5496}
!5496 = !DISubrange(count: 257)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_zones", scope: !5410, file: !277, line: 1281, baseType: !34, size: 32, offset: 104704)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "node_start_pfn", scope: !5410, file: !277, line: 1303, baseType: !51, size: 64, offset: 104768)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "node_present_pages", scope: !5410, file: !277, line: 1304, baseType: !51, size: 64, offset: 104832)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "node_spanned_pages", scope: !5410, file: !277, line: 1305, baseType: !51, size: 64, offset: 104896)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5410, file: !277, line: 1307, baseType: !34, size: 32, offset: 104960)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_wait", scope: !5410, file: !277, line: 1308, baseType: !66, size: 192, offset: 105024)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc_wait", scope: !5410, file: !277, line: 1309, baseType: !66, size: 192, offset: 105216)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_wait", scope: !5410, file: !277, line: 1312, baseType: !5505, size: 768, offset: 105408)
!5505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 768, elements: !705)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_writeback_throttled", scope: !5410, file: !277, line: 1314, baseType: !61, size: 32, offset: 106176)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reclaim_start", scope: !5410, file: !277, line: 1315, baseType: !51, size: 64, offset: 106240)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd", scope: !5410, file: !277, line: 1320, baseType: !3484, size: 64, offset: 106304)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_order", scope: !5410, file: !277, line: 1321, baseType: !34, size: 32, offset: 106368)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_highest_zoneidx", scope: !5410, file: !277, line: 1322, baseType: !276, size: 32, offset: 106400)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_failures", scope: !5410, file: !277, line: 1324, baseType: !34, size: 32, offset: 106432)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_max_order", scope: !5410, file: !277, line: 1327, baseType: !34, size: 32, offset: 106464)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_highest_zoneidx", scope: !5410, file: !277, line: 1328, baseType: !276, size: 32, offset: 106496)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_wait", scope: !5410, file: !277, line: 1329, baseType: !66, size: 192, offset: 106560)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd", scope: !5410, file: !277, line: 1330, baseType: !3484, size: 64, offset: 106752)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "proactive_compact_trigger", scope: !5410, file: !277, line: 1331, baseType: !832, size: 8, offset: 106816)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "totalreserve_pages", scope: !5410, file: !277, line: 1337, baseType: !51, size: 64, offset: 106880)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "min_unmapped_pages", scope: !5410, file: !277, line: 1343, baseType: !51, size: 64, offset: 106944)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "min_slab_pages", scope: !5410, file: !277, line: 1344, baseType: !51, size: 64, offset: 107008)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !5410, file: !277, line: 1348, baseType: !5452, align: 512, offset: 107520)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "__lruvec", scope: !5410, file: !277, line: 1384, baseType: !5522, size: 1088, offset: 107520)
!5522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lruvec", file: !277, line: 620, size: 1088, elements: !5523)
!5523 = !{!5524, !5526, !5527, !5528, !5529, !5530, !5531}
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !5522, file: !277, line: 621, baseType: !5525, size: 640)
!5525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 640, elements: !933)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "lru_lock", scope: !5522, file: !277, line: 623, baseType: !71, size: 32, offset: 640)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "anon_cost", scope: !5522, file: !277, line: 629, baseType: !51, size: 64, offset: 704)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "file_cost", scope: !5522, file: !277, line: 630, baseType: !51, size: 64, offset: 768)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "nonresident_age", scope: !5522, file: !277, line: 632, baseType: !633, size: 64, offset: 832)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "refaults", scope: !5522, file: !277, line: 634, baseType: !5472, size: 128, offset: 896)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5522, file: !277, line: 636, baseType: !51, size: 64, offset: 1024)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5410, file: !277, line: 1386, baseType: !51, size: 64, offset: 108608)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !5410, file: !277, line: 1395, baseType: !5452, align: 512, offset: 109056)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_nodestats", scope: !5410, file: !277, line: 1398, baseType: !5535, size: 64, offset: 109056)
!5535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5536, size: 64)
!5536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_nodestat", file: !277, line: 713, size: 336, elements: !5537)
!5537 = !{!5538, !5539}
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "stat_threshold", scope: !5536, file: !277, line: 714, baseType: !1954, size: 8)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node_stat_diff", scope: !5536, file: !277, line: 715, baseType: !5540, size: 328, offset: 8)
!5540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1954, size: 328, elements: !5541)
!5541 = !{!5542}
!5542 = !DISubrange(count: 41)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat", scope: !5410, file: !277, line: 1399, baseType: !5544, size: 2624, offset: 109120)
!5544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 2624, elements: !5541)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "memtier", scope: !5410, file: !277, line: 1401, baseType: !5546, size: 64, offset: 111744)
!5546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5547, size: 64)
!5547 = !DICompositeType(tag: DW_TAG_structure_type, name: "memory_tier", file: !277, line: 1401, flags: DIFlagFwdDecl)
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5550)
!5550 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5552, size: 64)
!5552 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5554, size: 64)
!5554 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1065)
!5555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5556, size: 64)
!5556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5557)
!5557 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !112)
!5558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5559, size: 64)
!5559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5560)
!5560 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!5561 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !37, line: 42, baseType: !51)
!5562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5564, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1499)
!5565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5566, size: 64)
!5566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xa_node", file: !4070, line: 1158, size: 4608, elements: !5567)
!5567 = !{!5568, !5569, !5570, !5571, !5572, !5573, !5575, !5580, !5582}
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !5566, file: !4070, line: 1159, baseType: !99, size: 8)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5566, file: !4070, line: 1160, baseType: !99, size: 8, offset: 8)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5566, file: !4070, line: 1161, baseType: !99, size: 8, offset: 16)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_values", scope: !5566, file: !4070, line: 1162, baseType: !99, size: 8, offset: 24)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5566, file: !4070, line: 1163, baseType: !5565, size: 64, offset: 64)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !5566, file: !4070, line: 1164, baseType: !5574, size: 64, offset: 128)
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!5575 = !DIDerivedType(tag: DW_TAG_member, scope: !5566, file: !4070, line: 1165, baseType: !5576, size: 128, offset: 192)
!5576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5566, file: !4070, line: 1165, size: 128, elements: !5577)
!5577 = !{!5578, !5579}
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !5576, file: !4070, line: 1166, baseType: !109, size: 128)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !5576, file: !4070, line: 1167, baseType: !620, size: 128, align: 64)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !5566, file: !4070, line: 1169, baseType: !5581, size: 4096, offset: 320)
!5581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 4096, elements: !1160)
!5582 = !DIDerivedType(tag: DW_TAG_member, scope: !5566, file: !4070, line: 1170, baseType: !5583, size: 192, offset: 4416)
!5583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5566, file: !4070, line: 1170, size: 192, elements: !5584)
!5584 = !{!5585, !5588}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !5583, file: !4070, line: 1171, baseType: !5586, size: 192)
!5586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, elements: !5587)
!5587 = !{!680, !1674}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "marks", scope: !5583, file: !4070, line: 1172, baseType: !5586, size: 192)
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5590, size: 64)
!5590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5591)
!5591 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!5592 = !{!5593, !0, !5595, !5597, !5602, !5608, !5613, !5616, !5618, !5620, !5623}
!5593 = !DIGlobalVariableExpression(var: !5594, expr: !DIExpression())
!5594 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_workingset__341_814_workingset_init6342", scope: !2, file: !3, line: 814, type: !32, isLocal: true, isDefinition: true)
!5595 = !DIGlobalVariableExpression(var: !5596, expr: !DIExpression())
!5596 = distinct !DIGlobalVariable(name: "shadow_nodes", scope: !2, file: !3, line: 599, type: !4975, isLocal: false, isDefinition: true)
!5597 = !DIGlobalVariableExpression(var: !5598, expr: !DIExpression())
!5598 = distinct !DIGlobalVariable(scope: null, file: !4070, line: 56, type: !5599, isLocal: true, isDefinition: true)
!5599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 184, elements: !5600)
!5600 = !{!5601}
!5601 = !DISubrange(count: 23)
!5602 = !DIGlobalVariableExpression(var: !5603, expr: !DIExpression())
!5603 = distinct !DIGlobalVariable(scope: null, file: !5604, line: 1373, type: !5605, isLocal: true, isDefinition: true)
!5604 = !DIFile(filename: "./include/linux/memcontrol.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "56e2fbaa204036cf198c2cab401df973")
!5605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 216, elements: !5606)
!5606 = !{!5607}
!5607 = !DISubrange(count: 27)
!5608 = !DIGlobalVariableExpression(var: !5609, expr: !DIExpression())
!5609 = distinct !DIGlobalVariable(scope: null, file: !3, line: 797, type: !5610, isLocal: true, isDefinition: true)
!5610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 496, elements: !5611)
!5611 = !{!5612}
!5612 = !DISubrange(count: 62)
!5613 = !DIGlobalVariableExpression(var: !5614, expr: !DIExpression())
!5614 = distinct !DIGlobalVariable(scope: null, file: !3, line: 800, type: !5615, isLocal: true, isDefinition: true)
!5615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 80, elements: !1059)
!5616 = !DIGlobalVariableExpression(var: !5617, expr: !DIExpression())
!5617 = distinct !DIGlobalVariable(name: "workingset_shadow_shrinker", scope: !2, file: !3, line: 766, type: !4953, isLocal: true, isDefinition: true)
!5618 = !DIGlobalVariableExpression(var: !5619, expr: !DIExpression())
!5619 = distinct !DIGlobalVariable(scope: null, file: !3, line: 737, type: !3831, isLocal: true, isDefinition: true)
!5620 = !DIGlobalVariableExpression(var: !5621, expr: !DIExpression())
!5621 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched144", scope: !5622, file: !2425, line: 2104, type: !32, isLocal: true, isDefinition: true)
!5622 = distinct !DISubprogram(name: "_cond_resched", scope: !2425, file: !2425, line: 2102, type: !1997, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5623 = !DIGlobalVariableExpression(var: !5624, expr: !DIExpression())
!5624 = distinct !DIGlobalVariable(name: "shadow_nodes_key", scope: !2, file: !3, line: 777, type: !2563, isLocal: true, isDefinition: true)
!5625 = !{i32 7, !"Dwarf Version", i32 5}
!5626 = !{i32 2, !"Debug Info Version", i32 3}
!5627 = !{i32 1, !"wchar_size", i32 2}
!5628 = !{i32 8, !"cf-protection-branch", i32 1}
!5629 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5630 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5631 = !{i32 1, !"Code Model", i32 2}
!5632 = !{i32 1, !"override-stack-alignment", i32 8}
!5633 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5634 = distinct !DISubprogram(name: "workingset_age_nonresident", scope: !3, file: !3, line: 355, type: !5635, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5638)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{null, !5637, !51}
!5637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5522, size: 64)
!5638 = !{!5639, !5640}
!5639 = !DILocalVariable(name: "lruvec", arg: 1, scope: !5634, file: !3, line: 355, type: !5637)
!5640 = !DILocalVariable(name: "nr_pages", arg: 2, scope: !5634, file: !3, line: 355, type: !51)
!5641 = !DILocation(line: 355, column: 48, scope: !5634)
!5642 = !DILocation(line: 355, column: 70, scope: !5634)
!5643 = !DILocation(line: 368, column: 2, scope: !5634)
!5644 = !DILocation(line: 369, column: 19, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 368, column: 5)
!5646 = !DILocation(line: 369, column: 30, scope: !5645)
!5647 = !DILocation(line: 369, column: 38, scope: !5645)
!5648 = !DILocation(line: 369, column: 3, scope: !5645)
!5649 = !DILocation(line: 370, column: 2, scope: !5645)
!5650 = !DILocation(line: 370, column: 35, scope: !5634)
!5651 = !DILocation(line: 370, column: 21, scope: !5634)
!5652 = !DILocation(line: 370, column: 19, scope: !5634)
!5653 = distinct !{!5653, !5643, !5654, !5655, !5656}
!5654 = !DILocation(line: 370, column: 43, scope: !5634)
!5655 = !{!"llvm.loop.mustprogress"}
!5656 = !{!"llvm.loop.unroll.disable"}
!5657 = !DILocation(line: 371, column: 1, scope: !5634)
!5658 = distinct !DISubprogram(name: "atomic_long_add", scope: !5659, file: !5659, line: 3230, type: !5660, scopeLine: 3231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5662)
!5659 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5660 = !DISubroutineType(types: !5661)
!5661 = !{null, !1065, !4966}
!5662 = !{!5663, !5664}
!5663 = !DILocalVariable(name: "i", arg: 1, scope: !5658, file: !5659, line: 3230, type: !1065)
!5664 = !DILocalVariable(name: "v", arg: 2, scope: !5658, file: !5659, line: 3230, type: !4966)
!5665 = !DILocation(line: 3230, column: 22, scope: !5658)
!5666 = !DILocation(line: 3230, column: 40, scope: !5658)
!5667 = !DILocation(line: 3232, column: 31, scope: !5658)
!5668 = !DILocation(line: 3232, column: 2, scope: !5658)
!5669 = !DILocation(line: 3233, column: 22, scope: !5658)
!5670 = !DILocation(line: 3233, column: 25, scope: !5658)
!5671 = !DILocation(line: 3233, column: 2, scope: !5658)
!5672 = !DILocation(line: 3234, column: 1, scope: !5658)
!5673 = distinct !DISubprogram(name: "parent_lruvec", scope: !5604, file: !5604, line: 1592, type: !5674, scopeLine: 1593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5676)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{!5637, !5637}
!5676 = !{!5677, !5678}
!5677 = !DILocalVariable(name: "lruvec", arg: 1, scope: !5673, file: !5604, line: 1592, type: !5637)
!5678 = !DILocalVariable(name: "memcg", scope: !5673, file: !5604, line: 1594, type: !2720)
!5679 = !DILocation(line: 1592, column: 59, scope: !5673)
!5680 = !DILocation(line: 1594, column: 2, scope: !5673)
!5681 = !DILocation(line: 1594, column: 21, scope: !5673)
!5682 = !DILocation(line: 1596, column: 23, scope: !5673)
!5683 = !DILocation(line: 1596, column: 10, scope: !5673)
!5684 = !DILocation(line: 1596, column: 8, scope: !5673)
!5685 = !DILocation(line: 1597, column: 7, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5673, file: !5604, line: 1597, column: 6)
!5687 = !DILocation(line: 1597, column: 6, scope: !5673)
!5688 = !DILocation(line: 1598, column: 3, scope: !5686)
!5689 = !DILocation(line: 1599, column: 28, scope: !5673)
!5690 = !DILocation(line: 1599, column: 10, scope: !5673)
!5691 = !DILocation(line: 1599, column: 8, scope: !5673)
!5692 = !DILocation(line: 1600, column: 7, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5673, file: !5604, line: 1600, column: 6)
!5694 = !DILocation(line: 1600, column: 6, scope: !5673)
!5695 = !DILocation(line: 1601, column: 3, scope: !5693)
!5696 = !DILocation(line: 1602, column: 27, scope: !5673)
!5697 = !DILocation(line: 1602, column: 47, scope: !5673)
!5698 = !DILocation(line: 1602, column: 34, scope: !5673)
!5699 = !DILocation(line: 1602, column: 9, scope: !5673)
!5700 = !DILocation(line: 1602, column: 2, scope: !5673)
!5701 = !DILocation(line: 1603, column: 1, scope: !5673)
!5702 = distinct !DISubprogram(name: "workingset_eviction", scope: !3, file: !3, line: 381, type: !5703, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5705)
!5703 = !DISubroutineType(types: !5704)
!5704 = !{!32, !2269, !2720}
!5705 = !{!5706, !5707, !5708, !5709, !5710, !5711}
!5706 = !DILocalVariable(name: "folio", arg: 1, scope: !5702, file: !3, line: 381, type: !2269)
!5707 = !DILocalVariable(name: "target_memcg", arg: 2, scope: !5702, file: !3, line: 381, type: !2720)
!5708 = !DILocalVariable(name: "pgdat", scope: !5702, file: !3, line: 383, type: !5409)
!5709 = !DILocalVariable(name: "eviction", scope: !5702, file: !3, line: 384, type: !51)
!5710 = !DILocalVariable(name: "lruvec", scope: !5702, file: !3, line: 385, type: !5637)
!5711 = !DILocalVariable(name: "memcgid", scope: !5702, file: !3, line: 386, type: !34)
!5712 = !DILocation(line: 381, column: 41, scope: !5702)
!5713 = !DILocation(line: 381, column: 67, scope: !5702)
!5714 = !DILocation(line: 383, column: 2, scope: !5702)
!5715 = !DILocation(line: 383, column: 22, scope: !5702)
!5716 = !DILocation(line: 383, column: 42, scope: !5702)
!5717 = !DILocation(line: 383, column: 30, scope: !5702)
!5718 = !DILocation(line: 384, column: 2, scope: !5702)
!5719 = !DILocation(line: 384, column: 16, scope: !5702)
!5720 = !DILocation(line: 385, column: 2, scope: !5702)
!5721 = !DILocation(line: 385, column: 17, scope: !5702)
!5722 = !DILocation(line: 386, column: 2, scope: !5702)
!5723 = !DILocation(line: 386, column: 6, scope: !5702)
!5724 = !DILocation(line: 393, column: 6, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 393, column: 6)
!5726 = !DILocation(line: 393, column: 6, scope: !5702)
!5727 = !DILocation(line: 394, column: 27, scope: !5725)
!5728 = !DILocation(line: 394, column: 10, scope: !5725)
!5729 = !DILocation(line: 394, column: 3, scope: !5725)
!5730 = !DILocation(line: 396, column: 29, scope: !5702)
!5731 = !DILocation(line: 396, column: 43, scope: !5702)
!5732 = !DILocation(line: 396, column: 11, scope: !5702)
!5733 = !DILocation(line: 396, column: 9, scope: !5702)
!5734 = !DILocation(line: 398, column: 39, scope: !5702)
!5735 = !DILocation(line: 398, column: 26, scope: !5702)
!5736 = !DILocation(line: 398, column: 12, scope: !5702)
!5737 = !DILocation(line: 398, column: 10, scope: !5702)
!5738 = !DILocation(line: 399, column: 31, scope: !5702)
!5739 = !DILocation(line: 399, column: 39, scope: !5702)
!5740 = !DILocation(line: 399, column: 13, scope: !5702)
!5741 = !DILocation(line: 399, column: 11, scope: !5702)
!5742 = !DILocation(line: 400, column: 15, scope: !5702)
!5743 = !DILocation(line: 400, column: 11, scope: !5702)
!5744 = !DILocation(line: 401, column: 29, scope: !5702)
!5745 = !DILocation(line: 401, column: 52, scope: !5702)
!5746 = !DILocation(line: 401, column: 37, scope: !5702)
!5747 = !DILocation(line: 401, column: 2, scope: !5702)
!5748 = !DILocation(line: 402, column: 21, scope: !5702)
!5749 = !DILocation(line: 402, column: 30, scope: !5702)
!5750 = !DILocation(line: 402, column: 37, scope: !5702)
!5751 = !DILocation(line: 403, column: 27, scope: !5702)
!5752 = !DILocation(line: 403, column: 5, scope: !5702)
!5753 = !DILocation(line: 402, column: 9, scope: !5702)
!5754 = !DILocation(line: 402, column: 2, scope: !5702)
!5755 = !DILocation(line: 404, column: 1, scope: !5702)
!5756 = distinct !DISubprogram(name: "folio_pgdat", scope: !1436, file: !1436, line: 1863, type: !5757, scopeLine: 1864, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5763)
!5757 = !DISubroutineType(types: !5758)
!5758 = !{!5759, !5761}
!5759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5760, size: 64)
!5760 = !DIDerivedType(tag: DW_TAG_typedef, name: "pg_data_t", file: !277, line: 1406, baseType: !5410)
!5761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5762, size: 64)
!5762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2270)
!5763 = !{!5764}
!5764 = !DILocalVariable(name: "folio", arg: 1, scope: !5756, file: !1436, line: 1863, type: !5761)
!5765 = !DILocation(line: 1863, column: 58, scope: !5756)
!5766 = !DILocation(line: 1865, column: 21, scope: !5756)
!5767 = !DILocation(line: 1865, column: 28, scope: !5756)
!5768 = !DILocation(line: 1865, column: 9, scope: !5756)
!5769 = !DILocation(line: 1865, column: 2, scope: !5756)
!5770 = distinct !DISubprogram(name: "lru_gen_enabled", scope: !5771, file: !5771, line: 295, type: !1711, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5771 = !DIFile(filename: "./include/linux/mm_inline.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1300852a53cdabf87faad43d15841e57")
!5772 = !DILocation(line: 297, column: 2, scope: !5770)
!5773 = distinct !DISubprogram(name: "lru_gen_eviction", scope: !3, file: !3, line: 328, type: !5774, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5776)
!5774 = !DISubroutineType(types: !5775)
!5775 = !{!32, !2269}
!5776 = !{!5777}
!5777 = !DILocalVariable(name: "folio", arg: 1, scope: !5773, file: !3, line: 328, type: !2269)
!5778 = !DILocation(line: 328, column: 45, scope: !5773)
!5779 = !DILocation(line: 330, column: 2, scope: !5773)
!5780 = distinct !DISubprogram(name: "mem_cgroup_lruvec", scope: !5604, file: !5604, line: 1271, type: !5781, scopeLine: 1273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5783)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{!5637, !2720, !5409}
!5783 = !{!5784, !5785}
!5784 = !DILocalVariable(name: "memcg", arg: 1, scope: !5780, file: !5604, line: 1271, type: !2720)
!5785 = !DILocalVariable(name: "pgdat", arg: 2, scope: !5780, file: !5604, line: 1272, type: !5409)
!5786 = !DILocation(line: 1271, column: 67, scope: !5780)
!5787 = !DILocation(line: 1272, column: 33, scope: !5780)
!5788 = !DILocation(line: 1274, column: 10, scope: !5780)
!5789 = !DILocation(line: 1274, column: 17, scope: !5780)
!5790 = !DILocation(line: 1274, column: 2, scope: !5780)
!5791 = distinct !DISubprogram(name: "mem_cgroup_id", scope: !5604, file: !5604, line: 1366, type: !5792, scopeLine: 1367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5794)
!5792 = !DISubroutineType(types: !5793)
!5793 = !{!38, !2720}
!5794 = !{!5795}
!5795 = !DILocalVariable(name: "memcg", arg: 1, scope: !5791, file: !5604, line: 1366, type: !2720)
!5796 = !DILocation(line: 1366, column: 63, scope: !5791)
!5797 = !DILocation(line: 1368, column: 2, scope: !5791)
!5798 = distinct !DISubprogram(name: "lruvec_memcg", scope: !5604, file: !5604, line: 1395, type: !5799, scopeLine: 1396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5801)
!5799 = !DISubroutineType(types: !5800)
!5800 = !{!2720, !5637}
!5801 = !{!5802}
!5802 = !DILocalVariable(name: "lruvec", arg: 1, scope: !5798, file: !5604, line: 1395, type: !5637)
!5803 = !DILocation(line: 1395, column: 62, scope: !5798)
!5804 = !DILocation(line: 1397, column: 2, scope: !5798)
!5805 = distinct !DISubprogram(name: "atomic_long_read", scope: !5659, file: !5659, line: 3158, type: !5806, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5810)
!5806 = !DISubroutineType(types: !5807)
!5807 = !{!1065, !5808}
!5808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5809, size: 64)
!5809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!5810 = !{!5811}
!5811 = !DILocalVariable(name: "v", arg: 1, scope: !5805, file: !5659, line: 3158, type: !5808)
!5812 = !DILocation(line: 3158, column: 39, scope: !5805)
!5813 = !DILocation(line: 3160, column: 25, scope: !5805)
!5814 = !DILocation(line: 3160, column: 2, scope: !5805)
!5815 = !DILocation(line: 3161, column: 30, scope: !5805)
!5816 = !DILocation(line: 3161, column: 9, scope: !5805)
!5817 = !DILocation(line: 3161, column: 2, scope: !5805)
!5818 = distinct !DISubprogram(name: "folio_nr_pages", scope: !1436, file: !1436, line: 2043, type: !5819, scopeLine: 2044, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5821)
!5819 = !DISubroutineType(types: !5820)
!5820 = !{!1065, !2269}
!5821 = !{!5822}
!5822 = !DILocalVariable(name: "folio", arg: 1, scope: !5818, file: !1436, line: 2043, type: !2269)
!5823 = !DILocation(line: 2043, column: 49, scope: !5818)
!5824 = !DILocation(line: 2045, column: 24, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5818, file: !1436, line: 2045, column: 6)
!5826 = !DILocation(line: 2045, column: 7, scope: !5825)
!5827 = !DILocation(line: 2045, column: 6, scope: !5818)
!5828 = !DILocation(line: 2046, column: 3, scope: !5825)
!5829 = !DILocation(line: 2048, column: 9, scope: !5818)
!5830 = !DILocation(line: 2048, column: 16, scope: !5818)
!5831 = !DILocation(line: 2048, column: 2, scope: !5818)
!5832 = !DILocation(line: 2052, column: 1, scope: !5818)
!5833 = distinct !DISubprogram(name: "pack_shadow", scope: !3, file: !3, line: 198, type: !5834, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5836)
!5834 = !DISubroutineType(types: !5835)
!5835 = !{!32, !34, !5759, !51, !832}
!5836 = !{!5837, !5838, !5839, !5840}
!5837 = !DILocalVariable(name: "memcgid", arg: 1, scope: !5833, file: !3, line: 198, type: !34)
!5838 = !DILocalVariable(name: "pgdat", arg: 2, scope: !5833, file: !3, line: 198, type: !5759)
!5839 = !DILocalVariable(name: "eviction", arg: 3, scope: !5833, file: !3, line: 198, type: !51)
!5840 = !DILocalVariable(name: "workingset", arg: 4, scope: !5833, file: !3, line: 199, type: !832)
!5841 = !DILocation(line: 198, column: 30, scope: !5833)
!5842 = !DILocation(line: 198, column: 50, scope: !5833)
!5843 = !DILocation(line: 198, column: 71, scope: !5833)
!5844 = !DILocation(line: 199, column: 10, scope: !5833)
!5845 = !DILocation(line: 201, column: 11, scope: !5833)
!5846 = !DILocation(line: 202, column: 14, scope: !5833)
!5847 = !DILocation(line: 202, column: 23, scope: !5833)
!5848 = !DILocation(line: 202, column: 49, scope: !5833)
!5849 = !DILocation(line: 202, column: 47, scope: !5833)
!5850 = !DILocation(line: 202, column: 11, scope: !5833)
!5851 = !DILocation(line: 203, column: 14, scope: !5833)
!5852 = !DILocation(line: 203, column: 23, scope: !5833)
!5853 = !DILocation(line: 203, column: 41, scope: !5833)
!5854 = !DILocation(line: 203, column: 48, scope: !5833)
!5855 = !DILocation(line: 203, column: 39, scope: !5833)
!5856 = !DILocation(line: 203, column: 11, scope: !5833)
!5857 = !DILocation(line: 204, column: 14, scope: !5833)
!5858 = !DILocation(line: 204, column: 23, scope: !5833)
!5859 = !DILocation(line: 204, column: 46, scope: !5833)
!5860 = !{i8 0, i8 2}
!5861 = !DILocation(line: 204, column: 44, scope: !5833)
!5862 = !DILocation(line: 204, column: 11, scope: !5833)
!5863 = !DILocation(line: 206, column: 21, scope: !5833)
!5864 = !DILocation(line: 206, column: 9, scope: !5833)
!5865 = !DILocation(line: 206, column: 2, scope: !5833)
!5866 = distinct !DISubprogram(name: "folio_test_workingset", scope: !338, file: !338, line: 499, type: !5867, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5869)
!5867 = !DISubroutineType(types: !5868)
!5868 = !{!832, !2269}
!5869 = !{!5870}
!5870 = !DILocalVariable(name: "folio", arg: 1, scope: !5866, file: !338, line: 499, type: !2269)
!5871 = !DILocation(line: 499, column: 1, scope: !5866)
!5872 = distinct !DISubprogram(name: "workingset_test_recent", scope: !3, file: !3, line: 417, type: !5873, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5875)
!5873 = !DISubroutineType(types: !5874)
!5874 = !{!832, !32, !832, !5341}
!5875 = !{!5876, !5877, !5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885, !5886}
!5876 = !DILocalVariable(name: "shadow", arg: 1, scope: !5872, file: !3, line: 417, type: !32)
!5877 = !DILocalVariable(name: "file", arg: 2, scope: !5872, file: !3, line: 417, type: !832)
!5878 = !DILocalVariable(name: "workingset", arg: 3, scope: !5872, file: !3, line: 417, type: !5341)
!5879 = !DILocalVariable(name: "eviction_memcg", scope: !5872, file: !3, line: 419, type: !2720)
!5880 = !DILocalVariable(name: "eviction_lruvec", scope: !5872, file: !3, line: 420, type: !5637)
!5881 = !DILocalVariable(name: "refault_distance", scope: !5872, file: !3, line: 421, type: !51)
!5882 = !DILocalVariable(name: "workingset_size", scope: !5872, file: !3, line: 422, type: !51)
!5883 = !DILocalVariable(name: "refault", scope: !5872, file: !3, line: 423, type: !51)
!5884 = !DILocalVariable(name: "memcgid", scope: !5872, file: !3, line: 424, type: !34)
!5885 = !DILocalVariable(name: "pgdat", scope: !5872, file: !3, line: 425, type: !5409)
!5886 = !DILocalVariable(name: "eviction", scope: !5872, file: !3, line: 426, type: !51)
!5887 = !DILocation(line: 417, column: 35, scope: !5872)
!5888 = !DILocation(line: 417, column: 48, scope: !5872)
!5889 = !DILocation(line: 417, column: 60, scope: !5872)
!5890 = !DILocation(line: 419, column: 2, scope: !5872)
!5891 = !DILocation(line: 419, column: 21, scope: !5872)
!5892 = !DILocation(line: 420, column: 2, scope: !5872)
!5893 = !DILocation(line: 420, column: 17, scope: !5872)
!5894 = !DILocation(line: 421, column: 2, scope: !5872)
!5895 = !DILocation(line: 421, column: 16, scope: !5872)
!5896 = !DILocation(line: 422, column: 2, scope: !5872)
!5897 = !DILocation(line: 422, column: 16, scope: !5872)
!5898 = !DILocation(line: 423, column: 2, scope: !5872)
!5899 = !DILocation(line: 423, column: 16, scope: !5872)
!5900 = !DILocation(line: 424, column: 2, scope: !5872)
!5901 = !DILocation(line: 424, column: 6, scope: !5872)
!5902 = !DILocation(line: 425, column: 2, scope: !5872)
!5903 = !DILocation(line: 425, column: 22, scope: !5872)
!5904 = !DILocation(line: 426, column: 2, scope: !5872)
!5905 = !DILocation(line: 426, column: 16, scope: !5872)
!5906 = !DILocation(line: 428, column: 6, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5872, file: !3, line: 428, column: 6)
!5908 = !DILocation(line: 428, column: 6, scope: !5872)
!5909 = !DILocation(line: 429, column: 30, scope: !5907)
!5910 = !DILocation(line: 429, column: 38, scope: !5907)
!5911 = !DILocation(line: 429, column: 73, scope: !5907)
!5912 = !DILocation(line: 429, column: 10, scope: !5907)
!5913 = !DILocation(line: 429, column: 3, scope: !5907)
!5914 = !DILocation(line: 431, column: 16, scope: !5872)
!5915 = !DILocation(line: 431, column: 53, scope: !5872)
!5916 = !DILocation(line: 431, column: 2, scope: !5872)
!5917 = !DILocation(line: 432, column: 15, scope: !5872)
!5918 = !DILocation(line: 432, column: 11, scope: !5872)
!5919 = !DILocation(line: 450, column: 38, scope: !5872)
!5920 = !DILocation(line: 450, column: 19, scope: !5872)
!5921 = !DILocation(line: 450, column: 17, scope: !5872)
!5922 = !DILocation(line: 451, column: 7, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5872, file: !3, line: 451, column: 6)
!5924 = !DILocation(line: 451, column: 29, scope: !5923)
!5925 = !DILocation(line: 451, column: 33, scope: !5923)
!5926 = !DILocation(line: 451, column: 6, scope: !5872)
!5927 = !DILocation(line: 452, column: 3, scope: !5923)
!5928 = !DILocation(line: 454, column: 38, scope: !5872)
!5929 = !DILocation(line: 454, column: 54, scope: !5872)
!5930 = !DILocation(line: 454, column: 20, scope: !5872)
!5931 = !DILocation(line: 454, column: 18, scope: !5872)
!5932 = !DILocation(line: 455, column: 30, scope: !5872)
!5933 = !DILocation(line: 455, column: 47, scope: !5872)
!5934 = !DILocation(line: 455, column: 12, scope: !5872)
!5935 = !DILocation(line: 455, column: 10, scope: !5872)
!5936 = !DILocation(line: 473, column: 22, scope: !5872)
!5937 = !DILocation(line: 473, column: 32, scope: !5872)
!5938 = !DILocation(line: 473, column: 30, scope: !5872)
!5939 = !DILocation(line: 473, column: 42, scope: !5872)
!5940 = !DILocation(line: 473, column: 19, scope: !5872)
!5941 = !DILocation(line: 482, column: 38, scope: !5872)
!5942 = !DILocation(line: 482, column: 20, scope: !5872)
!5943 = !DILocation(line: 482, column: 18, scope: !5872)
!5944 = !DILocation(line: 483, column: 7, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5872, file: !3, line: 483, column: 6)
!5946 = !DILocation(line: 483, column: 6, scope: !5872)
!5947 = !DILocation(line: 484, column: 40, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 483, column: 13)
!5949 = !DILocation(line: 484, column: 22, scope: !5948)
!5950 = !DILocation(line: 484, column: 19, scope: !5948)
!5951 = !DILocation(line: 486, column: 2, scope: !5948)
!5952 = !DILocation(line: 487, column: 35, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5872, file: !3, line: 487, column: 6)
!5954 = !DILocation(line: 487, column: 6, scope: !5953)
!5955 = !DILocation(line: 487, column: 51, scope: !5953)
!5956 = !DILocation(line: 487, column: 6, scope: !5872)
!5957 = !DILocation(line: 488, column: 40, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5953, file: !3, line: 487, column: 56)
!5959 = !DILocation(line: 488, column: 22, scope: !5958)
!5960 = !DILocation(line: 488, column: 19, scope: !5958)
!5961 = !DILocation(line: 490, column: 7, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 490, column: 7)
!5963 = !DILocation(line: 490, column: 7, scope: !5958)
!5964 = !DILocation(line: 491, column: 41, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5962, file: !3, line: 490, column: 13)
!5966 = !DILocation(line: 491, column: 23, scope: !5965)
!5967 = !DILocation(line: 491, column: 20, scope: !5965)
!5968 = !DILocation(line: 493, column: 3, scope: !5965)
!5969 = !DILocation(line: 494, column: 2, scope: !5958)
!5970 = !DILocation(line: 496, column: 9, scope: !5872)
!5971 = !DILocation(line: 496, column: 29, scope: !5872)
!5972 = !DILocation(line: 496, column: 26, scope: !5872)
!5973 = !DILocation(line: 496, column: 2, scope: !5872)
!5974 = !DILocation(line: 497, column: 1, scope: !5872)
!5975 = distinct !DISubprogram(name: "lru_gen_test_recent", scope: !3, file: !3, line: 333, type: !5976, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5979)
!5976 = !DISubroutineType(types: !5977)
!5977 = !{!832, !32, !832, !5978, !2215, !5341}
!5978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5637, size: 64)
!5979 = !{!5980, !5981, !5982, !5983, !5984}
!5980 = !DILocalVariable(name: "shadow", arg: 1, scope: !5975, file: !3, line: 333, type: !32)
!5981 = !DILocalVariable(name: "file", arg: 2, scope: !5975, file: !3, line: 333, type: !832)
!5982 = !DILocalVariable(name: "lruvec", arg: 3, scope: !5975, file: !3, line: 333, type: !5978)
!5983 = !DILocalVariable(name: "token", arg: 4, scope: !5975, file: !3, line: 334, type: !2215)
!5984 = !DILocalVariable(name: "workingset", arg: 5, scope: !5975, file: !3, line: 334, type: !5341)
!5985 = !DILocation(line: 333, column: 39, scope: !5975)
!5986 = !DILocation(line: 333, column: 52, scope: !5975)
!5987 = !DILocation(line: 333, column: 74, scope: !5975)
!5988 = !DILocation(line: 334, column: 20, scope: !5975)
!5989 = !DILocation(line: 334, column: 33, scope: !5975)
!5990 = !DILocation(line: 336, column: 2, scope: !5975)
!5991 = distinct !DISubprogram(name: "unpack_shadow", scope: !3, file: !3, line: 209, type: !5992, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5995)
!5992 = !DISubroutineType(types: !5993)
!5993 = !{null, !32, !2025, !5994, !2215, !5341}
!5994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5995 = !{!5996, !5997, !5998, !5999, !6000, !6001, !6002, !6003, !6004}
!5996 = !DILocalVariable(name: "shadow", arg: 1, scope: !5991, file: !3, line: 209, type: !32)
!5997 = !DILocalVariable(name: "memcgidp", arg: 2, scope: !5991, file: !3, line: 209, type: !2025)
!5998 = !DILocalVariable(name: "pgdat", arg: 3, scope: !5991, file: !3, line: 209, type: !5994)
!5999 = !DILocalVariable(name: "evictionp", arg: 4, scope: !5991, file: !3, line: 210, type: !2215)
!6000 = !DILocalVariable(name: "workingsetp", arg: 5, scope: !5991, file: !3, line: 210, type: !5341)
!6001 = !DILocalVariable(name: "entry", scope: !5991, file: !3, line: 212, type: !51)
!6002 = !DILocalVariable(name: "memcgid", scope: !5991, file: !3, line: 213, type: !34)
!6003 = !DILocalVariable(name: "nid", scope: !5991, file: !3, line: 213, type: !34)
!6004 = !DILocalVariable(name: "workingset", scope: !5991, file: !3, line: 214, type: !832)
!6005 = !DILocation(line: 209, column: 33, scope: !5991)
!6006 = !DILocation(line: 209, column: 46, scope: !5991)
!6007 = !DILocation(line: 209, column: 68, scope: !5991)
!6008 = !DILocation(line: 210, column: 21, scope: !5991)
!6009 = !DILocation(line: 210, column: 38, scope: !5991)
!6010 = !DILocation(line: 212, column: 2, scope: !5991)
!6011 = !DILocation(line: 212, column: 16, scope: !5991)
!6012 = !DILocation(line: 212, column: 36, scope: !5991)
!6013 = !DILocation(line: 212, column: 24, scope: !5991)
!6014 = !DILocation(line: 213, column: 2, scope: !5991)
!6015 = !DILocation(line: 213, column: 6, scope: !5991)
!6016 = !DILocation(line: 213, column: 15, scope: !5991)
!6017 = !DILocation(line: 214, column: 2, scope: !5991)
!6018 = !DILocation(line: 214, column: 7, scope: !5991)
!6019 = !DILocation(line: 216, column: 15, scope: !5991)
!6020 = !DILocation(line: 216, column: 21, scope: !5991)
!6021 = !DILocation(line: 216, column: 13, scope: !5991)
!6022 = !DILocation(line: 217, column: 8, scope: !5991)
!6023 = !DILocation(line: 218, column: 8, scope: !5991)
!6024 = !DILocation(line: 218, column: 14, scope: !5991)
!6025 = !DILocation(line: 218, column: 6, scope: !5991)
!6026 = !DILocation(line: 219, column: 8, scope: !5991)
!6027 = !DILocation(line: 220, column: 12, scope: !5991)
!6028 = !DILocation(line: 220, column: 18, scope: !5991)
!6029 = !DILocation(line: 220, column: 10, scope: !5991)
!6030 = !DILocation(line: 221, column: 8, scope: !5991)
!6031 = !DILocation(line: 223, column: 14, scope: !5991)
!6032 = !DILocation(line: 223, column: 3, scope: !5991)
!6033 = !DILocation(line: 223, column: 12, scope: !5991)
!6034 = !DILocation(line: 224, column: 11, scope: !5991)
!6035 = !DILocation(line: 224, column: 3, scope: !5991)
!6036 = !DILocation(line: 224, column: 9, scope: !5991)
!6037 = !DILocation(line: 225, column: 15, scope: !5991)
!6038 = !DILocation(line: 225, column: 3, scope: !5991)
!6039 = !DILocation(line: 225, column: 13, scope: !5991)
!6040 = !DILocation(line: 226, column: 17, scope: !5991)
!6041 = !DILocation(line: 226, column: 3, scope: !5991)
!6042 = !DILocation(line: 226, column: 15, scope: !5991)
!6043 = !DILocation(line: 227, column: 1, scope: !5991)
!6044 = distinct !DISubprogram(name: "mem_cgroup_from_id", scope: !5604, file: !5604, line: 1371, type: !6045, scopeLine: 1372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6047)
!6045 = !DISubroutineType(types: !6046)
!6046 = !{!2720, !38}
!6047 = !{!6048, !6049, !6051}
!6048 = !DILocalVariable(name: "id", arg: 1, scope: !6044, file: !5604, line: 1371, type: !38)
!6049 = !DILocalVariable(name: "__ret_warn_on", scope: !6050, file: !5604, line: 1373, type: !34)
!6050 = distinct !DILexicalBlock(scope: !6044, file: !5604, line: 1373, column: 2)
!6051 = !DILocalVariable(name: "__flags", scope: !6052, file: !5604, line: 1373, type: !34)
!6052 = distinct !DILexicalBlock(scope: !6053, file: !5604, line: 1373, column: 2)
!6053 = distinct !DILexicalBlock(scope: !6050, file: !5604, line: 1373, column: 2)
!6054 = !DILocation(line: 1371, column: 68, scope: !6044)
!6055 = !DILocation(line: 1373, column: 2, scope: !6050)
!6056 = !DILocation(line: 1373, column: 2, scope: !6053)
!6057 = !DILocation(line: 1373, column: 2, scope: !6052)
!6058 = !DILocation(line: 1373, column: 2, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6052, file: !5604, line: 1373, column: 2)
!6060 = !DILocation(line: 1373, column: 2, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6052, file: !5604, line: 1373, column: 2)
!6062 = !{i64 2154960851, i64 2154960880, i64 2154960926, i64 2154960984, i64 2154961038, i64 2154961092, i64 2154961147, i64 2154961178, i64 2154961486, i64 2154961492, i64 2154961539, i64 2154961562, i64 2154961588}
!6063 = !DILocation(line: 1373, column: 2, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6052, file: !5604, line: 1373, column: 2)
!6065 = !DILocation(line: 1373, column: 2, scope: !6044)
!6066 = !DILocation(line: 1375, column: 2, scope: !6044)
!6067 = distinct !DISubprogram(name: "mem_cgroup_disabled", scope: !5604, file: !5604, line: 1198, type: !1711, scopeLine: 1199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6068 = !DILocation(line: 1200, column: 2, scope: !6067)
!6069 = distinct !DISubprogram(name: "lruvec_page_state", scope: !5604, file: !5604, line: 1506, type: !6070, scopeLine: 1508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6072)
!6070 = !DISubroutineType(types: !6071)
!6071 = !{!51, !5637, !289}
!6072 = !{!6073, !6074}
!6073 = !DILocalVariable(name: "lruvec", arg: 1, scope: !6069, file: !5604, line: 1506, type: !5637)
!6074 = !DILocalVariable(name: "idx", arg: 2, scope: !6069, file: !5604, line: 1507, type: !289)
!6075 = !DILocation(line: 1506, column: 62, scope: !6069)
!6076 = !DILocation(line: 1507, column: 32, scope: !6069)
!6077 = !DILocation(line: 1509, column: 38, scope: !6069)
!6078 = !DILocation(line: 1509, column: 25, scope: !6069)
!6079 = !DILocation(line: 1509, column: 47, scope: !6069)
!6080 = !DILocation(line: 1509, column: 9, scope: !6069)
!6081 = !DILocation(line: 1509, column: 2, scope: !6069)
!6082 = distinct !DISubprogram(name: "mem_cgroup_get_nr_swap_pages", scope: !4434, file: !4434, line: 683, type: !6083, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6085)
!6083 = !DISubroutineType(types: !6084)
!6084 = !{!1065, !2720}
!6085 = !{!6086}
!6086 = !DILocalVariable(name: "memcg", arg: 1, scope: !6082, file: !4434, line: 683, type: !2720)
!6087 = !DILocation(line: 683, column: 68, scope: !6082)
!6088 = !DILocation(line: 685, column: 9, scope: !6082)
!6089 = !DILocation(line: 685, column: 2, scope: !6082)
!6090 = distinct !DISubprogram(name: "workingset_refault", scope: !3, file: !3, line: 508, type: !6091, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6093)
!6091 = !DISubroutineType(types: !6092)
!6092 = !{null, !2269, !32}
!6093 = !{!6094, !6095, !6096, !6097, !6098, !6099, !6100, !6101, !6102}
!6094 = !DILocalVariable(name: "folio", arg: 1, scope: !6090, file: !3, line: 508, type: !2269)
!6095 = !DILocalVariable(name: "shadow", arg: 2, scope: !6090, file: !3, line: 508, type: !32)
!6096 = !DILocalVariable(name: "file", scope: !6090, file: !3, line: 510, type: !832)
!6097 = !DILocalVariable(name: "pgdat", scope: !6090, file: !3, line: 511, type: !5409)
!6098 = !DILocalVariable(name: "memcg", scope: !6090, file: !3, line: 512, type: !2720)
!6099 = !DILocalVariable(name: "lruvec", scope: !6090, file: !3, line: 513, type: !5637)
!6100 = !DILocalVariable(name: "workingset", scope: !6090, file: !3, line: 514, type: !832)
!6101 = !DILocalVariable(name: "nr", scope: !6090, file: !3, line: 515, type: !1065)
!6102 = !DILabel(scope: !6090, name: "out", file: !3, line: 559)
!6103 = !DILocation(line: 508, column: 39, scope: !6090)
!6104 = !DILocation(line: 508, column: 52, scope: !6090)
!6105 = !DILocation(line: 510, column: 2, scope: !6090)
!6106 = !DILocation(line: 510, column: 7, scope: !6090)
!6107 = !DILocation(line: 510, column: 32, scope: !6090)
!6108 = !DILocation(line: 510, column: 14, scope: !6090)
!6109 = !DILocation(line: 511, column: 2, scope: !6090)
!6110 = !DILocation(line: 511, column: 22, scope: !6090)
!6111 = !DILocation(line: 512, column: 2, scope: !6090)
!6112 = !DILocation(line: 512, column: 21, scope: !6090)
!6113 = !DILocation(line: 513, column: 2, scope: !6090)
!6114 = !DILocation(line: 513, column: 17, scope: !6090)
!6115 = !DILocation(line: 514, column: 2, scope: !6090)
!6116 = !DILocation(line: 514, column: 7, scope: !6090)
!6117 = !DILocation(line: 515, column: 2, scope: !6090)
!6118 = !DILocation(line: 515, column: 7, scope: !6090)
!6119 = !DILocation(line: 517, column: 6, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 517, column: 6)
!6121 = !DILocation(line: 517, column: 6, scope: !6090)
!6122 = !DILocation(line: 518, column: 19, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 517, column: 25)
!6124 = !DILocation(line: 518, column: 26, scope: !6123)
!6125 = !DILocation(line: 518, column: 3, scope: !6123)
!6126 = !DILocation(line: 519, column: 3, scope: !6123)
!6127 = !DILocation(line: 523, column: 2, scope: !6090)
!6128 = !DILocation(line: 525, column: 2, scope: !6090)
!6129 = !DILocation(line: 535, column: 22, scope: !6090)
!6130 = !DILocation(line: 535, column: 7, scope: !6090)
!6131 = !DILocation(line: 535, column: 5, scope: !6090)
!6132 = !DILocation(line: 536, column: 22, scope: !6090)
!6133 = !DILocation(line: 536, column: 10, scope: !6090)
!6134 = !DILocation(line: 536, column: 8, scope: !6090)
!6135 = !DILocation(line: 537, column: 22, scope: !6090)
!6136 = !DILocation(line: 537, column: 10, scope: !6090)
!6137 = !DILocation(line: 537, column: 8, scope: !6090)
!6138 = !DILocation(line: 538, column: 29, scope: !6090)
!6139 = !DILocation(line: 538, column: 36, scope: !6090)
!6140 = !DILocation(line: 538, column: 11, scope: !6090)
!6141 = !DILocation(line: 538, column: 9, scope: !6090)
!6142 = !DILocation(line: 540, column: 19, scope: !6090)
!6143 = !DILocation(line: 540, column: 53, scope: !6090)
!6144 = !DILocation(line: 540, column: 51, scope: !6090)
!6145 = !DILocation(line: 540, column: 59, scope: !6090)
!6146 = !DILocation(line: 540, column: 2, scope: !6090)
!6147 = !DILocation(line: 542, column: 30, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 542, column: 6)
!6149 = !DILocation(line: 542, column: 38, scope: !6148)
!6150 = !DILocation(line: 542, column: 7, scope: !6148)
!6151 = !DILocation(line: 542, column: 6, scope: !6090)
!6152 = !DILocation(line: 543, column: 3, scope: !6148)
!6153 = !DILocation(line: 545, column: 19, scope: !6090)
!6154 = !DILocation(line: 545, column: 2, scope: !6090)
!6155 = !DILocation(line: 546, column: 29, scope: !6090)
!6156 = !DILocation(line: 546, column: 37, scope: !6090)
!6157 = !DILocation(line: 546, column: 2, scope: !6090)
!6158 = !DILocation(line: 547, column: 19, scope: !6090)
!6159 = !DILocation(line: 547, column: 54, scope: !6090)
!6160 = !DILocation(line: 547, column: 52, scope: !6090)
!6161 = !DILocation(line: 547, column: 60, scope: !6090)
!6162 = !DILocation(line: 547, column: 2, scope: !6090)
!6163 = !DILocation(line: 550, column: 6, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 550, column: 6)
!6165 = !DILocation(line: 550, column: 6, scope: !6090)
!6166 = !DILocation(line: 551, column: 24, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6164, file: !3, line: 550, column: 18)
!6168 = !DILocation(line: 551, column: 3, scope: !6167)
!6169 = !DILocation(line: 556, column: 25, scope: !6167)
!6170 = !DILocation(line: 556, column: 3, scope: !6167)
!6171 = !DILocation(line: 557, column: 20, scope: !6167)
!6172 = !DILocation(line: 557, column: 54, scope: !6167)
!6173 = !DILocation(line: 557, column: 52, scope: !6167)
!6174 = !DILocation(line: 557, column: 60, scope: !6167)
!6175 = !DILocation(line: 557, column: 3, scope: !6167)
!6176 = !DILocation(line: 558, column: 2, scope: !6167)
!6177 = !DILocation(line: 559, column: 1, scope: !6090)
!6178 = !DILocation(line: 560, column: 2, scope: !6090)
!6179 = !DILocation(line: 561, column: 1, scope: !6090)
!6180 = distinct !DISubprogram(name: "folio_is_file_lru", scope: !5771, file: !5771, line: 27, type: !5331, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6181)
!6181 = !{!6182}
!6182 = !DILocalVariable(name: "folio", arg: 1, scope: !6180, file: !5771, line: 27, type: !2269)
!6183 = !DILocation(line: 27, column: 51, scope: !6180)
!6184 = !DILocation(line: 29, column: 32, scope: !6180)
!6185 = !DILocation(line: 29, column: 10, scope: !6180)
!6186 = !DILocation(line: 29, column: 9, scope: !6180)
!6187 = !DILocation(line: 29, column: 2, scope: !6180)
!6188 = distinct !DISubprogram(name: "lru_gen_refault", scope: !3, file: !3, line: 339, type: !6091, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6189)
!6189 = !{!6190, !6191}
!6190 = !DILocalVariable(name: "folio", arg: 1, scope: !6188, file: !3, line: 339, type: !2269)
!6191 = !DILocalVariable(name: "shadow", arg: 2, scope: !6188, file: !3, line: 339, type: !32)
!6192 = !DILocation(line: 339, column: 43, scope: !6188)
!6193 = !DILocation(line: 339, column: 56, scope: !6188)
!6194 = !DILocation(line: 341, column: 1, scope: !6188)
!6195 = distinct !DISubprogram(name: "mem_cgroup_flush_stats_ratelimited", scope: !5604, file: !5604, line: 1522, type: !2229, scopeLine: 1523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6196 = !DILocation(line: 1524, column: 1, scope: !6195)
!6197 = distinct !DISubprogram(name: "rcu_read_lock", scope: !6198, file: !6198, line: 782, type: !2229, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6198 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!6199 = !DILocation(line: 784, column: 2, scope: !6197)
!6200 = !DILocation(line: 786, column: 2, scope: !6197)
!6201 = !DILocation(line: 786, column: 2, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6197, file: !6198, line: 786, column: 2)
!6203 = !DILocation(line: 787, column: 2, scope: !6197)
!6204 = !DILocation(line: 787, column: 2, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6197, file: !6198, line: 787, column: 2)
!6206 = !DILocation(line: 789, column: 1, scope: !6197)
!6207 = distinct !DISubprogram(name: "folio_memcg", scope: !5604, file: !5604, line: 1157, type: !6208, scopeLine: 1158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6210)
!6208 = !DISubroutineType(types: !6209)
!6209 = !{!2720, !2269}
!6210 = !{!6211}
!6211 = !DILocalVariable(name: "folio", arg: 1, scope: !6207, file: !5604, line: 1157, type: !2269)
!6212 = !DILocation(line: 1157, column: 60, scope: !6207)
!6213 = !DILocation(line: 1159, column: 2, scope: !6207)
!6214 = distinct !DISubprogram(name: "mod_lruvec_state", scope: !6215, file: !6215, line: 580, type: !6216, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6218)
!6215 = !DIFile(filename: "./include/linux/vmstat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "01b2722995b4b350c1d2f883546d8486")
!6216 = !DISubroutineType(types: !6217)
!6217 = !{null, !5637, !289, !34}
!6218 = !{!6219, !6220, !6221}
!6219 = !DILocalVariable(name: "lruvec", arg: 1, scope: !6214, file: !6215, line: 580, type: !5637)
!6220 = !DILocalVariable(name: "idx", arg: 2, scope: !6214, file: !6215, line: 581, type: !289)
!6221 = !DILocalVariable(name: "val", arg: 3, scope: !6214, file: !6215, line: 581, type: !34)
!6222 = !DILocation(line: 580, column: 52, scope: !6214)
!6223 = !DILocation(line: 581, column: 29, scope: !6214)
!6224 = !DILocation(line: 581, column: 38, scope: !6214)
!6225 = !DILocation(line: 583, column: 35, scope: !6214)
!6226 = !DILocation(line: 583, column: 22, scope: !6214)
!6227 = !DILocation(line: 583, column: 44, scope: !6214)
!6228 = !DILocation(line: 583, column: 49, scope: !6214)
!6229 = !DILocation(line: 583, column: 2, scope: !6214)
!6230 = !DILocation(line: 584, column: 1, scope: !6214)
!6231 = distinct !DISubprogram(name: "folio_set_active", scope: !338, file: !338, line: 497, type: !5322, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6232)
!6232 = !{!6233}
!6233 = !DILocalVariable(name: "folio", arg: 1, scope: !6231, file: !338, line: 497, type: !2269)
!6234 = !DILocation(line: 497, column: 1, scope: !6231)
!6235 = distinct !DISubprogram(name: "folio_set_workingset", scope: !338, file: !338, line: 499, type: !5322, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6236)
!6236 = !{!6237}
!6237 = !DILocalVariable(name: "folio", arg: 1, scope: !6235, file: !338, line: 499, type: !2269)
!6238 = !DILocation(line: 499, column: 1, scope: !6235)
!6239 = !DISubprogram(name: "lru_note_cost_refault", scope: !4434, file: !4434, line: 372, type: !5322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6240 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !6198, file: !6198, line: 813, type: !2229, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6241 = !DILocation(line: 815, column: 2, scope: !6240)
!6242 = !DILocation(line: 815, column: 2, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6240, file: !6198, line: 815, column: 2)
!6244 = !DILocation(line: 818, column: 2, scope: !6240)
!6245 = !DILocation(line: 819, column: 2, scope: !6240)
!6246 = !DILocation(line: 819, column: 2, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6240, file: !6198, line: 819, column: 2)
!6248 = !DILocation(line: 820, column: 1, scope: !6240)
!6249 = distinct !DISubprogram(name: "workingset_activation", scope: !3, file: !3, line: 567, type: !5322, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6250)
!6250 = !{!6251, !6252, !6253}
!6251 = !DILocalVariable(name: "folio", arg: 1, scope: !6249, file: !3, line: 567, type: !2269)
!6252 = !DILocalVariable(name: "memcg", scope: !6249, file: !3, line: 569, type: !2720)
!6253 = !DILabel(scope: !6249, name: "out", file: !3, line: 583)
!6254 = !DILocation(line: 567, column: 42, scope: !6249)
!6255 = !DILocation(line: 569, column: 2, scope: !6249)
!6256 = !DILocation(line: 569, column: 21, scope: !6249)
!6257 = !DILocation(line: 571, column: 2, scope: !6249)
!6258 = !DILocation(line: 579, column: 26, scope: !6249)
!6259 = !DILocation(line: 579, column: 10, scope: !6249)
!6260 = !DILocation(line: 579, column: 8, scope: !6249)
!6261 = !DILocation(line: 580, column: 7, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 580, column: 6)
!6263 = !DILocation(line: 580, column: 29, scope: !6262)
!6264 = !DILocation(line: 580, column: 33, scope: !6262)
!6265 = !DILocation(line: 580, column: 6, scope: !6249)
!6266 = !DILocation(line: 581, column: 3, scope: !6262)
!6267 = !DILocation(line: 582, column: 42, scope: !6249)
!6268 = !DILocation(line: 582, column: 29, scope: !6249)
!6269 = !DILocation(line: 582, column: 65, scope: !6249)
!6270 = !DILocation(line: 582, column: 50, scope: !6249)
!6271 = !DILocation(line: 582, column: 2, scope: !6249)
!6272 = !DILocation(line: 583, column: 1, scope: !6249)
!6273 = !DILocation(line: 584, column: 2, scope: !6249)
!6274 = !DILocation(line: 585, column: 1, scope: !6249)
!6275 = distinct !DISubprogram(name: "folio_memcg_rcu", scope: !5604, file: !5604, line: 1167, type: !6208, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6276)
!6276 = !{!6277, !6278, !6280}
!6277 = !DILocalVariable(name: "folio", arg: 1, scope: !6275, file: !5604, line: 1167, type: !2269)
!6278 = !DILocalVariable(name: "__ret_warn_on", scope: !6279, file: !5604, line: 1169, type: !34)
!6279 = distinct !DILexicalBlock(scope: !6275, file: !5604, line: 1169, column: 2)
!6280 = !DILocalVariable(name: "__flags", scope: !6281, file: !5604, line: 1169, type: !34)
!6281 = distinct !DILexicalBlock(scope: !6282, file: !5604, line: 1169, column: 2)
!6282 = distinct !DILexicalBlock(scope: !6279, file: !5604, line: 1169, column: 2)
!6283 = !DILocation(line: 1167, column: 64, scope: !6275)
!6284 = !DILocation(line: 1169, column: 2, scope: !6279)
!6285 = !DILocation(line: 1169, column: 2, scope: !6282)
!6286 = !DILocation(line: 1169, column: 2, scope: !6281)
!6287 = !DILocation(line: 1169, column: 2, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6281, file: !5604, line: 1169, column: 2)
!6289 = !DILocation(line: 1169, column: 2, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6281, file: !5604, line: 1169, column: 2)
!6291 = !{i64 2154952751, i64 2154952780, i64 2154952826, i64 2154952884, i64 2154952938, i64 2154952992, i64 2154953047, i64 2154953078, i64 2154953386, i64 2154953392, i64 2154953439, i64 2154953462, i64 2154953488}
!6292 = !DILocation(line: 1169, column: 2, scope: !6293)
!6293 = distinct !DILexicalBlock(scope: !6281, file: !5604, line: 1169, column: 2)
!6294 = !DILocation(line: 1169, column: 2, scope: !6275)
!6295 = !DILocation(line: 1170, column: 2, scope: !6275)
!6296 = distinct !DISubprogram(name: "folio_lruvec", scope: !5604, file: !5604, line: 1277, type: !6297, scopeLine: 1278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6299)
!6297 = !DISubroutineType(types: !6298)
!6298 = !{!5637, !2269}
!6299 = !{!6300, !6301}
!6300 = !DILocalVariable(name: "folio", arg: 1, scope: !6296, file: !5604, line: 1277, type: !2269)
!6301 = !DILocalVariable(name: "pgdat", scope: !6296, file: !5604, line: 1279, type: !5409)
!6302 = !DILocation(line: 1277, column: 57, scope: !6296)
!6303 = !DILocation(line: 1279, column: 2, scope: !6296)
!6304 = !DILocation(line: 1279, column: 22, scope: !6296)
!6305 = !DILocation(line: 1279, column: 42, scope: !6296)
!6306 = !DILocation(line: 1279, column: 30, scope: !6296)
!6307 = !DILocation(line: 1280, column: 10, scope: !6296)
!6308 = !DILocation(line: 1280, column: 17, scope: !6296)
!6309 = !DILocation(line: 1281, column: 1, scope: !6296)
!6310 = !DILocation(line: 1280, column: 2, scope: !6296)
!6311 = distinct !DISubprogram(name: "workingset_update_node", scope: !3, file: !3, line: 601, type: !6312, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6314)
!6312 = !DISubroutineType(types: !6313)
!6313 = !{null, !5565}
!6314 = !{!6315, !6316, !6317}
!6315 = !DILocalVariable(name: "node", arg: 1, scope: !6311, file: !3, line: 601, type: !5565)
!6316 = !DILocalVariable(name: "mapping", scope: !6311, file: !3, line: 603, type: !386)
!6317 = !DILocalVariable(name: "__mptr", scope: !6318, file: !3, line: 613, type: !32)
!6318 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 613, column: 12)
!6319 = !DILocation(line: 601, column: 45, scope: !6311)
!6320 = !DILocation(line: 603, column: 2, scope: !6311)
!6321 = !DILocation(line: 603, column: 24, scope: !6311)
!6322 = !DILocation(line: 613, column: 12, scope: !6318)
!6323 = !DILocation(line: 613, column: 12, scope: !6311)
!6324 = !DILocation(line: 613, column: 10, scope: !6311)
!6325 = !DILocation(line: 614, column: 2, scope: !6311)
!6326 = !DILocation(line: 614, column: 2, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 614, column: 2)
!6328 = !DILocation(line: 616, column: 6, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 616, column: 6)
!6330 = !DILocation(line: 616, column: 12, scope: !6329)
!6331 = !DILocation(line: 616, column: 18, scope: !6329)
!6332 = !DILocation(line: 616, column: 21, scope: !6329)
!6333 = !DILocation(line: 616, column: 27, scope: !6329)
!6334 = !DILocation(line: 616, column: 36, scope: !6329)
!6335 = !DILocation(line: 616, column: 42, scope: !6329)
!6336 = !DILocation(line: 616, column: 33, scope: !6329)
!6337 = !DILocation(line: 616, column: 6, scope: !6311)
!6338 = !DILocation(line: 617, column: 19, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 617, column: 7)
!6340 = distinct !DILexicalBlock(scope: !6329, file: !3, line: 616, column: 53)
!6341 = !DILocation(line: 617, column: 25, scope: !6339)
!6342 = !DILocation(line: 617, column: 7, scope: !6339)
!6343 = !DILocation(line: 617, column: 7, scope: !6340)
!6344 = !DILocation(line: 618, column: 33, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6339, file: !3, line: 617, column: 40)
!6346 = !DILocation(line: 618, column: 39, scope: !6345)
!6347 = !DILocation(line: 618, column: 4, scope: !6345)
!6348 = !DILocation(line: 619, column: 28, scope: !6345)
!6349 = !DILocation(line: 619, column: 4, scope: !6345)
!6350 = !DILocation(line: 620, column: 3, scope: !6345)
!6351 = !DILocation(line: 621, column: 2, scope: !6340)
!6352 = !DILocation(line: 622, column: 20, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6354, file: !3, line: 622, column: 7)
!6354 = distinct !DILexicalBlock(scope: !6329, file: !3, line: 621, column: 9)
!6355 = !DILocation(line: 622, column: 26, scope: !6353)
!6356 = !DILocation(line: 622, column: 8, scope: !6353)
!6357 = !DILocation(line: 622, column: 7, scope: !6354)
!6358 = !DILocation(line: 623, column: 33, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 622, column: 41)
!6360 = !DILocation(line: 623, column: 39, scope: !6359)
!6361 = !DILocation(line: 623, column: 4, scope: !6359)
!6362 = !DILocation(line: 624, column: 28, scope: !6359)
!6363 = !DILocation(line: 624, column: 4, scope: !6359)
!6364 = !DILocation(line: 625, column: 3, scope: !6359)
!6365 = !DILocation(line: 627, column: 1, scope: !6311)
!6366 = distinct !DISubprogram(name: "list_empty", scope: !6367, file: !6367, line: 371, type: !6368, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6372)
!6367 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6368 = !DISubroutineType(types: !6369)
!6369 = !{!34, !6370}
!6370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6371, size: 64)
!6371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!6372 = !{!6373}
!6373 = !DILocalVariable(name: "head", arg: 1, scope: !6366, file: !6367, line: 371, type: !6370)
!6374 = !DILocation(line: 371, column: 54, scope: !6366)
!6375 = !DILocation(line: 373, column: 9, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6366, file: !6367, line: 373, column: 9)
!6377 = !DILocation(line: 373, column: 9, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6376, file: !6367, line: 373, column: 9)
!6379 = !DILocation(line: 373, column: 34, scope: !6366)
!6380 = !DILocation(line: 373, column: 31, scope: !6366)
!6381 = !DILocation(line: 373, column: 2, scope: !6366)
!6382 = !DISubprogram(name: "list_lru_add", scope: !378, file: !378, line: 90, type: !6383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6383 = !DISubroutineType(types: !6384)
!6384 = !{!832, !6385, !112}
!6385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!6386 = distinct !DISubprogram(name: "__inc_lruvec_kmem_state", scope: !5604, file: !5604, line: 1582, type: !6387, scopeLine: 1583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6389)
!6387 = !DISubroutineType(types: !6388)
!6388 = !{null, !32, !289}
!6389 = !{!6390, !6391}
!6390 = !DILocalVariable(name: "p", arg: 1, scope: !6386, file: !5604, line: 1582, type: !32)
!6391 = !DILocalVariable(name: "idx", arg: 2, scope: !6386, file: !5604, line: 1582, type: !289)
!6392 = !DILocation(line: 1582, column: 50, scope: !6386)
!6393 = !DILocation(line: 1582, column: 73, scope: !6386)
!6394 = !DILocation(line: 1584, column: 26, scope: !6386)
!6395 = !DILocation(line: 1584, column: 29, scope: !6386)
!6396 = !DILocation(line: 1584, column: 2, scope: !6386)
!6397 = !DILocation(line: 1585, column: 1, scope: !6386)
!6398 = !DISubprogram(name: "list_lru_del", scope: !378, file: !378, line: 103, type: !6383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6399 = distinct !DISubprogram(name: "__dec_lruvec_kmem_state", scope: !5604, file: !5604, line: 1587, type: !6387, scopeLine: 1588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6400)
!6400 = !{!6401, !6402}
!6401 = !DILocalVariable(name: "p", arg: 1, scope: !6399, file: !5604, line: 1587, type: !32)
!6402 = !DILocalVariable(name: "idx", arg: 2, scope: !6399, file: !5604, line: 1587, type: !289)
!6403 = !DILocation(line: 1587, column: 50, scope: !6399)
!6404 = !DILocation(line: 1587, column: 73, scope: !6399)
!6405 = !DILocation(line: 1589, column: 26, scope: !6399)
!6406 = !DILocation(line: 1589, column: 29, scope: !6399)
!6407 = !DILocation(line: 1589, column: 2, scope: !6399)
!6408 = !DILocation(line: 1590, column: 1, scope: !6399)
!6409 = distinct !DISubprogram(name: "__initstub__kmod_workingset__341_814_workingset_init6", scope: !3, file: !3, line: 814, type: !1997, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6410 = !DILocation(line: 814, column: 1, scope: !6409)
!6411 = distinct !DISubprogram(name: "workingset_init", scope: !3, file: !3, line: 779, type: !1997, scopeLine: 780, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6412)
!6412 = !{!6413, !6414, !6415, !6416, !6417}
!6413 = !DILocalVariable(name: "timestamp_bits", scope: !6411, file: !3, line: 781, type: !7)
!6414 = !DILocalVariable(name: "max_order", scope: !6411, file: !3, line: 782, type: !7)
!6415 = !DILocalVariable(name: "ret", scope: !6411, file: !3, line: 783, type: !34)
!6416 = !DILabel(scope: !6411, name: "err_list_lru", file: !3, line: 809)
!6417 = !DILabel(scope: !6411, name: "err", file: !3, line: 811)
!6418 = !DILocation(line: 781, column: 2, scope: !6411)
!6419 = !DILocation(line: 781, column: 15, scope: !6411)
!6420 = !DILocation(line: 782, column: 2, scope: !6411)
!6421 = !DILocation(line: 782, column: 15, scope: !6411)
!6422 = !DILocation(line: 783, column: 2, scope: !6411)
!6423 = !DILocation(line: 783, column: 6, scope: !6411)
!6424 = !DILocation(line: 785, column: 2, scope: !6411)
!6425 = !DILocation(line: 785, column: 2, scope: !6426)
!6426 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 785, column: 2)
!6427 = !DILocation(line: 793, column: 17, scope: !6411)
!6428 = !DILocation(line: 794, column: 23, scope: !6411)
!6429 = !DILocation(line: 794, column: 40, scope: !6411)
!6430 = !DILocation(line: 794, column: 14, scope: !6411)
!6431 = !DILocation(line: 794, column: 12, scope: !6411)
!6432 = !DILocation(line: 795, column: 6, scope: !6433)
!6433 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 795, column: 6)
!6434 = !DILocation(line: 795, column: 18, scope: !6433)
!6435 = !DILocation(line: 795, column: 16, scope: !6433)
!6436 = !DILocation(line: 795, column: 6, scope: !6411)
!6437 = !DILocation(line: 796, column: 18, scope: !6433)
!6438 = !DILocation(line: 796, column: 30, scope: !6433)
!6439 = !DILocation(line: 796, column: 28, scope: !6433)
!6440 = !DILocation(line: 796, column: 16, scope: !6433)
!6441 = !DILocation(line: 796, column: 3, scope: !6433)
!6442 = !DILocation(line: 797, column: 2, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 797, column: 2)
!6444 = !DILocation(line: 797, column: 2, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6443, file: !3, line: 797, column: 2)
!6446 = !DILocation(line: 800, column: 8, scope: !6411)
!6447 = !DILocation(line: 800, column: 6, scope: !6411)
!6448 = !DILocation(line: 801, column: 6, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 801, column: 6)
!6450 = !DILocation(line: 801, column: 6, scope: !6411)
!6451 = !DILocation(line: 802, column: 3, scope: !6449)
!6452 = !DILocation(line: 803, column: 8, scope: !6411)
!6453 = !DILocation(line: 803, column: 6, scope: !6411)
!6454 = !DILocation(line: 805, column: 6, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 805, column: 6)
!6456 = !DILocation(line: 805, column: 6, scope: !6411)
!6457 = !DILocation(line: 806, column: 3, scope: !6455)
!6458 = !DILocation(line: 807, column: 2, scope: !6411)
!6459 = !DILocation(line: 808, column: 2, scope: !6411)
!6460 = !DILocation(line: 809, column: 1, scope: !6411)
!6461 = !DILocation(line: 810, column: 2, scope: !6411)
!6462 = !DILocation(line: 811, column: 1, scope: !6411)
!6463 = !DILocation(line: 812, column: 9, scope: !6411)
!6464 = !DILocation(line: 812, column: 2, scope: !6411)
!6465 = !DILocation(line: 813, column: 1, scope: !6411)
!6466 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6467, file: !6467, line: 94, type: !6468, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6473)
!6467 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6468 = !DISubroutineType(types: !6469)
!6469 = !{null, !6470, !47}
!6470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6471, size: 64)
!6471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6472)
!6472 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6473 = !{!6474, !6475}
!6474 = !DILocalVariable(name: "v", arg: 1, scope: !6466, file: !6467, line: 94, type: !6470)
!6475 = !DILocalVariable(name: "size", arg: 2, scope: !6466, file: !6467, line: 94, type: !47)
!6476 = !DILocation(line: 94, column: 79, scope: !6466)
!6477 = !DILocation(line: 94, column: 89, scope: !6466)
!6478 = !DILocation(line: 96, column: 20, scope: !6466)
!6479 = !DILocation(line: 96, column: 23, scope: !6466)
!6480 = !DILocation(line: 96, column: 2, scope: !6466)
!6481 = !DILocation(line: 97, column: 2, scope: !6466)
!6482 = !DILocation(line: 98, column: 1, scope: !6466)
!6483 = distinct !DISubprogram(name: "raw_atomic_long_add", scope: !634, file: !634, line: 118, type: !5660, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6484)
!6484 = !{!6485, !6486}
!6485 = !DILocalVariable(name: "i", arg: 1, scope: !6483, file: !634, line: 118, type: !1065)
!6486 = !DILocalVariable(name: "v", arg: 2, scope: !6483, file: !634, line: 118, type: !4966)
!6487 = !DILocation(line: 118, column: 26, scope: !6483)
!6488 = !DILocation(line: 118, column: 44, scope: !6483)
!6489 = !DILocation(line: 121, column: 19, scope: !6483)
!6490 = !DILocation(line: 121, column: 22, scope: !6483)
!6491 = !DILocation(line: 121, column: 2, scope: !6483)
!6492 = !DILocation(line: 125, column: 1, scope: !6483)
!6493 = distinct !DISubprogram(name: "kasan_check_write", scope: !6494, file: !6494, line: 44, type: !6495, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6497)
!6494 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6495 = !DISubroutineType(types: !6496)
!6496 = !{!832, !6470, !7}
!6497 = !{!6498, !6499}
!6498 = !DILocalVariable(name: "p", arg: 1, scope: !6493, file: !6494, line: 44, type: !6470)
!6499 = !DILocalVariable(name: "size", arg: 2, scope: !6493, file: !6494, line: 44, type: !7)
!6500 = !DILocation(line: 44, column: 59, scope: !6493)
!6501 = !DILocation(line: 44, column: 75, scope: !6493)
!6502 = !DILocation(line: 46, column: 2, scope: !6493)
!6503 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6504, file: !6504, line: 229, type: !6505, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6507)
!6504 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6505 = !DISubroutineType(types: !6506)
!6506 = !{null, !6470, !47, !34}
!6507 = !{!6508, !6509, !6510}
!6508 = !DILocalVariable(name: "ptr", arg: 1, scope: !6503, file: !6504, line: 229, type: !6470)
!6509 = !DILocalVariable(name: "size", arg: 2, scope: !6503, file: !6504, line: 229, type: !47)
!6510 = !DILocalVariable(name: "type", arg: 3, scope: !6503, file: !6504, line: 230, type: !34)
!6511 = !DILocation(line: 229, column: 60, scope: !6503)
!6512 = !DILocation(line: 229, column: 72, scope: !6503)
!6513 = !DILocation(line: 230, column: 15, scope: !6503)
!6514 = !DILocation(line: 230, column: 23, scope: !6503)
!6515 = distinct !DISubprogram(name: "raw_atomic64_add", scope: !6516, file: !6516, line: 2643, type: !6517, scopeLine: 2644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6520)
!6516 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6517 = !DISubroutineType(types: !6518)
!6518 = !{null, !639, !6519}
!6519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!6520 = !{!6521, !6522}
!6521 = !DILocalVariable(name: "i", arg: 1, scope: !6515, file: !6516, line: 2643, type: !639)
!6522 = !DILocalVariable(name: "v", arg: 2, scope: !6515, file: !6516, line: 2643, type: !6519)
!6523 = !DILocation(line: 2643, column: 22, scope: !6515)
!6524 = !DILocation(line: 2643, column: 37, scope: !6515)
!6525 = !DILocation(line: 2645, column: 20, scope: !6515)
!6526 = !DILocation(line: 2645, column: 23, scope: !6515)
!6527 = !DILocation(line: 2645, column: 2, scope: !6515)
!6528 = !DILocation(line: 2646, column: 1, scope: !6515)
!6529 = distinct !DISubprogram(name: "arch_atomic64_add", scope: !6530, file: !6530, line: 23, type: !6517, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6531)
!6530 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!6531 = !{!6532, !6533}
!6532 = !DILocalVariable(name: "i", arg: 1, scope: !6529, file: !6530, line: 23, type: !639)
!6533 = !DILocalVariable(name: "v", arg: 2, scope: !6529, file: !6530, line: 23, type: !6519)
!6534 = !DILocation(line: 23, column: 51, scope: !6529)
!6535 = !DILocation(line: 23, column: 66, scope: !6529)
!6536 = !DILocation(line: 26, column: 16, scope: !6529)
!6537 = !DILocation(line: 26, column: 19, scope: !6529)
!6538 = !DILocation(line: 27, column: 16, scope: !6529)
!6539 = !DILocation(line: 27, column: 25, scope: !6529)
!6540 = !DILocation(line: 27, column: 28, scope: !6529)
!6541 = !DILocation(line: 25, column: 2, scope: !6529)
!6542 = !{i64 2148525324, i64 2148525363, i64 2148525384, i64 2148525421, i64 2148525444, i64 2148525314}
!6543 = !DILocation(line: 28, column: 1, scope: !6529)
!6544 = distinct !DISubprogram(name: "parent_mem_cgroup", scope: !5604, file: !5604, line: 1288, type: !6545, scopeLine: 1289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6547)
!6545 = !DISubroutineType(types: !6546)
!6546 = !{!2720, !2720}
!6547 = !{!6548}
!6548 = !DILocalVariable(name: "memcg", arg: 1, scope: !6544, file: !5604, line: 1288, type: !2720)
!6549 = !DILocation(line: 1288, column: 71, scope: !6544)
!6550 = !DILocation(line: 1290, column: 2, scope: !6544)
!6551 = distinct !DISubprogram(name: "lruvec_pgdat", scope: !277, file: !277, line: 1446, type: !6552, scopeLine: 1447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6554)
!6552 = !DISubroutineType(types: !6553)
!6553 = !{!5409, !5637}
!6554 = !{!6555, !6556}
!6555 = !DILocalVariable(name: "lruvec", arg: 1, scope: !6551, file: !277, line: 1446, type: !5637)
!6556 = !DILocalVariable(name: "__mptr", scope: !6557, file: !277, line: 1451, type: !32)
!6557 = distinct !DILexicalBlock(scope: !6551, file: !277, line: 1451, column: 9)
!6558 = !DILocation(line: 1446, column: 63, scope: !6551)
!6559 = !DILocation(line: 1451, column: 9, scope: !6557)
!6560 = !DILocation(line: 1451, column: 9, scope: !6551)
!6561 = !DILocation(line: 1451, column: 2, scope: !6551)
!6562 = distinct !DISubprogram(name: "page_pgdat", scope: !1436, file: !1436, line: 1853, type: !6563, scopeLine: 1854, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6565)
!6563 = !DISubroutineType(types: !6564)
!6564 = !{!5759, !5563}
!6565 = !{!6566}
!6566 = !DILocalVariable(name: "page", arg: 1, scope: !6562, file: !1436, line: 1853, type: !5563)
!6567 = !DILocation(line: 1853, column: 56, scope: !6562)
!6568 = !DILocation(line: 1855, column: 9, scope: !6562)
!6569 = !DILocation(line: 1855, column: 2, scope: !6562)
!6570 = distinct !DISubprogram(name: "page_to_nid", scope: !1436, file: !1436, line: 1632, type: !6571, scopeLine: 1633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6573)
!6571 = !DISubroutineType(types: !6572)
!6572 = !{!34, !5563}
!6573 = !{!6574, !6575}
!6574 = !DILocalVariable(name: "page", arg: 1, scope: !6570, file: !1436, line: 1632, type: !5563)
!6575 = !DILocalVariable(name: "p", scope: !6570, file: !1436, line: 1634, type: !1498)
!6576 = !DILocation(line: 1632, column: 50, scope: !6570)
!6577 = !DILocation(line: 1634, column: 2, scope: !6570)
!6578 = !DILocation(line: 1634, column: 15, scope: !6570)
!6579 = !DILocation(line: 1634, column: 34, scope: !6570)
!6580 = !DILocation(line: 1636, column: 10, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6570, file: !1436, line: 1636, column: 10)
!6582 = !DILocation(line: 1636, column: 32, scope: !6570)
!6583 = !DILocation(line: 1636, column: 38, scope: !6570)
!6584 = !DILocation(line: 1636, column: 56, scope: !6570)
!6585 = !DILocation(line: 1636, column: 9, scope: !6570)
!6586 = !DILocation(line: 1637, column: 1, scope: !6570)
!6587 = !DILocation(line: 1636, column: 2, scope: !6570)
!6588 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6467, file: !6467, line: 66, type: !6468, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6589)
!6589 = !{!6590, !6591}
!6590 = !DILocalVariable(name: "v", arg: 1, scope: !6588, file: !6467, line: 66, type: !6470)
!6591 = !DILocalVariable(name: "size", arg: 2, scope: !6588, file: !6467, line: 66, type: !47)
!6592 = !DILocation(line: 66, column: 73, scope: !6588)
!6593 = !DILocation(line: 66, column: 83, scope: !6588)
!6594 = !DILocation(line: 68, column: 19, scope: !6588)
!6595 = !DILocation(line: 68, column: 22, scope: !6588)
!6596 = !DILocation(line: 68, column: 2, scope: !6588)
!6597 = !DILocation(line: 69, column: 2, scope: !6588)
!6598 = !DILocation(line: 70, column: 1, scope: !6588)
!6599 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !634, file: !634, line: 35, type: !5806, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6600)
!6600 = !{!6601}
!6601 = !DILocalVariable(name: "v", arg: 1, scope: !6599, file: !634, line: 35, type: !5808)
!6602 = !DILocation(line: 35, column: 43, scope: !6599)
!6603 = !DILocation(line: 38, column: 27, scope: !6599)
!6604 = !DILocation(line: 38, column: 9, scope: !6599)
!6605 = !DILocation(line: 38, column: 2, scope: !6599)
!6606 = distinct !DISubprogram(name: "kasan_check_read", scope: !6494, file: !6494, line: 40, type: !6495, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6607)
!6607 = !{!6608, !6609}
!6608 = !DILocalVariable(name: "p", arg: 1, scope: !6606, file: !6494, line: 40, type: !6470)
!6609 = !DILocalVariable(name: "size", arg: 2, scope: !6606, file: !6494, line: 40, type: !7)
!6610 = !DILocation(line: 40, column: 58, scope: !6606)
!6611 = !DILocation(line: 40, column: 74, scope: !6606)
!6612 = !DILocation(line: 42, column: 2, scope: !6606)
!6613 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !6516, file: !6516, line: 2554, type: !6614, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6618)
!6614 = !DISubroutineType(types: !6615)
!6615 = !{!639, !6616}
!6616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6617, size: 64)
!6617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!6618 = !{!6619}
!6619 = !DILocalVariable(name: "v", arg: 1, scope: !6613, file: !6516, line: 2554, type: !6616)
!6620 = !DILocation(line: 2554, column: 37, scope: !6613)
!6621 = !DILocation(line: 2556, column: 28, scope: !6613)
!6622 = !DILocation(line: 2556, column: 9, scope: !6613)
!6623 = !DILocation(line: 2556, column: 2, scope: !6613)
!6624 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !6530, file: !6530, line: 13, type: !6614, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6625)
!6625 = !{!6626}
!6626 = !DILocalVariable(name: "v", arg: 1, scope: !6624, file: !6530, line: 13, type: !6616)
!6627 = !DILocation(line: 13, column: 65, scope: !6624)
!6628 = !DILocation(line: 15, column: 9, scope: !6624)
!6629 = !DILocation(line: 15, column: 2, scope: !6624)
!6630 = distinct !DISubprogram(name: "folio_test_large", scope: !338, file: !338, line: 810, type: !5867, scopeLine: 811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6631)
!6631 = !{!6632}
!6632 = !DILocalVariable(name: "folio", arg: 1, scope: !6630, file: !338, line: 810, type: !2269)
!6633 = !DILocation(line: 810, column: 51, scope: !6630)
!6634 = !DILocation(line: 812, column: 25, scope: !6630)
!6635 = !DILocation(line: 812, column: 9, scope: !6630)
!6636 = !DILocation(line: 812, column: 2, scope: !6630)
!6637 = distinct !DISubprogram(name: "folio_test_head", scope: !338, file: !338, line: 789, type: !5867, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6638)
!6638 = !{!6639}
!6639 = !DILocalVariable(name: "folio", arg: 1, scope: !6637, file: !338, line: 789, type: !2269)
!6640 = !DILocation(line: 789, column: 59, scope: !6637)
!6641 = !DILocation(line: 791, column: 9, scope: !6637)
!6642 = !DILocation(line: 791, column: 2, scope: !6637)
!6643 = distinct !DISubprogram(name: "_test_bit", scope: !6644, file: !6644, line: 139, type: !6645, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6647)
!6644 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6645 = !DISubroutineType(types: !6646)
!6646 = !{!832, !51, !5558}
!6647 = !{!6648, !6649}
!6648 = !DILocalVariable(name: "nr", arg: 1, scope: !6643, file: !6644, line: 139, type: !51)
!6649 = !DILocalVariable(name: "addr", arg: 2, scope: !6643, file: !6644, line: 139, type: !5558)
!6650 = !DILocation(line: 139, column: 25, scope: !6643)
!6651 = !DILocation(line: 139, column: 59, scope: !6643)
!6652 = !DILocation(line: 141, column: 25, scope: !6643)
!6653 = !DILocation(line: 141, column: 32, scope: !6643)
!6654 = !DILocation(line: 141, column: 30, scope: !6643)
!6655 = !DILocation(line: 141, column: 2, scope: !6643)
!6656 = !DILocation(line: 142, column: 23, scope: !6643)
!6657 = !DILocation(line: 142, column: 27, scope: !6643)
!6658 = !DILocation(line: 142, column: 9, scope: !6643)
!6659 = !DILocation(line: 142, column: 2, scope: !6643)
!6660 = distinct !DISubprogram(name: "folio_flags", scope: !338, file: !338, line: 308, type: !6661, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6663)
!6661 = !DISubroutineType(types: !6662)
!6662 = !{!2215, !2269, !7}
!6663 = !{!6664, !6665, !6666}
!6664 = !DILocalVariable(name: "folio", arg: 1, scope: !6660, file: !338, line: 308, type: !2269)
!6665 = !DILocalVariable(name: "n", arg: 2, scope: !6660, file: !338, line: 308, type: !7)
!6666 = !DILocalVariable(name: "page", scope: !6660, file: !338, line: 310, type: !1498)
!6667 = !DILocation(line: 308, column: 49, scope: !6660)
!6668 = !DILocation(line: 308, column: 65, scope: !6660)
!6669 = !DILocation(line: 310, column: 2, scope: !6660)
!6670 = !DILocation(line: 310, column: 15, scope: !6660)
!6671 = !DILocation(line: 310, column: 23, scope: !6660)
!6672 = !DILocation(line: 310, column: 30, scope: !6660)
!6673 = !DILocation(line: 314, column: 10, scope: !6660)
!6674 = !DILocation(line: 314, column: 15, scope: !6660)
!6675 = !DILocation(line: 314, column: 18, scope: !6660)
!6676 = !DILocation(line: 315, column: 1, scope: !6660)
!6677 = !DILocation(line: 314, column: 2, scope: !6660)
!6678 = distinct !DISubprogram(name: "arch_test_bit", scope: !6679, file: !6679, line: 237, type: !6645, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6680)
!6679 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6680 = !{!6681, !6682}
!6681 = !DILocalVariable(name: "nr", arg: 1, scope: !6678, file: !6679, line: 237, type: !51)
!6682 = !DILocalVariable(name: "addr", arg: 2, scope: !6678, file: !6679, line: 237, type: !5558)
!6683 = !DILocation(line: 237, column: 29, scope: !6678)
!6684 = !DILocation(line: 237, column: 63, scope: !6678)
!6685 = !DILocation(line: 239, column: 30, scope: !6678)
!6686 = !DILocation(line: 239, column: 9, scope: !6678)
!6687 = !DILocation(line: 239, column: 54, scope: !6678)
!6688 = !DILocation(line: 239, column: 58, scope: !6678)
!6689 = !DILocation(line: 239, column: 36, scope: !6678)
!6690 = !DILocation(line: 240, column: 26, scope: !6678)
!6691 = !DILocation(line: 240, column: 30, scope: !6678)
!6692 = !DILocation(line: 240, column: 8, scope: !6678)
!6693 = !DILocation(line: 239, column: 2, scope: !6678)
!6694 = distinct !DISubprogram(name: "constant_test_bit", scope: !6679, file: !6679, line: 204, type: !6695, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6697)
!6695 = !DISubroutineType(types: !6696)
!6696 = !{!832, !1065, !5558}
!6697 = !{!6698, !6699}
!6698 = !DILocalVariable(name: "nr", arg: 1, scope: !6694, file: !6679, line: 204, type: !1065)
!6699 = !DILocalVariable(name: "addr", arg: 2, scope: !6694, file: !6679, line: 204, type: !5558)
!6700 = !DILocation(line: 204, column: 52, scope: !6694)
!6701 = !DILocation(line: 204, column: 86, scope: !6694)
!6702 = !DILocation(line: 206, column: 19, scope: !6694)
!6703 = !DILocation(line: 206, column: 22, scope: !6694)
!6704 = !DILocation(line: 206, column: 15, scope: !6694)
!6705 = !DILocation(line: 207, column: 4, scope: !6694)
!6706 = !DILocation(line: 207, column: 9, scope: !6694)
!6707 = !DILocation(line: 207, column: 12, scope: !6694)
!6708 = !DILocation(line: 206, column: 44, scope: !6694)
!6709 = !DILocation(line: 207, column: 37, scope: !6694)
!6710 = !DILocation(line: 206, column: 2, scope: !6694)
!6711 = distinct !DISubprogram(name: "variable_test_bit", scope: !6679, file: !6679, line: 224, type: !6695, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6712)
!6712 = !{!6713, !6714, !6715}
!6713 = !DILocalVariable(name: "nr", arg: 1, scope: !6711, file: !6679, line: 224, type: !1065)
!6714 = !DILocalVariable(name: "addr", arg: 2, scope: !6711, file: !6679, line: 224, type: !5558)
!6715 = !DILocalVariable(name: "oldbit", scope: !6711, file: !6679, line: 226, type: !832)
!6716 = !DILocation(line: 224, column: 52, scope: !6711)
!6717 = !DILocation(line: 224, column: 86, scope: !6711)
!6718 = !DILocation(line: 226, column: 2, scope: !6711)
!6719 = !DILocation(line: 226, column: 7, scope: !6711)
!6720 = !DILocation(line: 231, column: 33, scope: !6711)
!6721 = !DILocation(line: 231, column: 46, scope: !6711)
!6722 = !DILocation(line: 228, column: 2, scope: !6711)
!6723 = !{i64 2147997917, i64 2147997991}
!6724 = !DILocation(line: 233, column: 9, scope: !6711)
!6725 = !DILocation(line: 234, column: 1, scope: !6711)
!6726 = !DILocation(line: 233, column: 2, scope: !6711)
!6727 = distinct !DISubprogram(name: "xa_mk_value", scope: !4070, file: !4070, line: 54, type: !6728, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6730)
!6728 = !DISubroutineType(types: !6729)
!6729 = !{!32, !51}
!6730 = !{!6731, !6732, !6734}
!6731 = !DILocalVariable(name: "v", arg: 1, scope: !6727, file: !4070, line: 54, type: !51)
!6732 = !DILocalVariable(name: "__ret_warn_on", scope: !6733, file: !4070, line: 56, type: !34)
!6733 = distinct !DILexicalBlock(scope: !6727, file: !4070, line: 56, column: 2)
!6734 = !DILocalVariable(name: "__flags", scope: !6735, file: !4070, line: 56, type: !34)
!6735 = distinct !DILexicalBlock(scope: !6736, file: !4070, line: 56, column: 2)
!6736 = distinct !DILexicalBlock(scope: !6733, file: !4070, line: 56, column: 2)
!6737 = !DILocation(line: 54, column: 47, scope: !6727)
!6738 = !DILocation(line: 56, column: 2, scope: !6733)
!6739 = !DILocation(line: 56, column: 2, scope: !6736)
!6740 = !DILocation(line: 56, column: 2, scope: !6735)
!6741 = !DILocation(line: 56, column: 2, scope: !6742)
!6742 = distinct !DILexicalBlock(scope: !6735, file: !4070, line: 56, column: 2)
!6743 = !DILocation(line: 56, column: 2, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6735, file: !4070, line: 56, column: 2)
!6745 = !{i64 2152254457, i64 2152254486, i64 2152254532, i64 2152254590, i64 2152254644, i64 2152254698, i64 2152254753, i64 2152254784, i64 2152255092, i64 2152255098, i64 2152255145, i64 2152255168, i64 2152255194}
!6746 = !DILocation(line: 56, column: 2, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6735, file: !4070, line: 56, column: 2)
!6748 = !DILocation(line: 56, column: 2, scope: !6727)
!6749 = !DILocation(line: 57, column: 19, scope: !6727)
!6750 = !DILocation(line: 57, column: 21, scope: !6727)
!6751 = !DILocation(line: 57, column: 27, scope: !6727)
!6752 = !DILocation(line: 57, column: 9, scope: !6727)
!6753 = !DILocation(line: 57, column: 2, scope: !6727)
!6754 = distinct !DISubprogram(name: "xa_to_value", scope: !4070, file: !4070, line: 67, type: !6755, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6757)
!6755 = !DISubroutineType(types: !6756)
!6756 = !{!51, !1362}
!6757 = !{!6758}
!6758 = !DILocalVariable(name: "entry", arg: 1, scope: !6754, file: !4070, line: 67, type: !1362)
!6759 = !DILocation(line: 67, column: 53, scope: !6754)
!6760 = !DILocation(line: 69, column: 24, scope: !6754)
!6761 = !DILocation(line: 69, column: 9, scope: !6754)
!6762 = !DILocation(line: 69, column: 30, scope: !6754)
!6763 = !DILocation(line: 69, column: 2, scope: !6754)
!6764 = !DISubprogram(name: "node_page_state", scope: !6215, file: !6215, line: 261, type: !6765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6765 = !DISubroutineType(types: !6766)
!6766 = !{!51, !5409, !289}
!6767 = distinct !DISubprogram(name: "get_nr_swap_pages", scope: !4434, file: !4434, line: 467, type: !6768, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6768 = !DISubroutineType(types: !6769)
!6769 = !{!1065}
!6770 = !DILocation(line: 469, column: 9, scope: !6767)
!6771 = !DILocation(line: 469, column: 2, scope: !6767)
!6772 = distinct !DISubprogram(name: "folio_test_swapbacked", scope: !338, file: !338, line: 515, type: !5867, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6773)
!6773 = !{!6774}
!6774 = !DILocalVariable(name: "folio", arg: 1, scope: !6772, file: !338, line: 515, type: !2269)
!6775 = !DILocation(line: 515, column: 1, scope: !6772)
!6776 = !DISubprogram(name: "__rcu_read_lock", scope: !6198, file: !6198, line: 74, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6777 = !DISubprogram(name: "mod_node_page_state", scope: !6215, file: !6215, line: 288, type: !6778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6778 = !DISubroutineType(types: !6779)
!6779 = !{null, !5409, !289, !1065}
!6780 = distinct !DISubprogram(name: "set_bit", scope: !6781, file: !6781, line: 26, type: !6782, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6785)
!6781 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6782 = !DISubroutineType(types: !6783)
!6783 = !{null, !1065, !6784}
!6784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!6785 = !{!6786, !6787}
!6786 = !DILocalVariable(name: "nr", arg: 1, scope: !6780, file: !6781, line: 26, type: !1065)
!6787 = !DILocalVariable(name: "addr", arg: 2, scope: !6780, file: !6781, line: 26, type: !6784)
!6788 = !DILocation(line: 26, column: 42, scope: !6780)
!6789 = !DILocation(line: 26, column: 70, scope: !6780)
!6790 = !DILocation(line: 28, column: 26, scope: !6780)
!6791 = !DILocation(line: 28, column: 33, scope: !6780)
!6792 = !DILocation(line: 28, column: 31, scope: !6780)
!6793 = !DILocation(line: 28, column: 2, scope: !6780)
!6794 = !DILocation(line: 29, column: 15, scope: !6780)
!6795 = !DILocation(line: 29, column: 19, scope: !6780)
!6796 = !DILocation(line: 29, column: 2, scope: !6780)
!6797 = !DILocation(line: 30, column: 1, scope: !6780)
!6798 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6467, file: !6467, line: 80, type: !6468, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6799)
!6799 = !{!6800, !6801}
!6800 = !DILocalVariable(name: "v", arg: 1, scope: !6798, file: !6467, line: 80, type: !6470)
!6801 = !DILocalVariable(name: "size", arg: 2, scope: !6798, file: !6467, line: 80, type: !47)
!6802 = !DILocation(line: 80, column: 74, scope: !6798)
!6803 = !DILocation(line: 80, column: 84, scope: !6798)
!6804 = !DILocation(line: 82, column: 20, scope: !6798)
!6805 = !DILocation(line: 82, column: 23, scope: !6798)
!6806 = !DILocation(line: 82, column: 2, scope: !6798)
!6807 = !DILocation(line: 83, column: 2, scope: !6798)
!6808 = !DILocation(line: 84, column: 1, scope: !6798)
!6809 = distinct !DISubprogram(name: "arch_set_bit", scope: !6679, file: !6679, line: 52, type: !6782, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6810)
!6810 = !{!6811, !6812}
!6811 = !DILocalVariable(name: "nr", arg: 1, scope: !6809, file: !6679, line: 52, type: !1065)
!6812 = !DILocalVariable(name: "addr", arg: 2, scope: !6809, file: !6679, line: 52, type: !6784)
!6813 = !DILocation(line: 52, column: 19, scope: !6809)
!6814 = !DILocation(line: 52, column: 47, scope: !6809)
!6815 = !DILocation(line: 54, column: 27, scope: !6816)
!6816 = distinct !DILexicalBlock(scope: !6809, file: !6679, line: 54, column: 6)
!6817 = !DILocation(line: 54, column: 6, scope: !6816)
!6818 = !DILocation(line: 54, column: 6, scope: !6809)
!6819 = !DILocation(line: 56, column: 6, scope: !6820)
!6820 = distinct !DILexicalBlock(scope: !6816, file: !6679, line: 54, column: 32)
!6821 = !DILocation(line: 57, column: 12, scope: !6820)
!6822 = !DILocation(line: 55, column: 3, scope: !6820)
!6823 = !{i64 2147984305, i64 2147984344, i64 2147984365, i64 2147984402, i64 2147984425, i64 2147984295}
!6824 = !DILocation(line: 59, column: 2, scope: !6820)
!6825 = !DILocation(line: 61, column: 8, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6816, file: !6679, line: 59, column: 9)
!6827 = !DILocation(line: 61, column: 32, scope: !6826)
!6828 = !DILocation(line: 60, column: 3, scope: !6826)
!6829 = !{i64 2147984590, i64 2147984629, i64 2147984650, i64 2147984687, i64 2147984710, i64 2147984580}
!6830 = !DILocation(line: 63, column: 1, scope: !6809)
!6831 = !DISubprogram(name: "__rcu_read_unlock", scope: !6198, file: !6198, line: 75, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6832 = distinct !DISubprogram(name: "rcu_read_lock_held", scope: !6198, file: !6198, line: 359, type: !1997, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6833 = !DILocation(line: 361, column: 2, scope: !6832)
!6834 = distinct !DISubprogram(name: "__mod_lruvec_kmem_state", scope: !5604, file: !5604, line: 1531, type: !6835, scopeLine: 1533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6837)
!6835 = !DISubroutineType(types: !6836)
!6836 = !{null, !32, !289, !34}
!6837 = !{!6838, !6839, !6840, !6841}
!6838 = !DILocalVariable(name: "p", arg: 1, scope: !6834, file: !5604, line: 1531, type: !32)
!6839 = !DILocalVariable(name: "idx", arg: 2, scope: !6834, file: !5604, line: 1531, type: !289)
!6840 = !DILocalVariable(name: "val", arg: 3, scope: !6834, file: !5604, line: 1532, type: !34)
!6841 = !DILocalVariable(name: "page", scope: !6834, file: !5604, line: 1534, type: !1498)
!6842 = !DILocation(line: 1531, column: 50, scope: !6834)
!6843 = !DILocation(line: 1531, column: 73, scope: !6834)
!6844 = !DILocation(line: 1532, column: 13, scope: !6834)
!6845 = !DILocation(line: 1534, column: 2, scope: !6834)
!6846 = !DILocation(line: 1534, column: 15, scope: !6834)
!6847 = !DILocation(line: 1534, column: 40, scope: !6834)
!6848 = !DILocation(line: 1534, column: 22, scope: !6834)
!6849 = !DILocation(line: 1536, column: 35, scope: !6834)
!6850 = !DILocation(line: 1536, column: 24, scope: !6834)
!6851 = !DILocation(line: 1536, column: 42, scope: !6834)
!6852 = !DILocation(line: 1536, column: 47, scope: !6834)
!6853 = !DILocation(line: 1536, column: 2, scope: !6834)
!6854 = !DILocation(line: 1537, column: 1, scope: !6834)
!6855 = distinct !DISubprogram(name: "virt_to_head_page", scope: !1436, file: !1436, line: 1269, type: !6856, scopeLine: 1270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6858)
!6856 = !DISubroutineType(types: !6857)
!6857 = !{!1498, !1362}
!6858 = !{!6859, !6860}
!6859 = !DILocalVariable(name: "x", arg: 1, scope: !6855, file: !1436, line: 1269, type: !1362)
!6860 = !DILocalVariable(name: "page", scope: !6855, file: !1436, line: 1271, type: !1498)
!6861 = !DILocation(line: 1269, column: 58, scope: !6855)
!6862 = !DILocation(line: 1271, column: 2, scope: !6855)
!6863 = !DILocation(line: 1271, column: 15, scope: !6855)
!6864 = !DILocation(line: 1271, column: 22, scope: !6855)
!6865 = !DILocation(line: 1273, column: 9, scope: !6855)
!6866 = !DILocation(line: 1274, column: 1, scope: !6855)
!6867 = !DILocation(line: 1273, column: 2, scope: !6855)
!6868 = !DISubprogram(name: "__mod_node_page_state", scope: !6215, file: !6215, line: 280, type: !6778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6869 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !6870, file: !6870, line: 22, type: !6871, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6873)
!6870 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!6871 = !DISubroutineType(types: !6872)
!6872 = !{!51, !51}
!6873 = !{!6874, !6875}
!6874 = !DILocalVariable(name: "x", arg: 1, scope: !6869, file: !6870, line: 22, type: !51)
!6875 = !DILocalVariable(name: "y", scope: !6869, file: !6870, line: 24, type: !51)
!6876 = !DILocation(line: 22, column: 72, scope: !6869)
!6877 = !DILocation(line: 24, column: 2, scope: !6869)
!6878 = !DILocation(line: 24, column: 16, scope: !6869)
!6879 = !DILocation(line: 24, column: 20, scope: !6869)
!6880 = !DILocation(line: 24, column: 22, scope: !6869)
!6881 = !DILocation(line: 27, column: 6, scope: !6869)
!6882 = !DILocation(line: 27, column: 12, scope: !6869)
!6883 = !DILocation(line: 27, column: 16, scope: !6869)
!6884 = !DILocation(line: 27, column: 14, scope: !6869)
!6885 = !DILocation(line: 27, column: 11, scope: !6869)
!6886 = !DILocation(line: 27, column: 21, scope: !6869)
!6887 = !DILocation(line: 27, column: 55, scope: !6869)
!6888 = !DILocation(line: 27, column: 53, scope: !6869)
!6889 = !DILocation(line: 27, column: 8, scope: !6869)
!6890 = !DILocation(line: 27, column: 4, scope: !6869)
!6891 = !DILocation(line: 29, column: 9, scope: !6869)
!6892 = !DILocation(line: 30, column: 1, scope: !6869)
!6893 = !DILocation(line: 29, column: 2, scope: !6869)
!6894 = distinct !DISubprogram(name: "_compound_head", scope: !338, file: !338, line: 244, type: !6895, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6897)
!6895 = !DISubroutineType(types: !6896)
!6896 = !{!51, !5563}
!6897 = !{!6898, !6899}
!6898 = !DILocalVariable(name: "page", arg: 1, scope: !6894, file: !338, line: 244, type: !5563)
!6899 = !DILocalVariable(name: "head", scope: !6894, file: !338, line: 246, type: !51)
!6900 = !DILocation(line: 244, column: 63, scope: !6894)
!6901 = !DILocation(line: 246, column: 2, scope: !6894)
!6902 = !DILocation(line: 246, column: 16, scope: !6894)
!6903 = !DILocation(line: 246, column: 23, scope: !6904)
!6904 = distinct !DILexicalBlock(scope: !6894, file: !338, line: 246, column: 23)
!6905 = !DILocation(line: 246, column: 23, scope: !6906)
!6906 = distinct !DILexicalBlock(scope: !6904, file: !338, line: 246, column: 23)
!6907 = !DILocation(line: 248, column: 6, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6894, file: !338, line: 248, column: 6)
!6909 = !DILocation(line: 248, column: 6, scope: !6894)
!6910 = !DILocation(line: 249, column: 10, scope: !6908)
!6911 = !DILocation(line: 249, column: 15, scope: !6908)
!6912 = !DILocation(line: 249, column: 3, scope: !6908)
!6913 = !DILocation(line: 250, column: 45, scope: !6894)
!6914 = !DILocation(line: 250, column: 24, scope: !6894)
!6915 = !DILocation(line: 250, column: 9, scope: !6894)
!6916 = !DILocation(line: 250, column: 2, scope: !6894)
!6917 = !DILocation(line: 251, column: 1, scope: !6894)
!6918 = distinct !DISubprogram(name: "page_fixed_fake_head", scope: !338, file: !338, line: 207, type: !6919, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6921)
!6919 = !DISubroutineType(types: !6920)
!6920 = !{!5563, !5563}
!6921 = !{!6922, !6923, !6926}
!6922 = !DILocalVariable(name: "page", arg: 1, scope: !6918, file: !338, line: 207, type: !5563)
!6923 = !DILocalVariable(name: "branch", scope: !6924, file: !338, line: 209, type: !832)
!6924 = distinct !DILexicalBlock(scope: !6925, file: !338, line: 209, column: 7)
!6925 = distinct !DILexicalBlock(scope: !6918, file: !338, line: 209, column: 6)
!6926 = !DILocalVariable(name: "head", scope: !6927, file: !338, line: 225, type: !51)
!6927 = distinct !DILexicalBlock(scope: !6928, file: !338, line: 219, column: 39)
!6928 = distinct !DILexicalBlock(scope: !6918, file: !338, line: 218, column: 6)
!6929 = !DILocation(line: 207, column: 83, scope: !6918)
!6930 = !DILocation(line: 209, column: 7, scope: !6924)
!6931 = !DILocation(line: 209, column: 7, scope: !6932)
!6932 = distinct !DILexicalBlock(scope: !6933, file: !338, line: 209, column: 7)
!6933 = distinct !DILexicalBlock(scope: !6924, file: !338, line: 209, column: 7)
!6934 = !DILocation(line: 209, column: 7, scope: !6933)
!6935 = !DILocation(line: 209, column: 7, scope: !6925)
!6936 = !DILocation(line: 209, column: 6, scope: !6918)
!6937 = !DILocation(line: 210, column: 10, scope: !6925)
!6938 = !DILocation(line: 210, column: 3, scope: !6925)
!6939 = !DILocation(line: 218, column: 6, scope: !6928)
!6940 = !DILocation(line: 218, column: 49, scope: !6928)
!6941 = !DILocation(line: 219, column: 6, scope: !6928)
!6942 = !DILocation(line: 218, column: 6, scope: !6918)
!6943 = !DILocation(line: 225, column: 3, scope: !6927)
!6944 = !DILocation(line: 225, column: 17, scope: !6927)
!6945 = !DILocation(line: 225, column: 24, scope: !6946)
!6946 = distinct !DILexicalBlock(scope: !6927, file: !338, line: 225, column: 24)
!6947 = !DILocation(line: 225, column: 24, scope: !6948)
!6948 = distinct !DILexicalBlock(scope: !6946, file: !338, line: 225, column: 24)
!6949 = !DILocation(line: 227, column: 7, scope: !6950)
!6950 = distinct !DILexicalBlock(scope: !6927, file: !338, line: 227, column: 7)
!6951 = !DILocation(line: 227, column: 7, scope: !6927)
!6952 = !DILocation(line: 228, column: 33, scope: !6950)
!6953 = !DILocation(line: 228, column: 38, scope: !6950)
!6954 = !DILocation(line: 228, column: 11, scope: !6950)
!6955 = !DILocation(line: 228, column: 4, scope: !6950)
!6956 = !DILocation(line: 229, column: 2, scope: !6928)
!6957 = !DILocation(line: 229, column: 2, scope: !6927)
!6958 = !DILocation(line: 230, column: 9, scope: !6918)
!6959 = !DILocation(line: 230, column: 2, scope: !6918)
!6960 = !DILocation(line: 231, column: 1, scope: !6918)
!6961 = distinct !DISubprogram(name: "arch_static_branch", scope: !6962, file: !6962, line: 25, type: !6963, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6977)
!6962 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6963 = !DISubroutineType(types: !6964)
!6964 = !{!832, !6965, !832}
!6965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6966, size: 64)
!6966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2193, line: 85, size: 128, elements: !6967)
!6967 = !{!6968, !6969}
!6968 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6966, file: !2193, line: 86, baseType: !61, size: 32)
!6969 = !DIDerivedType(tag: DW_TAG_member, scope: !6966, file: !2193, line: 101, baseType: !6970, size: 64, offset: 64)
!6970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6966, file: !2193, line: 101, size: 64, elements: !6971)
!6971 = !{!6972, !6973, !6974}
!6972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6970, file: !2193, line: 102, baseType: !51, size: 64)
!6973 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6970, file: !2193, line: 103, baseType: !2191, size: 64)
!6974 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6970, file: !2193, line: 104, baseType: !6975, size: 64)
!6975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6976, size: 64)
!6976 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2193, line: 104, flags: DIFlagFwdDecl)
!6977 = !{!6978, !6979, !6980}
!6978 = !DILocalVariable(name: "key", arg: 1, scope: !6961, file: !6962, line: 25, type: !6965)
!6979 = !DILocalVariable(name: "branch", arg: 2, scope: !6961, file: !6962, line: 25, type: !832)
!6980 = !DILabel(scope: !6961, name: "l_yes", file: !6962, line: 33)
!6981 = !DILocation(line: 25, column: 67, scope: !6961)
!6982 = !DILocation(line: 25, column: 77, scope: !6961)
!6983 = !DILocation(line: 30, column: 13, scope: !6961)
!6984 = !DILocation(line: 30, column: 28, scope: !6961)
!6985 = !DILocation(line: 30, column: 26, scope: !6961)
!6986 = !DILocation(line: 27, column: 2, scope: !6961)
!6987 = !{i64 1579111, i64 1579155, i64 2149063838, i64 2149063859, i64 2149063885, i64 2149063918, i64 2149063952, i64 2149063976}
!6988 = !DILocation(line: 32, column: 2, scope: !6961)
!6989 = !DILocation(line: 33, column: 1, scope: !6961)
!6990 = !DILocation(line: 34, column: 2, scope: !6961)
!6991 = !DILocation(line: 35, column: 1, scope: !6961)
!6992 = distinct !DISubprogram(name: "const_test_bit", scope: !6993, file: !6993, line: 166, type: !6645, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6994)
!6993 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6994 = !{!6995, !6996, !6997, !6998, !6999}
!6995 = !DILocalVariable(name: "nr", arg: 1, scope: !6992, file: !6993, line: 166, type: !51)
!6996 = !DILocalVariable(name: "addr", arg: 2, scope: !6992, file: !6993, line: 166, type: !5558)
!6997 = !DILocalVariable(name: "p", scope: !6992, file: !6993, line: 168, type: !5562)
!6998 = !DILocalVariable(name: "mask", scope: !6992, file: !6993, line: 169, type: !51)
!6999 = !DILocalVariable(name: "val", scope: !6992, file: !6993, line: 170, type: !51)
!7000 = !DILocation(line: 166, column: 30, scope: !6992)
!7001 = !DILocation(line: 166, column: 64, scope: !6992)
!7002 = !DILocation(line: 168, column: 2, scope: !6992)
!7003 = !DILocation(line: 168, column: 23, scope: !6992)
!7004 = !DILocation(line: 168, column: 50, scope: !6992)
!7005 = !DILocation(line: 168, column: 57, scope: !6992)
!7006 = !DILocation(line: 168, column: 55, scope: !6992)
!7007 = !DILocation(line: 169, column: 2, scope: !6992)
!7008 = !DILocation(line: 169, column: 16, scope: !6992)
!7009 = !DILocation(line: 169, column: 23, scope: !6992)
!7010 = !DILocation(line: 170, column: 2, scope: !6992)
!7011 = !DILocation(line: 170, column: 16, scope: !6992)
!7012 = !DILocation(line: 170, column: 23, scope: !6992)
!7013 = !DILocation(line: 170, column: 22, scope: !6992)
!7014 = !DILocation(line: 172, column: 12, scope: !6992)
!7015 = !DILocation(line: 172, column: 18, scope: !6992)
!7016 = !DILocation(line: 172, column: 16, scope: !6992)
!7017 = !DILocation(line: 172, column: 10, scope: !6992)
!7018 = !DILocation(line: 172, column: 9, scope: !6992)
!7019 = !DILocation(line: 173, column: 1, scope: !6992)
!7020 = !DILocation(line: 172, column: 2, scope: !6992)
!7021 = distinct !DISubprogram(name: "fls_long", scope: !7022, file: !7022, line: 204, type: !7023, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7025)
!7022 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!7023 = !DISubroutineType(types: !7024)
!7024 = !{!7, !51}
!7025 = !{!7026}
!7026 = !DILocalVariable(name: "l", arg: 1, scope: !7021, file: !7022, line: 204, type: !51)
!7027 = !DILocation(line: 204, column: 47, scope: !7021)
!7028 = !DILocation(line: 208, column: 15, scope: !7021)
!7029 = !DILocation(line: 208, column: 9, scope: !7021)
!7030 = !DILocation(line: 208, column: 2, scope: !7021)
!7031 = distinct !DISubprogram(name: "totalram_pages", scope: !1436, file: !1436, line: 57, type: !7032, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7032 = !DISubroutineType(types: !7033)
!7033 = !{!51}
!7034 = !DILocation(line: 59, column: 24, scope: !7031)
!7035 = !DILocation(line: 59, column: 2, scope: !7031)
!7036 = !DISubprogram(name: "_printk", scope: !7037, file: !7037, line: 153, type: !7038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7037 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!7038 = !DISubroutineType(types: !7039)
!7039 = !{!34, !28, null}
!7040 = !DISubprogram(name: "prealloc_shrinker", scope: !2713, file: !2713, line: 99, type: !7041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7041 = !DISubroutineType(types: !7042)
!7042 = !{!34, !4959, !28, null}
!7043 = !DISubprogram(name: "__list_lru_init", scope: !378, file: !378, line: 60, type: !7044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7044 = !DISubroutineType(types: !7045)
!7045 = !{!34, !6385, !832, !7046, !4959}
!7046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!7047 = !DISubprogram(name: "register_shrinker_prepared", scope: !2713, file: !2713, line: 101, type: !7048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7048 = !DISubroutineType(types: !7049)
!7049 = !{null, !4959}
!7050 = !DISubprogram(name: "free_prealloced_shrinker", scope: !2713, file: !2713, line: 105, type: !7048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7051 = distinct !DISubprogram(name: "fls64", scope: !6679, file: !6679, line: 401, type: !7052, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7054)
!7052 = !DISubroutineType(types: !7053)
!7053 = !{!34, !464}
!7054 = !{!7055, !7056}
!7055 = !DILocalVariable(name: "x", arg: 1, scope: !7051, file: !6679, line: 401, type: !464)
!7056 = !DILocalVariable(name: "bitpos", scope: !7051, file: !6679, line: 403, type: !34)
!7057 = !DILocation(line: 401, column: 40, scope: !7051)
!7058 = !DILocation(line: 403, column: 2, scope: !7051)
!7059 = !DILocation(line: 403, column: 6, scope: !7051)
!7060 = !DILocation(line: 409, column: 2, scope: !7051)
!7061 = !DILocation(line: 411, column: 14, scope: !7051)
!7062 = !{i64 497020}
!7063 = !DILocation(line: 412, column: 9, scope: !7051)
!7064 = !DILocation(line: 412, column: 16, scope: !7051)
!7065 = !DILocation(line: 413, column: 1, scope: !7051)
!7066 = !DILocation(line: 412, column: 2, scope: !7051)
!7067 = distinct !DISubprogram(name: "count_shadow_nodes", scope: !3, file: !3, line: 629, type: !4957, scopeLine: 631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7068)
!7068 = !{!7069, !7070, !7071, !7072, !7073}
!7069 = !DILocalVariable(name: "shrinker", arg: 1, scope: !7067, file: !3, line: 629, type: !4959)
!7070 = !DILocalVariable(name: "sc", arg: 2, scope: !7067, file: !3, line: 630, type: !2711)
!7071 = !DILocalVariable(name: "max_nodes", scope: !7067, file: !3, line: 632, type: !51)
!7072 = !DILocalVariable(name: "nodes", scope: !7067, file: !3, line: 633, type: !51)
!7073 = !DILocalVariable(name: "pages", scope: !7067, file: !3, line: 634, type: !51)
!7074 = !DILocation(line: 629, column: 58, scope: !7067)
!7075 = !DILocation(line: 630, column: 29, scope: !7067)
!7076 = !DILocation(line: 632, column: 2, scope: !7067)
!7077 = !DILocation(line: 632, column: 16, scope: !7067)
!7078 = !DILocation(line: 633, column: 2, scope: !7067)
!7079 = !DILocation(line: 633, column: 16, scope: !7067)
!7080 = !DILocation(line: 634, column: 2, scope: !7067)
!7081 = !DILocation(line: 634, column: 16, scope: !7067)
!7082 = !DILocation(line: 636, column: 47, scope: !7067)
!7083 = !DILocation(line: 636, column: 10, scope: !7067)
!7084 = !DILocation(line: 636, column: 8, scope: !7067)
!7085 = !DILocation(line: 637, column: 7, scope: !7086)
!7086 = distinct !DILexicalBlock(scope: !7067, file: !3, line: 637, column: 6)
!7087 = !DILocation(line: 637, column: 6, scope: !7067)
!7088 = !DILocation(line: 638, column: 3, scope: !7086)
!7089 = !DILocation(line: 678, column: 11, scope: !7067)
!7090 = !DILocation(line: 678, column: 9, scope: !7067)
!7091 = !DILocation(line: 680, column: 14, scope: !7067)
!7092 = !DILocation(line: 680, column: 20, scope: !7067)
!7093 = !DILocation(line: 680, column: 12, scope: !7067)
!7094 = !DILocation(line: 682, column: 6, scope: !7095)
!7095 = distinct !DILexicalBlock(scope: !7067, file: !3, line: 682, column: 6)
!7096 = !DILocation(line: 682, column: 15, scope: !7095)
!7097 = !DILocation(line: 682, column: 12, scope: !7095)
!7098 = !DILocation(line: 682, column: 6, scope: !7067)
!7099 = !DILocation(line: 683, column: 3, scope: !7095)
!7100 = !DILocation(line: 684, column: 9, scope: !7067)
!7101 = !DILocation(line: 684, column: 17, scope: !7067)
!7102 = !DILocation(line: 684, column: 15, scope: !7067)
!7103 = !DILocation(line: 684, column: 2, scope: !7067)
!7104 = !DILocation(line: 685, column: 1, scope: !7067)
!7105 = distinct !DISubprogram(name: "scan_shadow_nodes", scope: !3, file: !3, line: 758, type: !4957, scopeLine: 760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7106)
!7106 = !{!7107, !7108}
!7107 = !DILocalVariable(name: "shrinker", arg: 1, scope: !7105, file: !3, line: 758, type: !4959)
!7108 = !DILocalVariable(name: "sc", arg: 2, scope: !7105, file: !3, line: 759, type: !2711)
!7109 = !DILocation(line: 758, column: 57, scope: !7105)
!7110 = !DILocation(line: 759, column: 35, scope: !7105)
!7111 = !DILocation(line: 762, column: 49, scope: !7105)
!7112 = !DILocation(line: 762, column: 9, scope: !7105)
!7113 = !DILocation(line: 762, column: 2, scope: !7105)
!7114 = distinct !DISubprogram(name: "list_lru_shrink_count", scope: !378, file: !378, line: 119, type: !7115, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7117)
!7115 = !DISubroutineType(types: !7116)
!7116 = !{!51, !6385, !2711}
!7117 = !{!7118, !7119}
!7118 = !DILocalVariable(name: "lru", arg: 1, scope: !7114, file: !378, line: 119, type: !6385)
!7119 = !DILocalVariable(name: "sc", arg: 2, scope: !7114, file: !378, line: 120, type: !2711)
!7120 = !DILocation(line: 119, column: 68, scope: !7114)
!7121 = !DILocation(line: 120, column: 32, scope: !7114)
!7122 = !DILocation(line: 122, column: 28, scope: !7114)
!7123 = !DILocation(line: 122, column: 33, scope: !7114)
!7124 = !DILocation(line: 122, column: 37, scope: !7114)
!7125 = !DILocation(line: 122, column: 42, scope: !7114)
!7126 = !DILocation(line: 122, column: 46, scope: !7114)
!7127 = !DILocation(line: 122, column: 9, scope: !7114)
!7128 = !DILocation(line: 122, column: 2, scope: !7114)
!7129 = !DISubprogram(name: "list_lru_count_one", scope: !378, file: !378, line: 115, type: !7130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7130 = !DISubroutineType(types: !7131)
!7131 = !{!51, !6385, !34, !2720}
!7132 = distinct !DISubprogram(name: "list_lru_shrink_walk_irq", scope: !378, file: !378, line: 199, type: !7133, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7140)
!7133 = !DISubroutineType(types: !7134)
!7134 = !{!51, !6385, !2711, !7135, !32}
!7135 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_lru_walk_cb", file: !378, line: 140, baseType: !7136)
!7136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7137, size: 64)
!7137 = !DISubroutineType(types: !7138)
!7138 = !{!377, !112, !7139, !1630, !32}
!7139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!7140 = !{!7141, !7142, !7143, !7144}
!7141 = !DILocalVariable(name: "lru", arg: 1, scope: !7132, file: !378, line: 199, type: !6385)
!7142 = !DILocalVariable(name: "sc", arg: 2, scope: !7132, file: !378, line: 199, type: !2711)
!7143 = !DILocalVariable(name: "isolate", arg: 3, scope: !7132, file: !378, line: 200, type: !7135)
!7144 = !DILocalVariable(name: "cb_arg", arg: 4, scope: !7132, file: !378, line: 200, type: !32)
!7145 = !DILocation(line: 199, column: 43, scope: !7132)
!7146 = !DILocation(line: 199, column: 71, scope: !7132)
!7147 = !DILocation(line: 200, column: 22, scope: !7132)
!7148 = !DILocation(line: 200, column: 37, scope: !7132)
!7149 = !DILocation(line: 202, column: 31, scope: !7132)
!7150 = !DILocation(line: 202, column: 36, scope: !7132)
!7151 = !DILocation(line: 202, column: 40, scope: !7132)
!7152 = !DILocation(line: 202, column: 45, scope: !7132)
!7153 = !DILocation(line: 202, column: 49, scope: !7132)
!7154 = !DILocation(line: 202, column: 56, scope: !7132)
!7155 = !DILocation(line: 202, column: 65, scope: !7132)
!7156 = !DILocation(line: 203, column: 11, scope: !7132)
!7157 = !DILocation(line: 203, column: 15, scope: !7132)
!7158 = !DILocation(line: 202, column: 9, scope: !7132)
!7159 = !DILocation(line: 202, column: 2, scope: !7132)
!7160 = distinct !DISubprogram(name: "shadow_lru_isolate", scope: !3, file: !3, line: 687, type: !7137, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7161)
!7161 = !{!7162, !7163, !7164, !7165, !7166, !7167, !7169, !7170, !7171, !7173, !7176, !7179, !7182, !7185, !7186}
!7162 = !DILocalVariable(name: "item", arg: 1, scope: !7160, file: !3, line: 687, type: !112)
!7163 = !DILocalVariable(name: "lru", arg: 2, scope: !7160, file: !3, line: 688, type: !7139)
!7164 = !DILocalVariable(name: "lru_lock", arg: 3, scope: !7160, file: !3, line: 689, type: !1630)
!7165 = !DILocalVariable(name: "arg", arg: 4, scope: !7160, file: !3, line: 690, type: !32)
!7166 = !DILocalVariable(name: "node", scope: !7160, file: !3, line: 692, type: !5565)
!7167 = !DILocalVariable(name: "__mptr", scope: !7168, file: !3, line: 692, type: !32)
!7168 = distinct !DILexicalBlock(scope: !7160, file: !3, line: 692, column: 25)
!7169 = !DILocalVariable(name: "mapping", scope: !7160, file: !3, line: 693, type: !386)
!7170 = !DILocalVariable(name: "ret", scope: !7160, file: !3, line: 694, type: !34)
!7171 = !DILocalVariable(name: "__mptr", scope: !7172, file: !3, line: 708, type: !32)
!7172 = distinct !DILexicalBlock(scope: !7160, file: !3, line: 708, column: 12)
!7173 = !DILocalVariable(name: "__ret_warn_on", scope: !7174, file: !3, line: 737, type: !34)
!7174 = distinct !DILexicalBlock(scope: !7175, file: !3, line: 737, column: 6)
!7175 = distinct !DILexicalBlock(scope: !7160, file: !3, line: 737, column: 6)
!7176 = !DILocalVariable(name: "__flags", scope: !7177, file: !3, line: 737, type: !34)
!7177 = distinct !DILexicalBlock(scope: !7178, file: !3, line: 737, column: 6)
!7178 = distinct !DILexicalBlock(scope: !7174, file: !3, line: 737, column: 6)
!7179 = !DILocalVariable(name: "__ret_warn_on", scope: !7180, file: !3, line: 739, type: !34)
!7180 = distinct !DILexicalBlock(scope: !7181, file: !3, line: 739, column: 6)
!7181 = distinct !DILexicalBlock(scope: !7160, file: !3, line: 739, column: 6)
!7182 = !DILocalVariable(name: "__flags", scope: !7183, file: !3, line: 739, type: !34)
!7183 = distinct !DILexicalBlock(scope: !7184, file: !3, line: 739, column: 6)
!7184 = distinct !DILexicalBlock(scope: !7180, file: !3, line: 739, column: 6)
!7185 = !DILabel(scope: !7160, name: "out_invalid", file: !3, line: 744)
!7186 = !DILabel(scope: !7160, name: "out", file: !3, line: 752)
!7187 = !DILocation(line: 687, column: 61, scope: !7160)
!7188 = !DILocation(line: 688, column: 29, scope: !7160)
!7189 = !DILocation(line: 689, column: 20, scope: !7160)
!7190 = !DILocation(line: 690, column: 14, scope: !7160)
!7191 = !DILocation(line: 692, column: 2, scope: !7160)
!7192 = !DILocation(line: 692, column: 18, scope: !7160)
!7193 = !DILocation(line: 692, column: 25, scope: !7168)
!7194 = !DILocation(line: 692, column: 25, scope: !7160)
!7195 = !DILocation(line: 693, column: 2, scope: !7160)
!7196 = !DILocation(line: 693, column: 24, scope: !7160)
!7197 = !DILocation(line: 694, column: 2, scope: !7160)
!7198 = !DILocation(line: 694, column: 6, scope: !7160)
!7199 = !DILocation(line: 708, column: 12, scope: !7172)
!7200 = !DILocation(line: 708, column: 12, scope: !7160)
!7201 = !DILocation(line: 708, column: 10, scope: !7160)
!7202 = !DILocation(line: 711, column: 7, scope: !7203)
!7203 = distinct !DILexicalBlock(scope: !7160, file: !3, line: 711, column: 6)
!7204 = !DILocation(line: 711, column: 6, scope: !7160)
!7205 = !DILocation(line: 712, column: 19, scope: !7206)
!7206 = distinct !DILexicalBlock(scope: !7203, file: !3, line: 711, column: 38)
!7207 = !DILocation(line: 712, column: 3, scope: !7206)
!7208 = !DILocation(line: 713, column: 7, scope: !7206)
!7209 = !DILocation(line: 714, column: 3, scope: !7206)
!7210 = !DILocation(line: 718, column: 6, scope: !7211)
!7211 = distinct !DILexicalBlock(scope: !7160, file: !3, line: 718, column: 6)
!7212 = !DILocation(line: 718, column: 15, scope: !7211)
!7213 = !DILocation(line: 718, column: 20, scope: !7211)
!7214 = !DILocation(line: 718, column: 6, scope: !7160)
!7215 = !DILocation(line: 719, column: 22, scope: !7216)
!7216 = distinct !DILexicalBlock(scope: !7217, file: !3, line: 719, column: 7)
!7217 = distinct !DILexicalBlock(scope: !7211, file: !3, line: 718, column: 29)
!7218 = !DILocation(line: 719, column: 31, scope: !7216)
!7219 = !DILocation(line: 719, column: 37, scope: !7216)
!7220 = !DILocation(line: 719, column: 8, scope: !7216)
!7221 = !DILocation(line: 719, column: 7, scope: !7217)
!7222 = !DILocation(line: 720, column: 4, scope: !7223)
!7223 = distinct !DILexicalBlock(scope: !7216, file: !3, line: 719, column: 46)
!7224 = !DILocation(line: 721, column: 20, scope: !7223)
!7225 = !DILocation(line: 721, column: 4, scope: !7223)
!7226 = !DILocation(line: 722, column: 8, scope: !7223)
!7227 = !DILocation(line: 723, column: 4, scope: !7223)
!7228 = !DILocation(line: 725, column: 2, scope: !7217)
!7229 = !DILocation(line: 727, column: 19, scope: !7160)
!7230 = !DILocation(line: 727, column: 24, scope: !7160)
!7231 = !DILocation(line: 727, column: 2, scope: !7160)
!7232 = !DILocation(line: 728, column: 26, scope: !7160)
!7233 = !DILocation(line: 728, column: 2, scope: !7160)
!7234 = !DILocation(line: 730, column: 14, scope: !7160)
!7235 = !DILocation(line: 730, column: 2, scope: !7160)
!7236 = !DILocation(line: 737, column: 6, scope: !7174)
!7237 = !DILocation(line: 737, column: 6, scope: !7178)
!7238 = !DILocation(line: 737, column: 6, scope: !7177)
!7239 = !DILocation(line: 737, column: 6, scope: !7240)
!7240 = distinct !DILexicalBlock(scope: !7177, file: !3, line: 737, column: 6)
!7241 = !DILocation(line: 737, column: 6, scope: !7242)
!7242 = distinct !DILexicalBlock(scope: !7177, file: !3, line: 737, column: 6)
!7243 = !{i64 2155518819, i64 2155518848, i64 2155518894, i64 2155518952, i64 2155519006, i64 2155519060, i64 2155519115, i64 2155519146, i64 2155519454, i64 2155519460, i64 2155519507, i64 2155519530, i64 2155519556}
!7244 = !DILocation(line: 737, column: 6, scope: !7245)
!7245 = distinct !DILexicalBlock(scope: !7177, file: !3, line: 737, column: 6)
!7246 = !DILocation(line: 737, column: 6, scope: !7175)
!7247 = !DILocation(line: 737, column: 6, scope: !7160)
!7248 = !DILocation(line: 738, column: 3, scope: !7175)
!7249 = !DILocation(line: 739, column: 6, scope: !7180)
!7250 = !DILocation(line: 739, column: 6, scope: !7184)
!7251 = !DILocation(line: 739, column: 6, scope: !7183)
!7252 = !DILocation(line: 739, column: 6, scope: !7253)
!7253 = distinct !DILexicalBlock(scope: !7183, file: !3, line: 739, column: 6)
!7254 = !DILocation(line: 739, column: 6, scope: !7255)
!7255 = distinct !DILexicalBlock(scope: !7183, file: !3, line: 739, column: 6)
!7256 = !{i64 2155520356, i64 2155520385, i64 2155520431, i64 2155520489, i64 2155520543, i64 2155520597, i64 2155520652, i64 2155520683, i64 2155520991, i64 2155520997, i64 2155521044, i64 2155521067, i64 2155521093}
!7257 = !DILocation(line: 739, column: 6, scope: !7258)
!7258 = distinct !DILexicalBlock(scope: !7183, file: !3, line: 739, column: 6)
!7259 = !DILocation(line: 739, column: 6, scope: !7181)
!7260 = !DILocation(line: 739, column: 6, scope: !7160)
!7261 = !DILocation(line: 740, column: 3, scope: !7181)
!7262 = !DILocation(line: 741, column: 17, scope: !7160)
!7263 = !DILocation(line: 741, column: 2, scope: !7160)
!7264 = !DILocation(line: 742, column: 26, scope: !7160)
!7265 = !DILocation(line: 742, column: 2, scope: !7160)
!7266 = !DILocation(line: 744, column: 1, scope: !7160)
!7267 = !DILocation(line: 745, column: 2, scope: !7160)
!7268 = !DILocation(line: 746, column: 6, scope: !7269)
!7269 = distinct !DILexicalBlock(scope: !7160, file: !3, line: 746, column: 6)
!7270 = !DILocation(line: 746, column: 15, scope: !7269)
!7271 = !DILocation(line: 746, column: 20, scope: !7269)
!7272 = !DILocation(line: 746, column: 6, scope: !7160)
!7273 = !DILocation(line: 747, column: 26, scope: !7274)
!7274 = distinct !DILexicalBlock(scope: !7275, file: !3, line: 747, column: 7)
!7275 = distinct !DILexicalBlock(scope: !7269, file: !3, line: 746, column: 29)
!7276 = !DILocation(line: 747, column: 7, scope: !7274)
!7277 = !DILocation(line: 747, column: 7, scope: !7275)
!7278 = !DILocation(line: 748, column: 18, scope: !7274)
!7279 = !DILocation(line: 748, column: 27, scope: !7274)
!7280 = !DILocation(line: 748, column: 4, scope: !7274)
!7281 = !DILocation(line: 749, column: 16, scope: !7275)
!7282 = !DILocation(line: 749, column: 25, scope: !7275)
!7283 = !DILocation(line: 749, column: 31, scope: !7275)
!7284 = !DILocation(line: 749, column: 3, scope: !7275)
!7285 = !DILocation(line: 750, column: 2, scope: !7275)
!7286 = !DILocation(line: 751, column: 6, scope: !7160)
!7287 = !DILocation(line: 751, column: 2, scope: !7160)
!7288 = !DILocation(line: 752, column: 1, scope: !7160)
!7289 = !DILocation(line: 753, column: 2, scope: !7290)
!7290 = distinct !DILexicalBlock(scope: !7160, file: !3, line: 753, column: 2)
!7291 = !DILocation(line: 754, column: 16, scope: !7160)
!7292 = !DILocation(line: 754, column: 2, scope: !7160)
!7293 = !DILocation(line: 755, column: 9, scope: !7160)
!7294 = !DILocation(line: 756, column: 1, scope: !7160)
!7295 = !DILocation(line: 755, column: 2, scope: !7160)
!7296 = !DISubprogram(name: "list_lru_walk_one_irq", scope: !378, file: !378, line: 182, type: !7297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7297 = !DISubroutineType(types: !7298)
!7298 = !{!51, !6385, !34, !2720, !7135, !32, !2215}
!7299 = distinct !DISubprogram(name: "spin_trylock", scope: !7300, file: !7300, line: 359, type: !7301, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7303)
!7300 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!7301 = !DISubroutineType(types: !7302)
!7302 = !{!34, !1630}
!7303 = !{!7304}
!7304 = !DILocalVariable(name: "lock", arg: 1, scope: !7299, file: !7300, line: 359, type: !1630)
!7305 = !DILocation(line: 359, column: 53, scope: !7299)
!7306 = !DILocation(line: 361, column: 9, scope: !7299)
!7307 = !DILocation(line: 361, column: 2, scope: !7299)
!7308 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !7300, file: !7300, line: 399, type: !7309, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7311)
!7309 = !DISubroutineType(types: !7310)
!7310 = !{null, !1630}
!7311 = !{!7312}
!7312 = !DILocalVariable(name: "lock", arg: 1, scope: !7308, file: !7300, line: 399, type: !1630)
!7313 = !DILocation(line: 399, column: 57, scope: !7308)
!7314 = !DILocation(line: 401, column: 2, scope: !7308)
!7315 = !DILocation(line: 402, column: 1, scope: !7308)
!7316 = distinct !DISubprogram(name: "spin_unlock", scope: !7300, file: !7300, line: 389, type: !7309, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7317)
!7317 = !{!7318}
!7318 = !DILocalVariable(name: "lock", arg: 1, scope: !7316, file: !7300, line: 389, type: !1630)
!7319 = !DILocation(line: 389, column: 53, scope: !7316)
!7320 = !DILocation(line: 391, column: 2, scope: !7316)
!7321 = !DILocation(line: 392, column: 1, scope: !7316)
!7322 = !DISubprogram(name: "list_lru_isolate", scope: !378, file: !378, line: 136, type: !7323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7323 = !DISubroutineType(types: !7324)
!7324 = !{null, !7139, !112}
!7325 = !DISubprogram(name: "xa_delete_node", scope: !4070, file: !4070, line: 1325, type: !7326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7326 = !DISubroutineType(types: !7327)
!7327 = !{null, !5565, !7328}
!7328 = !DIDerivedType(tag: DW_TAG_typedef, name: "xa_update_node_t", file: !4070, line: 1323, baseType: !7329)
!7329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6312, size: 64)
!7330 = distinct !DISubprogram(name: "mapping_shrinkable", scope: !2266, file: !2266, line: 165, type: !7331, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7333)
!7331 = !DISubroutineType(types: !7332)
!7332 = !{!832, !386}
!7333 = !{!7334, !7335, !7336}
!7334 = !DILocalVariable(name: "mapping", arg: 1, scope: !7330, file: !2266, line: 165, type: !386)
!7335 = !DILocalVariable(name: "head", scope: !7330, file: !2266, line: 167, type: !32)
!7336 = !DILocalVariable(name: "__UNIQUE_ID_rcu328", scope: !7337, file: !2266, line: 178, type: !32)
!7337 = distinct !DILexicalBlock(scope: !7330, file: !2266, line: 178, column: 9)
!7338 = !DILocation(line: 165, column: 61, scope: !7330)
!7339 = !DILocation(line: 167, column: 2, scope: !7330)
!7340 = !DILocation(line: 167, column: 8, scope: !7330)
!7341 = !DILocation(line: 178, column: 9, scope: !7337)
!7342 = !DILocation(line: 178, column: 9, scope: !7343)
!7343 = distinct !DILexicalBlock(scope: !7337, file: !2266, line: 178, column: 9)
!7344 = !DILocation(line: 178, column: 9, scope: !7345)
!7345 = distinct !DILexicalBlock(scope: !7343, file: !2266, line: 178, column: 9)
!7346 = !DILocation(line: 178, column: 9, scope: !7330)
!7347 = !DILocation(line: 178, column: 7, scope: !7330)
!7348 = !DILocation(line: 179, column: 7, scope: !7349)
!7349 = distinct !DILexicalBlock(scope: !7330, file: !2266, line: 179, column: 6)
!7350 = !DILocation(line: 179, column: 6, scope: !7330)
!7351 = !DILocation(line: 180, column: 3, scope: !7349)
!7352 = !DILocation(line: 188, column: 18, scope: !7353)
!7353 = distinct !DILexicalBlock(scope: !7330, file: !2266, line: 188, column: 6)
!7354 = !DILocation(line: 188, column: 7, scope: !7353)
!7355 = !DILocation(line: 188, column: 24, scope: !7353)
!7356 = !DILocation(line: 188, column: 39, scope: !7353)
!7357 = !DILocation(line: 188, column: 27, scope: !7353)
!7358 = !DILocation(line: 188, column: 6, scope: !7330)
!7359 = !DILocation(line: 189, column: 3, scope: !7353)
!7360 = !DILocation(line: 191, column: 2, scope: !7330)
!7361 = !DILocation(line: 192, column: 1, scope: !7330)
!7362 = !DISubprogram(name: "inode_add_lru", scope: !176, file: !176, line: 2963, type: !2583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7363 = distinct !DISubprogram(name: "__might_resched", scope: !7364, file: !7364, line: 184, type: !7365, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7367)
!7364 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!7365 = !DISubroutineType(types: !7366)
!7366 = !{null, !28, !34, !7}
!7367 = !{!7368, !7369, !7370}
!7368 = !DILocalVariable(name: "file", arg: 1, scope: !7363, file: !7364, line: 184, type: !28)
!7369 = !DILocalVariable(name: "line", arg: 2, scope: !7363, file: !7364, line: 184, type: !34)
!7370 = !DILocalVariable(name: "offsets", arg: 3, scope: !7363, file: !7364, line: 185, type: !7)
!7371 = !DILocation(line: 184, column: 50, scope: !7363)
!7372 = !DILocation(line: 184, column: 60, scope: !7363)
!7373 = !DILocation(line: 185, column: 23, scope: !7363)
!7374 = !DILocation(line: 185, column: 34, scope: !7363)
!7375 = !DILocation(line: 2104, column: 9, scope: !7376)
!7376 = distinct !DILexicalBlock(scope: !5622, file: !2425, line: 2104, column: 9)
!7377 = !DILocation(line: 2104, column: 9, scope: !5622)
!7378 = !DILocation(line: 2104, column: 2, scope: !5622)
!7379 = distinct !DISubprogram(name: "spin_lock_irq", scope: !7300, file: !7300, line: 374, type: !7309, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7380)
!7380 = !{!7381}
!7381 = !DILocalVariable(name: "lock", arg: 1, scope: !7379, file: !7300, line: 374, type: !1630)
!7382 = !DILocation(line: 374, column: 55, scope: !7379)
!7383 = !DILocation(line: 376, column: 2, scope: !7379)
!7384 = !DILocation(line: 377, column: 1, scope: !7379)
!7385 = !DISubprogram(name: "_raw_spin_trylock", scope: !7386, file: !7386, line: 37, type: !7387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7386 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7387 = !DISubroutineType(types: !7388)
!7388 = !{!34, !7389}
!7389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!7390 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !7386, file: !7386, line: 41, type: !7391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7391 = !DISubroutineType(types: !7392)
!7392 = !{null, !7389}
!7393 = !DISubprogram(name: "_raw_spin_unlock", scope: !7386, file: !7386, line: 39, type: !7391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7394 = distinct !DISubprogram(name: "xa_is_node", scope: !4070, file: !4070, line: 1258, type: !7395, scopeLine: 1259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7397)
!7395 = !DISubroutineType(types: !7396)
!7396 = !{!832, !1362}
!7397 = !{!7398}
!7398 = !DILocalVariable(name: "entry", arg: 1, scope: !7394, file: !4070, line: 1258, type: !1362)
!7399 = !DILocation(line: 1258, column: 43, scope: !7394)
!7400 = !DILocation(line: 1260, column: 24, scope: !7394)
!7401 = !DILocation(line: 1260, column: 9, scope: !7394)
!7402 = !DILocation(line: 1260, column: 31, scope: !7394)
!7403 = !DILocation(line: 1260, column: 49, scope: !7394)
!7404 = !DILocation(line: 1260, column: 34, scope: !7394)
!7405 = !DILocation(line: 1260, column: 55, scope: !7394)
!7406 = !DILocation(line: 0, scope: !7394)
!7407 = !DILocation(line: 1260, column: 2, scope: !7394)
!7408 = distinct !DISubprogram(name: "xa_is_value", scope: !4070, file: !4070, line: 79, type: !7395, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7409)
!7409 = !{!7410}
!7410 = !DILocalVariable(name: "entry", arg: 1, scope: !7408, file: !4070, line: 79, type: !1362)
!7411 = !DILocation(line: 79, column: 44, scope: !7408)
!7412 = !DILocation(line: 81, column: 24, scope: !7408)
!7413 = !DILocation(line: 81, column: 9, scope: !7408)
!7414 = !DILocation(line: 81, column: 30, scope: !7408)
!7415 = !DILocation(line: 81, column: 2, scope: !7408)
!7416 = distinct !DISubprogram(name: "xa_is_internal", scope: !4070, file: !4070, line: 169, type: !7395, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7417)
!7417 = !{!7418}
!7418 = !DILocalVariable(name: "entry", arg: 1, scope: !7416, file: !4070, line: 169, type: !1362)
!7419 = !DILocation(line: 169, column: 47, scope: !7416)
!7420 = !DILocation(line: 171, column: 25, scope: !7416)
!7421 = !DILocation(line: 171, column: 10, scope: !7416)
!7422 = !DILocation(line: 171, column: 31, scope: !7416)
!7423 = !DILocation(line: 171, column: 36, scope: !7416)
!7424 = !DILocation(line: 171, column: 2, scope: !7416)
!7425 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !7386, file: !7386, line: 29, type: !7391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
