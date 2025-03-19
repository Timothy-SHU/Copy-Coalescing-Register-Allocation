; ModuleID = 'fs/isofs/compress.c'
source_filename = "fs/isofs/compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.40 }
%struct.atomic_t = type { i32 }
%union.anon.40 = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.42 }
%union.anon.42 = type { i64 }
%struct.folio = type { %union.anon.13, %union.anon.28, %union.anon.30 }
%union.anon.13 = type { %struct.page }
%struct.page = type { i64, %union.anon.18, %union.anon.27, %struct.atomic_t, [8 x i8] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %union.anon.20, ptr, %union.anon.22, i64 }
%union.anon.20 = type { %struct.list_head }
%union.anon.22 = type { i64 }
%union.anon.27 = type { %struct.atomic_t }
%union.anon.28 = type { %struct.page }
%union.anon.30 = type { %struct.page }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.33, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.34, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.35, ptr, %struct.address_space, %struct.list_head, %union.anon.36, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.33 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.34 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.35 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.36 = type { ptr }
%struct.iso_inode_info = type { i64, i64, i32, i8, [3 x i8], i64, i64, i64, %struct.inode }
%struct.file = type { %union.anon.37, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.37 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.38, %struct.qspinlock }
%union.anon.38 = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.buffer_head = type { i64, ptr, %union.anon.41, i64, i64, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%union.anon.41 = type { ptr }
%struct.anon.25 = type { i64 }
%struct.z_stream_s = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, i32, i64, i64 }

@zisofs_aops = hidden constant %struct.address_space_operations { ptr null, ptr @zisofs_read_folio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !0
@zisofs_zlib_workspace = internal global ptr null, align 8, !dbg !4817
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4819
@hugetlb_optimize_vmemmap_key = external dso_local global %struct.static_key_false, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"fs/isofs/compress.c\00", align 1, !dbg !4824
@zisofs_zlib_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @zisofs_zlib_lock, i64 16), ptr getelementptr (i8, ptr @zisofs_zlib_lock, i64 16) } }, align 8, !dbg !4841
@.str.2 = private unnamed_addr constant [42 x i8] c"\017zisofs: zisofs_inflateInit returned %d\0A\00", align 1, !dbg !4827
@zisofs_sink_page = internal global [4096 x i8] zeroinitializer, align 16, !dbg !4843
@.str.3 = private unnamed_addr constant [112 x i8] c"\017zisofs: zisofs_inflate returned %d, inode = %lu, page idx = %d, bh idx = %d, avail_in = %ld, avail_out = %ld\0A\00", align 1, !dbg !4832
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !4837
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @zisofs_read_folio(ptr noundef %file, ptr noundef %folio) #0 align 16 !dbg !4855 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %folio.addr = alloca ptr, align 8
  %page = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %mapping = alloca ptr, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %pcount = alloca i32, align 4
  %full_page = alloca i32, align 4
  %zisofs_block_shift = alloca i32, align 4
  %zisofs_pages_per_cblock = alloca i32, align 4
  %pages = alloca ptr, align 8
  %index = alloca i64, align 8
  %end_index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x337 = alloca i32, align 4
  %__UNIQUE_ID___y338 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x339 = alloca i32, align 4
  %__UNIQUE_ID___y340 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4857, metadata !DIExpression()), !dbg !4879
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !4858, metadata !DIExpression()), !dbg !4880
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #17, !dbg !4881
  call void @llvm.dbg.declare(metadata ptr %page, metadata !4859, metadata !DIExpression()), !dbg !4882
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !4883
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !4884
  store ptr %1, ptr %page, align 8, !dbg !4882
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #17, !dbg !4885
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4860, metadata !DIExpression()), !dbg !4886
  %2 = load ptr, ptr %file.addr, align 8, !dbg !4887
  %call = call ptr @file_inode(ptr noundef %2) #18, !dbg !4888
  store ptr %call, ptr %inode, align 8, !dbg !4886
  call void @llvm.lifetime.start.p0(i64 8, ptr %mapping) #17, !dbg !4889
  call void @llvm.dbg.declare(metadata ptr %mapping, metadata !4861, metadata !DIExpression()), !dbg !4890
  %3 = load ptr, ptr %inode, align 8, !dbg !4891
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10, !dbg !4892
  %4 = load ptr, ptr %i_mapping, align 8, !dbg !4892
  store ptr %4, ptr %mapping, align 8, !dbg !4890
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !4893
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4862, metadata !DIExpression()), !dbg !4894
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !4895
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4863, metadata !DIExpression()), !dbg !4896
  call void @llvm.lifetime.start.p0(i64 4, ptr %pcount) #17, !dbg !4895
  call void @llvm.dbg.declare(metadata ptr %pcount, metadata !4864, metadata !DIExpression()), !dbg !4897
  call void @llvm.lifetime.start.p0(i64 4, ptr %full_page) #17, !dbg !4895
  call void @llvm.dbg.declare(metadata ptr %full_page, metadata !4865, metadata !DIExpression()), !dbg !4898
  call void @llvm.lifetime.start.p0(i64 4, ptr %zisofs_block_shift) #17, !dbg !4899
  call void @llvm.dbg.declare(metadata ptr %zisofs_block_shift, metadata !4866, metadata !DIExpression()), !dbg !4900
  %5 = load ptr, ptr %inode, align 8, !dbg !4901
  %call1 = call ptr @ISOFS_I(ptr noundef %5) #18, !dbg !4902
  %i_format_parm = getelementptr inbounds %struct.iso_inode_info, ptr %call1, i32 0, i32 4, !dbg !4903
  %arrayidx = getelementptr [3 x i8], ptr %i_format_parm, i64 0, i64 1, !dbg !4902
  %6 = load i8, ptr %arrayidx, align 1, !dbg !4902
  %conv = zext i8 %6 to i32, !dbg !4902
  store i32 %conv, ptr %zisofs_block_shift, align 4, !dbg !4900
  call void @llvm.lifetime.start.p0(i64 4, ptr %zisofs_pages_per_cblock) #17, !dbg !4904
  call void @llvm.dbg.declare(metadata ptr %zisofs_pages_per_cblock, metadata !4867, metadata !DIExpression()), !dbg !4905
  %7 = load i32, ptr %zisofs_block_shift, align 4, !dbg !4906
  %cmp = icmp ule i32 12, %7, !dbg !4907
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4908

cond.true:                                        ; preds = %entry
  %8 = load i32, ptr %zisofs_block_shift, align 4, !dbg !4909
  %sub = sub i32 %8, 12, !dbg !4910
  %shl = shl i32 1, %sub, !dbg !4911
  br label %cond.end, !dbg !4908

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4908

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ], !dbg !4908
  store i32 %cond, ptr %zisofs_pages_per_cblock, align 4, !dbg !4905
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages) #17, !dbg !4912
  call void @llvm.dbg.declare(metadata ptr %pages, metadata !4868, metadata !DIExpression()), !dbg !4913
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #17, !dbg !4914
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4869, metadata !DIExpression()), !dbg !4915
  %9 = load ptr, ptr %page, align 8, !dbg !4916
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1, !dbg !4917
  %11 = getelementptr inbounds %struct.anon.19, ptr %10, i32 0, i32 2, !dbg !4917
  %12 = load i64, ptr %11, align 8, !dbg !4917
  store i64 %12, ptr %index, align 8, !dbg !4915
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_index) #17, !dbg !4914
  call void @llvm.dbg.declare(metadata ptr %end_index, metadata !4870, metadata !DIExpression()), !dbg !4918
  %13 = load ptr, ptr %inode, align 8, !dbg !4919
  %i_size = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 15, !dbg !4920
  %14 = load i64, ptr %i_size, align 8, !dbg !4920
  %add = add i64 %14, 4096, !dbg !4921
  %sub3 = sub i64 %add, 1, !dbg !4922
  %shr = lshr i64 %sub3, 12, !dbg !4923
  store i64 %shr, ptr %end_index, align 8, !dbg !4924
  %15 = load i64, ptr %index, align 8, !dbg !4925
  %16 = load i64, ptr %end_index, align 8, !dbg !4927
  %cmp4 = icmp uge i64 %15, %16, !dbg !4928
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4929

if.then:                                          ; preds = %cond.end
  %17 = load ptr, ptr %page, align 8, !dbg !4930
  call void @SetPageUptodate(ptr noundef %17) #18, !dbg !4932
  %18 = load ptr, ptr %page, align 8, !dbg !4933
  call void @unlock_page(ptr noundef %18) #18, !dbg !4934
  store i32 0, ptr %retval, align 4, !dbg !4935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4935

if.end:                                           ; preds = %cond.end
  %19 = load i32, ptr %zisofs_block_shift, align 4, !dbg !4936
  %cmp6 = icmp ule i32 12, %19, !dbg !4937
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !4938

if.then8:                                         ; preds = %if.end
  %20 = load i64, ptr %index, align 8, !dbg !4939
  %21 = load i32, ptr %zisofs_pages_per_cblock, align 4, !dbg !4940
  %sub9 = sub i32 %21, 1, !dbg !4941
  %conv10 = zext i32 %sub9 to i64, !dbg !4942
  %and = and i64 %20, %conv10, !dbg !4943
  %conv11 = trunc i64 %and to i32, !dbg !4939
  store i32 %conv11, ptr %full_page, align 4, !dbg !4944
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x337) #17, !dbg !4945
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x337, metadata !4871, metadata !DIExpression()), !dbg !4945
  %22 = load i32, ptr %zisofs_pages_per_cblock, align 4, !dbg !4945
  store i32 %22, ptr %__UNIQUE_ID___x337, align 4, !dbg !4945
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y338) #17, !dbg !4945
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y338, metadata !4875, metadata !DIExpression()), !dbg !4945
  %23 = load i64, ptr %end_index, align 8, !dbg !4945
  %24 = load i64, ptr %index, align 8, !dbg !4945
  %25 = load i32, ptr %zisofs_pages_per_cblock, align 4, !dbg !4945
  %sub12 = sub i32 %25, 1, !dbg !4945
  %not = xor i32 %sub12, -1, !dbg !4945
  %conv13 = zext i32 %not to i64, !dbg !4945
  %and14 = and i64 %24, %conv13, !dbg !4945
  %sub15 = sub i64 %23, %and14, !dbg !4945
  %conv16 = trunc i64 %sub15 to i32, !dbg !4945
  store i32 %conv16, ptr %__UNIQUE_ID___y338, align 4, !dbg !4945
  %26 = load i32, ptr %__UNIQUE_ID___x337, align 4, !dbg !4945
  %27 = load i32, ptr %__UNIQUE_ID___y338, align 4, !dbg !4945
  %cmp17 = icmp slt i32 %26, %27, !dbg !4945
  br i1 %cmp17, label %cond.true19, label %cond.false20, !dbg !4945

cond.true19:                                      ; preds = %if.then8
  %28 = load i32, ptr %__UNIQUE_ID___x337, align 4, !dbg !4945
  br label %cond.end21, !dbg !4945

cond.false20:                                     ; preds = %if.then8
  %29 = load i32, ptr %__UNIQUE_ID___y338, align 4, !dbg !4945
  br label %cond.end21, !dbg !4945

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi i32 [ %28, %cond.true19 ], [ %29, %cond.false20 ], !dbg !4945
  store i32 %cond22, ptr %tmp, align 4, !dbg !4945
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y338) #17, !dbg !4946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x337) #17, !dbg !4946
  %30 = load i32, ptr %tmp, align 4, !dbg !4945
  store i32 %30, ptr %pcount, align 4, !dbg !4947
  %31 = load i32, ptr %full_page, align 4, !dbg !4948
  %conv23 = sext i32 %31 to i64, !dbg !4948
  %32 = load i64, ptr %index, align 8, !dbg !4949
  %sub24 = sub i64 %32, %conv23, !dbg !4949
  store i64 %sub24, ptr %index, align 8, !dbg !4949
  br label %if.end25, !dbg !4950

if.else:                                          ; preds = %if.end
  store i32 0, ptr %full_page, align 4, !dbg !4951
  store i32 1, ptr %pcount, align 4, !dbg !4953
  br label %if.end25

if.end25:                                         ; preds = %if.else, %cond.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x339) #17, !dbg !4954
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x339, metadata !4876, metadata !DIExpression()), !dbg !4954
  %33 = load i32, ptr %zisofs_pages_per_cblock, align 4, !dbg !4954
  store i32 %33, ptr %__UNIQUE_ID___x339, align 4, !dbg !4954
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y340) #17, !dbg !4954
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y340, metadata !4878, metadata !DIExpression()), !dbg !4954
  store i32 1, ptr %__UNIQUE_ID___y340, align 4, !dbg !4954
  %34 = load i32, ptr %__UNIQUE_ID___x339, align 4, !dbg !4954
  %35 = load i32, ptr %__UNIQUE_ID___y340, align 4, !dbg !4954
  %cmp27 = icmp ugt i32 %34, %35, !dbg !4954
  br i1 %cmp27, label %cond.true29, label %cond.false30, !dbg !4954

cond.true29:                                      ; preds = %if.end25
  %36 = load i32, ptr %__UNIQUE_ID___x339, align 4, !dbg !4954
  br label %cond.end31, !dbg !4954

cond.false30:                                     ; preds = %if.end25
  %37 = load i32, ptr %__UNIQUE_ID___y340, align 4, !dbg !4954
  br label %cond.end31, !dbg !4954

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi i32 [ %36, %cond.true29 ], [ %37, %cond.false30 ], !dbg !4954
  store i32 %cond32, ptr %tmp26, align 4, !dbg !4954
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y340) #17, !dbg !4955
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x339) #17, !dbg !4955
  %38 = load i32, ptr %tmp26, align 4, !dbg !4954
  %conv33 = zext i32 %38 to i64, !dbg !4955
  %call34 = call noalias ptr @kcalloc(i64 noundef %conv33, i64 noundef 8, i32 noundef 3264) #19, !dbg !4956
  store ptr %call34, ptr %pages, align 8, !dbg !4957
  %39 = load ptr, ptr %pages, align 8, !dbg !4958
  %tobool = icmp ne ptr %39, null, !dbg !4958
  br i1 %tobool, label %if.end36, label %if.then35, !dbg !4960

if.then35:                                        ; preds = %cond.end31
  %40 = load ptr, ptr %page, align 8, !dbg !4961
  call void @unlock_page(ptr noundef %40) #18, !dbg !4963
  store i32 -12, ptr %retval, align 4, !dbg !4964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4964

if.end36:                                         ; preds = %cond.end31
  %41 = load ptr, ptr %page, align 8, !dbg !4965
  %42 = load ptr, ptr %pages, align 8, !dbg !4966
  %43 = load i32, ptr %full_page, align 4, !dbg !4967
  %idxprom = sext i32 %43 to i64, !dbg !4966
  %arrayidx37 = getelementptr ptr, ptr %42, i64 %idxprom, !dbg !4966
  store ptr %41, ptr %arrayidx37, align 8, !dbg !4968
  store i32 0, ptr %i, align 4, !dbg !4969
  br label %for.cond, !dbg !4971

for.cond:                                         ; preds = %for.inc, %if.end36
  %44 = load i32, ptr %i, align 4, !dbg !4972
  %45 = load i32, ptr %pcount, align 4, !dbg !4974
  %cmp38 = icmp slt i32 %44, %45, !dbg !4975
  br i1 %cmp38, label %for.body, label %for.end, !dbg !4976

for.body:                                         ; preds = %for.cond
  %46 = load i32, ptr %i, align 4, !dbg !4977
  %47 = load i32, ptr %full_page, align 4, !dbg !4980
  %cmp40 = icmp ne i32 %46, %47, !dbg !4981
  br i1 %cmp40, label %if.then42, label %if.end46, !dbg !4982

if.then42:                                        ; preds = %for.body
  %48 = load ptr, ptr %mapping, align 8, !dbg !4983
  %49 = load i64, ptr %index, align 8, !dbg !4984
  %call43 = call ptr @grab_cache_page_nowait(ptr noundef %48, i64 noundef %49) #18, !dbg !4985
  %50 = load ptr, ptr %pages, align 8, !dbg !4986
  %51 = load i32, ptr %i, align 4, !dbg !4987
  %idxprom44 = sext i32 %51 to i64, !dbg !4986
  %arrayidx45 = getelementptr ptr, ptr %50, i64 %idxprom44, !dbg !4986
  store ptr %call43, ptr %arrayidx45, align 8, !dbg !4988
  br label %if.end46, !dbg !4986

if.end46:                                         ; preds = %if.then42, %for.body
  %52 = load ptr, ptr %pages, align 8, !dbg !4989
  %53 = load i32, ptr %i, align 4, !dbg !4991
  %idxprom47 = sext i32 %53 to i64, !dbg !4989
  %arrayidx48 = getelementptr ptr, ptr %52, i64 %idxprom47, !dbg !4989
  %54 = load ptr, ptr %arrayidx48, align 8, !dbg !4989
  %tobool49 = icmp ne ptr %54, null, !dbg !4989
  br i1 %tobool49, label %if.then50, label %if.end53, !dbg !4992

if.then50:                                        ; preds = %if.end46
  %55 = load ptr, ptr %pages, align 8, !dbg !4993
  %56 = load i32, ptr %i, align 4, !dbg !4994
  %idxprom51 = sext i32 %56 to i64, !dbg !4993
  %arrayidx52 = getelementptr ptr, ptr %55, i64 %idxprom51, !dbg !4993
  %57 = load ptr, ptr %arrayidx52, align 8, !dbg !4993
  call void @ClearPageError(ptr noundef %57) #18, !dbg !4995
  br label %if.end53, !dbg !4995

if.end53:                                         ; preds = %if.then50, %if.end46
  br label %for.inc, !dbg !4996

for.inc:                                          ; preds = %if.end53
  %58 = load i32, ptr %i, align 4, !dbg !4997
  %inc = add i32 %58, 1, !dbg !4997
  store i32 %inc, ptr %i, align 4, !dbg !4997
  %59 = load i64, ptr %index, align 8, !dbg !4998
  %inc54 = add i64 %59, 1, !dbg !4998
  store i64 %inc54, ptr %index, align 8, !dbg !4998
  br label %for.cond, !dbg !4999, !llvm.loop !5000

for.end:                                          ; preds = %for.cond
  %60 = load ptr, ptr %inode, align 8, !dbg !5004
  %61 = load i32, ptr %full_page, align 4, !dbg !5005
  %62 = load i32, ptr %pcount, align 4, !dbg !5006
  %63 = load ptr, ptr %pages, align 8, !dbg !5007
  %call55 = call i32 @zisofs_fill_pages(ptr noundef %60, i32 noundef %61, i32 noundef %62, ptr noundef %63) #18, !dbg !5008
  store i32 %call55, ptr %err, align 4, !dbg !5009
  store i32 0, ptr %i, align 4, !dbg !5010
  br label %for.cond56, !dbg !5012

for.cond56:                                       ; preds = %for.inc82, %for.end
  %64 = load i32, ptr %i, align 4, !dbg !5013
  %65 = load i32, ptr %pcount, align 4, !dbg !5015
  %cmp57 = icmp slt i32 %64, %65, !dbg !5016
  br i1 %cmp57, label %for.body59, label %for.end84, !dbg !5017

for.body59:                                       ; preds = %for.cond56
  %66 = load ptr, ptr %pages, align 8, !dbg !5018
  %67 = load i32, ptr %i, align 4, !dbg !5021
  %idxprom60 = sext i32 %67 to i64, !dbg !5018
  %arrayidx61 = getelementptr ptr, ptr %66, i64 %idxprom60, !dbg !5018
  %68 = load ptr, ptr %arrayidx61, align 8, !dbg !5018
  %tobool62 = icmp ne ptr %68, null, !dbg !5018
  br i1 %tobool62, label %if.then63, label %if.end81, !dbg !5022

if.then63:                                        ; preds = %for.body59
  %69 = load ptr, ptr %pages, align 8, !dbg !5023
  %70 = load i32, ptr %i, align 4, !dbg !5025
  %idxprom64 = sext i32 %70 to i64, !dbg !5023
  %arrayidx65 = getelementptr ptr, ptr %69, i64 %idxprom64, !dbg !5023
  %71 = load ptr, ptr %arrayidx65, align 8, !dbg !5023
  call void @flush_dcache_page(ptr noundef %71) #18, !dbg !5026
  %72 = load i32, ptr %i, align 4, !dbg !5027
  %73 = load i32, ptr %full_page, align 4, !dbg !5029
  %cmp66 = icmp eq i32 %72, %73, !dbg !5030
  br i1 %cmp66, label %land.lhs.true, label %if.end72, !dbg !5031

land.lhs.true:                                    ; preds = %if.then63
  %74 = load i32, ptr %err, align 4, !dbg !5032
  %tobool68 = icmp ne i32 %74, 0, !dbg !5032
  br i1 %tobool68, label %if.then69, label %if.end72, !dbg !5033

if.then69:                                        ; preds = %land.lhs.true
  %75 = load ptr, ptr %pages, align 8, !dbg !5034
  %76 = load i32, ptr %i, align 4, !dbg !5035
  %idxprom70 = sext i32 %76 to i64, !dbg !5034
  %arrayidx71 = getelementptr ptr, ptr %75, i64 %idxprom70, !dbg !5034
  %77 = load ptr, ptr %arrayidx71, align 8, !dbg !5034
  call void @SetPageError(ptr noundef %77) #18, !dbg !5036
  br label %if.end72, !dbg !5036

if.end72:                                         ; preds = %if.then69, %land.lhs.true, %if.then63
  %78 = load ptr, ptr %pages, align 8, !dbg !5037
  %79 = load i32, ptr %i, align 4, !dbg !5038
  %idxprom73 = sext i32 %79 to i64, !dbg !5037
  %arrayidx74 = getelementptr ptr, ptr %78, i64 %idxprom73, !dbg !5037
  %80 = load ptr, ptr %arrayidx74, align 8, !dbg !5037
  call void @unlock_page(ptr noundef %80) #18, !dbg !5039
  %81 = load i32, ptr %i, align 4, !dbg !5040
  %82 = load i32, ptr %full_page, align 4, !dbg !5042
  %cmp75 = icmp ne i32 %81, %82, !dbg !5043
  br i1 %cmp75, label %if.then77, label %if.end80, !dbg !5044

if.then77:                                        ; preds = %if.end72
  %83 = load ptr, ptr %pages, align 8, !dbg !5045
  %84 = load i32, ptr %i, align 4, !dbg !5046
  %idxprom78 = sext i32 %84 to i64, !dbg !5045
  %arrayidx79 = getelementptr ptr, ptr %83, i64 %idxprom78, !dbg !5045
  %85 = load ptr, ptr %arrayidx79, align 8, !dbg !5045
  call void @put_page(ptr noundef %85) #18, !dbg !5047
  br label %if.end80, !dbg !5047

if.end80:                                         ; preds = %if.then77, %if.end72
  br label %if.end81, !dbg !5048

if.end81:                                         ; preds = %if.end80, %for.body59
  br label %for.inc82, !dbg !5049

for.inc82:                                        ; preds = %if.end81
  %86 = load i32, ptr %i, align 4, !dbg !5050
  %inc83 = add i32 %86, 1, !dbg !5050
  store i32 %inc83, ptr %i, align 4, !dbg !5050
  br label %for.cond56, !dbg !5051, !llvm.loop !5052

for.end84:                                        ; preds = %for.cond56
  %87 = load ptr, ptr %pages, align 8, !dbg !5054
  call void @kfree(ptr noundef %87) #18, !dbg !5055
  %88 = load i32, ptr %err, align 4, !dbg !5056
  store i32 %88, ptr %retval, align 4, !dbg !5057
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5057

cleanup:                                          ; preds = %for.end84, %if.then35, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_index) #17, !dbg !5058
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #17, !dbg !5058
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages) #17, !dbg !5058
  call void @llvm.lifetime.end.p0(i64 4, ptr %zisofs_pages_per_cblock) #17, !dbg !5058
  call void @llvm.lifetime.end.p0(i64 4, ptr %zisofs_block_shift) #17, !dbg !5058
  call void @llvm.lifetime.end.p0(i64 4, ptr %full_page) #17, !dbg !5058
  call void @llvm.lifetime.end.p0(i64 4, ptr %pcount) #17, !dbg !5058
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5058
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5058
  call void @llvm.lifetime.end.p0(i64 8, ptr %mapping) #17, !dbg !5058
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #17, !dbg !5058
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #17, !dbg !5058
  %89 = load i32, ptr %retval, align 4, !dbg !5058
  ret i32 %89, !dbg !5058
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @zisofs_init() #1 section ".init.text" align 16 !dbg !5059 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @zlib_inflate_workspacesize() #18, !dbg !5060
  %conv = sext i32 %call to i64, !dbg !5060
  %call1 = call noalias ptr @vmalloc(i64 noundef %conv) #20, !dbg !5061
  store ptr %call1, ptr @zisofs_zlib_workspace, align 8, !dbg !5062
  %0 = load ptr, ptr @zisofs_zlib_workspace, align 8, !dbg !5063
  %tobool = icmp ne ptr %0, null, !dbg !5063
  br i1 %tobool, label %if.end, label %if.then, !dbg !5065

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5066
  br label %return, !dbg !5066

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5067
  br label %return, !dbg !5067

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !5068
  ret i32 %1, !dbg !5068
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5069 dso_local noalias ptr @vmalloc(i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5072 dso_local i32 @zlib_inflate_workspacesize() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @zisofs_cleanup() #0 align 16 !dbg !5074 {
entry:
  %0 = load ptr, ptr @zisofs_zlib_workspace, align 8, !dbg !5075
  call void @vfree(ptr noundef %0) #18, !dbg !5076
  ret void, !dbg !5077
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5078 dso_local void @vfree(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #6 align 16 !dbg !5081 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  %0 = load ptr, ptr %f.addr, align 8, !dbg !5089
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !5090
  %1 = load ptr, ptr %f_inode, align 8, !dbg !5090
  ret ptr %1, !dbg !5091
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ISOFS_I(ptr noundef %inode) #6 align 16 !dbg !5092 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5096, metadata !DIExpression()), !dbg !5099
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5100
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5097, metadata !DIExpression()), !dbg !5100
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5100
  store ptr %0, ptr %__mptr, align 8, !dbg !5100
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5100
  %add.ptr = getelementptr i8, ptr %1, i64 -48, !dbg !5100
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5100
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5101
  %2 = load ptr, ptr %tmp, align 8, !dbg !5100
  ret ptr %2, !dbg !5102
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @SetPageUptodate(ptr noundef %page) #7 align 16 !dbg !5103 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5105, metadata !DIExpression()), !dbg !5106
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5107
  call void @folio_mark_uptodate(ptr noundef %0) #18, !dbg !5108
  ret void, !dbg !5109
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5110 dso_local void @unlock_page(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5111 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5115, metadata !DIExpression()), !dbg !5118
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5116, metadata !DIExpression()), !dbg !5119
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5117, metadata !DIExpression()), !dbg !5120
  %0 = load i64, ptr %n.addr, align 8, !dbg !5121
  %1 = load i64, ptr %size.addr, align 8, !dbg !5122
  %2 = load i32, ptr %flags.addr, align 4, !dbg !5123
  %or = or i32 %2, 256, !dbg !5124
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #19, !dbg !5125
  ret ptr %call, !dbg !5126
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @grab_cache_page_nowait(ptr noundef %mapping, i64 noundef %index) #6 align 16 !dbg !5127 {
entry:
  %mapping.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !5131, metadata !DIExpression()), !dbg !5133
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5132, metadata !DIExpression()), !dbg !5134
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !5135
  %1 = load i64, ptr %index.addr, align 8, !dbg !5136
  %2 = load ptr, ptr %mapping.addr, align 8, !dbg !5137
  %call = call i32 @mapping_gfp_mask(ptr noundef %2) #18, !dbg !5138
  %call1 = call ptr @pagecache_get_page(ptr noundef %0, i64 noundef %1, i32 noundef 54, i32 noundef %call) #18, !dbg !5139
  ret ptr %call1, !dbg !5140
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ClearPageError(ptr noundef %page) #7 align 16 !dbg !5141 {
entry:
  %page.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5143, metadata !DIExpression()), !dbg !5144
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5145
  %call = call i64 @_compound_head(ptr noundef %0) #18, !dbg !5145
  %1 = inttoptr i64 %call to ptr, !dbg !5145
  store ptr %1, ptr %tmp1, align 8, !dbg !5145
  %2 = load ptr, ptr %tmp1, align 8, !dbg !5145
  store ptr %2, ptr %tmp, align 8, !dbg !5148
  %3 = load ptr, ptr %tmp, align 8, !dbg !5148
  %flags = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 0, !dbg !5144
  call void @clear_bit(i64 noundef 10, ptr noundef %flags) #18, !dbg !5144
  ret void, !dbg !5144
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @zisofs_fill_pages(ptr noundef %inode, i32 noundef %full_page, i32 noundef %pcount, ptr noundef %pages) #0 align 16 !dbg !5149 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %full_page.addr = alloca i32, align 4
  %pcount.addr = alloca i32, align 4
  %pages.addr = alloca ptr, align 8
  %start_off = alloca i64, align 8
  %end_off = alloca i64, align 8
  %block_start = alloca i64, align 8
  %block_end = alloca i64, align 8
  %header_size = alloca i32, align 4
  %zisofs_block_shift = alloca i32, align 4
  %blockptr = alloca i32, align 4
  %poffset = alloca i64, align 8
  %cstart_block = alloca i64, align 8
  %cend_block = alloca i64, align 8
  %bh = alloca ptr, align 8
  %blkbits = alloca i32, align 4
  %blksize = alloca i32, align 4
  %err = alloca i32, align 4
  %ret = alloca i64, align 8
  %__UNIQUE_ID___x335 = alloca i64, align 8
  %__UNIQUE_ID___y336 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp62 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5153, metadata !DIExpression()), !dbg !5204
  store i32 %full_page, ptr %full_page.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %full_page.addr, metadata !5154, metadata !DIExpression()), !dbg !5205
  store i32 %pcount, ptr %pcount.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pcount.addr, metadata !5155, metadata !DIExpression()), !dbg !5206
  store ptr %pages, ptr %pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pages.addr, metadata !5156, metadata !DIExpression()), !dbg !5207
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_off) #17, !dbg !5208
  call void @llvm.dbg.declare(metadata ptr %start_off, metadata !5157, metadata !DIExpression()), !dbg !5209
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_off) #17, !dbg !5208
  call void @llvm.dbg.declare(metadata ptr %end_off, metadata !5158, metadata !DIExpression()), !dbg !5210
  call void @llvm.lifetime.start.p0(i64 8, ptr %block_start) #17, !dbg !5211
  call void @llvm.dbg.declare(metadata ptr %block_start, metadata !5159, metadata !DIExpression()), !dbg !5212
  call void @llvm.lifetime.start.p0(i64 8, ptr %block_end) #17, !dbg !5211
  call void @llvm.dbg.declare(metadata ptr %block_end, metadata !5160, metadata !DIExpression()), !dbg !5213
  call void @llvm.lifetime.start.p0(i64 4, ptr %header_size) #17, !dbg !5214
  call void @llvm.dbg.declare(metadata ptr %header_size, metadata !5161, metadata !DIExpression()), !dbg !5215
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5216
  %call = call ptr @ISOFS_I(ptr noundef %0) #18, !dbg !5217
  %i_format_parm = getelementptr inbounds %struct.iso_inode_info, ptr %call, i32 0, i32 4, !dbg !5218
  %arrayidx = getelementptr [3 x i8], ptr %i_format_parm, i64 0, i64 0, !dbg !5217
  %1 = load i8, ptr %arrayidx, align 1, !dbg !5217
  %conv = zext i8 %1 to i32, !dbg !5217
  store i32 %conv, ptr %header_size, align 4, !dbg !5215
  call void @llvm.lifetime.start.p0(i64 4, ptr %zisofs_block_shift) #17, !dbg !5219
  call void @llvm.dbg.declare(metadata ptr %zisofs_block_shift, metadata !5162, metadata !DIExpression()), !dbg !5220
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5221
  %call1 = call ptr @ISOFS_I(ptr noundef %2) #18, !dbg !5222
  %i_format_parm2 = getelementptr inbounds %struct.iso_inode_info, ptr %call1, i32 0, i32 4, !dbg !5223
  %arrayidx3 = getelementptr [3 x i8], ptr %i_format_parm2, i64 0, i64 1, !dbg !5222
  %3 = load i8, ptr %arrayidx3, align 1, !dbg !5222
  %conv4 = zext i8 %3 to i32, !dbg !5222
  store i32 %conv4, ptr %zisofs_block_shift, align 4, !dbg !5220
  call void @llvm.lifetime.start.p0(i64 4, ptr %blockptr) #17, !dbg !5224
  call void @llvm.dbg.declare(metadata ptr %blockptr, metadata !5163, metadata !DIExpression()), !dbg !5225
  call void @llvm.lifetime.start.p0(i64 8, ptr %poffset) #17, !dbg !5226
  call void @llvm.dbg.declare(metadata ptr %poffset, metadata !5164, metadata !DIExpression()), !dbg !5227
  store i64 0, ptr %poffset, align 8, !dbg !5227
  call void @llvm.lifetime.start.p0(i64 8, ptr %cstart_block) #17, !dbg !5228
  call void @llvm.dbg.declare(metadata ptr %cstart_block, metadata !5165, metadata !DIExpression()), !dbg !5229
  call void @llvm.lifetime.start.p0(i64 8, ptr %cend_block) #17, !dbg !5228
  call void @llvm.dbg.declare(metadata ptr %cend_block, metadata !5166, metadata !DIExpression()), !dbg !5230
  call void @llvm.lifetime.start.p0(i64 8, ptr %bh) #17, !dbg !5231
  call void @llvm.dbg.declare(metadata ptr %bh, metadata !5167, metadata !DIExpression()), !dbg !5232
  call void @llvm.lifetime.start.p0(i64 4, ptr %blkbits) #17, !dbg !5233
  call void @llvm.dbg.declare(metadata ptr %blkbits, metadata !5192, metadata !DIExpression()), !dbg !5234
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5235
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 9, !dbg !5235
  %5 = load ptr, ptr %i_sb, align 8, !dbg !5235
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 2, !dbg !5235
  %6 = load i8, ptr %s_blocksize_bits, align 4, !dbg !5235
  %conv5 = zext i8 %6 to i32, !dbg !5235
  store i32 %conv5, ptr %blkbits, align 4, !dbg !5234
  call void @llvm.lifetime.start.p0(i64 4, ptr %blksize) #17, !dbg !5236
  call void @llvm.dbg.declare(metadata ptr %blksize, metadata !5193, metadata !DIExpression()), !dbg !5237
  %7 = load i32, ptr %blkbits, align 4, !dbg !5238
  %shl = shl i32 1, %7, !dbg !5239
  store i32 %shl, ptr %blksize, align 4, !dbg !5237
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5240
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5194, metadata !DIExpression()), !dbg !5241
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5195, metadata !DIExpression()), !dbg !5243
  br label %do.body, !dbg !5244

do.body:                                          ; preds = %entry
  %8 = load ptr, ptr %pages.addr, align 8, !dbg !5245
  %9 = load i32, ptr %full_page.addr, align 4, !dbg !5245
  %idxprom = sext i32 %9 to i64, !dbg !5245
  %arrayidx6 = getelementptr ptr, ptr %8, i64 %idxprom, !dbg !5245
  %10 = load ptr, ptr %arrayidx6, align 8, !dbg !5245
  %tobool = icmp ne ptr %10, null, !dbg !5245
  %lnot = xor i1 %tobool, true, !dbg !5245
  %lnot7 = xor i1 %lnot, true, !dbg !5245
  %lnot8 = xor i1 %lnot7, true, !dbg !5245
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5245
  %conv9 = sext i32 %lnot.ext to i64, !dbg !5245
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !5245
  %tobool10 = icmp ne i64 %expval, 0, !dbg !5245
  br i1 %tobool10, label %if.then, label %if.end, !dbg !5248

if.then:                                          ; preds = %do.body
  br label %do.body11, !dbg !5245

do.body11:                                        ; preds = %if.then
  br label %do.body12, !dbg !5249

do.body12:                                        ; preds = %do.body11
  br label %do.cond, !dbg !5251

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !5251

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !5249

do.body13:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 222, i32 0, i64 12) #17, !dbg !5253, !srcloc !5255
  br label %do.cond14, !dbg !5253

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5253

do.end15:                                         ; preds = %do.cond14
  unreachable, !dbg !5249

do.cond16:                                        ; No predecessors!
  br label %do.end17, !dbg !5249

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5249

if.end:                                           ; preds = %do.end17, %do.body
  br label %do.cond18, !dbg !5248

do.cond18:                                        ; preds = %if.end
  br label %do.end19, !dbg !5248

do.end19:                                         ; preds = %do.cond18
  %11 = load ptr, ptr %pages.addr, align 8, !dbg !5256
  %12 = load i32, ptr %full_page.addr, align 4, !dbg !5257
  %idxprom20 = sext i32 %12 to i64, !dbg !5256
  %arrayidx21 = getelementptr ptr, ptr %11, i64 %idxprom20, !dbg !5256
  %13 = load ptr, ptr %arrayidx21, align 8, !dbg !5256
  %call22 = call i64 @page_offset(ptr noundef %13) #18, !dbg !5258
  store i64 %call22, ptr %start_off, align 8, !dbg !5259
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x335) #17, !dbg !5260
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x335, metadata !5196, metadata !DIExpression()), !dbg !5260
  %14 = load i64, ptr %start_off, align 8, !dbg !5260
  %add = add i64 %14, 4096, !dbg !5260
  store i64 %add, ptr %__UNIQUE_ID___x335, align 8, !dbg !5260
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y336) #17, !dbg !5260
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y336, metadata !5198, metadata !DIExpression()), !dbg !5260
  %15 = load ptr, ptr %inode.addr, align 8, !dbg !5260
  %i_size = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 15, !dbg !5260
  %16 = load i64, ptr %i_size, align 8, !dbg !5260
  store i64 %16, ptr %__UNIQUE_ID___y336, align 8, !dbg !5260
  %17 = load i64, ptr %__UNIQUE_ID___x335, align 8, !dbg !5260
  %18 = load i64, ptr %__UNIQUE_ID___y336, align 8, !dbg !5260
  %cmp = icmp slt i64 %17, %18, !dbg !5260
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5260

cond.true:                                        ; preds = %do.end19
  %19 = load i64, ptr %__UNIQUE_ID___x335, align 8, !dbg !5260
  br label %cond.end, !dbg !5260

cond.false:                                       ; preds = %do.end19
  %20 = load i64, ptr %__UNIQUE_ID___y336, align 8, !dbg !5260
  br label %cond.end, !dbg !5260

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !5260
  store i64 %cond, ptr %tmp, align 8, !dbg !5260
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y336) #17, !dbg !5261
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x335) #17, !dbg !5261
  %21 = load i64, ptr %tmp, align 8, !dbg !5260
  store i64 %21, ptr %end_off, align 8, !dbg !5262
  %22 = load i64, ptr %start_off, align 8, !dbg !5263
  %23 = load i32, ptr %zisofs_block_shift, align 4, !dbg !5264
  %sh_prom = zext i32 %23 to i64, !dbg !5265
  %shr = ashr i64 %22, %sh_prom, !dbg !5265
  store i64 %shr, ptr %cstart_block, align 8, !dbg !5266
  %24 = load i64, ptr %end_off, align 8, !dbg !5267
  %25 = load i32, ptr %zisofs_block_shift, align 4, !dbg !5268
  %shl24 = shl i32 1, %25, !dbg !5269
  %conv25 = sext i32 %shl24 to i64, !dbg !5270
  %add26 = add i64 %24, %conv25, !dbg !5271
  %sub = sub i64 %add26, 1, !dbg !5272
  %26 = load i32, ptr %zisofs_block_shift, align 4, !dbg !5273
  %sh_prom27 = zext i32 %26 to i64, !dbg !5274
  %shr28 = ashr i64 %sub, %sh_prom27, !dbg !5274
  store i64 %shr28, ptr %cend_block, align 8, !dbg !5275
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5276
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5199, metadata !DIExpression()), !dbg !5276
  %27 = load i64, ptr %start_off, align 8, !dbg !5276
  %28 = load i32, ptr %full_page.addr, align 4, !dbg !5276
  %shl29 = shl i32 %28, 12, !dbg !5276
  %conv30 = sext i32 %shl29 to i64, !dbg !5276
  %sub31 = sub i64 %27, %conv30, !dbg !5276
  %29 = load i64, ptr %cstart_block, align 8, !dbg !5276
  %30 = load i32, ptr %zisofs_block_shift, align 4, !dbg !5276
  %sh_prom32 = zext i32 %30 to i64, !dbg !5276
  %shl33 = shl i64 %29, %sh_prom32, !dbg !5276
  %and = and i64 %shl33, -4096, !dbg !5276
  %cmp34 = icmp ne i64 %sub31, %and, !dbg !5276
  %lnot36 = xor i1 %cmp34, true, !dbg !5276
  %lnot38 = xor i1 %lnot36, true, !dbg !5276
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !5276
  store i32 %lnot.ext39, ptr %__ret_warn_on, align 4, !dbg !5276
  %31 = load i32, ptr %__ret_warn_on, align 4, !dbg !5277
  %tobool40 = icmp ne i32 %31, 0, !dbg !5277
  %lnot41 = xor i1 %tobool40, true, !dbg !5277
  %lnot43 = xor i1 %lnot41, true, !dbg !5277
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !5277
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !5277
  %expval46 = call i64 @llvm.expect.i64(i64 %conv45, i64 0), !dbg !5277
  %tobool47 = icmp ne i64 %expval46, 0, !dbg !5277
  br i1 %tobool47, label %if.then48, label %if.end61, !dbg !5276

if.then48:                                        ; preds = %cond.end
  br label %do.body49, !dbg !5277

do.body49:                                        ; preds = %if.then48
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !5278
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5201, metadata !DIExpression()), !dbg !5278
  store i32 2305, ptr %__flags, align 4, !dbg !5278
  br label %do.body50, !dbg !5278

do.body50:                                        ; preds = %do.body49
  br label %do.cond51, !dbg !5279

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !5279

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !5278

do.body53:                                        ; preds = %do.end52
  %32 = load i32, ptr %__flags, align 4, !dbg !5281
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 237, i32 %32, i64 12) #17, !dbg !5281, !srcloc !5283
  br label %do.cond54, !dbg !5281

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !5281

do.end55:                                         ; preds = %do.cond54
  br label %do.body56, !dbg !5278

do.body56:                                        ; preds = %do.end55
  br label %do.cond57, !dbg !5284

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !5284

do.end58:                                         ; preds = %do.cond57
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !5277
  br label %do.cond59, !dbg !5278

do.cond59:                                        ; preds = %do.end58
  br label %do.end60, !dbg !5278

do.end60:                                         ; preds = %do.cond59
  br label %if.end61, !dbg !5278

if.end61:                                         ; preds = %do.end60, %cond.end
  %33 = load i32, ptr %__ret_warn_on, align 4, !dbg !5276
  %tobool63 = icmp ne i32 %33, 0, !dbg !5276
  %lnot64 = xor i1 %tobool63, true, !dbg !5276
  %lnot66 = xor i1 %lnot64, true, !dbg !5276
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !5276
  %conv68 = sext i32 %lnot.ext67 to i64, !dbg !5276
  %expval69 = call i64 @llvm.expect.i64(i64 %conv68, i64 0), !dbg !5276
  store i64 %expval69, ptr %tmp62, align 8, !dbg !5277
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5286
  %34 = load i64, ptr %tmp62, align 8, !dbg !5276
  %35 = load i32, ptr %header_size, align 4, !dbg !5287
  %conv70 = zext i32 %35 to i64, !dbg !5287
  %36 = load i64, ptr %cstart_block, align 8, !dbg !5288
  %add71 = add i64 %conv70, %36, !dbg !5289
  %shl72 = shl i64 %add71, 2, !dbg !5290
  %conv73 = trunc i64 %shl72 to i32, !dbg !5291
  store i32 %conv73, ptr %blockptr, align 4, !dbg !5292
  %37 = load ptr, ptr %inode.addr, align 8, !dbg !5293
  %38 = load i32, ptr %blockptr, align 4, !dbg !5294
  %39 = load i32, ptr %blkbits, align 4, !dbg !5295
  %shr74 = lshr i32 %38, %39, !dbg !5296
  %conv75 = zext i32 %shr74 to i64, !dbg !5294
  %call76 = call ptr @isofs_bread(ptr noundef %37, i64 noundef %conv75) #18, !dbg !5297
  store ptr %call76, ptr %bh, align 8, !dbg !5298
  %40 = load ptr, ptr %bh, align 8, !dbg !5299
  %tobool77 = icmp ne ptr %40, null, !dbg !5299
  br i1 %tobool77, label %if.end79, label %if.then78, !dbg !5301

if.then78:                                        ; preds = %if.end61
  store i32 -5, ptr %retval, align 4, !dbg !5302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5302

if.end79:                                         ; preds = %if.end61
  %41 = load ptr, ptr %bh, align 8, !dbg !5303
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %41, i32 0, i32 5, !dbg !5303
  %42 = load ptr, ptr %b_data, align 8, !dbg !5303
  %43 = load i32, ptr %blockptr, align 4, !dbg !5303
  %44 = load i32, ptr %blksize, align 4, !dbg !5303
  %sub80 = sub i32 %44, 1, !dbg !5303
  %and81 = and i32 %43, %sub80, !dbg !5303
  %idx.ext = zext i32 %and81 to i64, !dbg !5303
  %add.ptr = getelementptr i8, ptr %42, i64 %idx.ext, !dbg !5303
  %45 = load i32, ptr %add.ptr, align 4, !dbg !5303
  %conv82 = zext i32 %45 to i64, !dbg !5303
  store i64 %conv82, ptr %block_start, align 8, !dbg !5304
  br label %while.cond, !dbg !5305

while.cond:                                       ; preds = %if.end129, %if.end79
  %46 = load i64, ptr %cstart_block, align 8, !dbg !5306
  %47 = load i64, ptr %cend_block, align 8, !dbg !5307
  %cmp83 = icmp ult i64 %46, %47, !dbg !5308
  br i1 %cmp83, label %land.rhs, label %land.end, !dbg !5309

land.rhs:                                         ; preds = %while.cond
  %48 = load i32, ptr %pcount.addr, align 4, !dbg !5310
  %cmp85 = icmp sgt i32 %48, 0, !dbg !5311
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %49 = phi i1 [ false, %while.cond ], [ %cmp85, %land.rhs ], !dbg !5312
  br i1 %49, label %while.body, label %while.end, !dbg !5305

while.body:                                       ; preds = %land.end
  %50 = load i32, ptr %blockptr, align 4, !dbg !5313
  %add87 = add i32 %50, 4, !dbg !5313
  store i32 %add87, ptr %blockptr, align 4, !dbg !5313
  %51 = load i32, ptr %blockptr, align 4, !dbg !5315
  %52 = load i32, ptr %blksize, align 4, !dbg !5317
  %sub88 = sub i32 %52, 1, !dbg !5318
  %and89 = and i32 %51, %sub88, !dbg !5319
  %tobool90 = icmp ne i32 %and89, 0, !dbg !5319
  br i1 %tobool90, label %if.end98, label %if.then91, !dbg !5320

if.then91:                                        ; preds = %while.body
  %53 = load ptr, ptr %bh, align 8, !dbg !5321
  call void @brelse(ptr noundef %53) #18, !dbg !5323
  %54 = load ptr, ptr %inode.addr, align 8, !dbg !5324
  %55 = load i32, ptr %blockptr, align 4, !dbg !5325
  %56 = load i32, ptr %blkbits, align 4, !dbg !5326
  %shr92 = lshr i32 %55, %56, !dbg !5327
  %conv93 = zext i32 %shr92 to i64, !dbg !5325
  %call94 = call ptr @isofs_bread(ptr noundef %54, i64 noundef %conv93) #18, !dbg !5328
  store ptr %call94, ptr %bh, align 8, !dbg !5329
  %57 = load ptr, ptr %bh, align 8, !dbg !5330
  %tobool95 = icmp ne ptr %57, null, !dbg !5330
  br i1 %tobool95, label %if.end97, label %if.then96, !dbg !5332

if.then96:                                        ; preds = %if.then91
  store i32 -5, ptr %retval, align 4, !dbg !5333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5333

if.end97:                                         ; preds = %if.then91
  br label %if.end98, !dbg !5334

if.end98:                                         ; preds = %if.end97, %while.body
  %58 = load ptr, ptr %bh, align 8, !dbg !5335
  %b_data99 = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 5, !dbg !5335
  %59 = load ptr, ptr %b_data99, align 8, !dbg !5335
  %60 = load i32, ptr %blockptr, align 4, !dbg !5335
  %61 = load i32, ptr %blksize, align 4, !dbg !5335
  %sub100 = sub i32 %61, 1, !dbg !5335
  %and101 = and i32 %60, %sub100, !dbg !5335
  %idx.ext102 = zext i32 %and101 to i64, !dbg !5335
  %add.ptr103 = getelementptr i8, ptr %59, i64 %idx.ext102, !dbg !5335
  %62 = load i32, ptr %add.ptr103, align 4, !dbg !5335
  %conv104 = zext i32 %62 to i64, !dbg !5335
  store i64 %conv104, ptr %block_end, align 8, !dbg !5336
  %63 = load i64, ptr %block_start, align 8, !dbg !5337
  %64 = load i64, ptr %block_end, align 8, !dbg !5339
  %cmp105 = icmp sgt i64 %63, %64, !dbg !5340
  br i1 %cmp105, label %if.then107, label %if.end108, !dbg !5341

if.then107:                                       ; preds = %if.end98
  %65 = load ptr, ptr %bh, align 8, !dbg !5342
  call void @brelse(ptr noundef %65) #18, !dbg !5344
  store i32 -5, ptr %retval, align 4, !dbg !5345
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5345

if.end108:                                        ; preds = %if.end98
  store i32 0, ptr %err, align 4, !dbg !5346
  %66 = load ptr, ptr %inode.addr, align 8, !dbg !5347
  %67 = load i64, ptr %block_start, align 8, !dbg !5348
  %68 = load i64, ptr %block_end, align 8, !dbg !5349
  %69 = load i32, ptr %pcount.addr, align 4, !dbg !5350
  %70 = load ptr, ptr %pages.addr, align 8, !dbg !5351
  %71 = load i64, ptr %poffset, align 8, !dbg !5352
  %conv109 = trunc i64 %71 to i32, !dbg !5352
  %call110 = call i64 @zisofs_uncompress_block(ptr noundef %66, i64 noundef %67, i64 noundef %68, i32 noundef %69, ptr noundef %70, i32 noundef %conv109, ptr noundef %err) #18, !dbg !5353
  store i64 %call110, ptr %ret, align 8, !dbg !5354
  %72 = load i64, ptr %ret, align 8, !dbg !5355
  %73 = load i64, ptr %poffset, align 8, !dbg !5356
  %add111 = add i64 %73, %72, !dbg !5356
  store i64 %add111, ptr %poffset, align 8, !dbg !5356
  %74 = load i64, ptr %poffset, align 8, !dbg !5357
  %shr112 = ashr i64 %74, 12, !dbg !5358
  %75 = load ptr, ptr %pages.addr, align 8, !dbg !5359
  %add.ptr113 = getelementptr ptr, ptr %75, i64 %shr112, !dbg !5359
  store ptr %add.ptr113, ptr %pages.addr, align 8, !dbg !5359
  %76 = load i64, ptr %poffset, align 8, !dbg !5360
  %shr114 = ashr i64 %76, 12, !dbg !5361
  %77 = load i32, ptr %pcount.addr, align 4, !dbg !5362
  %conv115 = sext i32 %77 to i64, !dbg !5362
  %sub116 = sub i64 %conv115, %shr114, !dbg !5362
  %conv117 = trunc i64 %sub116 to i32, !dbg !5362
  store i32 %conv117, ptr %pcount.addr, align 4, !dbg !5362
  %78 = load i64, ptr %poffset, align 8, !dbg !5363
  %shr118 = ashr i64 %78, 12, !dbg !5364
  %79 = load i32, ptr %full_page.addr, align 4, !dbg !5365
  %conv119 = sext i32 %79 to i64, !dbg !5365
  %sub120 = sub i64 %conv119, %shr118, !dbg !5365
  %conv121 = trunc i64 %sub120 to i32, !dbg !5365
  store i32 %conv121, ptr %full_page.addr, align 4, !dbg !5365
  %80 = load i64, ptr %poffset, align 8, !dbg !5366
  %and122 = and i64 %80, 4095, !dbg !5366
  store i64 %and122, ptr %poffset, align 8, !dbg !5366
  %81 = load i32, ptr %err, align 4, !dbg !5367
  %tobool123 = icmp ne i32 %81, 0, !dbg !5367
  br i1 %tobool123, label %if.then124, label %if.end129, !dbg !5369

if.then124:                                       ; preds = %if.end108
  %82 = load ptr, ptr %bh, align 8, !dbg !5370
  call void @brelse(ptr noundef %82) #18, !dbg !5372
  %83 = load i32, ptr %full_page.addr, align 4, !dbg !5373
  %cmp125 = icmp slt i32 %83, 0, !dbg !5375
  br i1 %cmp125, label %if.then127, label %if.end128, !dbg !5376

if.then127:                                       ; preds = %if.then124
  store i32 0, ptr %retval, align 4, !dbg !5377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5377

if.end128:                                        ; preds = %if.then124
  %84 = load i32, ptr %err, align 4, !dbg !5378
  store i32 %84, ptr %retval, align 4, !dbg !5379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5379

if.end129:                                        ; preds = %if.end108
  %85 = load i64, ptr %block_end, align 8, !dbg !5380
  store i64 %85, ptr %block_start, align 8, !dbg !5381
  %86 = load i64, ptr %cstart_block, align 8, !dbg !5382
  %inc = add i64 %86, 1, !dbg !5382
  store i64 %inc, ptr %cstart_block, align 8, !dbg !5382
  br label %while.cond, !dbg !5305, !llvm.loop !5383

while.end:                                        ; preds = %land.end
  %87 = load i64, ptr %poffset, align 8, !dbg !5385
  %tobool130 = icmp ne i64 %87, 0, !dbg !5385
  br i1 %tobool130, label %land.lhs.true, label %if.end134, !dbg !5387

land.lhs.true:                                    ; preds = %while.end
  %88 = load ptr, ptr %pages.addr, align 8, !dbg !5388
  %89 = load ptr, ptr %88, align 8, !dbg !5389
  %tobool131 = icmp ne ptr %89, null, !dbg !5389
  br i1 %tobool131, label %if.then132, label %if.end134, !dbg !5390

if.then132:                                       ; preds = %land.lhs.true
  %90 = load ptr, ptr %pages.addr, align 8, !dbg !5391
  %91 = load ptr, ptr %90, align 8, !dbg !5393
  %92 = load i64, ptr %poffset, align 8, !dbg !5394
  %93 = load i64, ptr %poffset, align 8, !dbg !5395
  %sub133 = sub i64 4096, %93, !dbg !5396
  call void @memzero_page(ptr noundef %91, i64 noundef %92, i64 noundef %sub133) #18, !dbg !5397
  %94 = load ptr, ptr %pages.addr, align 8, !dbg !5398
  %95 = load ptr, ptr %94, align 8, !dbg !5399
  call void @SetPageUptodate(ptr noundef %95) #18, !dbg !5400
  br label %if.end134, !dbg !5401

if.end134:                                        ; preds = %if.then132, %land.lhs.true, %while.end
  store i32 0, ptr %retval, align 4, !dbg !5402
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5402

cleanup:                                          ; preds = %if.end134, %if.end128, %if.then127, %if.then107, %if.then96, %if.then78
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 4, ptr %blksize) #17, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 4, ptr %blkbits) #17, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 8, ptr %bh) #17, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 8, ptr %cend_block) #17, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 8, ptr %cstart_block) #17, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 8, ptr %poffset) #17, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 4, ptr %blockptr) #17, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 4, ptr %zisofs_block_shift) #17, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 4, ptr %header_size) #17, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 8, ptr %block_end) #17, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 8, ptr %block_start) #17, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_off) #17, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_off) #17, !dbg !5403
  %96 = load i32, ptr %retval, align 4, !dbg !5403
  ret i32 %96, !dbg !5403
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @flush_dcache_page(ptr noundef %page) #6 align 16 !dbg !5404 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5407, metadata !DIExpression()), !dbg !5408
  ret void, !dbg !5409
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @SetPageError(ptr noundef %page) #7 align 16 !dbg !5410 {
entry:
  %page.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5412, metadata !DIExpression()), !dbg !5413
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5414
  %call = call i64 @_compound_head(ptr noundef %0) #18, !dbg !5414
  %1 = inttoptr i64 %call to ptr, !dbg !5414
  store ptr %1, ptr %tmp1, align 8, !dbg !5414
  %2 = load ptr, ptr %tmp1, align 8, !dbg !5414
  store ptr %2, ptr %tmp, align 8, !dbg !5417
  %3 = load ptr, ptr %tmp, align 8, !dbg !5417
  %flags = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 0, !dbg !5413
  call void @set_bit(i64 noundef 10, ptr noundef %flags) #18, !dbg !5413
  ret void, !dbg !5413
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_page(ptr noundef %page) #6 align 16 !dbg !5418 {
entry:
  %page.addr = alloca ptr, align 8
  %folio = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5420, metadata !DIExpression()), !dbg !5422
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #17, !dbg !5423
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !5421, metadata !DIExpression()), !dbg !5424
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5425
  %call = call i64 @_compound_head(ptr noundef %0) #18, !dbg !5425
  %1 = inttoptr i64 %call to ptr, !dbg !5425
  store ptr %1, ptr %folio, align 8, !dbg !5424
  %2 = load ptr, ptr %folio, align 8, !dbg !5426
  %3 = getelementptr inbounds %struct.folio, ptr %2, i32 0, i32 0, !dbg !5428
  %call1 = call zeroext i1 @put_devmap_managed_page(ptr noundef %3) #18, !dbg !5429
  br i1 %call1, label %if.then, label %if.end, !dbg !5430

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5431

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %folio, align 8, !dbg !5432
  call void @folio_put(ptr noundef %4) #18, !dbg !5433
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5434
  br label %cleanup, !dbg !5434

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #17, !dbg !5434
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5434

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5435 dso_local void @kfree(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_mark_uptodate(ptr noundef %folio) #7 align 16 !dbg !5436 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5438, metadata !DIExpression()), !dbg !5439
  br label %do.body, !dbg !5440

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5441

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5443

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !5441, !srcloc !5445
  br label %do.end2, !dbg !5441

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !5446
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #18, !dbg !5447
  call void @set_bit(i64 noundef 3, ptr noundef %call) #18, !dbg !5448
  ret void, !dbg !5449
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5450 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5456, metadata !DIExpression()), !dbg !5458
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5457, metadata !DIExpression()), !dbg !5459
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5460
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5461
  %div = sdiv i64 %1, 64, !dbg !5461
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5462
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5463
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5464
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5465
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5466
  ret void, !dbg !5467
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_flags(ptr noundef %folio, i32 noundef %n) #0 align 16 !dbg !5468 {
entry:
  %folio.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5472, metadata !DIExpression()), !dbg !5475
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5473, metadata !DIExpression()), !dbg !5476
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #17, !dbg !5477
  call void @llvm.dbg.declare(metadata ptr %page, metadata !5474, metadata !DIExpression()), !dbg !5478
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !5479
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !5480
  store ptr %1, ptr %page, align 8, !dbg !5478
  %2 = load ptr, ptr %page, align 8, !dbg !5481
  %3 = load i32, ptr %n.addr, align 4, !dbg !5482
  %idxprom = zext i32 %3 to i64, !dbg !5481
  %arrayidx = getelementptr %struct.page, ptr %2, i64 %idxprom, !dbg !5481
  %flags = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 0, !dbg !5483
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #17, !dbg !5484
  ret ptr %flags, !dbg !5485
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5486 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5494, metadata !DIExpression()), !dbg !5496
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5495, metadata !DIExpression()), !dbg !5497
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5498
  %1 = load i64, ptr %size.addr, align 8, !dbg !5499
  %conv = trunc i64 %1 to i32, !dbg !5499
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !5500
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5501
  %3 = load i64, ptr %size.addr, align 8, !dbg !5501
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !5501
  ret void, !dbg !5502
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5503 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5506, metadata !DIExpression()), !dbg !5508
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5507, metadata !DIExpression()), !dbg !5509
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5510
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5512
  br i1 %1, label %if.then, label %if.else, !dbg !5513

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5514
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5514
  %shr = ashr i64 %3, 3, !dbg !5514
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5514
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5516
  %and = and i64 %4, 7, !dbg !5516
  %sh_prom = trunc i64 %and to i32, !dbg !5516
  %shl = shl i32 1, %sh_prom, !dbg !5516
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #17, !dbg !5517, !srcloc !5518
  br label %if.end, !dbg !5519

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5520
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5522
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #17, !dbg !5523, !srcloc !5524
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5525
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5526 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5531, metadata !DIExpression()), !dbg !5533
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5532, metadata !DIExpression()), !dbg !5534
  ret i1 true, !dbg !5535
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !5536 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5541, metadata !DIExpression()), !dbg !5544
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5542, metadata !DIExpression()), !dbg !5545
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5543, metadata !DIExpression()), !dbg !5546
  ret void, !dbg !5547
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5548 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5550, metadata !DIExpression()), !dbg !5554
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5551, metadata !DIExpression()), !dbg !5555
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5552, metadata !DIExpression()), !dbg !5556
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #17, !dbg !5557
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5553, metadata !DIExpression()), !dbg !5558
  %0 = load i64, ptr %n.addr, align 8, !dbg !5559
  %1 = load i64, ptr %size.addr, align 8, !dbg !5559
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5559
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5559
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5559
  store i64 %4, ptr %bytes, align 8, !dbg !5559
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !5559
  %lnot = xor i1 %call, true, !dbg !5559
  %lnot1 = xor i1 %lnot, true, !dbg !5559
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5559
  %conv = sext i32 %lnot.ext to i64, !dbg !5559
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5559
  %tobool = icmp ne i64 %expval, 0, !dbg !5559
  br i1 %tobool, label %if.then, label %if.end, !dbg !5561

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5562

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5563
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !5565
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !5566

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !5567
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5568
  br i1 %8, label %if.then2, label %if.end4, !dbg !5569

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !5570
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5571
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #20, !dbg !5572
  store ptr %call3, ptr %retval, align 8, !dbg !5573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5573

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !5574
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5575
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #20, !dbg !5576
  store ptr %call5, ptr %retval, align 8, !dbg !5577
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5577

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #17, !dbg !5578
  %13 = load ptr, ptr %retval, align 8, !dbg !5578
  ret ptr %13, !dbg !5578
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #6 align 16 !dbg !5579 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5584, metadata !DIExpression()), !dbg !5585
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5586, !range !5587, !noundef !831
  %tobool = trunc i8 %0 to i1, !dbg !5586
  %lnot = xor i1 %tobool, true, !dbg !5586
  %lnot1 = xor i1 %lnot, true, !dbg !5586
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5586
  %conv = sext i32 %lnot.ext to i64, !dbg !5586
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5586
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5586
  ret i1 %tobool2, !dbg !5588
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !5589 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5593, metadata !DIExpression()), !dbg !5598
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5594, metadata !DIExpression()), !dbg !5599
  %0 = load i64, ptr %size.addr, align 8, !dbg !5600
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5601
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5602

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5603
  %tobool = icmp ne i64 %2, 0, !dbg !5603
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5604

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5605
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5595, metadata !DIExpression()), !dbg !5606
  %3 = load i64, ptr %size.addr, align 8, !dbg !5607
  %cmp = icmp ugt i64 %3, 8192, !dbg !5609
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5610

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5611
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5612
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !5613
  store ptr %call, ptr %retval, align 8, !dbg !5614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5614

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5615
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !5615
  store i32 %call2, ptr %index, align 4, !dbg !5616
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5617
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5618
  %9 = ptrtoint ptr %8 to i64, !dbg !5618
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !5619
  %idxprom = zext i32 %call3 to i64, !dbg !5620
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5620
  %10 = load i32, ptr %index, align 4, !dbg !5621
  %idxprom4 = zext i32 %10 to i64, !dbg !5620
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5620
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5620
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5622
  %13 = load i64, ptr %size.addr, align 8, !dbg !5623
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !5624
  store ptr %call6, ptr %retval, align 8, !dbg !5625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5625

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5626
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5627
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5628
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !5629
  store ptr %call8, ptr %retval, align 8, !dbg !5630
  br label %return, !dbg !5630

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5631
  ret ptr %16, !dbg !5631
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5632 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5633 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !5634 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5638, metadata !DIExpression()), !dbg !5640
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5639, metadata !DIExpression()), !dbg !5641
  %0 = load i64, ptr %size.addr, align 8, !dbg !5642
  %tobool = icmp ne i64 %0, 0, !dbg !5642
  br i1 %tobool, label %if.end, label %if.then, !dbg !5644

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5645
  br label %return, !dbg !5645

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5646
  %cmp = icmp ule i64 %1, 8, !dbg !5648
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5649

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5650
  br label %return, !dbg !5650

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5651
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5653
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5654

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5655
  %cmp4 = icmp ule i64 %3, 96, !dbg !5656
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5657

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5658
  br label %return, !dbg !5658

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5659
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5661
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5662

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5663
  %cmp9 = icmp ule i64 %5, 192, !dbg !5664
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5665

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5666
  br label %return, !dbg !5666

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5667
  %cmp12 = icmp ule i64 %6, 8, !dbg !5669
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5670

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5671
  br label %return, !dbg !5671

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5672
  %cmp15 = icmp ule i64 %7, 16, !dbg !5674
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5675

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5676
  br label %return, !dbg !5676

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5677
  %cmp18 = icmp ule i64 %8, 32, !dbg !5679
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5680

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5681
  br label %return, !dbg !5681

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5682
  %cmp21 = icmp ule i64 %9, 64, !dbg !5684
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5685

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5686
  br label %return, !dbg !5686

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5687
  %cmp24 = icmp ule i64 %10, 128, !dbg !5689
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5690

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5691
  br label %return, !dbg !5691

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5692
  %cmp27 = icmp ule i64 %11, 256, !dbg !5694
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5695

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5696
  br label %return, !dbg !5696

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5697
  %cmp30 = icmp ule i64 %12, 512, !dbg !5699
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5700

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5701
  br label %return, !dbg !5701

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5702
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5704
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5705

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5706
  br label %return, !dbg !5706

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5707
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5709
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5710

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5711
  br label %return, !dbg !5711

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5712
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5714
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5715

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5716
  br label %return, !dbg !5716

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5717
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5719
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5720

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5721
  br label %return, !dbg !5721

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5722
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5724
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5725

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5726
  br label %return, !dbg !5726

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5727
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5729
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5730

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5731
  br label %return, !dbg !5731

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5732
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5734
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5735

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5736
  br label %return, !dbg !5736

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5737
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5739
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5740

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5741
  br label %return, !dbg !5741

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5742
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5744
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5745

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5746
  br label %return, !dbg !5746

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5747
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5749
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5750

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5751
  br label %return, !dbg !5751

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5752
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5754
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5755

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5756
  br label %return, !dbg !5756

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5757
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5759
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5760

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5761
  br label %return, !dbg !5761

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5762, !range !5587, !noundef !831
  %tobool69 = trunc i8 %25 to i1, !dbg !5762
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5764

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5765

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_256() #22, !dbg !5766, !srcloc !5769
  unreachable, !dbg !5766

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5770

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5771

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5772

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5774

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5772

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #17, !dbg !5776, !srcloc !5778
  br label %do.end75, !dbg !5776

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5772

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5779
  br label %return, !dbg !5779

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5780
  ret i32 %26, !dbg !5780
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5781 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !5784 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5788, metadata !DIExpression()), !dbg !5790
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5789, metadata !DIExpression()), !dbg !5791
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5792
  %and = and i32 %0, 17, !dbg !5792
  %cmp = icmp eq i32 %and, 0, !dbg !5792
  %lnot = xor i1 %cmp, true, !dbg !5792
  %lnot1 = xor i1 %lnot, true, !dbg !5792
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5792
  %conv = sext i32 %lnot.ext to i64, !dbg !5792
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5792
  %tobool = icmp ne i64 %expval, 0, !dbg !5792
  br i1 %tobool, label %if.then, label %if.end, !dbg !5794

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5795
  br label %return, !dbg !5795

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5796
  %and2 = and i32 %1, 1, !dbg !5798
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5798
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5799

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5800
  br label %return, !dbg !5800

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5801
  br label %return, !dbg !5801

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5803
  ret i32 %2, !dbg !5803
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5804 dso_local void @__compiletime_assert_256() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5805 dso_local ptr @pagecache_get_page(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mapping_gfp_mask(ptr noundef %mapping) #6 align 16 !dbg !5808 {
entry:
  %mapping.addr = alloca ptr, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !5812, metadata !DIExpression()), !dbg !5813
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !5814
  %gfp_mask = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 3, !dbg !5815
  %1 = load i32, ptr %gfp_mask, align 8, !dbg !5815
  ret i32 %1, !dbg !5816
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5817 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5819, metadata !DIExpression()), !dbg !5821
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5820, metadata !DIExpression()), !dbg !5822
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5823
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5824
  %div = sdiv i64 %1, 64, !dbg !5824
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5825
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5826
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5827
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5828
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5829
  ret void, !dbg !5830
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_compound_head(ptr noundef %page) #6 align 16 !dbg !5831 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %head = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5835, metadata !DIExpression()), !dbg !5837
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #17, !dbg !5838
  call void @llvm.dbg.declare(metadata ptr %head, metadata !5836, metadata !DIExpression()), !dbg !5839
  br label %do.body, !dbg !5840

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5842

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5842

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5840
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !5840
  %compound_head = getelementptr inbounds %struct.anon.25, ptr %1, i32 0, i32 0, !dbg !5840
  %2 = load volatile i64, ptr %compound_head, align 8, !dbg !5840
  store i64 %2, ptr %tmp, align 8, !dbg !5842
  %3 = load i64, ptr %tmp, align 8, !dbg !5840
  store i64 %3, ptr %head, align 8, !dbg !5839
  %4 = load i64, ptr %head, align 8, !dbg !5844
  %and = and i64 %4, 1, !dbg !5844
  %tobool = icmp ne i64 %and, 0, !dbg !5844
  %lnot = xor i1 %tobool, true, !dbg !5844
  %lnot1 = xor i1 %lnot, true, !dbg !5844
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5844
  %conv = sext i32 %lnot.ext to i64, !dbg !5844
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5844
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5844
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5846

if.then:                                          ; preds = %do.end
  %5 = load i64, ptr %head, align 8, !dbg !5847
  %sub = sub i64 %5, 1, !dbg !5848
  store i64 %sub, ptr %retval, align 8, !dbg !5849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5849

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %page.addr, align 8, !dbg !5850
  %call = call ptr @page_fixed_fake_head(ptr noundef %6) #18, !dbg !5851
  %7 = ptrtoint ptr %call to i64, !dbg !5852
  store i64 %7, ptr %retval, align 8, !dbg !5853
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5853

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #17, !dbg !5854
  %8 = load i64, ptr %retval, align 8, !dbg !5854
  ret i64 %8, !dbg !5854
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5855 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5857, metadata !DIExpression()), !dbg !5859
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5858, metadata !DIExpression()), !dbg !5860
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5861
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5863
  br i1 %1, label %if.then, label %if.else, !dbg !5864

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5865
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5865
  %shr = ashr i64 %3, 3, !dbg !5865
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5865
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5867
  %and = and i64 %4, 7, !dbg !5867
  %sh_prom = trunc i64 %and to i32, !dbg !5867
  %shl = shl i32 1, %sh_prom, !dbg !5867
  %not = xor i32 %shl, -1, !dbg !5868
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #17, !dbg !5869, !srcloc !5870
  br label %if.end, !dbg !5871

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5872
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5874
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #17, !dbg !5875, !srcloc !5876
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5877
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @page_fixed_fake_head(ptr noundef %page) #7 align 16 !dbg !5878 {
entry:
  %retval = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %head = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5882, metadata !DIExpression()), !dbg !5889
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #17, !dbg !5890
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !5883, metadata !DIExpression()), !dbg !5890
  %call = call zeroext i1 @arch_static_branch(ptr noundef @hugetlb_optimize_vmemmap_key, i1 noundef zeroext false) #18, !dbg !5891
  %frombool = zext i1 %call to i8, !dbg !5891
  store i8 %frombool, ptr %branch, align 1, !dbg !5891
  %0 = load i8, ptr %branch, align 1, !dbg !5890, !range !5587, !noundef !831
  %tobool = trunc i8 %0 to i1, !dbg !5890
  %lnot = xor i1 %tobool, true, !dbg !5890
  %lnot1 = xor i1 %lnot, true, !dbg !5890
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5890
  %conv = sext i32 %lnot.ext to i64, !dbg !5890
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5890
  store i64 %expval, ptr %tmp, align 8, !dbg !5894
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #17, !dbg !5895
  %1 = load i64, ptr %tmp, align 8, !dbg !5890
  %tobool2 = icmp ne i64 %1, 0, !dbg !5895
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5896

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !5897
  store ptr %2, ptr %retval, align 8, !dbg !5898
  br label %return, !dbg !5898

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !5899
  %4 = ptrtoint ptr %3 to i64, !dbg !5899
  %and = and i64 %4, 4095, !dbg !5899
  %cmp = icmp eq i64 %and, 0, !dbg !5899
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !5900

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %page.addr, align 8, !dbg !5901
  %flags = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 0, !dbg !5901
  %6 = ptrtoint ptr %flags to i64, !dbg !5901
  %cmp4 = icmp ne i64 %6, 0, !dbg !5901
  %conv5 = zext i1 %cmp4 to i32, !dbg !5901
  %7 = call i1 @llvm.is.constant.i32(i32 %conv5), !dbg !5901
  br i1 %7, label %land.lhs.true6, label %cond.false, !dbg !5901

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %page.addr, align 8, !dbg !5901
  %flags7 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 0, !dbg !5901
  %9 = ptrtoint ptr %flags7 to i64, !dbg !5901
  %cmp8 = icmp ne i64 %9, 0, !dbg !5901
  br i1 %cmp8, label %land.lhs.true10, label %cond.false, !dbg !5901

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %10 = load ptr, ptr %page.addr, align 8, !dbg !5901
  %flags11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 0, !dbg !5901
  %11 = load i64, ptr %flags11, align 16, !dbg !5901
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !5901
  br i1 %12, label %cond.true, label %cond.false, !dbg !5902

cond.true:                                        ; preds = %land.lhs.true10
  %13 = load ptr, ptr %page.addr, align 8, !dbg !5901
  %flags12 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 0, !dbg !5901
  %call13 = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags12) #18, !dbg !5901
  br i1 %call13, label %if.then18, label %if.end31, !dbg !5901

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true
  %14 = load ptr, ptr %page.addr, align 8, !dbg !5901
  %flags15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 0, !dbg !5901
  %call16 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags15) #18, !dbg !5901
  br i1 %call16, label %if.then18, label %if.end31, !dbg !5902

if.then18:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #17, !dbg !5903
  call void @llvm.dbg.declare(metadata ptr %head, metadata !5886, metadata !DIExpression()), !dbg !5904
  br label %do.body, !dbg !5905

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !5907

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5907

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %page.addr, align 8, !dbg !5905
  %arrayidx = getelementptr %struct.page, ptr %15, i64 1, !dbg !5905
  %16 = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 1, !dbg !5905
  %compound_head = getelementptr inbounds %struct.anon.25, ptr %16, i32 0, i32 0, !dbg !5905
  %17 = load volatile i64, ptr %compound_head, align 8, !dbg !5905
  store i64 %17, ptr %tmp19, align 8, !dbg !5907
  %18 = load i64, ptr %tmp19, align 8, !dbg !5905
  store i64 %18, ptr %head, align 8, !dbg !5904
  %19 = load i64, ptr %head, align 8, !dbg !5909
  %and20 = and i64 %19, 1, !dbg !5909
  %tobool21 = icmp ne i64 %and20, 0, !dbg !5909
  %lnot22 = xor i1 %tobool21, true, !dbg !5909
  %lnot24 = xor i1 %lnot22, true, !dbg !5909
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !5909
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !5909
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 1), !dbg !5909
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !5909
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5911

if.then29:                                        ; preds = %do.end
  %20 = load i64, ptr %head, align 8, !dbg !5912
  %sub = sub i64 %20, 1, !dbg !5913
  %21 = inttoptr i64 %sub to ptr, !dbg !5914
  store ptr %21, ptr %retval, align 8, !dbg !5915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5915

if.end30:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5916
  br label %cleanup, !dbg !5916

cleanup:                                          ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #17, !dbg !5916
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31, !dbg !5917

if.end31:                                         ; preds = %cleanup.cont, %cond.false, %cond.true, %if.end
  %22 = load ptr, ptr %page.addr, align 8, !dbg !5918
  store ptr %22, ptr %retval, align 8, !dbg !5919
  br label %return, !dbg !5919

return:                                           ; preds = %if.end31, %cleanup, %if.then
  %23 = load ptr, ptr %retval, align 8, !dbg !5920
  ret ptr %23, !dbg !5920

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #7 align 16 !dbg !5921 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5938, metadata !DIExpression()), !dbg !5941
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5939, metadata !DIExpression()), !dbg !5942
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5943
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5944, !range !5587, !noundef !831
  %tobool = trunc i8 %1 to i1, !dbg !5944
  %conv = zext i1 %tobool to i32, !dbg !5944
  %or = or i32 2, %conv, !dbg !5945
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #17
          to label %asm.fallthrough [label %l_yes], !dbg !5946, !srcloc !5947

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5948
  br label %return, !dbg !5948

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5940), !dbg !5949
  store i1 true, ptr %retval, align 1, !dbg !5950
  br label %return, !dbg !5950

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5951
  ret i1 %2, !dbg !5951
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5952 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5957, metadata !DIExpression()), !dbg !5962
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5958, metadata !DIExpression()), !dbg !5963
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !5964
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5959, metadata !DIExpression()), !dbg !5965
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5966
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5967
  %div = udiv i64 %1, 64, !dbg !5967
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5968
  store ptr %add.ptr, ptr %p, align 8, !dbg !5965
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !5969
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5960, metadata !DIExpression()), !dbg !5970
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5971
  %rem = urem i64 %2, 64, !dbg !5971
  %shl = shl i64 1, %rem, !dbg !5971
  store i64 %shl, ptr %mask, align 8, !dbg !5970
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !5972
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5961, metadata !DIExpression()), !dbg !5973
  %3 = load ptr, ptr %p, align 8, !dbg !5974
  %4 = load i64, ptr %3, align 8, !dbg !5975
  store i64 %4, ptr %val, align 8, !dbg !5973
  %5 = load i64, ptr %val, align 8, !dbg !5976
  %6 = load i64, ptr %mask, align 8, !dbg !5977
  %and = and i64 %5, %6, !dbg !5978
  %tobool = icmp ne i64 %and, 0, !dbg !5979
  %lnot = xor i1 %tobool, true, !dbg !5979
  %lnot1 = xor i1 %lnot, true, !dbg !5980
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !5981
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !5981
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !5981
  ret i1 %lnot1, !dbg !5982
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5983 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5986, metadata !DIExpression()), !dbg !5988
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5987, metadata !DIExpression()), !dbg !5989
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5990
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5991
  %div = udiv i64 %1, 64, !dbg !5991
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5992
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5993
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5994
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5995
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5996
  ret i1 %call, !dbg !5997
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5998 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6000, metadata !DIExpression()), !dbg !6002
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6001, metadata !DIExpression()), !dbg !6003
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6004
  %1 = load i64, ptr %size.addr, align 8, !dbg !6005
  %conv = trunc i64 %1 to i32, !dbg !6005
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !6006
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6007
  %3 = load i64, ptr %size.addr, align 8, !dbg !6007
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !6007
  ret void, !dbg !6008
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6009 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6011, metadata !DIExpression()), !dbg !6013
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6012, metadata !DIExpression()), !dbg !6014
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6015
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6016
  br i1 %1, label %cond.true, label %cond.false, !dbg !6016

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6017
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6018
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !6019
  %conv = zext i1 %call to i32, !dbg !6019
  br label %cond.end, !dbg !6016

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6020
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6021
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !6022
  %conv2 = zext i1 %call1 to i32, !dbg !6022
  br label %cond.end, !dbg !6016

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6016
  %tobool = icmp ne i32 %cond, 0, !dbg !6016
  ret i1 %tobool, !dbg !6023
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !6024 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6026, metadata !DIExpression()), !dbg !6028
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6027, metadata !DIExpression()), !dbg !6029
  ret i1 true, !dbg !6030
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6031 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6035, metadata !DIExpression()), !dbg !6037
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6036, metadata !DIExpression()), !dbg !6038
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6039
  %and = and i64 %0, 63, !dbg !6040
  %shl = shl i64 1, %and, !dbg !6041
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6042
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6043
  %shr = ashr i64 %2, 6, !dbg !6044
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6042
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6042
  %and1 = and i64 %shl, %3, !dbg !6045
  %cmp = icmp ne i64 %and1, 0, !dbg !6046
  ret i1 %cmp, !dbg !6047
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6048 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6050, metadata !DIExpression()), !dbg !6053
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6051, metadata !DIExpression()), !dbg !6054
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !6055
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6052, metadata !DIExpression()), !dbg !6056
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6057
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6058
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !6059, !srcloc !6060
  %3 = icmp ult i8 %2, 2, !dbg !6059
  call void @llvm.assume(i1 %3), !dbg !6059
  store i8 %2, ptr %oldbit, align 1, !dbg !6059
  %4 = load i8, ptr %oldbit, align 1, !dbg !6061, !range !5587, !noundef !831
  %tobool = trunc i8 %4 to i1, !dbg !6061
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !6062
  ret i1 %tobool, !dbg !6063
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @page_offset(ptr noundef %page) #6 align 16 !dbg !6064 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6068, metadata !DIExpression()), !dbg !6069
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6070
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !6071
  %2 = getelementptr inbounds %struct.anon.19, ptr %1, i32 0, i32 2, !dbg !6071
  %3 = load i64, ptr %2, align 8, !dbg !6071
  %shl = shl i64 %3, 12, !dbg !6072
  ret i64 %shl, !dbg !6073
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6074 dso_local ptr @isofs_bread(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @brelse(ptr noundef %bh) #6 align 16 !dbg !6077 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !6081, metadata !DIExpression()), !dbg !6082
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !6083
  %tobool = icmp ne ptr %0, null, !dbg !6083
  br i1 %tobool, label %if.then, label %if.end, !dbg !6085

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bh.addr, align 8, !dbg !6086
  call void @__brelse(ptr noundef %1) #18, !dbg !6087
  br label %if.end, !dbg !6087

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6088
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @zisofs_uncompress_block(ptr noundef %inode, i64 noundef %block_start, i64 noundef %block_end, i32 noundef %pcount, ptr noundef %pages, i32 noundef %poffset, ptr noundef %errp) #0 align 16 !dbg !6089 {
entry:
  %retval = alloca i64, align 8
  %inode.addr = alloca ptr, align 8
  %block_start.addr = alloca i64, align 8
  %block_end.addr = alloca i64, align 8
  %pcount.addr = alloca i32, align 4
  %pages.addr = alloca ptr, align 8
  %poffset.addr = alloca i32, align 4
  %errp.addr = alloca ptr, align 8
  %zisofs_block_shift = alloca i32, align 4
  %bufsize = alloca i32, align 4
  %bufshift = alloca i32, align 4
  %bufmask = alloca i32, align 4
  %i = alloca i32, align 4
  %block_size = alloca i32, align 4
  %stream = alloca %struct.z_stream_s, align 8
  %zerr = alloca i32, align 4
  %needblocks = alloca i32, align 4
  %haveblocks = alloca i32, align 4
  %blocknum = alloca i64, align 8
  %bhs = alloca ptr, align 8
  %curbh = alloca i32, align 4
  %curpage = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x331 = alloca i32, align 4
  %__UNIQUE_ID___y332 = alloca i32, align 4
  %tmp103 = alloca i32, align 4
  %tmp144 = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6093, metadata !DIExpression()), !dbg !6149
  store i64 %block_start, ptr %block_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block_start.addr, metadata !6094, metadata !DIExpression()), !dbg !6150
  store i64 %block_end, ptr %block_end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block_end.addr, metadata !6095, metadata !DIExpression()), !dbg !6151
  store i32 %pcount, ptr %pcount.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pcount.addr, metadata !6096, metadata !DIExpression()), !dbg !6152
  store ptr %pages, ptr %pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pages.addr, metadata !6097, metadata !DIExpression()), !dbg !6153
  store i32 %poffset, ptr %poffset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %poffset.addr, metadata !6098, metadata !DIExpression()), !dbg !6154
  store ptr %errp, ptr %errp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %errp.addr, metadata !6099, metadata !DIExpression()), !dbg !6155
  call void @llvm.lifetime.start.p0(i64 4, ptr %zisofs_block_shift) #17, !dbg !6156
  call void @llvm.dbg.declare(metadata ptr %zisofs_block_shift, metadata !6100, metadata !DIExpression()), !dbg !6157
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6158
  %call = call ptr @ISOFS_I(ptr noundef %0) #18, !dbg !6159
  %i_format_parm = getelementptr inbounds %struct.iso_inode_info, ptr %call, i32 0, i32 4, !dbg !6160
  %arrayidx = getelementptr [3 x i8], ptr %i_format_parm, i64 0, i64 1, !dbg !6159
  %1 = load i8, ptr %arrayidx, align 1, !dbg !6159
  %conv = zext i8 %1 to i32, !dbg !6159
  store i32 %conv, ptr %zisofs_block_shift, align 4, !dbg !6157
  call void @llvm.lifetime.start.p0(i64 4, ptr %bufsize) #17, !dbg !6161
  call void @llvm.dbg.declare(metadata ptr %bufsize, metadata !6101, metadata !DIExpression()), !dbg !6162
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6163
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 9, !dbg !6163
  %3 = load ptr, ptr %i_sb, align 8, !dbg !6163
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3, !dbg !6163
  %4 = load i64, ptr %s_blocksize, align 8, !dbg !6163
  %conv1 = trunc i64 %4 to i32, !dbg !6163
  store i32 %conv1, ptr %bufsize, align 4, !dbg !6162
  call void @llvm.lifetime.start.p0(i64 4, ptr %bufshift) #17, !dbg !6164
  call void @llvm.dbg.declare(metadata ptr %bufshift, metadata !6102, metadata !DIExpression()), !dbg !6165
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !6166
  %i_sb2 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9, !dbg !6166
  %6 = load ptr, ptr %i_sb2, align 8, !dbg !6166
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 2, !dbg !6166
  %7 = load i8, ptr %s_blocksize_bits, align 4, !dbg !6166
  %conv3 = zext i8 %7 to i32, !dbg !6166
  store i32 %conv3, ptr %bufshift, align 4, !dbg !6165
  call void @llvm.lifetime.start.p0(i64 4, ptr %bufmask) #17, !dbg !6167
  call void @llvm.dbg.declare(metadata ptr %bufmask, metadata !6103, metadata !DIExpression()), !dbg !6168
  %8 = load i32, ptr %bufsize, align 4, !dbg !6169
  %sub = sub i32 %8, 1, !dbg !6170
  store i32 %sub, ptr %bufmask, align 4, !dbg !6168
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !6171
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6104, metadata !DIExpression()), !dbg !6172
  call void @llvm.lifetime.start.p0(i64 4, ptr %block_size) #17, !dbg !6171
  call void @llvm.dbg.declare(metadata ptr %block_size, metadata !6105, metadata !DIExpression()), !dbg !6173
  %9 = load i64, ptr %block_end.addr, align 8, !dbg !6174
  %10 = load i64, ptr %block_start.addr, align 8, !dbg !6175
  %sub4 = sub i64 %9, %10, !dbg !6176
  %conv5 = trunc i64 %sub4 to i32, !dbg !6174
  store i32 %conv5, ptr %block_size, align 4, !dbg !6173
  call void @llvm.lifetime.start.p0(i64 96, ptr %stream) #17, !dbg !6177
  call void @llvm.dbg.declare(metadata ptr %stream, metadata !6106, metadata !DIExpression()), !dbg !6178
  call void @llvm.memset.p0.i64(ptr align 8 %stream, i8 0, i64 96, i1 false), !dbg !6178
  call void @llvm.lifetime.start.p0(i64 4, ptr %zerr) #17, !dbg !6179
  call void @llvm.dbg.declare(metadata ptr %zerr, metadata !6132, metadata !DIExpression()), !dbg !6180
  call void @llvm.lifetime.start.p0(i64 4, ptr %needblocks) #17, !dbg !6181
  call void @llvm.dbg.declare(metadata ptr %needblocks, metadata !6133, metadata !DIExpression()), !dbg !6182
  %11 = load i32, ptr %block_size, align 4, !dbg !6183
  %conv6 = sext i32 %11 to i64, !dbg !6183
  %12 = load i64, ptr %block_start.addr, align 8, !dbg !6184
  %13 = load i32, ptr %bufmask, align 4, !dbg !6185
  %conv7 = zext i32 %13 to i64, !dbg !6185
  %and = and i64 %12, %conv7, !dbg !6186
  %add = add i64 %conv6, %and, !dbg !6187
  %14 = load i32, ptr %bufmask, align 4, !dbg !6188
  %conv8 = zext i32 %14 to i64, !dbg !6188
  %add9 = add i64 %add, %conv8, !dbg !6189
  %15 = load i32, ptr %bufshift, align 4, !dbg !6190
  %sh_prom = zext i32 %15 to i64, !dbg !6191
  %shr = ashr i64 %add9, %sh_prom, !dbg !6191
  %conv10 = trunc i64 %shr to i32, !dbg !6192
  store i32 %conv10, ptr %needblocks, align 4, !dbg !6182
  call void @llvm.lifetime.start.p0(i64 4, ptr %haveblocks) #17, !dbg !6193
  call void @llvm.dbg.declare(metadata ptr %haveblocks, metadata !6134, metadata !DIExpression()), !dbg !6194
  call void @llvm.lifetime.start.p0(i64 8, ptr %blocknum) #17, !dbg !6195
  call void @llvm.dbg.declare(metadata ptr %blocknum, metadata !6135, metadata !DIExpression()), !dbg !6196
  call void @llvm.lifetime.start.p0(i64 8, ptr %bhs) #17, !dbg !6197
  call void @llvm.dbg.declare(metadata ptr %bhs, metadata !6136, metadata !DIExpression()), !dbg !6198
  call void @llvm.lifetime.start.p0(i64 4, ptr %curbh) #17, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %curbh, metadata !6138, metadata !DIExpression()), !dbg !6200
  call void @llvm.lifetime.start.p0(i64 4, ptr %curpage) #17, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %curpage, metadata !6139, metadata !DIExpression()), !dbg !6201
  %16 = load i32, ptr %block_size, align 4, !dbg !6202
  %conv11 = sext i32 %16 to i64, !dbg !6202
  %17 = load i32, ptr %zisofs_block_shift, align 4, !dbg !6204
  %sh_prom12 = zext i32 %17 to i64, !dbg !6205
  %shl = shl i64 1, %sh_prom12, !dbg !6205
  %call13 = call i64 @deflateBound(i64 noundef %shl) #18, !dbg !6206
  %cmp = icmp ugt i64 %conv11, %call13, !dbg !6207
  br i1 %cmp, label %if.then, label %if.end, !dbg !6208

if.then:                                          ; preds = %entry
  %18 = load ptr, ptr %errp.addr, align 8, !dbg !6209
  store i32 -5, ptr %18, align 4, !dbg !6211
  store i64 0, ptr %retval, align 8, !dbg !6212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6212

if.end:                                           ; preds = %entry
  %19 = load i32, ptr %block_size, align 4, !dbg !6213
  %cmp15 = icmp eq i32 %19, 0, !dbg !6215
  br i1 %cmp15, label %if.then17, label %if.end29, !dbg !6216

if.then17:                                        ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !6217
  br label %for.cond, !dbg !6220

for.cond:                                         ; preds = %for.inc, %if.then17
  %20 = load i32, ptr %i, align 4, !dbg !6221
  %21 = load i32, ptr %pcount.addr, align 4, !dbg !6223
  %cmp18 = icmp slt i32 %20, %21, !dbg !6224
  br i1 %cmp18, label %for.body, label %for.end, !dbg !6225

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %pages.addr, align 8, !dbg !6226
  %23 = load i32, ptr %i, align 4, !dbg !6229
  %idxprom = sext i32 %23 to i64, !dbg !6226
  %arrayidx20 = getelementptr ptr, ptr %22, i64 %idxprom, !dbg !6226
  %24 = load ptr, ptr %arrayidx20, align 8, !dbg !6226
  %tobool = icmp ne ptr %24, null, !dbg !6226
  br i1 %tobool, label %if.end22, label %if.then21, !dbg !6230

if.then21:                                        ; preds = %for.body
  br label %for.inc, !dbg !6231

if.end22:                                         ; preds = %for.body
  %25 = load ptr, ptr %pages.addr, align 8, !dbg !6232
  %26 = load i32, ptr %i, align 4, !dbg !6233
  %idxprom23 = sext i32 %26 to i64, !dbg !6232
  %arrayidx24 = getelementptr ptr, ptr %25, i64 %idxprom23, !dbg !6232
  %27 = load ptr, ptr %arrayidx24, align 8, !dbg !6232
  call void @memzero_page(ptr noundef %27, i64 noundef 0, i64 noundef 4096) #18, !dbg !6234
  %28 = load ptr, ptr %pages.addr, align 8, !dbg !6235
  %29 = load i32, ptr %i, align 4, !dbg !6236
  %idxprom25 = sext i32 %29 to i64, !dbg !6235
  %arrayidx26 = getelementptr ptr, ptr %28, i64 %idxprom25, !dbg !6235
  %30 = load ptr, ptr %arrayidx26, align 8, !dbg !6235
  call void @SetPageUptodate(ptr noundef %30) #18, !dbg !6237
  br label %for.inc, !dbg !6238

for.inc:                                          ; preds = %if.end22, %if.then21
  %31 = load i32, ptr %i, align 4, !dbg !6239
  %inc = add i32 %31, 1, !dbg !6239
  store i32 %inc, ptr %i, align 4, !dbg !6239
  br label %for.cond, !dbg !6240, !llvm.loop !6241

for.end:                                          ; preds = %for.cond
  %32 = load i32, ptr %pcount.addr, align 4, !dbg !6243
  %conv27 = sext i32 %32 to i64, !dbg !6244
  %shl28 = shl i64 %conv27, 12, !dbg !6245
  store i64 %shl28, ptr %retval, align 8, !dbg !6246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6246

if.end29:                                         ; preds = %if.end
  %33 = load i64, ptr %block_start.addr, align 8, !dbg !6247
  %34 = load i32, ptr %bufshift, align 4, !dbg !6248
  %sh_prom30 = zext i32 %34 to i64, !dbg !6249
  %shr31 = ashr i64 %33, %sh_prom30, !dbg !6249
  store i64 %shr31, ptr %blocknum, align 8, !dbg !6250
  %35 = load i32, ptr %needblocks, align 4, !dbg !6251
  %add32 = add i32 %35, 1, !dbg !6252
  %conv33 = sext i32 %add32 to i64, !dbg !6251
  %call34 = call noalias ptr @kcalloc(i64 noundef %conv33, i64 noundef 8, i32 noundef 3264) #19, !dbg !6253
  store ptr %call34, ptr %bhs, align 8, !dbg !6254
  %36 = load ptr, ptr %bhs, align 8, !dbg !6255
  %tobool35 = icmp ne ptr %36, null, !dbg !6255
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !6257

if.then36:                                        ; preds = %if.end29
  %37 = load ptr, ptr %errp.addr, align 8, !dbg !6258
  store i32 -12, ptr %37, align 4, !dbg !6260
  store i64 0, ptr %retval, align 8, !dbg !6261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6261

if.end37:                                         ; preds = %if.end29
  %38 = load ptr, ptr %inode.addr, align 8, !dbg !6262
  %39 = load i64, ptr %blocknum, align 8, !dbg !6263
  %40 = load ptr, ptr %bhs, align 8, !dbg !6264
  %41 = load i32, ptr %needblocks, align 4, !dbg !6265
  %conv38 = sext i32 %41 to i64, !dbg !6265
  %call39 = call i32 @isofs_get_blocks(ptr noundef %38, i64 noundef %39, ptr noundef %40, i64 noundef %conv38) #18, !dbg !6266
  store i32 %call39, ptr %haveblocks, align 4, !dbg !6267
  %42 = load i32, ptr %haveblocks, align 4, !dbg !6268
  %43 = load ptr, ptr %bhs, align 8, !dbg !6269
  call void @bh_read_batch(i32 noundef %42, ptr noundef %43) #18, !dbg !6270
  store i32 0, ptr %curbh, align 4, !dbg !6271
  store i32 0, ptr %curpage, align 4, !dbg !6272
  %44 = load ptr, ptr %bhs, align 8, !dbg !6273
  %arrayidx40 = getelementptr ptr, ptr %44, i64 0, !dbg !6273
  %45 = load ptr, ptr %arrayidx40, align 8, !dbg !6273
  %tobool41 = icmp ne ptr %45, null, !dbg !6273
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !6275

if.then42:                                        ; preds = %if.end37
  br label %b_eio, !dbg !6276

if.end43:                                         ; preds = %if.end37
  %46 = load ptr, ptr %bhs, align 8, !dbg !6277
  %arrayidx44 = getelementptr ptr, ptr %46, i64 0, !dbg !6277
  %47 = load ptr, ptr %arrayidx44, align 8, !dbg !6277
  call void @wait_on_buffer(ptr noundef %47) #18, !dbg !6278
  %48 = load ptr, ptr %bhs, align 8, !dbg !6279
  %arrayidx45 = getelementptr ptr, ptr %48, i64 0, !dbg !6279
  %49 = load ptr, ptr %arrayidx45, align 8, !dbg !6279
  %call46 = call i32 @buffer_uptodate(ptr noundef %49) #18, !dbg !6281
  %tobool47 = icmp ne i32 %call46, 0, !dbg !6281
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !6282

if.then48:                                        ; preds = %if.end43
  %50 = load ptr, ptr %errp.addr, align 8, !dbg !6283
  store i32 -5, ptr %50, align 4, !dbg !6285
  br label %b_eio, !dbg !6286

if.end49:                                         ; preds = %if.end43
  %51 = load ptr, ptr @zisofs_zlib_workspace, align 8, !dbg !6287
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 8, !dbg !6288
  store ptr %51, ptr %workspace, align 8, !dbg !6289
  call void @mutex_lock(ptr noundef @zisofs_zlib_lock) #18, !dbg !6290
  %call50 = call i32 @zlib_inflateInit2(ptr noundef %stream, i32 noundef 15) #18, !dbg !6291
  store i32 %call50, ptr %zerr, align 4, !dbg !6292
  %52 = load i32, ptr %zerr, align 4, !dbg !6293
  %cmp51 = icmp ne i32 %52, 0, !dbg !6295
  br i1 %cmp51, label %if.then53, label %if.end59, !dbg !6296

if.then53:                                        ; preds = %if.end49
  %53 = load i32, ptr %zerr, align 4, !dbg !6297
  %cmp54 = icmp eq i32 %53, -4, !dbg !6300
  br i1 %cmp54, label %if.then56, label %if.else, !dbg !6301

if.then56:                                        ; preds = %if.then53
  %54 = load ptr, ptr %errp.addr, align 8, !dbg !6302
  store i32 -12, ptr %54, align 4, !dbg !6303
  br label %if.end57, !dbg !6304

if.else:                                          ; preds = %if.then53
  %55 = load ptr, ptr %errp.addr, align 8, !dbg !6305
  store i32 -5, ptr %55, align 4, !dbg !6306
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then56
  br label %do.body, !dbg !6307

do.body:                                          ; preds = %if.end57
  br label %do.cond, !dbg !6309

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6309

do.end:                                           ; preds = %do.cond
  %56 = load i32, ptr %zerr, align 4, !dbg !6307
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %56) #23, !dbg !6307
  store i32 %call58, ptr %tmp, align 4, !dbg !6309
  %57 = load i32, ptr %tmp, align 4, !dbg !6307
  br label %z_eio, !dbg !6311

if.end59:                                         ; preds = %if.end49
  br label %while.cond, !dbg !6312

while.cond:                                       ; preds = %if.end181, %if.end59
  %58 = load i32, ptr %curpage, align 4, !dbg !6313
  %59 = load i32, ptr %pcount.addr, align 4, !dbg !6314
  %cmp60 = icmp slt i32 %58, %59, !dbg !6315
  br i1 %cmp60, label %land.lhs.true, label %land.end, !dbg !6316

land.lhs.true:                                    ; preds = %while.cond
  %60 = load i32, ptr %curbh, align 4, !dbg !6317
  %61 = load i32, ptr %haveblocks, align 4, !dbg !6318
  %cmp62 = icmp slt i32 %60, %61, !dbg !6319
  br i1 %cmp62, label %land.rhs, label %land.end, !dbg !6320

land.rhs:                                         ; preds = %land.lhs.true
  %62 = load i32, ptr %zerr, align 4, !dbg !6321
  %cmp64 = icmp ne i32 %62, 1, !dbg !6322
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %63 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp64, %land.rhs ], !dbg !6323
  br i1 %63, label %while.body, label %while.end182, !dbg !6312

while.body:                                       ; preds = %land.end
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 4, !dbg !6324
  %64 = load i64, ptr %avail_out, align 8, !dbg !6324
  %tobool66 = icmp ne i64 %64, 0, !dbg !6326
  br i1 %tobool66, label %if.end82, label %if.then67, !dbg !6327

if.then67:                                        ; preds = %while.body
  %65 = load ptr, ptr %pages.addr, align 8, !dbg !6328
  %66 = load i32, ptr %curpage, align 4, !dbg !6331
  %idxprom68 = sext i32 %66 to i64, !dbg !6328
  %arrayidx69 = getelementptr ptr, ptr %65, i64 %idxprom68, !dbg !6328
  %67 = load ptr, ptr %arrayidx69, align 8, !dbg !6328
  %tobool70 = icmp ne ptr %67, null, !dbg !6328
  br i1 %tobool70, label %if.then71, label %if.else78, !dbg !6332

if.then71:                                        ; preds = %if.then67
  %68 = load ptr, ptr %pages.addr, align 8, !dbg !6333
  %69 = load i32, ptr %curpage, align 4, !dbg !6335
  %idxprom72 = sext i32 %69 to i64, !dbg !6333
  %arrayidx73 = getelementptr ptr, ptr %68, i64 %idxprom72, !dbg !6333
  %70 = load ptr, ptr %arrayidx73, align 8, !dbg !6333
  %call74 = call ptr @kmap_local_page(ptr noundef %70) #18, !dbg !6336
  %71 = load i32, ptr %poffset.addr, align 4, !dbg !6337
  %idx.ext = zext i32 %71 to i64, !dbg !6338
  %add.ptr = getelementptr i8, ptr %call74, i64 %idx.ext, !dbg !6338
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 3, !dbg !6339
  store ptr %add.ptr, ptr %next_out, align 8, !dbg !6340
  %72 = load i32, ptr %poffset.addr, align 4, !dbg !6341
  %conv75 = zext i32 %72 to i64, !dbg !6341
  %sub76 = sub i64 4096, %conv75, !dbg !6342
  %avail_out77 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 4, !dbg !6343
  store i64 %sub76, ptr %avail_out77, align 8, !dbg !6344
  store i32 0, ptr %poffset.addr, align 4, !dbg !6345
  br label %if.end81, !dbg !6346

if.else78:                                        ; preds = %if.then67
  %next_out79 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 3, !dbg !6347
  store ptr @zisofs_sink_page, ptr %next_out79, align 8, !dbg !6349
  %avail_out80 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 4, !dbg !6350
  store i64 4096, ptr %avail_out80, align 8, !dbg !6351
  br label %if.end81

if.end81:                                         ; preds = %if.else78, %if.then71
  br label %if.end82, !dbg !6352

if.end82:                                         ; preds = %if.end81, %while.body
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 1, !dbg !6353
  %73 = load i64, ptr %avail_in, align 8, !dbg !6353
  %tobool83 = icmp ne i64 %73, 0, !dbg !6354
  br i1 %tobool83, label %if.end112, label %if.then84, !dbg !6355

if.then84:                                        ; preds = %if.end82
  %74 = load ptr, ptr %bhs, align 8, !dbg !6356
  %75 = load i32, ptr %curbh, align 4, !dbg !6357
  %idxprom85 = sext i32 %75 to i64, !dbg !6356
  %arrayidx86 = getelementptr ptr, ptr %74, i64 %idxprom85, !dbg !6356
  %76 = load ptr, ptr %arrayidx86, align 8, !dbg !6356
  call void @wait_on_buffer(ptr noundef %76) #18, !dbg !6358
  %77 = load ptr, ptr %bhs, align 8, !dbg !6359
  %78 = load i32, ptr %curbh, align 4, !dbg !6361
  %idxprom87 = sext i32 %78 to i64, !dbg !6359
  %arrayidx88 = getelementptr ptr, ptr %77, i64 %idxprom87, !dbg !6359
  %79 = load ptr, ptr %arrayidx88, align 8, !dbg !6359
  %call89 = call i32 @buffer_uptodate(ptr noundef %79) #18, !dbg !6362
  %tobool90 = icmp ne i32 %call89, 0, !dbg !6362
  br i1 %tobool90, label %if.end92, label %if.then91, !dbg !6363

if.then91:                                        ; preds = %if.then84
  %80 = load ptr, ptr %errp.addr, align 8, !dbg !6364
  store i32 -5, ptr %80, align 4, !dbg !6366
  br label %while.end182, !dbg !6367

if.end92:                                         ; preds = %if.then84
  %81 = load ptr, ptr %bhs, align 8, !dbg !6368
  %82 = load i32, ptr %curbh, align 4, !dbg !6369
  %idxprom93 = sext i32 %82 to i64, !dbg !6368
  %arrayidx94 = getelementptr ptr, ptr %81, i64 %idxprom93, !dbg !6368
  %83 = load ptr, ptr %arrayidx94, align 8, !dbg !6368
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %83, i32 0, i32 5, !dbg !6370
  %84 = load ptr, ptr %b_data, align 8, !dbg !6370
  %85 = load i64, ptr %block_start.addr, align 8, !dbg !6371
  %86 = load i32, ptr %bufmask, align 4, !dbg !6372
  %conv95 = zext i32 %86 to i64, !dbg !6372
  %and96 = and i64 %85, %conv95, !dbg !6373
  %add.ptr97 = getelementptr i8, ptr %84, i64 %and96, !dbg !6374
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 0, !dbg !6375
  store ptr %add.ptr97, ptr %next_in, align 8, !dbg !6376
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x331) #17, !dbg !6377
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x331, metadata !6140, metadata !DIExpression()), !dbg !6377
  %87 = load i32, ptr %bufsize, align 4, !dbg !6377
  %conv98 = zext i32 %87 to i64, !dbg !6377
  %88 = load i64, ptr %block_start.addr, align 8, !dbg !6377
  %89 = load i32, ptr %bufmask, align 4, !dbg !6377
  %conv99 = zext i32 %89 to i64, !dbg !6377
  %and100 = and i64 %88, %conv99, !dbg !6377
  %sub101 = sub i64 %conv98, %and100, !dbg !6377
  %conv102 = trunc i64 %sub101 to i32, !dbg !6377
  store i32 %conv102, ptr %__UNIQUE_ID___x331, align 4, !dbg !6377
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y332) #17, !dbg !6377
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y332, metadata !6145, metadata !DIExpression()), !dbg !6377
  %90 = load i32, ptr %block_size, align 4, !dbg !6377
  store i32 %90, ptr %__UNIQUE_ID___y332, align 4, !dbg !6377
  %91 = load i32, ptr %__UNIQUE_ID___x331, align 4, !dbg !6377
  %92 = load i32, ptr %__UNIQUE_ID___y332, align 4, !dbg !6377
  %cmp104 = icmp ult i32 %91, %92, !dbg !6377
  br i1 %cmp104, label %cond.true, label %cond.false, !dbg !6377

cond.true:                                        ; preds = %if.end92
  %93 = load i32, ptr %__UNIQUE_ID___x331, align 4, !dbg !6377
  br label %cond.end, !dbg !6377

cond.false:                                       ; preds = %if.end92
  %94 = load i32, ptr %__UNIQUE_ID___y332, align 4, !dbg !6377
  br label %cond.end, !dbg !6377

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %93, %cond.true ], [ %94, %cond.false ], !dbg !6377
  store i32 %cond, ptr %tmp103, align 4, !dbg !6377
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y332) #17, !dbg !6378
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x331) #17, !dbg !6378
  %95 = load i32, ptr %tmp103, align 4, !dbg !6377
  %conv106 = zext i32 %95 to i64, !dbg !6378
  %avail_in107 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 1, !dbg !6379
  store i64 %conv106, ptr %avail_in107, align 8, !dbg !6380
  %avail_in108 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 1, !dbg !6381
  %96 = load i64, ptr %avail_in108, align 8, !dbg !6381
  %97 = load i32, ptr %block_size, align 4, !dbg !6382
  %conv109 = sext i32 %97 to i64, !dbg !6382
  %sub110 = sub i64 %conv109, %96, !dbg !6382
  %conv111 = trunc i64 %sub110 to i32, !dbg !6382
  store i32 %conv111, ptr %block_size, align 4, !dbg !6382
  store i64 0, ptr %block_start.addr, align 8, !dbg !6383
  br label %if.end112, !dbg !6384

if.end112:                                        ; preds = %cond.end, %if.end82
  br label %while.cond113, !dbg !6385

while.cond113:                                    ; preds = %if.end149, %if.end112
  %avail_out114 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 4, !dbg !6386
  %98 = load i64, ptr %avail_out114, align 8, !dbg !6386
  %tobool115 = icmp ne i64 %98, 0, !dbg !6387
  br i1 %tobool115, label %land.rhs116, label %land.end119, !dbg !6388

land.rhs116:                                      ; preds = %while.cond113
  %avail_in117 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 1, !dbg !6389
  %99 = load i64, ptr %avail_in117, align 8, !dbg !6389
  %tobool118 = icmp ne i64 %99, 0, !dbg !6388
  br label %land.end119

land.end119:                                      ; preds = %land.rhs116, %while.cond113
  %100 = phi i1 [ false, %while.cond113 ], [ %tobool118, %land.rhs116 ], !dbg !6390
  br i1 %100, label %while.body120, label %while.end, !dbg !6385

while.body120:                                    ; preds = %land.end119
  %call121 = call i32 @zlib_inflate(ptr noundef %stream, i32 noundef 3) #18, !dbg !6391
  store i32 %call121, ptr %zerr, align 4, !dbg !6393
  %101 = load i32, ptr %zerr, align 4, !dbg !6394
  %cmp122 = icmp eq i32 %101, -5, !dbg !6396
  br i1 %cmp122, label %land.lhs.true124, label %if.end129, !dbg !6397

land.lhs.true124:                                 ; preds = %while.body120
  %avail_in125 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 1, !dbg !6398
  %102 = load i64, ptr %avail_in125, align 8, !dbg !6398
  %cmp126 = icmp eq i64 %102, 0, !dbg !6399
  br i1 %cmp126, label %if.then128, label %if.end129, !dbg !6400

if.then128:                                       ; preds = %land.lhs.true124
  br label %while.end, !dbg !6401

if.end129:                                        ; preds = %land.lhs.true124, %while.body120
  %103 = load i32, ptr %zerr, align 4, !dbg !6402
  %cmp130 = icmp eq i32 %103, 1, !dbg !6404
  br i1 %cmp130, label %if.then132, label %if.end133, !dbg !6405

if.then132:                                       ; preds = %if.end129
  br label %while.end, !dbg !6406

if.end133:                                        ; preds = %if.end129
  %104 = load i32, ptr %zerr, align 4, !dbg !6407
  %cmp134 = icmp ne i32 %104, 0, !dbg !6409
  br i1 %cmp134, label %if.then136, label %if.end149, !dbg !6410

if.then136:                                       ; preds = %if.end133
  %105 = load i32, ptr %zerr, align 4, !dbg !6411
  %cmp137 = icmp eq i32 %105, -4, !dbg !6414
  br i1 %cmp137, label %if.then139, label %if.else140, !dbg !6415

if.then139:                                       ; preds = %if.then136
  %106 = load ptr, ptr %errp.addr, align 8, !dbg !6416
  store i32 -12, ptr %106, align 4, !dbg !6417
  br label %if.end148, !dbg !6418

if.else140:                                       ; preds = %if.then136
  br label %do.body141, !dbg !6419

do.body141:                                       ; preds = %if.else140
  br label %do.cond142, !dbg !6422

do.cond142:                                       ; preds = %do.body141
  br label %do.end143, !dbg !6422

do.end143:                                        ; preds = %do.cond142
  %107 = load i32, ptr %zerr, align 4, !dbg !6419
  %108 = load ptr, ptr %inode.addr, align 8, !dbg !6419
  %i_ino = getelementptr inbounds %struct.inode, ptr %108, i32 0, i32 12, !dbg !6419
  %109 = load i64, ptr %i_ino, align 8, !dbg !6419
  %110 = load i32, ptr %curpage, align 4, !dbg !6419
  %111 = load i32, ptr %curbh, align 4, !dbg !6419
  %avail_in145 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 1, !dbg !6419
  %112 = load i64, ptr %avail_in145, align 8, !dbg !6419
  %avail_out146 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 4, !dbg !6419
  %113 = load i64, ptr %avail_out146, align 8, !dbg !6419
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %107, i64 noundef %109, i32 noundef %110, i32 noundef %111, i64 noundef %112, i64 noundef %113) #23, !dbg !6419
  store i32 %call147, ptr %tmp144, align 4, !dbg !6422
  %114 = load i32, ptr %tmp144, align 4, !dbg !6419
  %115 = load ptr, ptr %errp.addr, align 8, !dbg !6424
  store i32 -5, ptr %115, align 4, !dbg !6425
  br label %if.end148

if.end148:                                        ; preds = %do.end143, %if.then139
  br label %inflate_out, !dbg !6426

if.end149:                                        ; preds = %if.end133
  br label %while.cond113, !dbg !6385, !llvm.loop !6427

while.end:                                        ; preds = %if.then132, %if.then128, %land.end119
  %avail_out150 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 4, !dbg !6429
  %116 = load i64, ptr %avail_out150, align 8, !dbg !6429
  %tobool151 = icmp ne i64 %116, 0, !dbg !6431
  br i1 %tobool151, label %if.end176, label %if.then152, !dbg !6432

if.then152:                                       ; preds = %while.end
  %117 = load ptr, ptr %pages.addr, align 8, !dbg !6433
  %118 = load i32, ptr %curpage, align 4, !dbg !6436
  %idxprom153 = sext i32 %118 to i64, !dbg !6433
  %arrayidx154 = getelementptr ptr, ptr %117, i64 %idxprom153, !dbg !6433
  %119 = load ptr, ptr %arrayidx154, align 8, !dbg !6433
  %tobool155 = icmp ne ptr %119, null, !dbg !6433
  br i1 %tobool155, label %if.then156, label %if.end161, !dbg !6437

if.then156:                                       ; preds = %if.then152
  %120 = load ptr, ptr %pages.addr, align 8, !dbg !6438
  %121 = load i32, ptr %curpage, align 4, !dbg !6440
  %idxprom157 = sext i32 %121 to i64, !dbg !6438
  %arrayidx158 = getelementptr ptr, ptr %120, i64 %idxprom157, !dbg !6438
  %122 = load ptr, ptr %arrayidx158, align 8, !dbg !6438
  call void @flush_dcache_page(ptr noundef %122) #18, !dbg !6441
  %123 = load ptr, ptr %pages.addr, align 8, !dbg !6442
  %124 = load i32, ptr %curpage, align 4, !dbg !6443
  %idxprom159 = sext i32 %124 to i64, !dbg !6442
  %arrayidx160 = getelementptr ptr, ptr %123, i64 %idxprom159, !dbg !6442
  %125 = load ptr, ptr %arrayidx160, align 8, !dbg !6442
  call void @SetPageUptodate(ptr noundef %125) #18, !dbg !6444
  br label %if.end161, !dbg !6445

if.end161:                                        ; preds = %if.then156, %if.then152
  %next_out162 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 3, !dbg !6446
  %126 = load ptr, ptr %next_out162, align 8, !dbg !6446
  %cmp163 = icmp ne ptr %126, @zisofs_sink_page, !dbg !6448
  br i1 %cmp163, label %if.then165, label %if.end174, !dbg !6449

if.then165:                                       ; preds = %if.end161
  br label %do.body166, !dbg !6450

do.body166:                                       ; preds = %if.then165
  br label %do.body167, !dbg !6452

do.body167:                                       ; preds = %do.body166
  br label %do.cond168, !dbg !6454

do.cond168:                                       ; preds = %do.body167
  br label %do.end169, !dbg !6454

do.end169:                                        ; preds = %do.cond168
  %next_out170 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 3, !dbg !6452
  %127 = load ptr, ptr %next_out170, align 8, !dbg !6452
  call void @__kunmap_local(ptr noundef %127) #18, !dbg !6452
  br label %do.cond171, !dbg !6452

do.cond171:                                       ; preds = %do.end169
  br label %do.end172, !dbg !6452

do.end172:                                        ; preds = %do.cond171
  %next_out173 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 3, !dbg !6456
  store ptr null, ptr %next_out173, align 8, !dbg !6457
  br label %if.end174, !dbg !6458

if.end174:                                        ; preds = %do.end172, %if.end161
  %128 = load i32, ptr %curpage, align 4, !dbg !6459
  %inc175 = add i32 %128, 1, !dbg !6459
  store i32 %inc175, ptr %curpage, align 4, !dbg !6459
  br label %if.end176, !dbg !6460

if.end176:                                        ; preds = %if.end174, %while.end
  %avail_in177 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 1, !dbg !6461
  %129 = load i64, ptr %avail_in177, align 8, !dbg !6461
  %tobool178 = icmp ne i64 %129, 0, !dbg !6463
  br i1 %tobool178, label %if.end181, label %if.then179, !dbg !6464

if.then179:                                       ; preds = %if.end176
  %130 = load i32, ptr %curbh, align 4, !dbg !6465
  %inc180 = add i32 %130, 1, !dbg !6465
  store i32 %inc180, ptr %curbh, align 4, !dbg !6465
  br label %if.end181, !dbg !6466

if.end181:                                        ; preds = %if.then179, %if.end176
  br label %while.cond, !dbg !6312, !llvm.loop !6467

while.end182:                                     ; preds = %if.then91, %land.end
  br label %inflate_out, !dbg !6312

inflate_out:                                      ; preds = %while.end182, %if.end148
  call void @llvm.dbg.label(metadata !6146), !dbg !6469
  %call183 = call i32 @zlib_inflateEnd(ptr noundef %stream) #18, !dbg !6470
  %next_out184 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 3, !dbg !6471
  %131 = load ptr, ptr %next_out184, align 8, !dbg !6471
  %tobool185 = icmp ne ptr %131, null, !dbg !6473
  br i1 %tobool185, label %land.lhs.true186, label %if.end198, !dbg !6474

land.lhs.true186:                                 ; preds = %inflate_out
  %next_out187 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 3, !dbg !6475
  %132 = load ptr, ptr %next_out187, align 8, !dbg !6475
  %cmp188 = icmp ne ptr %132, @zisofs_sink_page, !dbg !6476
  br i1 %cmp188, label %if.then190, label %if.end198, !dbg !6477

if.then190:                                       ; preds = %land.lhs.true186
  br label %do.body191, !dbg !6478

do.body191:                                       ; preds = %if.then190
  br label %do.body192, !dbg !6479

do.body192:                                       ; preds = %do.body191
  br label %do.cond193, !dbg !6481

do.cond193:                                       ; preds = %do.body192
  br label %do.end194, !dbg !6481

do.end194:                                        ; preds = %do.cond193
  %next_out195 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 3, !dbg !6479
  %133 = load ptr, ptr %next_out195, align 8, !dbg !6479
  call void @__kunmap_local(ptr noundef %133) #18, !dbg !6479
  br label %do.cond196, !dbg !6479

do.cond196:                                       ; preds = %do.end194
  br label %do.end197, !dbg !6479

do.end197:                                        ; preds = %do.cond196
  br label %if.end198, !dbg !6479

if.end198:                                        ; preds = %do.end197, %land.lhs.true186, %inflate_out
  br label %z_eio, !dbg !6483

z_eio:                                            ; preds = %if.end198, %do.end
  call void @llvm.dbg.label(metadata !6147), !dbg !6484
  call void @mutex_unlock(ptr noundef @zisofs_zlib_lock) #18, !dbg !6485
  br label %b_eio, !dbg !6485

b_eio:                                            ; preds = %z_eio, %if.then48, %if.then42
  call void @llvm.dbg.label(metadata !6148), !dbg !6486
  store i32 0, ptr %i, align 4, !dbg !6487
  br label %for.cond199, !dbg !6489

for.cond199:                                      ; preds = %for.inc205, %b_eio
  %134 = load i32, ptr %i, align 4, !dbg !6490
  %135 = load i32, ptr %haveblocks, align 4, !dbg !6492
  %cmp200 = icmp slt i32 %134, %135, !dbg !6493
  br i1 %cmp200, label %for.body202, label %for.end207, !dbg !6494

for.body202:                                      ; preds = %for.cond199
  %136 = load ptr, ptr %bhs, align 8, !dbg !6495
  %137 = load i32, ptr %i, align 4, !dbg !6496
  %idxprom203 = sext i32 %137 to i64, !dbg !6495
  %arrayidx204 = getelementptr ptr, ptr %136, i64 %idxprom203, !dbg !6495
  %138 = load ptr, ptr %arrayidx204, align 8, !dbg !6495
  call void @brelse(ptr noundef %138) #18, !dbg !6497
  br label %for.inc205, !dbg !6497

for.inc205:                                       ; preds = %for.body202
  %139 = load i32, ptr %i, align 4, !dbg !6498
  %inc206 = add i32 %139, 1, !dbg !6498
  store i32 %inc206, ptr %i, align 4, !dbg !6498
  br label %for.cond199, !dbg !6499, !llvm.loop !6500

for.end207:                                       ; preds = %for.cond199
  %140 = load ptr, ptr %bhs, align 8, !dbg !6502
  call void @kfree(ptr noundef %140) #18, !dbg !6503
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 5, !dbg !6504
  %141 = load i64, ptr %total_out, align 8, !dbg !6504
  store i64 %141, ptr %retval, align 8, !dbg !6505
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6505

cleanup:                                          ; preds = %for.end207, %if.then36, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %curpage) #17, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 4, ptr %curbh) #17, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 8, ptr %bhs) #17, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 8, ptr %blocknum) #17, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 4, ptr %haveblocks) #17, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 4, ptr %needblocks) #17, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 4, ptr %zerr) #17, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 96, ptr %stream) #17, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 4, ptr %block_size) #17, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 4, ptr %bufmask) #17, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 4, ptr %bufshift) #17, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 4, ptr %bufsize) #17, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 4, ptr %zisofs_block_shift) #17, !dbg !6506
  %142 = load i64, ptr %retval, align 8, !dbg !6506
  ret i64 %142, !dbg !6506
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memzero_page(ptr noundef %page, i64 noundef %offset, i64 noundef %len) #6 align 16 !dbg !6507 {
entry:
  %page.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6512, metadata !DIExpression()), !dbg !6516
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6513, metadata !DIExpression()), !dbg !6517
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6514, metadata !DIExpression()), !dbg !6518
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #17, !dbg !6519
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !6515, metadata !DIExpression()), !dbg !6520
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6521
  %call = call ptr @kmap_local_page(ptr noundef %0) #18, !dbg !6522
  store ptr %call, ptr %addr, align 8, !dbg !6520
  %1 = load ptr, ptr %addr, align 8, !dbg !6523
  %2 = load i64, ptr %offset.addr, align 8, !dbg !6524
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !6525
  %3 = load i64, ptr %len.addr, align 8, !dbg !6526
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %3, i1 false), !dbg !6527
  %4 = load ptr, ptr %page.addr, align 8, !dbg !6528
  call void @flush_dcache_page(ptr noundef %4) #18, !dbg !6529
  br label %do.body, !dbg !6530

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6531

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !6533

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6533

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %addr, align 8, !dbg !6531
  call void @__kunmap_local(ptr noundef %5) #18, !dbg !6531
  br label %do.cond2, !dbg !6531

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !6531

do.end3:                                          ; preds = %do.cond2
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #17, !dbg !6535
  ret void, !dbg !6535
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6536 dso_local void @__brelse(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @deflateBound(i64 noundef %s) #6 align 16 !dbg !6537 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6541, metadata !DIExpression()), !dbg !6542
  %0 = load i64, ptr %s.addr, align 8, !dbg !6543
  %1 = load i64, ptr %s.addr, align 8, !dbg !6544
  %add = add i64 %1, 7, !dbg !6545
  %shr = lshr i64 %add, 3, !dbg !6546
  %add1 = add i64 %0, %shr, !dbg !6547
  %2 = load i64, ptr %s.addr, align 8, !dbg !6548
  %add2 = add i64 %2, 63, !dbg !6549
  %shr3 = lshr i64 %add2, 6, !dbg !6550
  %add4 = add i64 %add1, %shr3, !dbg !6551
  %add5 = add i64 %add4, 11, !dbg !6552
  ret i64 %add5, !dbg !6553
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6554 dso_local i32 @isofs_get_blocks(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bh_read_batch(i32 noundef %nr, ptr noundef %bhs) #6 align 16 !dbg !6557 {
entry:
  %nr.addr = alloca i32, align 4
  %bhs.addr = alloca ptr, align 8
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6561, metadata !DIExpression()), !dbg !6563
  store ptr %bhs, ptr %bhs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bhs.addr, metadata !6562, metadata !DIExpression()), !dbg !6564
  %0 = load i32, ptr %nr.addr, align 4, !dbg !6565
  %1 = load ptr, ptr %bhs.addr, align 8, !dbg !6566
  call void @__bh_read_batch(i32 noundef %0, ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #18, !dbg !6567
  ret void, !dbg !6568
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wait_on_buffer(ptr noundef %bh) #6 align 16 !dbg !6569 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !6571, metadata !DIExpression()), !dbg !6572
  br label %do.body, !dbg !6573

do.body:                                          ; preds = %entry
  call void @might_resched() #18, !dbg !6574
  br label %do.end, !dbg !6574

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !6576
  %call = call i32 @buffer_locked(ptr noundef %0) #18, !dbg !6578
  %tobool = icmp ne i32 %call, 0, !dbg !6578
  br i1 %tobool, label %if.then, label %if.end, !dbg !6579

if.then:                                          ; preds = %do.end
  %1 = load ptr, ptr %bh.addr, align 8, !dbg !6580
  call void @__wait_on_buffer(ptr noundef %1) #18, !dbg !6581
  br label %if.end, !dbg !6581

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !6582
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @buffer_uptodate(ptr noundef %bh) #7 align 16 !dbg !6583 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !6589, metadata !DIExpression()), !dbg !6590
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !6591
  %b_state = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 0, !dbg !6591
  %1 = ptrtoint ptr %b_state to i64, !dbg !6591
  %cmp = icmp ne i64 %1, 0, !dbg !6591
  %conv = zext i1 %cmp to i32, !dbg !6591
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6591
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !6591

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %bh.addr, align 8, !dbg !6591
  %b_state1 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 0, !dbg !6591
  %4 = ptrtoint ptr %b_state1 to i64, !dbg !6591
  %cmp2 = icmp ne i64 %4, 0, !dbg !6591
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !6591

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %bh.addr, align 8, !dbg !6591
  %b_state5 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 0, !dbg !6591
  %6 = load i64, ptr %b_state5, align 8, !dbg !6591
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6591
  br i1 %7, label %cond.true, label %cond.false, !dbg !6591

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %bh.addr, align 8, !dbg !6591
  %b_state6 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 0, !dbg !6591
  %call = call zeroext i1 @generic_test_bit_acquire(i64 noundef 0, ptr noundef %b_state6) #18, !dbg !6591
  %conv7 = zext i1 %call to i32, !dbg !6591
  br label %cond.end, !dbg !6591

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %bh.addr, align 8, !dbg !6591
  %b_state8 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 0, !dbg !6591
  %call9 = call zeroext i1 @_test_bit_acquire(i64 noundef 0, ptr noundef %b_state8) #18, !dbg !6591
  %conv10 = zext i1 %call9 to i32, !dbg !6591
  br label %cond.end, !dbg !6591

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !6591
  ret i32 %cond, !dbg !6592
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6593 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6597 dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6602 dso_local i32 @_printk(ptr noundef, ...) #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmap_local_page(ptr noundef %page) #6 align 16 !dbg !6606 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6611, metadata !DIExpression()), !dbg !6612
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6613
  %call = call ptr @lowmem_page_address(ptr noundef %0) #18, !dbg !6613
  ret ptr %call, !dbg !6614
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6615 dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kunmap_local(ptr noundef %addr) #6 align 16 !dbg !6616 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6618, metadata !DIExpression()), !dbg !6619
  ret void, !dbg !6620
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6621 dso_local i32 @zlib_inflateEnd(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6624 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6625 dso_local void @__bh_read_batch(i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #7 align 16 !dbg !4839 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !6628
  %0 = load ptr, ptr %tmp, align 8, !dbg !6628
  %call = call i32 %0() #18, !dbg !6630
  ret void, !dbg !6631
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @buffer_locked(ptr noundef %bh) #7 align 16 !dbg !6632 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !6634, metadata !DIExpression()), !dbg !6635
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !6635
  %b_state = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 0, !dbg !6635
  %1 = ptrtoint ptr %b_state to i64, !dbg !6635
  %cmp = icmp ne i64 %1, 0, !dbg !6635
  %conv = zext i1 %cmp to i32, !dbg !6635
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6635
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !6635

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %bh.addr, align 8, !dbg !6635
  %b_state1 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 0, !dbg !6635
  %4 = ptrtoint ptr %b_state1 to i64, !dbg !6635
  %cmp2 = icmp ne i64 %4, 0, !dbg !6635
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !6635

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %bh.addr, align 8, !dbg !6635
  %b_state5 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 0, !dbg !6635
  %6 = load i64, ptr %b_state5, align 8, !dbg !6635
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6635
  br i1 %7, label %cond.true, label %cond.false, !dbg !6635

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %bh.addr, align 8, !dbg !6635
  %b_state6 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 0, !dbg !6635
  %call = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %b_state6) #18, !dbg !6635
  %conv7 = zext i1 %call to i32, !dbg !6635
  br label %cond.end, !dbg !6635

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %bh.addr, align 8, !dbg !6635
  %b_state8 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 0, !dbg !6635
  %call9 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %b_state8) #18, !dbg !6635
  %conv10 = zext i1 %call9 to i32, !dbg !6635
  br label %cond.end, !dbg !6635

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !6635
  ret i32 %cond, !dbg !6635
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6636 dso_local void @__wait_on_buffer(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @generic_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6637 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %___p1 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6639, metadata !DIExpression()), !dbg !6644
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6640, metadata !DIExpression()), !dbg !6645
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !6646
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6641, metadata !DIExpression()), !dbg !6647
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6648
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6649
  %div = udiv i64 %1, 64, !dbg !6649
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6650
  store ptr %add.ptr, ptr %p, align 8, !dbg !6647
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #17, !dbg !6651
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !6642, metadata !DIExpression()), !dbg !6651
  br label %do.body, !dbg !6652

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6654

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6654

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %p, align 8, !dbg !6652
  %3 = load volatile i64, ptr %2, align 8, !dbg !6652
  store i64 %3, ptr %tmp, align 8, !dbg !6654
  %4 = load i64, ptr %tmp, align 8, !dbg !6652
  store i64 %4, ptr %___p1, align 8, !dbg !6651
  br label %do.body1, !dbg !6651

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !6656

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6656

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !6651, !srcloc !6658
  %5 = load i64, ptr %___p1, align 8, !dbg !6651
  store i64 %5, ptr %tmp4, align 8, !dbg !6651
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #17, !dbg !6659
  %6 = load i64, ptr %tmp4, align 8, !dbg !6651
  %7 = load i64, ptr %nr.addr, align 8, !dbg !6660
  %and = and i64 %7, 63, !dbg !6661
  %shr = lshr i64 %6, %and, !dbg !6662
  %and5 = and i64 1, %shr, !dbg !6663
  %tobool = icmp ne i64 %and5, 0, !dbg !6664
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !6665
  ret i1 %tobool, !dbg !6666
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6667 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6669, metadata !DIExpression()), !dbg !6671
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6670, metadata !DIExpression()), !dbg !6672
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6673
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6674
  %div = udiv i64 %1, 64, !dbg !6674
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6675
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !6676
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6677
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6678
  %call = call zeroext i1 @arch_test_bit_acquire(i64 noundef %2, ptr noundef %3) #18, !dbg !6679
  ret i1 %call, !dbg !6680
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6681 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6683, metadata !DIExpression()), !dbg !6685
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6684, metadata !DIExpression()), !dbg !6686
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6687
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6688
  br i1 %1, label %cond.true, label %cond.false, !dbg !6688

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6689
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6690
  %call = call zeroext i1 @constant_test_bit_acquire(i64 noundef %2, ptr noundef %3) #18, !dbg !6691
  %conv = zext i1 %call to i32, !dbg !6691
  br label %cond.end, !dbg !6688

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6692
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6693
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !6694
  %conv2 = zext i1 %call1 to i32, !dbg !6694
  br label %cond.end, !dbg !6688

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6688
  %tobool = icmp ne i32 %cond, 0, !dbg !6688
  ret i1 %tobool, !dbg !6695
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6696 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6698, metadata !DIExpression()), !dbg !6701
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6699, metadata !DIExpression()), !dbg !6702
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !6703
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6700, metadata !DIExpression()), !dbg !6704
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6705
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6706
  %shr = ashr i64 %1, 3, !dbg !6707
  %arrayidx = getelementptr i8, ptr %0, i64 %shr, !dbg !6708
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6709
  %and = and i64 %2, 7, !dbg !6710
  %sh_prom = trunc i64 %and to i32, !dbg !6711
  %shl = shl i32 1, %sh_prom, !dbg !6711
  %3 = call i8 asm sideeffect "testb $2,$1\0A\09/* output condition code nz*/\0A", "={@ccnz},*m,i,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %arrayidx, i32 %shl) #17, !dbg !6712, !srcloc !6713
  %4 = icmp ult i8 %3, 2, !dbg !6712
  call void @llvm.assume(i1 %4), !dbg !6712
  store i8 %3, ptr %oldbit, align 1, !dbg !6712
  %5 = load i8, ptr %oldbit, align 1, !dbg !6714, !range !5587, !noundef !831
  %tobool = trunc i8 %5 to i1, !dbg !6714
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !6715
  ret i1 %tobool, !dbg !6716
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #7 align 16 !dbg !6717 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6721, metadata !DIExpression()), !dbg !6722
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6723
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !6723
  %2 = inttoptr i64 %1 to ptr, !dbg !6723
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !6723
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !6723
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6723
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6723
  %shl = shl i64 %sub.ptr.div, 12, !dbg !6723
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !6723
  %add = add i64 %shl, %3, !dbg !6723
  %4 = inttoptr i64 %add to ptr, !dbg !6723
  ret ptr %4, !dbg !6724
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @put_devmap_managed_page(ptr noundef %page) #6 align 16 !dbg !6725 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6729, metadata !DIExpression()), !dbg !6730
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6731
  %call = call zeroext i1 @put_devmap_managed_page_refs(ptr noundef %0, i32 noundef 1) #18, !dbg !6732
  ret i1 %call, !dbg !6733
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_put(ptr noundef %folio) #6 align 16 !dbg !6734 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6736, metadata !DIExpression()), !dbg !6737
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6738
  %call = call i32 @folio_put_testzero(ptr noundef %0) #18, !dbg !6740
  %tobool = icmp ne i32 %call, 0, !dbg !6740
  br i1 %tobool, label %if.then, label %if.end, !dbg !6741

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !6742
  call void @__folio_put(ptr noundef %1) #18, !dbg !6743
  br label %if.end, !dbg !6743

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6744
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @put_devmap_managed_page_refs(ptr noundef %page, i32 noundef %refs) #6 align 16 !dbg !6745 {
entry:
  %page.addr = alloca ptr, align 8
  %refs.addr = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6749, metadata !DIExpression()), !dbg !6751
  store i32 %refs, ptr %refs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %refs.addr, metadata !6750, metadata !DIExpression()), !dbg !6752
  ret i1 false, !dbg !6753
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_put_testzero(ptr noundef %folio) #6 align 16 !dbg !6754 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6756, metadata !DIExpression()), !dbg !6757
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6758
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6759
  %call = call i32 @put_page_testzero(ptr noundef %1) #18, !dbg !6760
  ret i32 %call, !dbg !6761
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6762 dso_local void @__folio_put(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_page_testzero(ptr noundef %page) #6 align 16 !dbg !6763 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6767, metadata !DIExpression()), !dbg !6768
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6769
  %call = call i32 @page_ref_dec_and_test(ptr noundef %0) #18, !dbg !6770
  ret i32 %call, !dbg !6771
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_ref_dec_and_test(ptr noundef %page) #6 align 16 !dbg !6772 {
entry:
  %page.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6775, metadata !DIExpression()), !dbg !6777
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6778
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6776, metadata !DIExpression()), !dbg !6779
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6780
  %_refcount = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3, !dbg !6781
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %_refcount) #18, !dbg !6782
  %conv = zext i1 %call to i32, !dbg !6782
  store i32 %conv, ptr %ret, align 4, !dbg !6779
  %1 = load i32, ptr %ret, align 4, !dbg !6783
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6784
  ret i32 %1, !dbg !6785
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #7 align 16 !dbg !6786 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6792, metadata !DIExpression()), !dbg !6793
  br label %do.body, !dbg !6794

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6795

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6797
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !6798
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6799
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #18, !dbg !6800
  ret i1 %call, !dbg !6801
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6802 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6804, metadata !DIExpression()), !dbg !6806
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6805, metadata !DIExpression()), !dbg !6807
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6808
  %1 = load i64, ptr %size.addr, align 8, !dbg !6809
  %conv = trunc i64 %1 to i32, !dbg !6809
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6810
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6811
  %3 = load i64, ptr %size.addr, align 8, !dbg !6811
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !6811
  ret void, !dbg !6812
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #7 align 16 !dbg !6813 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6816, metadata !DIExpression()), !dbg !6817
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6818
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #18, !dbg !6819
  ret i1 %call, !dbg !6820
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #7 align 16 !dbg !6821 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6824, metadata !DIExpression()), !dbg !6827
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !6828
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6825, metadata !DIExpression()), !dbg !6828
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6828
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6828
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #17, !dbg !6828, !srcloc !6829
  %2 = icmp ult i8 %1, 2, !dbg !6828
  call void @llvm.assume(i1 %2), !dbg !6828
  store i8 %1, ptr %c, align 1, !dbg !6828
  %3 = load i8, ptr %c, align 1, !dbg !6828, !range !5587, !noundef !831
  %tobool = trunc i8 %3 to i1, !dbg !6828
  %frombool = zext i1 %tobool to i8, !dbg !6828
  store i8 %frombool, ptr %tmp, align 1, !dbg !6828
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !6830
  %4 = load i8, ptr %tmp, align 1, !dbg !6828, !range !5587, !noundef !831
  %tobool1 = trunc i8 %4 to i1, !dbg !6828
  ret i1 %tobool1, !dbg !6831
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0,1) }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }
attributes #23 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853}
!llvm.ident = !{!4854}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zisofs_aops", scope: !2, file: !3, line: 372, type: !660, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/isofs/.compress.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/isofs/isofs\22 -D KBUILD_BASENAME=\22compress\22 -D KBUILD_MODNAME=\22isofs\22 -D __KBUILD_MODNAME=kmod_isofs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/isofs/compress.ll fs/isofs/compress.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !216, globals: !4816, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/isofs/compress.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7307d33a3d3dd209618a7f7dbd5c6892")
!4 = !{!5, !13, !21, !37, !43, !48, !54, !60, !67, !72, !80, !88, !97, !102, !107, !113, !119, !126, !134, !141, !181, !186, !196}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !14, line: 9, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!17 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!18 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!19 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!20 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !22, line: 1325, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!24 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!25 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!26 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!27 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!28 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!29 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!30 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!31 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!32 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!33 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!34 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!35 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!36 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !38, line: 26, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!41 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!42 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !44, line: 2052, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!47 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !49, line: 54, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "USRQUOTA", value: 0)
!52 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!53 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !55, line: 45, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!58 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!59 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !61, line: 487, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!62 = !{!63, !64, !65, !66}
!63 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!64 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!65 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!66 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !68, line: 65, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!69 = !{!70, !71}
!70 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!71 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !73, line: 620, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!74 = !{!75, !76, !77, !78, !79}
!75 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!76 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!77 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!78 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!79 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !73, line: 597, baseType: !81, size: 32, elements: !82)
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !{!83, !84, !85, !86, !87}
!83 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!84 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!85 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!86 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!87 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !61, line: 547, baseType: !7, size: 32, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !96}
!90 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!91 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!92 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!93 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!94 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!95 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!96 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !61, line: 564, baseType: !7, size: 32, elements: !98)
!98 = !{!99, !100, !101}
!99 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!100 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!101 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !61, line: 577, baseType: !7, size: 32, elements: !103)
!103 = !{!104, !105, !106}
!104 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!105 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!106 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !61, line: 503, baseType: !7, size: 32, elements: !108)
!108 = !{!109, !110, !111, !112}
!109 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!110 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!111 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!112 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !114, line: 16, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!115 = !{!116, !117, !118}
!116 = !DIEnumerator(name: "TT_NONE", value: 0)
!117 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!118 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !120, line: 51, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!123 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!124 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!125 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !127, line: 68, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!128 = !{!129, !130, !131, !132, !133}
!129 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!130 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!131 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!132 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!133 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !135, line: 15, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!138 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!139 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!140 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !142, line: 100, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!144 = !DIEnumerator(name: "PG_locked", value: 0)
!145 = !DIEnumerator(name: "PG_writeback", value: 1)
!146 = !DIEnumerator(name: "PG_referenced", value: 2)
!147 = !DIEnumerator(name: "PG_uptodate", value: 3)
!148 = !DIEnumerator(name: "PG_dirty", value: 4)
!149 = !DIEnumerator(name: "PG_lru", value: 5)
!150 = !DIEnumerator(name: "PG_head", value: 6)
!151 = !DIEnumerator(name: "PG_waiters", value: 7)
!152 = !DIEnumerator(name: "PG_active", value: 8)
!153 = !DIEnumerator(name: "PG_workingset", value: 9)
!154 = !DIEnumerator(name: "PG_error", value: 10)
!155 = !DIEnumerator(name: "PG_slab", value: 11)
!156 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!157 = !DIEnumerator(name: "PG_arch_1", value: 13)
!158 = !DIEnumerator(name: "PG_reserved", value: 14)
!159 = !DIEnumerator(name: "PG_private", value: 15)
!160 = !DIEnumerator(name: "PG_private_2", value: 16)
!161 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!162 = !DIEnumerator(name: "PG_reclaim", value: 18)
!163 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!164 = !DIEnumerator(name: "PG_unevictable", value: 20)
!165 = !DIEnumerator(name: "PG_mlocked", value: 21)
!166 = !DIEnumerator(name: "PG_uncached", value: 22)
!167 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!168 = !DIEnumerator(name: "PG_readahead", value: 18)
!169 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!170 = !DIEnumerator(name: "PG_checked", value: 12)
!171 = !DIEnumerator(name: "PG_swapcache", value: 12)
!172 = !DIEnumerator(name: "PG_fscache", value: 16)
!173 = !DIEnumerator(name: "PG_pinned", value: 12)
!174 = !DIEnumerator(name: "PG_savepinned", value: 4)
!175 = !DIEnumerator(name: "PG_foreign", value: 12)
!176 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!177 = !DIEnumerator(name: "PG_isolated", value: 18)
!178 = !DIEnumerator(name: "PG_reported", value: 3)
!179 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!180 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 10, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!183 = !{!184, !185}
!184 = !DIEnumerator(name: "false", value: 0)
!185 = !DIEnumerator(name: "true", value: 1)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !187, line: 364, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!188 = !{!189, !190, !191, !192, !193, !194, !195}
!189 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!190 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!191 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!192 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!193 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!194 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!195 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bh_state_bits", file: !197, line: 19, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/buffer_head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc335f14f0fab7e7c331101f97325549")
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215}
!199 = !DIEnumerator(name: "BH_Uptodate", value: 0)
!200 = !DIEnumerator(name: "BH_Dirty", value: 1)
!201 = !DIEnumerator(name: "BH_Lock", value: 2)
!202 = !DIEnumerator(name: "BH_Req", value: 3)
!203 = !DIEnumerator(name: "BH_Mapped", value: 4)
!204 = !DIEnumerator(name: "BH_New", value: 5)
!205 = !DIEnumerator(name: "BH_Async_Read", value: 6)
!206 = !DIEnumerator(name: "BH_Async_Write", value: 7)
!207 = !DIEnumerator(name: "BH_Delay", value: 8)
!208 = !DIEnumerator(name: "BH_Boundary", value: 9)
!209 = !DIEnumerator(name: "BH_Write_EIO", value: 10)
!210 = !DIEnumerator(name: "BH_Unwritten", value: 11)
!211 = !DIEnumerator(name: "BH_Quiet", value: 12)
!212 = !DIEnumerator(name: "BH_Meta", value: 13)
!213 = !DIEnumerator(name: "BH_Prio", value: 14)
!214 = !DIEnumerator(name: "BH_Defer_Completion", value: 15)
!215 = !DIEnumerator(name: "BH_PrivateStart", value: 16)
!216 = !{!81, !7, !217, !219, !220, !1193, !4801, !4803, !225, !4805, !667, !4806, !4809, !4810, !4811, !2361, !455, !320, !4813, !4814, !4815, !4266}
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !218, line: 154, baseType: !7)
!218 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iso_inode_info", file: !222, line: 17, size: 5184, elements: !223)
!222 = !DIFile(filename: "fs/isofs/isofs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0762343a470ff5fb6ef48c76f16ac564")
!223 = !{!224, !226, !227, !228, !230, !234, !235, !236, !242}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_iget5_block", scope: !221, file: !222, line: 18, baseType: !225, size: 64)
!225 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "i_iget5_offset", scope: !221, file: !222, line: 19, baseType: !225, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_extent", scope: !221, file: !222, line: 20, baseType: !7, size: 32, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_file_format", scope: !221, file: !222, line: 21, baseType: !229, size: 8, offset: 160)
!229 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_format_parm", scope: !221, file: !222, line: 22, baseType: !231, size: 24, offset: 168)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 24, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 3)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_next_section_block", scope: !221, file: !222, line: 23, baseType: !225, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_next_section_offset", scope: !221, file: !222, line: 24, baseType: !225, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_section_size", scope: !221, file: !222, line: 25, baseType: !237, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !218, line: 26, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_off_t", file: !239, line: 87, baseType: !240)
!239 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !239, line: 15, baseType: !241)
!241 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "vfs_inode", scope: !221, file: !222, line: 26, baseType: !243, size: 4800, offset: 384)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 641, size: 4800, elements: !244)
!244 = !{!245, !248, !249, !257, !263, !270, !271, !274, !275, !4739, !4740, !4741, !4742, !4743, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4783, !4786, !4787, !4788, !4797, !4798, !4799, !4800}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !243, file: !44, line: 642, baseType: !246, size: 16)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !218, line: 24, baseType: !247)
!247 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !243, file: !44, line: 643, baseType: !247, size: 16, offset: 16)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !243, file: !44, line: 644, baseType: !250, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !251, line: 23, baseType: !252)
!251 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 21, size: 32, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !252, file: !251, line: 22, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !218, line: 37, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !239, line: 49, baseType: !7)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !243, file: !44, line: 645, baseType: !258, size: 128, offset: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !218, line: 190, size: 128, elements: !259)
!259 = !{!260, !262}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !218, line: 191, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !258, file: !218, line: 191, baseType: !261, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !243, file: !44, line: 646, baseType: !264, size: 32, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !251, line: 28, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 26, size: 32, elements: !266)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !265, file: !251, line: 27, baseType: !268, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !218, line: 38, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !239, line: 50, baseType: !7)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !243, file: !44, line: 647, baseType: !7, size: 32, offset: 224)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !243, file: !44, line: 650, baseType: !272, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 607, flags: DIFlagFwdDecl)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !243, file: !44, line: 651, baseType: !272, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !243, file: !44, line: 654, baseType: !276, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1966, size: 2048, align: 512, elements: !279)
!279 = !{!280, !4606, !4616, !4620, !4624, !4628, !4632, !4636, !4640, !4644, !4648, !4649, !4653, !4657, !4661, !4690, !4694, !4700, !4704, !4708, !4712, !4716, !4720, !4726, !4730}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !278, file: !44, line: 1967, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !331, !284, !7}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !286, line: 82, size: 1536, elements: !287)
!286 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!287 = !{!288, !289, !299, !307, !308, !330, !332, !336, !387, !4589, !4590, !4591, !4592, !4598, !4599, !4600}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !285, file: !286, line: 84, baseType: !7, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !285, file: !286, line: 85, baseType: !290, size: 32, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !291, line: 275, baseType: !292)
!291 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !291, line: 275, size: 32, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !292, file: !291, line: 275, baseType: !295, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !291, line: 69, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !291, line: 64, size: 32, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !296, file: !291, line: 65, baseType: !7, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !285, file: !286, line: 86, baseType: !300, size: 128, offset: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !301, line: 38, size: 128, elements: !302)
!301 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!302 = !{!303, !305}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !301, line: 39, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !300, file: !301, line: 39, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !285, file: !286, line: 87, baseType: !284, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !285, file: !286, line: 88, baseType: !309, size: 128, offset: 256)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !286, line: 49, size: 128, elements: !310)
!310 = !{!311, !327}
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !286, line: 50, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !286, line: 50, size: 64, elements: !313)
!313 = !{!314, !323}
!314 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !286, line: 51, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !286, line: 51, size: 64, elements: !316)
!316 = !{!317, !322}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !315, file: !286, line: 52, baseType: !318, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !319, line: 21, baseType: !320)
!319 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !321, line: 27, baseType: !7)
!321 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!322 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !315, file: !286, line: 52, baseType: !318, size: 32, offset: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !312, file: !286, line: 54, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !319, line: 23, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !321, line: 31, baseType: !326)
!326 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !309, file: !286, line: 56, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !285, file: !286, line: 89, baseType: !331, size: 64, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !285, file: !286, line: 91, baseType: !333, size: 256, offset: 448)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 256, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !285, file: !286, line: 94, baseType: !337, size: 64, offset: 704)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !338, line: 25, size: 64, elements: !339)
!338 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !338, line: 26, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !338, line: 26, size: 64, elements: !342)
!342 = !{!343, !344}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !341, file: !338, line: 28, baseType: !325, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !338, line: 30, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !341, file: !338, line: 30, size: 64, elements: !346)
!346 = !{!347, !386}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !345, file: !338, line: 31, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !349, line: 29, baseType: !350)
!349 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !349, line: 17, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !349, line: 18, baseType: !353, size: 32)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !349, line: 18, size: 32, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !353, file: !349, line: 19, baseType: !356, size: 32)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !357, line: 14, size: 32, elements: !358)
!357 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !356, file: !357, line: 15, baseType: !360, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !361, line: 44, baseType: !362)
!361 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !361, line: 14, size: 32, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !361, line: 15, baseType: !365, size: 32)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !361, line: 15, size: 32, elements: !366)
!366 = !{!367, !372, !379}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !365, file: !361, line: 16, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !218, line: 174, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 172, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !369, file: !218, line: 173, baseType: !81, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !361, line: 24, baseType: !373, size: 16)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !361, line: 24, size: 16, elements: !374)
!374 = !{!375, !378}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !373, file: !361, line: 25, baseType: !376, size: 8)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !319, line: 17, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !321, line: 21, baseType: !229)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !373, file: !361, line: 26, baseType: !376, size: 8, offset: 8)
!379 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !361, line: 28, baseType: !380, size: 32)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !361, line: 28, size: 32, elements: !381)
!381 = !{!382, !385}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !380, file: !361, line: 29, baseType: !383, size: 16)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !319, line: 19, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !321, line: 24, baseType: !247)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !380, file: !361, line: 30, baseType: !383, size: 16, offset: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !345, file: !338, line: 32, baseType: !81, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !285, file: !286, line: 95, baseType: !388, size: 64, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !286, line: 128, size: 1024, align: 512, elements: !391)
!391 = !{!392, !396, !397, !404, !413, !417, !421, !425, !426, !430, !435, !4579, !4583}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !390, file: !286, line: 129, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!81, !284, !7}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !390, file: !286, line: 130, baseType: !393, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !390, file: !286, line: 131, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!81, !401, !403}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !390, file: !286, line: 132, baseType: !405, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!81, !401, !7, !408, !411}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !390, file: !286, line: 134, baseType: !414, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!81, !401}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !390, file: !286, line: 135, baseType: !418, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!81, !284}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !390, file: !286, line: 136, baseType: !422, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !284}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !390, file: !286, line: 137, baseType: !422, size: 64, offset: 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !390, file: !286, line: 138, baseType: !427, size: 64, offset: 512)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !284, !331}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !390, file: !286, line: 139, baseType: !431, size: 64, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!434, !284, !434, !81}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !390, file: !286, line: 140, baseType: !436, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!439, !4578}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !441, line: 70, size: 256, elements: !442)
!441 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!442 = !{!443, !444, !4574, !4575}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !440, file: !441, line: 71, baseType: !284, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !440, file: !441, line: 72, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1190, size: 10752, elements: !447)
!447 = !{!448, !449, !452, !453, !454, !458, !2390, !2522, !2562, !2647, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2765, !2769, !2770, !3229, !3232, !3235, !3238, !3239, !3240, !3281, !4507, !4508, !4509, !4510, !4511, !4512, !4515, !4517, !4524, !4525, !4526, !4527, !4528, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !446, file: !44, line: 1191, baseType: !258, size: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !446, file: !44, line: 1192, baseType: !450, size: 32, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !218, line: 21, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !218, line: 18, baseType: !318)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !446, file: !44, line: 1193, baseType: !229, size: 8, offset: 160)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !446, file: !44, line: 1194, baseType: !225, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !446, file: !44, line: 1195, baseType: !455, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !218, line: 52, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !239, line: 88, baseType: !457)
!457 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !446, file: !44, line: 1196, baseType: !459, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2366, size: 576, elements: !461)
!461 = !{!462, !463, !464, !471, !475, !479, !483, !2378, !2379, !2380, !2382, !2383, !2384, !2386, !2387, !2388, !2389}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !460, file: !44, line: 2367, baseType: !408, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !460, file: !44, line: 2368, baseType: !81, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !460, file: !44, line: 2376, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!81, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !470, line: 32, flags: DIFlagFwdDecl)
!470 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!471 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !460, file: !44, line: 2377, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 75, flags: DIFlagFwdDecl)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !460, file: !44, line: 2378, baseType: !476, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!284, !459, !81, !408, !219}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !460, file: !44, line: 2380, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !445}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !460, file: !44, line: 2381, baseType: !484, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !486)
!486 = !{!487, !488, !489, !493, !2034, !2060, !2061, !2062, !2063, !2067, !2070, !2071, !2072, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2140, !2144, !2164, !2182, !2183, !2184, !2185, !2194, !2217, !2218, !2221, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2235, !2236, !2336, !2344, !2345, !2346, !2348, !2352, !2353, !2357, !2358, !2359, !2360, !2362, !2363, !2364, !2371, !2372, !2373, !2377}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !485, file: !6, line: 403, baseType: !5, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !485, file: !6, line: 406, baseType: !258, size: 128, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !6, line: 409, baseType: !490, size: 448, offset: 192)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 448, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 56)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !485, file: !6, line: 417, baseType: !494, size: 768, offset: 640)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !495)
!495 = !{!496, !2027, !2028, !2029, !2032}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !494, file: !6, line: 46, baseType: !497, size: 512)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !498, line: 64, size: 512, elements: !499)
!498 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!499 = !{!500, !501, !502, !504, !548, !1914, !2017, !2022, !2023, !2024, !2025, !2026}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !497, file: !498, line: 65, baseType: !408, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !497, file: !498, line: 66, baseType: !258, size: 128, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !497, file: !498, line: 67, baseType: !503, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !497, file: !498, line: 68, baseType: !505, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !498, line: 168, size: 768, elements: !507)
!507 = !{!508, !509, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !506, file: !498, line: 169, baseType: !258, size: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !506, file: !498, line: 170, baseType: !348, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !506, file: !498, line: 171, baseType: !497, size: 512, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !506, file: !498, line: 172, baseType: !512, size: 64, offset: 704)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !498, line: 133, size: 192, elements: !515)
!515 = !{!516, !523, !528}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !514, file: !498, line: 134, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!81, !521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !514, file: !498, line: 135, baseType: !524, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!408, !521}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !514, file: !498, line: 136, baseType: !529, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!81, !521, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !498, line: 125, size: 20736, elements: !535)
!535 = !{!536, !538, !542, !543, !547}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !534, file: !498, line: 126, baseType: !537, size: 192)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 192, elements: !232)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !534, file: !498, line: 127, baseType: !539, size: 4096, offset: 192)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 4096, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !534, file: !498, line: 128, baseType: !81, size: 32, offset: 4288)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !534, file: !498, line: 129, baseType: !544, size: 16384, offset: 4320)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 16384, elements: !545)
!545 = !{!546}
!546 = !DISubrange(count: 2048)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !534, file: !498, line: 130, baseType: !81, size: 32, offset: 20704)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !497, file: !498, line: 69, baseType: !549, size: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !498, line: 116, size: 384, elements: !552)
!552 = !{!553, !557, !581, !1873, !1904, !1908}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !551, file: !498, line: 117, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !503}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !551, file: !498, line: 118, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !561, line: 254, size: 128, elements: !562)
!561 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!562 = !{!563, !574}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !560, file: !561, line: 255, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!567, !503, !569, !434}
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !218, line: 66, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !239, line: 73, baseType: !240)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !561, line: 30, size: 128, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !570, file: !561, line: 31, baseType: !408, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !570, file: !561, line: 32, baseType: !246, size: 16, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !560, file: !561, line: 256, baseType: !575, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!567, !503, !569, !408, !578}
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !218, line: 61, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !239, line: 72, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !239, line: 16, baseType: !225)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !551, file: !498, line: 119, baseType: !582, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !561, line: 84, size: 320, elements: !586)
!586 = !{!587, !588, !592, !1869, !1871}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !585, file: !561, line: 85, baseType: !408, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !585, file: !561, line: 86, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!246, !503, !569, !81}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !585, file: !561, line: 88, baseType: !593, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!246, !503, !596, !81}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !561, line: 175, size: 512, elements: !598)
!598 = !{!599, !600, !601, !602, !1860, !1864, !1865}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !597, file: !561, line: 176, baseType: !570, size: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !597, file: !561, line: 177, baseType: !578, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !597, file: !561, line: 178, baseType: !219, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !597, file: !561, line: 179, baseType: !603, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 472, size: 1536, align: 64, elements: !608)
!608 = !{!609, !610, !617, !639, !640, !641, !656, !657, !658, !1854, !1855, !1856, !1857, !1858, !1859}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !607, file: !44, line: 473, baseType: !331, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !607, file: !44, line: 474, baseType: !611, size: 128, offset: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !612, line: 296, size: 128, elements: !613)
!612 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!613 = !{!614, !615, !616}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !611, file: !612, line: 297, baseType: !348, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !611, file: !612, line: 299, baseType: !217, size: 32, offset: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !611, file: !612, line: 300, baseType: !219, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !607, file: !44, line: 475, baseType: !618, size: 320, offset: 192)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !619, line: 48, size: 320, elements: !620)
!619 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!620 = !{!621, !630, !631, !636, !638}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !618, file: !619, line: 49, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !623, line: 13, baseType: !624)
!623 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !218, line: 181, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 179, size: 64, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !625, file: !218, line: 180, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !319, line: 22, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !321, line: 30, baseType: !457)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !618, file: !619, line: 55, baseType: !622, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !618, file: !619, line: 57, baseType: !632, size: 32, offset: 128)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !633, line: 15, size: 32, elements: !634)
!633 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !632, file: !633, line: 20, baseType: !368, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !618, file: !619, line: 59, baseType: !637, size: 32, offset: 160)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !357, line: 23, baseType: !356)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !618, file: !619, line: 60, baseType: !258, size: 128, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !607, file: !44, line: 476, baseType: !217, size: 32, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !607, file: !44, line: 477, baseType: !368, size: 32, offset: 544)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !607, file: !44, line: 482, baseType: !642, size: 128, offset: 576)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !643, line: 26, size: 128, elements: !644)
!643 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!644 = !{!645, !655}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !642, file: !643, line: 27, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !643, line: 12, size: 64, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !646, file: !643, line: 13, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !643, line: 5, size: 192, align: 64, elements: !651)
!651 = !{!652, !653, !654}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !650, file: !643, line: 6, baseType: !225, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !650, file: !643, line: 7, baseType: !649, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !650, file: !643, line: 8, baseType: !649, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !642, file: !643, line: 28, baseType: !649, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !607, file: !44, line: 483, baseType: !225, size: 64, offset: 704)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !607, file: !44, line: 484, baseType: !225, size: 64, offset: 768)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !607, file: !44, line: 485, baseType: !659, size: 64, offset: 832)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 404, size: 1280, elements: !662)
!662 = !{!663, !1766, !1770, !1774, !1778, !1794, !1799, !1803, !1808, !1812, !1816, !1820, !1821, !1825, !1829, !1833, !1838, !1842, !1849, !1850}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !661, file: !44, line: 405, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!81, !667, !1764}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !22, line: 74, size: 512, align: 128, elements: !669)
!669 = !{!670, !671, !1758, !1763}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !22, line: 75, baseType: !225, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !22, line: 83, baseType: !672, size: 320, offset: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !22, line: 83, size: 320, elements: !673)
!673 = !{!674, !695, !709, !713, !1757}
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !22, line: 84, baseType: !675, size: 320)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !22, line: 84, size: 320, elements: !676)
!676 = !{!677, !688, !689, !694}
!677 = !DIDerivedType(tag: DW_TAG_member, scope: !675, file: !22, line: 90, baseType: !678, size: 128)
!678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !675, file: !22, line: 90, size: 128, elements: !679)
!679 = !{!680, !681, !686, !687}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !678, file: !22, line: 91, baseType: !258, size: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !22, line: 94, baseType: !682, size: 128)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !22, line: 94, size: 128, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !682, file: !22, line: 96, baseType: !219, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !682, file: !22, line: 98, baseType: !7, size: 32, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !678, file: !22, line: 102, baseType: !258, size: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !678, file: !22, line: 103, baseType: !258, size: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !675, file: !22, line: 106, baseType: !606, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, scope: !675, file: !22, line: 107, baseType: !690, size: 64, offset: 192)
!690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !675, file: !22, line: 107, size: 64, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !690, file: !22, line: 108, baseType: !225, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !690, file: !22, line: 109, baseType: !225, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !675, file: !22, line: 117, baseType: !225, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !22, line: 119, baseType: !696, size: 320)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !22, line: 119, size: 320, elements: !697)
!697 = !{!698, !699, !702, !703, !704}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !696, file: !22, line: 124, baseType: !225, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !696, file: !22, line: 125, baseType: !700, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !22, line: 125, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !696, file: !22, line: 126, baseType: !225, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !696, file: !22, line: 127, baseType: !225, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !22, line: 128, baseType: !705, size: 64, offset: 256)
!705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !696, file: !22, line: 128, size: 64, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !705, file: !22, line: 133, baseType: !225, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !705, file: !22, line: 138, baseType: !622, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !22, line: 141, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !22, line: 141, size: 64, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !710, file: !22, line: 142, baseType: !225, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !22, line: 144, baseType: !714, size: 128)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !22, line: 144, size: 128, elements: !715)
!715 = !{!716, !1756}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !714, file: !22, line: 146, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !127, line: 126, size: 1216, elements: !719)
!719 = !{!720, !730, !761, !772, !773, !774, !775, !1738, !1739, !1740}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !718, file: !127, line: 127, baseType: !721, size: 384)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !127, line: 21, size: 384, elements: !722)
!722 = !{!723, !724, !726, !727, !728, !729}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !721, file: !127, line: 22, baseType: !225, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !721, file: !127, line: 23, baseType: !725, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !721, file: !127, line: 24, baseType: !725, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !721, file: !127, line: 25, baseType: !225, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !721, file: !127, line: 26, baseType: !225, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !721, file: !127, line: 27, baseType: !225, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !718, file: !127, line: 128, baseType: !731, size: 128, offset: 384)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !732, line: 105, size: 128, elements: !733)
!732 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !731, file: !732, line: 110, baseType: !225, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !731, file: !732, line: 118, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !732, line: 95, size: 448, elements: !738)
!738 = !{!739, !740, !746, !747, !750, !751, !760}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !737, file: !732, line: 96, baseType: !622, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !737, file: !732, line: 97, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !732, line: 60, baseType: !743)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !737, file: !732, line: 98, baseType: !741, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !737, file: !732, line: 99, baseType: !748, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !218, line: 35, baseType: !749)
!749 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !737, file: !732, line: 100, baseType: !748, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !737, file: !732, line: 101, baseType: !752, size: 128, align: 64, offset: 256)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !218, line: 232, size: 128, align: 64, elements: !753)
!753 = !{!754, !756}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !752, file: !218, line: 233, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !752, file: !218, line: 234, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !755}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !737, file: !732, line: 102, baseType: !745, size: 64, offset: 384)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !718, file: !127, line: 129, baseType: !762, size: 256, offset: 512)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !763, line: 26, size: 256, elements: !764)
!763 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !762, file: !763, line: 27, baseType: !7, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !762, file: !763, line: 28, baseType: !767, size: 192, offset: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !768, line: 43, size: 192, elements: !769)
!768 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !767, file: !768, line: 44, baseType: !637, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !767, file: !768, line: 45, baseType: !258, size: 128, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !718, file: !127, line: 130, baseType: !126, size: 32, offset: 768)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !127, line: 131, baseType: !7, size: 32, offset: 800)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !718, file: !127, line: 132, baseType: !225, size: 64, offset: 832)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !718, file: !127, line: 133, baseType: !776, size: 64, offset: 896)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !127, line: 77, size: 192, elements: !779)
!779 = !{!780, !784, !1734}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !778, file: !127, line: 83, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !667}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !778, file: !127, line: 89, baseType: !785, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !22, line: 1184, baseType: !7)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !791, line: 512, size: 896, elements: !792)
!791 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!792 = !{!793, !1701, !1702, !1709, !1716, !1726, !1727, !1728, !1730, !1732}
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !791, line: 513, baseType: !794, size: 320)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !790, file: !791, line: 513, size: 320, elements: !795)
!795 = !{!796, !1697, !1698, !1699, !1700}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !794, file: !791, line: 514, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !22, line: 625, size: 1344, elements: !799)
!799 = !{!800, !809, !1602, !1608, !1615, !1616, !1621, !1622, !1627, !1628, !1631, !1690, !1691, !1692, !1693, !1694, !1695}
!800 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !22, line: 628, baseType: !801, size: 128)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !798, file: !22, line: 628, size: 128, elements: !802)
!802 = !{!803, !808}
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !22, line: 629, baseType: !804, size: 128)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !801, file: !22, line: 629, size: 128, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !804, file: !22, line: 631, baseType: !225, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !804, file: !22, line: 632, baseType: !225, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !801, file: !22, line: 635, baseType: !752, size: 128, align: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !798, file: !22, line: 639, baseType: !810, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !22, line: 733, size: 10240, elements: !812)
!812 = !{!813, !1600}
!813 = !DIDerivedType(tag: DW_TAG_member, scope: !811, file: !22, line: 734, baseType: !814, size: 10240)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !811, file: !22, line: 734, size: 10240, elements: !815)
!815 = !{!816, !820, !834, !1462, !1463, !1464, !1465, !1466, !1467, !1476, !1477, !1478, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1517, !1519, !1522, !1569, !1570, !1571, !1574, !1575, !1576, !1579, !1580, !1581, !1587, !1588}
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !814, file: !22, line: 739, baseType: !817, size: 512, align: 512)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !814, file: !22, line: 739, size: 512, align: 512, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !817, file: !22, line: 747, baseType: !368, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !814, file: !22, line: 750, baseType: !821, size: 128, offset: 512)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !822, line: 218, size: 128, elements: !823)
!822 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!823 = !{!824, !832, !833}
!824 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !822, line: 219, baseType: !825, size: 32)
!825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !821, file: !822, line: 219, size: 32, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !825, file: !822, line: 220, baseType: !348, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !825, file: !822, line: 221, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !822, line: 197, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !822, line: 197, elements: !831)
!831 = !{}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !821, file: !822, line: 223, baseType: !7, size: 32, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !821, file: !822, line: 224, baseType: !219, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !814, file: !22, line: 752, baseType: !835, size: 64, offset: 640)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!225, !838, !225, !225, !225, !225}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 994, size: 1856, align: 64, elements: !840)
!840 = !{!841, !852, !853, !855, !856, !864, !865, !866, !938, !1133, !1142, !1148, !1149, !1452, !1453, !1454, !1455, !1457, !1458, !1461}
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !839, file: !44, line: 995, baseType: !842, size: 128)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !839, file: !44, line: 995, size: 128, elements: !843)
!843 = !{!844, !850, !851}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !842, file: !44, line: 996, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !846, line: 60, size: 64, elements: !847)
!846 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!847 = !{!848}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !845, file: !846, line: 61, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !842, file: !44, line: 997, baseType: !752, size: 128, align: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !842, file: !44, line: 998, baseType: !7, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !839, file: !44, line: 1005, baseType: !348, size: 32, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !839, file: !44, line: 1006, baseType: !854, size: 32, offset: 160)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !218, line: 156, baseType: !7)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !839, file: !44, line: 1007, baseType: !622, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !839, file: !44, line: 1008, baseType: !857, size: 256, offset: 256)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !858, line: 66, size: 256, elements: !859)
!858 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!859 = !{!860, !861, !862, !863}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !857, file: !858, line: 67, baseType: !622, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !857, file: !858, line: 68, baseType: !637, size: 32, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !857, file: !858, line: 70, baseType: !632, size: 32, offset: 96)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !857, file: !858, line: 72, baseType: !258, size: 128, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !839, file: !44, line: 1009, baseType: !455, size: 64, offset: 512)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !839, file: !44, line: 1010, baseType: !7, size: 32, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !839, file: !44, line: 1011, baseType: !867, size: 256, offset: 640)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 948, size: 256, elements: !868)
!868 = !{!869, !890, !934, !935, !936, !937}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !867, file: !44, line: 949, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !871, line: 34, baseType: !872)
!871 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !871, line: 25, size: 64, elements: !873)
!873 = !{!874}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !872, file: !871, line: 26, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !876, line: 27, baseType: !877)
!876 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !876, line: 13, size: 64, elements: !878)
!878 = !{!879, !889}
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !876, line: 14, baseType: !880, size: 32)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !876, line: 14, size: 32, elements: !881)
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !880, file: !876, line: 15, baseType: !368, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !876, line: 16, baseType: !884, size: 32)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !880, file: !876, line: 16, size: 32, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !884, file: !876, line: 18, baseType: !376, size: 8)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !884, file: !876, line: 19, baseType: !888, size: 24, offset: 8)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 24, elements: !232)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !877, file: !876, line: 26, baseType: !360, size: 32, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !867, file: !44, line: 950, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !14, line: 59, size: 768, elements: !893)
!893 = !{!894, !900, !901, !902, !915, !916, !923, !924}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !892, file: !14, line: 61, baseType: !895, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !896, line: 113, baseType: !897)
!896 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !896, line: 111, size: 32, elements: !898)
!898 = !{!899}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !897, file: !896, line: 112, baseType: !368, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !892, file: !14, line: 62, baseType: !7, size: 32, offset: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !892, file: !14, line: 63, baseType: !348, size: 32, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !892, file: !14, line: 65, baseType: !903, size: 256, offset: 128)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !904, size: 256, elements: !913)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !218, line: 194, size: 64, elements: !905)
!905 = !{!906}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !904, file: !218, line: 195, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !218, line: 198, size: 128, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !908, file: !218, line: 199, baseType: !907, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !908, file: !218, line: 199, baseType: !912, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!913 = !{!914}
!914 = !DISubrange(count: 4)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !892, file: !14, line: 66, baseType: !904, size: 64, offset: 384)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !892, file: !14, line: 68, baseType: !917, size: 192, offset: 448)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !918, line: 41, baseType: !919)
!918 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !918, line: 37, size: 192, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !919, file: !918, line: 38, baseType: !348, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !919, file: !918, line: 39, baseType: !258, size: 128, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !892, file: !14, line: 69, baseType: !752, size: 128, align: 64, offset: 640)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !892, file: !14, line: 70, baseType: !925, offset: 768)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !926, elements: !932)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !14, line: 54, size: 128, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !926, file: !14, line: 55, baseType: !81, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !926, file: !14, line: 56, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !14, line: 56, flags: DIFlagFwdDecl)
!932 = !{!933}
!933 = !DISubrange(count: -1)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !867, file: !44, line: 951, baseType: !13, size: 32, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !867, file: !44, line: 952, baseType: !250, size: 32, offset: 160)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !867, file: !44, line: 952, baseType: !250, size: 32, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !867, file: !44, line: 953, baseType: !81, size: 32, offset: 224)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !839, file: !44, line: 1012, baseType: !939, size: 64, offset: 896)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !942, line: 110, size: 1472, elements: !943)
!942 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!943 = !{!944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !960, !961, !962, !963, !964, !965, !1078, !1079, !1080, !1081, !1082, !1113, !1116, !1120, !1128}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !941, file: !942, line: 111, baseType: !622, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !941, file: !942, line: 112, baseType: !250, size: 32, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !941, file: !942, line: 113, baseType: !264, size: 32, offset: 96)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !941, file: !942, line: 114, baseType: !250, size: 32, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !941, file: !942, line: 115, baseType: !264, size: 32, offset: 160)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !941, file: !942, line: 116, baseType: !250, size: 32, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !941, file: !942, line: 117, baseType: !264, size: 32, offset: 224)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !941, file: !942, line: 118, baseType: !250, size: 32, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !941, file: !942, line: 119, baseType: !264, size: 32, offset: 288)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !941, file: !942, line: 120, baseType: !7, size: 32, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !941, file: !942, line: 121, baseType: !955, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !956, line: 24, baseType: !957)
!956 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !956, line: 24, size: 64, elements: !958)
!958 = !{!959}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !957, file: !956, line: 24, baseType: !324, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !941, file: !942, line: 122, baseType: !955, size: 64, offset: 448)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !941, file: !942, line: 123, baseType: !955, size: 64, offset: 512)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !941, file: !942, line: 124, baseType: !955, size: 64, offset: 576)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !941, file: !942, line: 125, baseType: !955, size: 64, offset: 640)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !941, file: !942, line: 127, baseType: !229, size: 8, offset: 704)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !941, file: !942, line: 129, baseType: !966, size: 64, offset: 768)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !968, line: 195, size: 1728, elements: !969)
!968 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!969 = !{!970, !971, !976, !981, !982, !985, !986, !993, !994, !995, !996, !999, !1000, !1001, !1003, !1004, !1042, !1063}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !967, file: !968, line: 196, baseType: !895, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !967, file: !968, line: 197, baseType: !972, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !968, line: 28, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !218, line: 104, baseType: !974)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !319, line: 20, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !321, line: 26, baseType: !81)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !968, line: 198, baseType: !977, size: 192, offset: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !968, line: 198, size: 192, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !977, file: !968, line: 199, baseType: !258, size: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !977, file: !968, line: 200, baseType: !650, size: 192, align: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !967, file: !968, line: 205, baseType: !618, size: 320, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !967, file: !968, line: 206, baseType: !983, size: 64, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !968, line: 206, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !967, file: !968, line: 207, baseType: !219, size: 64, offset: 640)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !968, line: 208, baseType: !987, size: 64, offset: 704)
!987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !968, line: 208, size: 64, elements: !988)
!988 = !{!989, !992}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !987, file: !968, line: 209, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !991, line: 8, baseType: !629)
!991 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!992 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !987, file: !968, line: 210, baseType: !990, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !967, file: !968, line: 212, baseType: !990, size: 64, offset: 768)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !967, file: !968, line: 213, baseType: !250, size: 32, offset: 832)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !967, file: !968, line: 214, baseType: !264, size: 32, offset: 864)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !967, file: !968, line: 215, baseType: !997, size: 32, offset: 896)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !968, line: 31, baseType: !998)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !218, line: 110, baseType: !318)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !967, file: !968, line: 216, baseType: !247, size: 16, offset: 928)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !967, file: !968, line: 217, baseType: !247, size: 16, offset: 944)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !967, file: !968, line: 221, baseType: !1002, size: 16, offset: 960)
!1002 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !968, line: 228, baseType: !225, size: 64, offset: 1024)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !968, line: 245, baseType: !1005, size: 320, offset: 1088)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !968, line: 245, size: 320, elements: !1006)
!1006 = !{!1007, !1034}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1005, file: !968, line: 246, baseType: !1008, size: 320)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !968, line: 114, size: 320, elements: !1009)
!1009 = !{!1010, !1011, !1023, !1026, !1033}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1008, file: !968, line: 116, baseType: !225, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !968, line: 117, baseType: !1012, size: 64, offset: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1008, file: !968, line: 117, size: 64, elements: !1013)
!1013 = !{!1014, !1022}
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !968, line: 118, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1012, file: !968, line: 118, size: 64, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1015, file: !968, line: 120, baseType: !383, size: 16)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1015, file: !968, line: 121, baseType: !1019, size: 48, offset: 16)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 48, elements: !1020)
!1020 = !{!1021}
!1021 = !DISubrange(count: 6)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1012, file: !968, line: 127, baseType: !225, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1008, file: !968, line: 129, baseType: !1024, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !968, line: 102, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1008, file: !968, line: 130, baseType: !1027, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !968, line: 108, size: 192, elements: !1029)
!1029 = !{!1030, !1031, !1032}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1028, file: !968, line: 109, baseType: !752, size: 128, align: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1028, file: !968, line: 110, baseType: !895, size: 32, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1028, file: !968, line: 111, baseType: !748, size: 8, offset: 160)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1008, file: !968, line: 131, baseType: !408, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !968, line: 247, baseType: !1035, size: 320)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !968, line: 247, size: 320, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1035, file: !968, line: 248, baseType: !225, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1035, file: !968, line: 249, baseType: !225, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1035, file: !968, line: 250, baseType: !1024, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1035, file: !968, line: 251, baseType: !1027, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1035, file: !968, line: 252, baseType: !434, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !968, line: 260, baseType: !1043, size: 256, offset: 1408)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !968, line: 260, size: 256, elements: !1044)
!1044 = !{!1045, !1051}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1043, file: !968, line: 261, baseType: !1046, size: 256)
!1046 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !968, line: 134, size: 256, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1046, file: !968, line: 135, baseType: !219, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1046, file: !968, line: 136, baseType: !1050, size: 256)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 256, elements: !913)
!1051 = !DIDerivedType(tag: DW_TAG_member, scope: !1043, file: !968, line: 262, baseType: !1052, size: 256)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1043, file: !968, line: 262, size: 256, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1052, file: !968, line: 264, baseType: !258, size: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1052, file: !968, line: 265, baseType: !1056, size: 128, offset: 128)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1057, line: 22, size: 128, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1058 = !{!1059, !1062}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1056, file: !1057, line: 23, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1057, line: 23, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1056, file: !1057, line: 24, baseType: !225, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !967, file: !968, line: 280, baseType: !1064, size: 64, offset: 1664)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !968, line: 176, size: 192, elements: !1066)
!1066 = !{!1067, !1076, !1077}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1065, file: !968, line: 177, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !968, line: 171, baseType: !1069)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!81, !966, !1072, !1074, !966}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1025)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1046)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1065, file: !968, line: 178, baseType: !966, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1065, file: !968, line: 179, baseType: !1024, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !941, file: !942, line: 130, baseType: !966, size: 64, offset: 832)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !941, file: !942, line: 131, baseType: !966, size: 64, offset: 896)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !941, file: !942, line: 132, baseType: !966, size: 64, offset: 960)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !941, file: !942, line: 135, baseType: !219, size: 64, offset: 1024)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !941, file: !942, line: 137, baseType: !1083, size: 64, offset: 1088)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1085, line: 14, size: 1088, elements: !1086)
!1085 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1086 = !{!1087, !1088, !1097, !1098, !1099, !1100, !1101, !1102}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1084, file: !1085, line: 15, baseType: !895, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1084, file: !1085, line: 17, baseType: !1089, size: 320, offset: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1090, line: 22, size: 320, elements: !1091)
!1090 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1091 = !{!1092, !1093, !1094, !1095}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1089, file: !1090, line: 23, baseType: !637, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1089, file: !1090, line: 24, baseType: !628, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1089, file: !1090, line: 26, baseType: !258, size: 128, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1089, file: !1090, line: 28, baseType: !1096, size: 64, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1084, file: !1085, line: 19, baseType: !225, size: 64, offset: 384)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1084, file: !1085, line: 20, baseType: !622, size: 64, offset: 448)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1084, file: !1085, line: 23, baseType: !908, size: 128, offset: 512)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1084, file: !1085, line: 24, baseType: !250, size: 32, offset: 640)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1084, file: !1085, line: 29, baseType: !622, size: 64, offset: 704)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1084, file: !1085, line: 36, baseType: !1103, size: 320, offset: 768)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1104, line: 15, size: 320, elements: !1105)
!1104 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1105 = !{!1106, !1107, !1108, !1109, !1110, !1111, !1112}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1103, file: !1104, line: 16, baseType: !637, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1103, file: !1104, line: 18, baseType: !81, size: 32, offset: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1103, file: !1104, line: 19, baseType: !81, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1103, file: !1104, line: 20, baseType: !81, size: 32, offset: 96)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1103, file: !1104, line: 21, baseType: !81, size: 32, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1103, file: !1104, line: 22, baseType: !225, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1103, file: !1104, line: 23, baseType: !225, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !941, file: !942, line: 138, baseType: !1114, size: 64, offset: 1152)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !251, line: 18, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !941, file: !942, line: 139, baseType: !1117, size: 64, offset: 1216)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1119, line: 16, flags: DIFlagFwdDecl)
!1119 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !941, file: !942, line: 140, baseType: !1121, size: 64, offset: 1280)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !942, line: 25, size: 64, elements: !1123)
!1123 = !{!1124, !1125, !1126}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1122, file: !942, line: 26, baseType: !368, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1122, file: !942, line: 27, baseType: !81, size: 32, offset: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1122, file: !942, line: 28, baseType: !1127, offset: 64)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, elements: !932)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !941, file: !942, line: 142, baseType: !1129, size: 128, offset: 1344)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !941, file: !942, line: 142, size: 128, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1129, file: !942, line: 143, baseType: !81, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1129, file: !942, line: 144, baseType: !752, size: 128, align: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !839, file: !44, line: 1013, baseType: !1134, size: 256, offset: 960)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 970, size: 256, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1134, file: !44, line: 971, baseType: !225, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1134, file: !44, line: 972, baseType: !7, size: 32, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1134, file: !44, line: 973, baseType: !7, size: 32, offset: 96)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1134, file: !44, line: 974, baseType: !7, size: 32, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1134, file: !44, line: 975, baseType: !7, size: 32, offset: 160)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1134, file: !44, line: 976, baseType: !455, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !839, file: !44, line: 1014, baseType: !1143, size: 128, offset: 1216)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1144, line: 8, size: 128, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1143, file: !1144, line: 9, baseType: !439, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1143, file: !1144, line: 10, baseType: !284, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !839, file: !44, line: 1015, baseType: !331, size: 64, offset: 1344)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !839, file: !44, line: 1016, baseType: !1150, size: 64, offset: 1408)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1914, size: 2112, elements: !1153)
!1153 = !{!1154, !1155, !1159, !1164, !1168, !1334, !1335, !1341, !1354, !1362, !1366, !1367, !1371, !1372, !1376, !1381, !1382, !1386, !1390, !1396, !1397, !1401, !1402, !1409, !1413, !1417, !1423, !1427, !1433, !1437, !1441, !1442, !1448}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1152, file: !44, line: 1915, baseType: !484, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1152, file: !44, line: 1916, baseType: !1156, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!455, !838, !455, !81}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1152, file: !44, line: 1917, baseType: !1160, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!567, !838, !434, !578, !1163}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1152, file: !44, line: 1918, baseType: !1165, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!567, !838, !408, !578, !1163}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1152, file: !44, line: 1919, baseType: !1169, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!567, !1172, !1277}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 373, size: 384, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1181, !1182, !1183, !1184}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1173, file: !44, line: 374, baseType: !838, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1173, file: !44, line: 375, baseType: !455, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1173, file: !44, line: 376, baseType: !1178, size: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null, !1172, !241}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1173, file: !44, line: 377, baseType: !219, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1173, file: !44, line: 378, baseType: !81, size: 32, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1173, file: !44, line: 379, baseType: !383, size: 16, offset: 288)
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !44, line: 380, baseType: !1185, size: 64, offset: 320)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !44, line: 380, size: 64, elements: !1186)
!1186 = !{!1187, !1273}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1185, file: !44, line: 386, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1190, line: 998, size: 448, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1191 = !{!1192, !1259, !1260}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1189, file: !1190, line: 999, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !22, line: 293, size: 1536, elements: !1195)
!1195 = !{!1196, !1226, !1240}
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !22, line: 295, baseType: !1197, size: 512)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !22, line: 295, size: 512, elements: !1198)
!1198 = !{!1199, !1225}
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !22, line: 296, baseType: !1200, size: 448)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !22, line: 296, size: 448, elements: !1201)
!1201 = !{!1202, !1203, !1212, !1213, !1214, !1223, !1224}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1200, file: !22, line: 298, baseType: !225, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !22, line: 299, baseType: !1204, size: 128, offset: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1200, file: !22, line: 299, size: 128, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1204, file: !22, line: 300, baseType: !258, size: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, scope: !1204, file: !22, line: 302, baseType: !1208, size: 128)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1204, file: !22, line: 302, size: 128, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1208, file: !22, line: 303, baseType: !219, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1208, file: !22, line: 305, baseType: !7, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1200, file: !22, line: 310, baseType: !606, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1200, file: !22, line: 311, baseType: !225, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !22, line: 312, baseType: !1215, size: 64, offset: 320)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1200, file: !22, line: 312, size: 64, elements: !1216)
!1216 = !{!1217, !1218}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1215, file: !22, line: 313, baseType: !219, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1215, file: !22, line: 314, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !22, line: 257, baseType: !1220)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 255, size: 64, elements: !1221)
!1221 = !{!1222}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1220, file: !22, line: 256, baseType: !225, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1200, file: !22, line: 316, baseType: !368, size: 32, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1200, file: !22, line: 317, baseType: !368, size: 32, offset: 416)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1197, file: !22, line: 323, baseType: !668, size: 512, align: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !22, line: 325, baseType: !1227, size: 512, offset: 512)
!1227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !22, line: 325, size: 512, elements: !1228)
!1228 = !{!1229, !1239}
!1229 = !DIDerivedType(tag: DW_TAG_member, scope: !1227, file: !22, line: 326, baseType: !1230, size: 320)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1227, file: !22, line: 326, size: 320, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1237, !1238}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1230, file: !22, line: 327, baseType: !225, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1230, file: !22, line: 328, baseType: !225, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1230, file: !22, line: 329, baseType: !225, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1230, file: !22, line: 331, baseType: !368, size: 32, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1230, file: !22, line: 332, baseType: !368, size: 32, offset: 224)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1230, file: !22, line: 333, baseType: !368, size: 32, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1230, file: !22, line: 335, baseType: !7, size: 32, offset: 288)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1227, file: !22, line: 339, baseType: !668, size: 512, align: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !22, line: 341, baseType: !1241, size: 512, offset: 1024)
!1241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !22, line: 341, size: 512, elements: !1242)
!1242 = !{!1243, !1252, !1258}
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1241, file: !22, line: 342, baseType: !1244, size: 384)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1241, file: !22, line: 342, size: 384, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1251}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1244, file: !22, line: 343, baseType: !225, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1244, file: !22, line: 344, baseType: !225, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1244, file: !22, line: 346, baseType: !219, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1244, file: !22, line: 347, baseType: !219, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1244, file: !22, line: 348, baseType: !219, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1244, file: !22, line: 349, baseType: !219, size: 64, offset: 320)
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1241, file: !22, line: 352, baseType: !1253, size: 256)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1241, file: !22, line: 352, size: 256, elements: !1254)
!1254 = !{!1255, !1256, !1257}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1253, file: !22, line: 353, baseType: !225, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1253, file: !22, line: 354, baseType: !225, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1253, file: !22, line: 356, baseType: !258, size: 128, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1241, file: !22, line: 359, baseType: !668, size: 512, align: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1189, file: !1190, line: 1000, baseType: !81, size: 32, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1189, file: !1190, line: 1001, baseType: !1261, size: 320, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !918, line: 14, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !918, line: 30, size: 320, elements: !1263)
!1263 = !{!1264, !1265, !1266, !1272}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1262, file: !918, line: 31, baseType: !7, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1262, file: !918, line: 32, baseType: !219, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1262, file: !918, line: 33, baseType: !1267, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !918, line: 16, baseType: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!81, !1271, !7, !81, !219}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1262, file: !918, line: 34, baseType: !258, size: 128, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1185, file: !44, line: 395, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!567, !219}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1279, line: 41, size: 320, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1291, !1329}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1278, file: !1279, line: 42, baseType: !376, size: 8)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1278, file: !1279, line: 43, baseType: !748, size: 8, offset: 8)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1278, file: !1279, line: 44, baseType: !748, size: 8, offset: 16)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1278, file: !1279, line: 45, baseType: !748, size: 8, offset: 24)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1278, file: !1279, line: 46, baseType: !748, size: 8, offset: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !1279, line: 47, baseType: !1287, size: 64, offset: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !1279, line: 47, size: 64, elements: !1288)
!1288 = !{!1289, !1290}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1287, file: !1279, line: 48, baseType: !578, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1287, file: !1279, line: 49, baseType: !81, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !1279, line: 61, baseType: !1292, size: 128, offset: 128)
!1292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !1279, line: 61, size: 128, elements: !1293)
!1293 = !{!1294, !1300}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1292, file: !1279, line: 67, baseType: !1295, size: 128)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1296, line: 17, size: 128, elements: !1297)
!1296 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1295, file: !1296, line: 19, baseType: !219, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1295, file: !1296, line: 20, baseType: !579, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1279, line: 68, baseType: !1301, size: 128)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1292, file: !1279, line: 68, size: 128, elements: !1302)
!1302 = !{!1303, !1328}
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !1279, line: 69, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1301, file: !1279, line: 69, size: 64, elements: !1305)
!1305 = !{!1306, !1309, !1316, !1325, !1327}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1304, file: !1279, line: 71, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1295)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1304, file: !1279, line: 72, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1312)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1279, line: 17, size: 128, elements: !1313)
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1312, file: !1279, line: 18, baseType: !219, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1312, file: !1279, line: 19, baseType: !578, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1304, file: !1279, line: 73, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1319)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1320, line: 31, size: 128, elements: !1321)
!1320 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1321 = !{!1322, !1323, !1324}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1319, file: !1320, line: 32, baseType: !667, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1319, file: !1320, line: 33, baseType: !7, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1319, file: !1320, line: 34, baseType: !7, size: 32, offset: 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1304, file: !1279, line: 74, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1304, file: !1279, line: 75, baseType: !219, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1301, file: !1279, line: 77, baseType: !578, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !1279, line: 80, baseType: !1330, size: 64, offset: 256)
!1330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !1279, line: 80, size: 64, elements: !1331)
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1330, file: !1279, line: 81, baseType: !225, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1330, file: !1279, line: 82, baseType: !455, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1152, file: !44, line: 1920, baseType: !1169, size: 64, offset: 320)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1152, file: !44, line: 1921, baseType: !1336, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!81, !1172, !1339, !7}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !44, line: 53, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1152, file: !44, line: 1923, baseType: !1342, size: 64, offset: 448)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!81, !838, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1858, size: 128, elements: !1347)
!1347 = !{!1348, !1353}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1346, file: !44, line: 1859, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1855, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!748, !1345, !408, !81, !455, !324, !7}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1346, file: !44, line: 1860, baseType: !455, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1152, file: !44, line: 1924, baseType: !1355, size: 64, offset: 512)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1358, !838, !1360}
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1359, line: 59, baseType: !7)
!1359 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !470, line: 31, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1152, file: !44, line: 1925, baseType: !1363, size: 64, offset: 576)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!241, !838, !7, !225}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1152, file: !44, line: 1926, baseType: !1363, size: 64, offset: 640)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1152, file: !44, line: 1927, baseType: !1368, size: 64, offset: 704)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!81, !838, !797}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1152, file: !44, line: 1928, baseType: !225, size: 64, offset: 768)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1152, file: !44, line: 1929, baseType: !1373, size: 64, offset: 832)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!81, !331, !838}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1152, file: !44, line: 1930, baseType: !1377, size: 64, offset: 896)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!81, !838, !1380}
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1061, baseType: !219)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1152, file: !44, line: 1931, baseType: !1373, size: 64, offset: 960)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1152, file: !44, line: 1932, baseType: !1383, size: 64, offset: 1024)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!81, !838, !455, !455, !81}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1152, file: !44, line: 1933, baseType: !1387, size: 64, offset: 1088)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!81, !81, !838, !81}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1152, file: !44, line: 1934, baseType: !1391, size: 64, offset: 1152)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!81, !838, !81, !1394}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1063, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1152, file: !44, line: 1935, baseType: !835, size: 64, offset: 1216)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1152, file: !44, line: 1936, baseType: !1398, size: 64, offset: 1280)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!81, !81}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1152, file: !44, line: 1937, baseType: !1391, size: 64, offset: 1344)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1152, file: !44, line: 1938, baseType: !1403, size: 64, offset: 1408)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!567, !1406, !838, !1163, !578, !7}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1408, line: 59, flags: DIFlagFwdDecl)
!1408 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1152, file: !44, line: 1939, baseType: !1410, size: 64, offset: 1472)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!567, !838, !1163, !1406, !578, !7}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1152, file: !44, line: 1940, baseType: !1414, size: 64, offset: 1536)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !838}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1152, file: !44, line: 1941, baseType: !1418, size: 64, offset: 1600)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!81, !838, !81, !1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1152, file: !44, line: 1942, baseType: !1424, size: 64, offset: 1664)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!241, !838, !81, !455, !455}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1152, file: !44, line: 1944, baseType: !1428, size: 64, offset: 1728)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{null, !1431, !838}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1408, line: 66, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1152, file: !44, line: 1948, baseType: !1434, size: 64, offset: 1792)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!567, !838, !455, !838, !455, !578, !7}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1152, file: !44, line: 1950, baseType: !1438, size: 64, offset: 1856)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!455, !838, !455, !838, !455, !455, !7}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1152, file: !44, line: 1953, baseType: !1383, size: 64, offset: 1920)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1152, file: !44, line: 1954, baseType: !1443, size: 64, offset: 1984)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!81, !1446, !7}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !44, line: 1911, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1152, file: !44, line: 1955, baseType: !1449, size: 64, offset: 2048)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!81, !1446, !1339, !7}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !839, file: !44, line: 1018, baseType: !324, size: 64, offset: 1472)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !839, file: !44, line: 1020, baseType: !219, size: 64, offset: 1536)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !839, file: !44, line: 1023, baseType: !219, size: 64, offset: 1600)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !839, file: !44, line: 1027, baseType: !1456, size: 64, offset: 1664)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !839, file: !44, line: 1029, baseType: !606, size: 64, offset: 1728)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !839, file: !44, line: 1030, baseType: !1459, size: 32, offset: 1792)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1460, line: 8, baseType: !318)
!1460 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !839, file: !44, line: 1031, baseType: !1459, size: 32, offset: 1824)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !814, file: !22, line: 756, baseType: !225, size: 64, offset: 704)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !814, file: !22, line: 757, baseType: !225, size: 64, offset: 768)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !814, file: !22, line: 760, baseType: !225, size: 64, offset: 832)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !814, file: !22, line: 761, baseType: !225, size: 64, offset: 896)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !814, file: !22, line: 763, baseType: !225, size: 64, offset: 960)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !814, file: !22, line: 764, baseType: !1468, size: 64, offset: 1024)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1470, line: 299, baseType: !1471)
!1470 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1470, line: 299, size: 64, elements: !1472)
!1472 = !{!1473}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1471, file: !1470, line: 299, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1475, line: 18, baseType: !225)
!1475 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !814, file: !22, line: 773, baseType: !368, size: 32, offset: 1088)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !814, file: !22, line: 785, baseType: !368, size: 32, offset: 1120)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !814, file: !22, line: 795, baseType: !1479, size: 64, offset: 1152)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !22, line: 726, size: 128, elements: !1481)
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1480, file: !22, line: 727, baseType: !324, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1480, file: !22, line: 728, baseType: !81, size: 32, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !814, file: !22, line: 801, baseType: !225, size: 64, offset: 1216)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !814, file: !22, line: 804, baseType: !622, size: 64, offset: 1280)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !814, file: !22, line: 806, baseType: !81, size: 32, offset: 1344)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !814, file: !22, line: 808, baseType: !348, size: 32, offset: 1376)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !814, file: !22, line: 823, baseType: !618, size: 320, offset: 1408)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !814, file: !22, line: 825, baseType: !258, size: 128, offset: 1728)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !814, file: !22, line: 845, baseType: !81, size: 32, offset: 1856)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !814, file: !22, line: 849, baseType: !225, size: 64, offset: 1920)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !814, file: !22, line: 850, baseType: !225, size: 64, offset: 1984)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !814, file: !22, line: 852, baseType: !225, size: 64, offset: 2048)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !814, file: !22, line: 853, baseType: !225, size: 64, offset: 2112)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !814, file: !22, line: 854, baseType: !624, size: 64, offset: 2176)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !814, file: !22, line: 855, baseType: !225, size: 64, offset: 2240)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !814, file: !22, line: 856, baseType: !225, size: 64, offset: 2304)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !814, file: !22, line: 857, baseType: !225, size: 64, offset: 2368)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !814, file: !22, line: 858, baseType: !225, size: 64, offset: 2432)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !814, file: !22, line: 865, baseType: !295, size: 32, offset: 2496)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !814, file: !22, line: 867, baseType: !348, size: 32, offset: 2528)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !814, file: !22, line: 869, baseType: !225, size: 64, offset: 2560)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !814, file: !22, line: 869, baseType: !225, size: 64, offset: 2624)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !814, file: !22, line: 869, baseType: !225, size: 64, offset: 2688)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !814, file: !22, line: 869, baseType: !225, size: 64, offset: 2752)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !814, file: !22, line: 870, baseType: !225, size: 64, offset: 2816)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !814, file: !22, line: 870, baseType: !225, size: 64, offset: 2880)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !814, file: !22, line: 870, baseType: !225, size: 64, offset: 2944)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !814, file: !22, line: 871, baseType: !225, size: 64, offset: 3008)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !814, file: !22, line: 871, baseType: !225, size: 64, offset: 3072)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !814, file: !22, line: 871, baseType: !225, size: 64, offset: 3136)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !814, file: !22, line: 871, baseType: !225, size: 64, offset: 3200)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !814, file: !22, line: 873, baseType: !1514, size: 3328, offset: 3264)
!1514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 3328, elements: !1515)
!1515 = !{!1516}
!1516 = !DISubrange(count: 52)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !814, file: !22, line: 875, baseType: !1518, size: 1280, offset: 6592)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1089, size: 1280, elements: !913)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !814, file: !22, line: 877, baseType: !1520, size: 64, offset: 7872)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !22, line: 877, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !814, file: !22, line: 880, baseType: !1523, size: 1088, offset: 7936)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1524, line: 72, baseType: !1525)
!1524 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1524, line: 23, size: 1088, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1534, !1535, !1536, !1537, !1564, !1565, !1566}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1525, file: !1524, line: 28, baseType: !324, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1525, file: !1524, line: 38, baseType: !624, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1525, file: !1524, line: 40, baseType: !225, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1525, file: !1524, line: 43, baseType: !618, size: 320, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1525, file: !1524, line: 44, baseType: !1532, size: 64, offset: 512)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1524, line: 44, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1525, file: !1524, line: 48, baseType: !225, size: 64, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1525, file: !1524, line: 59, baseType: !857, size: 256, offset: 640)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1525, file: !1524, line: 60, baseType: !219, size: 64, offset: 896)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1525, file: !1524, line: 61, baseType: !1538, size: 64, offset: 960)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1540)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1541, line: 13, size: 1216, elements: !1542)
!1541 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1548, !1549, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1540, file: !1541, line: 14, baseType: !219, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1540, file: !1541, line: 15, baseType: !225, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1540, file: !1541, line: 17, baseType: !225, size: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1540, file: !1541, line: 17, baseType: !225, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1540, file: !1541, line: 18, baseType: !225, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1540, file: !1541, line: 18, baseType: !225, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1540, file: !1541, line: 19, baseType: !1550, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1540, file: !1541, line: 21, baseType: !241, size: 64, offset: 448)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1540, file: !1541, line: 23, baseType: !241, size: 64, offset: 512)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1540, file: !1541, line: 24, baseType: !241, size: 64, offset: 576)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1540, file: !1541, line: 25, baseType: !241, size: 64, offset: 640)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1540, file: !1541, line: 26, baseType: !241, size: 64, offset: 704)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1540, file: !1541, line: 27, baseType: !241, size: 64, offset: 768)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1540, file: !1541, line: 28, baseType: !241, size: 64, offset: 832)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1540, file: !1541, line: 29, baseType: !241, size: 64, offset: 896)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1540, file: !1541, line: 30, baseType: !241, size: 64, offset: 960)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1540, file: !1541, line: 31, baseType: !241, size: 64, offset: 1024)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1540, file: !1541, line: 32, baseType: !241, size: 64, offset: 1088)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1540, file: !1541, line: 33, baseType: !241, size: 64, offset: 1152)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1525, file: !1524, line: 63, baseType: !368, size: 32, offset: 1024)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1525, file: !1524, line: 69, baseType: !383, size: 16, offset: 1056)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1525, file: !1524, line: 70, baseType: !1567, size: 16, offset: 1072)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !319, line: 18, baseType: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !321, line: 23, baseType: !1002)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !814, file: !22, line: 882, baseType: !225, size: 64, offset: 9024)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !814, file: !22, line: 885, baseType: !348, size: 32, offset: 9088)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !814, file: !22, line: 886, baseType: !1572, size: 64, offset: 9152)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !22, line: 732, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !814, file: !22, line: 901, baseType: !1114, size: 64, offset: 9216)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !814, file: !22, line: 904, baseType: !838, size: 64, offset: 9280)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !814, file: !22, line: 906, baseType: !1577, size: 64, offset: 9344)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !22, line: 906, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !814, file: !22, line: 930, baseType: !368, size: 32, offset: 9408)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !814, file: !22, line: 933, baseType: !368, size: 32, offset: 9440)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !814, file: !22, line: 935, baseType: !1582, size: 64, offset: 9472)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !120, line: 103, size: 64, elements: !1583)
!1583 = !{!1584}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1582, file: !120, line: 104, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !120, line: 101, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !814, file: !22, line: 940, baseType: !622, size: 64, offset: 9536)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !814, file: !22, line: 942, baseType: !1589, size: 256, offset: 9600)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1590, line: 98, size: 256, elements: !1591)
!1590 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1591 = !{!1592, !1593, !1594}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1589, file: !1590, line: 99, baseType: !622, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1589, file: !1590, line: 100, baseType: !258, size: 128, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1589, file: !1590, line: 101, baseType: !1595, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1590, line: 21, baseType: !1596)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{null, !1599}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !811, file: !22, line: 986, baseType: !1601, offset: 10240)
!1601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, elements: !932)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !798, file: !22, line: 640, baseType: !1603, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1470, line: 297, baseType: !1604)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1470, line: 297, size: 64, elements: !1605)
!1605 = !{!1606}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1604, file: !1470, line: 297, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1475, line: 19, baseType: !225)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !22, line: 646, baseType: !1609, size: 64, offset: 256)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !798, file: !22, line: 646, size: 64, elements: !1610)
!1610 = !{!1611, !1614}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1609, file: !22, line: 647, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1613)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !22, line: 542, baseType: !225)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1609, file: !22, line: 648, baseType: !1613, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !798, file: !22, line: 666, baseType: !81, size: 32, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !798, file: !22, line: 667, baseType: !1617, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !22, line: 579, size: 320, elements: !1619)
!1619 = !{!1620}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1618, file: !22, line: 580, baseType: !618, size: 320)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !798, file: !22, line: 670, baseType: !748, size: 8, offset: 448)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !798, file: !22, line: 681, baseType: !1623, size: 256, offset: 512)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !798, file: !22, line: 678, size: 256, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1623, file: !22, line: 679, baseType: !650, size: 192, align: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1623, file: !22, line: 680, baseType: !225, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !798, file: !22, line: 689, baseType: !258, size: 128, offset: 768)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !798, file: !22, line: 691, baseType: !1629, size: 64, offset: 896)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !22, line: 691, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !798, file: !22, line: 694, baseType: !1632, size: 64, offset: 960)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !791, line: 563, size: 1024, elements: !1635)
!1635 = !{!1636, !1640, !1641, !1645, !1649, !1653, !1654, !1658, !1662, !1666, !1667, !1668, !1672, !1676, !1682, !1686}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1634, file: !791, line: 564, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !797}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1634, file: !791, line: 569, baseType: !1637, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1634, file: !791, line: 571, baseType: !1642, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!81, !797, !225}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1634, file: !791, line: 572, baseType: !1646, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!81, !797}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1634, file: !791, line: 578, baseType: !1650, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!81, !797, !225, !225, !225}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1634, file: !791, line: 580, baseType: !785, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1634, file: !791, line: 581, baseType: !1655, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!788, !789, !7}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1634, file: !791, line: 582, baseType: !1659, size: 64, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!788, !789, !225, !225}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1634, file: !791, line: 584, baseType: !1663, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!225, !797}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1634, file: !791, line: 588, baseType: !785, size: 64, offset: 576)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1634, file: !791, line: 591, baseType: !785, size: 64, offset: 640)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1634, file: !791, line: 597, baseType: !1669, size: 64, offset: 704)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!81, !797, !225, !219, !81, !81}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1634, file: !791, line: 603, baseType: !1673, size: 64, offset: 768)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!408, !797}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1634, file: !791, line: 613, baseType: !1677, size: 64, offset: 832)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!81, !797, !1680}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !22, line: 717, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1634, file: !791, line: 625, baseType: !1683, size: 64, offset: 896)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!1680, !797, !225}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1634, file: !791, line: 633, baseType: !1687, size: 64, offset: 960)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!667, !797, !225}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !798, file: !22, line: 697, baseType: !225, size: 64, offset: 1024)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !798, file: !22, line: 699, baseType: !838, size: 64, offset: 1088)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !798, file: !22, line: 700, baseType: !219, size: 64, offset: 1152)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !798, file: !22, line: 711, baseType: !622, size: 64, offset: 1216)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !798, file: !22, line: 717, baseType: !1680, size: 64, offset: 1280)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !798, file: !22, line: 722, baseType: !1696, offset: 1344)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !22, line: 570, elements: !831)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !794, file: !791, line: 515, baseType: !217, size: 32, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !794, file: !791, line: 516, baseType: !225, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !794, file: !791, line: 517, baseType: !225, size: 64, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !794, file: !791, line: 518, baseType: !225, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !791, line: 520, baseType: !21, size: 32, offset: 320)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !790, file: !791, line: 522, baseType: !1703, size: 64, offset: 384)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1475, line: 22, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1475, line: 22, size: 64, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1705, file: !1475, line: 22, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1475, line: 15, baseType: !225)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !790, file: !791, line: 524, baseType: !1710, size: 64, offset: 448)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1470, line: 372, baseType: !1712)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1470, line: 372, size: 64, elements: !1713)
!1713 = !{!1714}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1712, file: !1470, line: 372, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1475, line: 16, baseType: !225)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !791, line: 527, baseType: !1717, size: 64, offset: 512)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !791, line: 527, size: 64, elements: !1718)
!1718 = !{!1719, !1725}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1717, file: !791, line: 528, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1475, line: 21, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1475, line: 21, size: 64, elements: !1722)
!1722 = !{!1723}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1721, file: !1475, line: 21, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1475, line: 14, baseType: !225)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1717, file: !791, line: 529, baseType: !1704, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !790, file: !791, line: 534, baseType: !667, size: 64, offset: 576)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !790, file: !791, line: 535, baseType: !667, size: 64, offset: 640)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !790, file: !791, line: 541, baseType: !1729, size: 64, offset: 704)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !790, file: !791, line: 545, baseType: !1731, size: 64, offset: 768)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !790, file: !791, line: 549, baseType: !1733, size: 64, offset: 832)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1470, line: 520, baseType: !667)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !778, file: !127, line: 100, baseType: !1735, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!81, !717, !225, !225, !81}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !718, file: !127, line: 134, baseType: !219, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !718, file: !127, line: 135, baseType: !81, size: 32, offset: 1024)
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !718, file: !127, line: 136, baseType: !1741, size: 128, offset: 1088)
!1741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !718, file: !127, line: 136, size: 128, elements: !1742)
!1742 = !{!1743, !1749}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1741, file: !127, line: 137, baseType: !1744, size: 128)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1745, line: 6, size: 128, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1746 = !{!1747, !1748}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1744, file: !1745, line: 7, baseType: !324, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1744, file: !1745, line: 8, baseType: !324, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !127, line: 138, baseType: !1750)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1741, file: !127, line: 138, elements: !1751)
!1751 = !{!1752, !1754}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1750, file: !127, line: 138, baseType: !1753)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1750, file: !127, line: 138, elements: !831)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1750, file: !127, line: 138, baseType: !1755)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1744, elements: !932)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !714, file: !22, line: 147, baseType: !219, size: 64, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !672, file: !22, line: 161, baseType: !752, size: 128, align: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !22, line: 164, baseType: !1759, size: 32, offset: 384)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !22, line: 164, size: 32, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1759, file: !22, line: 169, baseType: !368, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1759, file: !22, line: 177, baseType: !7, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !668, file: !22, line: 181, baseType: !368, size: 32, offset: 416)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 309, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !661, file: !44, line: 406, baseType: !1767, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!81, !838, !1193}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !661, file: !44, line: 409, baseType: !1771, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!81, !606, !1764}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !661, file: !44, line: 412, baseType: !1775, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!748, !606, !1193}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !661, file: !44, line: 414, baseType: !1779, size: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{null, !1782}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1190, line: 1276, size: 448, elements: !1784)
!1784 = !{!1785, !1786, !1787, !1789, !1790, !1791, !1792, !1793}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1783, file: !1190, line: 1277, baseType: !838, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1783, file: !1190, line: 1278, baseType: !606, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1783, file: !1190, line: 1279, baseType: !1788, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1783, file: !1190, line: 1281, baseType: !225, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1783, file: !1190, line: 1282, baseType: !7, size: 32, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1783, file: !1190, line: 1283, baseType: !7, size: 32, offset: 288)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1783, file: !1190, line: 1284, baseType: !748, size: 8, offset: 320)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1783, file: !1190, line: 1285, baseType: !225, size: 64, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !661, file: !44, line: 416, baseType: !1795, size: 64, offset: 320)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!81, !838, !606, !455, !7, !1798, !1422}
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !661, file: !44, line: 419, baseType: !1800, size: 64, offset: 384)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!81, !838, !606, !455, !7, !7, !667, !219}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !661, file: !44, line: 424, baseType: !1804, size: 64, offset: 448)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!1807, !606, !1807}
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !218, line: 131, baseType: !324)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !661, file: !44, line: 425, baseType: !1809, size: 64, offset: 512)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !1193, !578, !578}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !661, file: !44, line: 426, baseType: !1813, size: 64, offset: 576)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!748, !1193, !217}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !661, file: !44, line: 427, baseType: !1817, size: 64, offset: 640)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{null, !1193}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !661, file: !44, line: 428, baseType: !1169, size: 64, offset: 704)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !661, file: !44, line: 433, baseType: !1822, size: 64, offset: 768)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!81, !606, !1193, !1193, !134}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !661, file: !44, line: 435, baseType: !1826, size: 64, offset: 832)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!81, !1193}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !661, file: !44, line: 436, baseType: !1830, size: 64, offset: 896)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!748, !1193, !578, !578}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !661, file: !44, line: 438, baseType: !1834, size: 64, offset: 960)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !1193, !1837, !1837}
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !661, file: !44, line: 439, baseType: !1839, size: 64, offset: 1024)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!81, !606, !667}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !661, file: !44, line: 442, baseType: !1843, size: 64, offset: 1088)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!81, !1846, !838, !1848}
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 66, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !661, file: !44, line: 444, baseType: !1414, size: 64, offset: 1152)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !661, file: !44, line: 445, baseType: !1851, size: 64, offset: 1216)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!81, !1172, !1277}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !607, file: !44, line: 486, baseType: !225, size: 64, offset: 896)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !607, file: !44, line: 487, baseType: !618, size: 320, offset: 960)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !607, file: !44, line: 488, baseType: !1459, size: 32, offset: 1280)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !607, file: !44, line: 489, baseType: !348, size: 32, offset: 1312)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !607, file: !44, line: 490, baseType: !258, size: 128, offset: 1344)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !607, file: !44, line: 491, baseType: !219, size: 64, offset: 1472)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !597, file: !561, line: 180, baseType: !1861, size: 64, offset: 320)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!567, !838, !503, !596, !434, !455, !578}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !597, file: !561, line: 182, baseType: !1861, size: 64, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !597, file: !561, line: 184, baseType: !1866, size: 64, offset: 448)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!81, !838, !503, !596, !797}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !585, file: !561, line: 90, baseType: !1870, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !585, file: !561, line: 91, baseType: !1872, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !551, file: !498, line: 120, baseType: !1874, size: 64, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!1877, !521}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1879)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !38, line: 39, size: 384, elements: !1880)
!1880 = !{!1881, !1882, !1886, !1890, !1896, !1900}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1879, file: !38, line: 40, baseType: !37, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1879, file: !38, line: 41, baseType: !1883, size: 64, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!748}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1879, file: !38, line: 42, baseType: !1887, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!219}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1879, file: !38, line: 43, baseType: !1891, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1550, !1894}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !38, line: 19, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1879, file: !38, line: 44, baseType: !1897, size: 64, offset: 256)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!1550}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1879, file: !38, line: 45, baseType: !1901, size: 64, offset: 320)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{null, !219}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !551, file: !498, line: 121, baseType: !1905, size: 64, offset: 256)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!1550, !521}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !551, file: !498, line: 122, baseType: !1909, size: 64, offset: 320)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{null, !521, !1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !497, file: !498, line: 70, baseType: !1915, size: 64, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !470, line: 190, size: 1152, elements: !1917)
!1917 = !{!1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !2009, !2010, !2011, !2012, !2013, !2016}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1916, file: !470, line: 191, baseType: !368, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1916, file: !470, line: 192, baseType: !368, size: 32, offset: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1916, file: !470, line: 202, baseType: !1915, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1916, file: !470, line: 203, baseType: !408, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1916, file: !470, line: 205, baseType: !650, size: 192, align: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1916, file: !470, line: 207, baseType: !1550, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1916, file: !470, line: 208, baseType: !7, size: 32, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1916, file: !470, line: 209, baseType: !1926, size: 256, offset: 512)
!1926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1916, file: !470, line: 209, size: 256, elements: !1927)
!1927 = !{!1928, !1937, !1941}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1926, file: !470, line: 210, baseType: !1929, size: 256)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !470, line: 153, size: 256, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1936}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1929, file: !470, line: 154, baseType: !225, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1929, file: !470, line: 156, baseType: !646, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1929, file: !470, line: 162, baseType: !1934, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !470, line: 162, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1929, file: !470, line: 167, baseType: !225, size: 64, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1926, file: !470, line: 211, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !470, line: 170, size: 64, elements: !1939)
!1939 = !{!1940}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1938, file: !470, line: 171, baseType: !1915, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1926, file: !470, line: 212, baseType: !1942, size: 256)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !470, line: 174, size: 256, elements: !1943)
!1943 = !{!1944, !2004, !2007, !2008}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1942, file: !470, line: 175, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !470, line: 271, size: 768, elements: !1948)
!1948 = !{!1949, !1969, !1973, !1977, !1981, !1985, !1989, !1993, !1994, !1995, !1996, !2000}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1947, file: !470, line: 276, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!81, !1953}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !470, line: 251, size: 1216, elements: !1955)
!1955 = !{!1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1954, file: !470, line: 253, baseType: !1915, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1954, file: !470, line: 254, baseType: !838, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1954, file: !470, line: 255, baseType: !1431, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1954, file: !470, line: 256, baseType: !219, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1954, file: !470, line: 259, baseType: !857, size: 256, offset: 256)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1954, file: !470, line: 260, baseType: !857, size: 256, offset: 512)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1954, file: !470, line: 261, baseType: !81, size: 32, offset: 768)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1954, file: !470, line: 262, baseType: !258, size: 128, offset: 832)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1954, file: !470, line: 263, baseType: !434, size: 64, offset: 960)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1954, file: !470, line: 265, baseType: !578, size: 64, offset: 1024)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1954, file: !470, line: 266, baseType: !748, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1954, file: !470, line: 267, baseType: !748, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1954, file: !470, line: 268, baseType: !1632, size: 64, offset: 1152)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1947, file: !470, line: 277, baseType: !1970, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !1953}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1947, file: !470, line: 290, baseType: !1974, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!81, !1431, !219}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1947, file: !470, line: 292, baseType: !1978, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!219, !1431, !1163}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1947, file: !470, line: 293, baseType: !1982, size: 64, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!219, !1431, !219, !1163}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1947, file: !470, line: 294, baseType: !1986, size: 64, offset: 320)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1431, !219}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1947, file: !470, line: 296, baseType: !1990, size: 64, offset: 384)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!567, !1953, !434, !578, !455}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1947, file: !470, line: 306, baseType: !578, size: 64, offset: 448)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1947, file: !470, line: 313, baseType: !748, size: 8, offset: 512)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1947, file: !470, line: 314, baseType: !1990, size: 64, offset: 576)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1947, file: !470, line: 317, baseType: !1997, size: 64, offset: 640)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!1358, !1953, !1360}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1947, file: !470, line: 320, baseType: !2001, size: 64, offset: 704)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!81, !1953, !797}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1942, file: !470, line: 176, baseType: !2005, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !470, line: 35, flags: DIFlagFwdDecl)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1942, file: !470, line: 177, baseType: !455, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1942, file: !470, line: 178, baseType: !1915, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1916, file: !470, line: 215, baseType: !219, size: 64, offset: 768)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1916, file: !470, line: 221, baseType: !324, size: 64, offset: 832)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1916, file: !470, line: 223, baseType: !247, size: 16, offset: 896)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1916, file: !470, line: 224, baseType: !246, size: 16, offset: 912)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1916, file: !470, line: 225, baseType: !2014, size: 64, offset: 960)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !470, line: 36, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1916, file: !470, line: 227, baseType: !752, size: 128, align: 64, offset: 1024)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !497, file: !498, line: 71, baseType: !2018, size: 32, offset: 448)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2019, line: 19, size: 32, elements: !2020)
!2019 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2020 = !{!2021}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2018, file: !2019, line: 20, baseType: !895, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !497, file: !498, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !497, file: !498, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !497, file: !498, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !497, file: !498, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !497, file: !498, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !494, file: !6, line: 47, baseType: !484, size: 64, offset: 512)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !494, file: !6, line: 48, baseType: !503, size: 64, offset: 576)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !494, file: !6, line: 49, baseType: !2030, size: 64, offset: 640)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !494, file: !6, line: 50, baseType: !2033, size: 64, offset: 704)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !485, file: !6, line: 418, baseType: !2035, size: 64, offset: 1408)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2037)
!2037 = !{!2038, !2039, !2044, !2048, !2052, !2056}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2036, file: !6, line: 54, baseType: !570, size: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2036, file: !6, line: 55, baseType: !2040, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!567, !2035, !2043, !434}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2036, file: !6, line: 57, baseType: !2045, size: 64, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!567, !2035, !2043, !408, !578}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2036, file: !6, line: 59, baseType: !2049, size: 64, offset: 256)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !484, !408}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2036, file: !6, line: 60, baseType: !2053, size: 64, offset: 320)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!81, !484}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2036, file: !6, line: 61, baseType: !2057, size: 64, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !484}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !485, file: !6, line: 419, baseType: !408, size: 64, offset: 1472)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !485, file: !6, line: 420, baseType: !408, size: 64, offset: 1536)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !485, file: !6, line: 421, baseType: !503, size: 64, offset: 1600)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !485, file: !6, line: 424, baseType: !2064, size: 64, offset: 1664)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2066)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !485, file: !6, line: 425, baseType: !2068, size: 64, offset: 1728)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !485, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !485, file: !6, line: 435, baseType: !857, size: 256, offset: 1856)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !485, file: !6, line: 437, baseType: !2073, size: 64, offset: 2112)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2075, line: 69, size: 320, elements: !2076)
!2075 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2076 = !{!2077, !2078, !2079, !2096, !2098, !2102, !2103}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2074, file: !2075, line: 70, baseType: !408, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2074, file: !2075, line: 71, baseType: !484, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2074, file: !2075, line: 72, baseType: !2080, size: 64, offset: 128)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2082)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2075, line: 47, size: 256, elements: !2083)
!2083 = !{!2084, !2085, !2091, !2095}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2082, file: !2075, line: 49, baseType: !7, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2082, file: !2075, line: 51, baseType: !2086, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!81, !408, !2089}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2074)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2082, file: !2075, line: 53, baseType: !2092, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!81, !434, !2089}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2082, file: !2075, line: 55, baseType: !1901, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2074, file: !2075, line: 73, baseType: !2097, size: 16, offset: 192)
!2097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2074, file: !2075, line: 74, baseType: !2099, size: 8, offset: 208)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !319, line: 16, baseType: !2100)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !321, line: 20, baseType: !2101)
!2101 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2074, file: !2075, line: 75, baseType: !376, size: 8, offset: 216)
!2103 = !DIDerivedType(tag: DW_TAG_member, scope: !2074, file: !2075, line: 76, baseType: !2104, size: 64, offset: 256)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2074, file: !2075, line: 76, size: 64, elements: !2105)
!2105 = !{!2106, !2107, !2114}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2104, file: !2075, line: 77, baseType: !219, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2104, file: !2075, line: 78, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2110)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2075, line: 86, size: 128, elements: !2111)
!2111 = !{!2112, !2113}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2110, file: !2075, line: 87, baseType: !7, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2110, file: !2075, line: 88, baseType: !434, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2104, file: !2075, line: 79, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2117)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2075, line: 92, size: 256, elements: !2118)
!2118 = !{!2119, !2120, !2121, !2123, !2124}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2117, file: !2075, line: 94, baseType: !7, size: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2117, file: !2075, line: 95, baseType: !7, size: 32, offset: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2117, file: !2075, line: 96, baseType: !2122, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2117, file: !2075, line: 97, baseType: !2080, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2117, file: !2075, line: 98, baseType: !219, size: 64, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !485, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !485, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !485, file: !6, line: 442, baseType: !2064, size: 64, offset: 2240)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !485, file: !6, line: 443, baseType: !2068, size: 64, offset: 2304)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !485, file: !6, line: 444, baseType: !748, size: 8, offset: 2368)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !485, file: !6, line: 451, baseType: !748, size: 8, offset: 2376)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !485, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !485, file: !6, line: 455, baseType: !2133, size: 64, offset: 2432)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2135, line: 23, size: 96, elements: !2136)
!2135 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2136 = !{!2137, !2138, !2139}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2134, file: !2135, line: 24, baseType: !81, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2134, file: !2135, line: 24, baseType: !81, size: 32, offset: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2134, file: !2135, line: 24, baseType: !81, size: 32, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !485, file: !6, line: 458, baseType: !2141, size: 64, offset: 2496)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!81}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !485, file: !6, line: 460, baseType: !2145, size: 4032, align: 512, offset: 2560)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2146, size: 4032, elements: !2162)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2147)
!2147 = !{!2148, !2149, !2150}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2146, file: !6, line: 363, baseType: !219, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2146, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2146, file: !6, line: 367, baseType: !2151, size: 448, offset: 128)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2151, file: !6, line: 320, baseType: !484, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2151, file: !6, line: 321, baseType: !2155, size: 384, offset: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2156, line: 40, size: 384, elements: !2157)
!2156 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2157 = !{!2158}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2155, file: !2156, line: 41, baseType: !2159, size: 384, align: 64)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 384, align: 64, elements: !2160)
!2160 = !{!2161}
!2161 = !DISubrange(count: 2)
!2162 = !{!2163}
!2163 = !DISubrange(count: 7)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !485, file: !6, line: 463, baseType: !2165, size: 192, offset: 6592)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2166, line: 8, size: 192, elements: !2167)
!2166 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2167 = !{!2168, !2169, !2171}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2165, file: !2166, line: 10, baseType: !7, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2165, file: !2166, line: 11, baseType: !2170, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2165, file: !2166, line: 12, baseType: !2172, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2174, line: 59, size: 48, elements: !2175)
!2174 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2175 = !{!2176, !2177, !2178, !2179, !2180, !2181}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2173, file: !2174, line: 60, baseType: !1567, size: 16)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2173, file: !2174, line: 61, baseType: !1567, size: 16, offset: 16)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2173, file: !2174, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2173, file: !2174, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2173, file: !2174, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2173, file: !2174, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !485, file: !6, line: 465, baseType: !225, size: 64, offset: 6784)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !485, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !485, file: !6, line: 470, baseType: !258, size: 128, offset: 6912)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !485, file: !6, line: 471, baseType: !2186, size: 64, offset: 7040)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2188, line: 33, size: 96, elements: !2189)
!2188 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2189 = !{!2190, !2191, !2192, !2193}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2187, file: !2188, line: 37, baseType: !81, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2187, file: !2188, line: 43, baseType: !81, size: 32, offset: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2187, file: !2188, line: 45, baseType: !247, size: 16, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2187, file: !2188, line: 47, baseType: !247, size: 16, offset: 80)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !485, file: !6, line: 476, baseType: !2195, size: 64, offset: 7104)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2197)
!2197 = !{!2198, !2214, !2215, !2216}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2196, file: !6, line: 379, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2201, line: 204, baseType: !2202)
!2201 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2201, line: 197, size: 192, elements: !2203)
!2203 = !{!2204, !2206, !2207, !2208, !2210, !2212}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2202, file: !2201, line: 198, baseType: !2205, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2201, line: 21, baseType: !320)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2202, file: !2201, line: 199, baseType: !229, size: 8, offset: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2202, file: !2201, line: 200, baseType: !229, size: 8, offset: 40)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2202, file: !2201, line: 201, baseType: !2209, size: 16, offset: 48)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2201, line: 17, baseType: !384)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2202, file: !2201, line: 202, baseType: !2211, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2201, line: 16, baseType: !325)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2202, file: !2201, line: 203, baseType: !2213, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2201, line: 22, baseType: !325)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2196, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2196, file: !6, line: 381, baseType: !434, size: 64, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2196, file: !6, line: 382, baseType: !434, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !485, file: !6, line: 477, baseType: !2196, size: 256, offset: 7168)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !485, file: !6, line: 480, baseType: !2219, size: 64, offset: 7424)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !485, file: !6, line: 483, baseType: !2222, size: 64, offset: 7488)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !485, file: !6, line: 488, baseType: !434, size: 64, offset: 7552)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !485, file: !6, line: 492, baseType: !219, size: 64, offset: 7616)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !485, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !485, file: !6, line: 495, baseType: !219, size: 64, offset: 7744)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !485, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !485, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !485, file: !6, line: 500, baseType: !2231, size: 64, offset: 7872)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2233, line: 45, baseType: !2234)
!2233 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !485, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !485, file: !6, line: 504, baseType: !2237, size: 64, offset: 8000)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2240, line: 96, size: 192, elements: !2241)
!2240 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2241 = !{!2242, !2243, !2297, !2300}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2239, file: !2240, line: 97, baseType: !7, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2239, file: !2240, line: 98, baseType: !2244, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2240, line: 24, size: 3072, elements: !2246)
!2246 = !{!2247, !2249, !2250, !2251, !2252, !2266, !2267, !2268, !2269, !2281, !2282, !2283, !2294, !2295, !2296}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2245, file: !2240, line: 26, baseType: !2248, size: 128)
!2248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 128, elements: !2160)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2245, file: !2240, line: 27, baseType: !2248, size: 128, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2245, file: !2240, line: 28, baseType: !81, size: 32, offset: 256)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2245, file: !2240, line: 31, baseType: !348, size: 32, align: 512, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2245, file: !2240, line: 32, baseType: !2253, size: 960, offset: 576)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2254, line: 206, size: 960, elements: !2255)
!2254 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2255 = !{!2256, !2257, !2260, !2262, !2263, !2265}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2253, file: !2254, line: 207, baseType: !755, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2253, file: !2254, line: 208, baseType: !2258, size: 256, offset: 64)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2259, size: 256, elements: !913)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2253, file: !2254, line: 209, baseType: !2261, size: 256, offset: 320)
!2261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 256, elements: !913)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2253, file: !2254, line: 213, baseType: !241, size: 64, offset: 576)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2253, file: !2254, line: 215, baseType: !2264, size: 256, offset: 640)
!2264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 256, elements: !913)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2253, file: !2254, line: 216, baseType: !376, size: 8, offset: 896)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2245, file: !2240, line: 33, baseType: !225, size: 64, offset: 1536)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2245, file: !2240, line: 34, baseType: !225, size: 64, offset: 1600)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2245, file: !2240, line: 35, baseType: !748, size: 8, offset: 1664)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2245, file: !2240, line: 36, baseType: !2270, size: 320, offset: 1728)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2271, line: 11, size: 320, elements: !2272)
!2271 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2272 = !{!2273, !2274, !2275, !2280}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2270, file: !2271, line: 16, baseType: !908, size: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2270, file: !2271, line: 17, baseType: !225, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2270, file: !2271, line: 18, baseType: !2276, size: 64, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null, !2279}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2270, file: !2271, line: 19, baseType: !318, size: 32, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2245, file: !2240, line: 37, baseType: !1589, size: 256, offset: 2048)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2245, file: !2240, line: 38, baseType: !752, size: 128, align: 64, offset: 2304)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2245, file: !2240, line: 39, baseType: !2284, size: 64, offset: 2432)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2240, line: 49, size: 768, elements: !2286)
!2286 = !{!2287, !2288, !2289, !2290, !2291, !2292, !2293}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2285, file: !2240, line: 50, baseType: !348, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2285, file: !2240, line: 51, baseType: !2261, size: 256, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2285, file: !2240, line: 53, baseType: !2261, size: 256, offset: 320)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2285, file: !2240, line: 54, baseType: !225, size: 64, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2285, file: !2240, line: 55, baseType: !2284, size: 64, offset: 640)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2285, file: !2240, line: 56, baseType: !81, size: 32, offset: 704)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2285, file: !2240, line: 57, baseType: !81, size: 32, offset: 736)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2245, file: !2240, line: 40, baseType: !225, size: 64, offset: 2496)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2245, file: !2240, line: 42, baseType: !81, size: 32, offset: 2560)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2245, file: !2240, line: 43, baseType: !2238, size: 64, offset: 2624)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2239, file: !2240, line: 99, baseType: !2298, offset: 128)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2299, line: 211, elements: !831)
!2299 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2239, file: !2240, line: 100, baseType: !2301, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2240, line: 63, size: 3008, elements: !2303)
!2303 = !{!2304, !2305, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2335}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2302, file: !2240, line: 64, baseType: !2284, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2302, file: !2240, line: 65, baseType: !2306, size: 192, offset: 64)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2284, size: 192, elements: !232)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2302, file: !2240, line: 67, baseType: !81, size: 32, offset: 256)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2302, file: !2240, line: 68, baseType: !857, size: 256, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2302, file: !2240, line: 69, baseType: !348, size: 32, offset: 576)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2302, file: !2240, line: 70, baseType: !857, size: 256, offset: 640)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2302, file: !2240, line: 71, baseType: !225, size: 64, offset: 896)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2302, file: !2240, line: 72, baseType: !225, size: 64, offset: 960)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2302, file: !2240, line: 73, baseType: !225, size: 64, offset: 1024)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2302, file: !2240, line: 74, baseType: !225, size: 64, offset: 1088)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2302, file: !2240, line: 75, baseType: !225, size: 64, offset: 1152)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2302, file: !2240, line: 76, baseType: !225, size: 64, offset: 1216)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2302, file: !2240, line: 77, baseType: !225, size: 64, offset: 1280)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2302, file: !2240, line: 78, baseType: !225, size: 64, offset: 1344)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2302, file: !2240, line: 79, baseType: !748, size: 8, offset: 1408)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2302, file: !2240, line: 80, baseType: !225, size: 64, offset: 1472)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2302, file: !2240, line: 81, baseType: !857, size: 256, offset: 1536)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2302, file: !2240, line: 82, baseType: !762, size: 256, offset: 1792)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2302, file: !2240, line: 84, baseType: !368, size: 32, offset: 2048)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2302, file: !2240, line: 87, baseType: !225, size: 64, offset: 2112)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2302, file: !2240, line: 88, baseType: !225, size: 64, offset: 2176)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2302, file: !2240, line: 89, baseType: !2327, size: 704, offset: 2240)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1590, line: 111, size: 704, elements: !2328)
!2328 = !{!2329, !2330, !2331, !2334}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2327, file: !1590, line: 112, baseType: !1589, size: 256)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2327, file: !1590, line: 113, baseType: !2270, size: 320, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2327, file: !1590, line: 116, baseType: !2332, size: 64, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1590, line: 18, flags: DIFlagFwdDecl)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2327, file: !1590, line: 117, baseType: !81, size: 32, offset: 640)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2302, file: !2240, line: 90, baseType: !2238, size: 64, offset: 2944)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !485, file: !6, line: 515, baseType: !2337, size: 64, offset: 8064)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2339, line: 117, size: 128, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2340 = !{!2341, !2342, !2343}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2338, file: !2339, line: 118, baseType: !974, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2338, file: !2339, line: 119, baseType: !974, size: 32, offset: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2338, file: !2339, line: 120, baseType: !241, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !485, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !485, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !485, file: !6, line: 520, baseType: !2347, size: 64, offset: 8192)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !485, file: !6, line: 523, baseType: !2349, size: 64, offset: 8256)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !485, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !485, file: !6, line: 525, baseType: !2354, size: 64, offset: 8384)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !485, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !485, file: !6, line: 533, baseType: !219, size: 64, offset: 8512)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !485, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !485, file: !6, line: 535, baseType: !2361, size: 64, offset: 8640)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !485, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !485, file: !6, line: 539, baseType: !81, size: 32, offset: 8736)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !485, file: !6, line: 540, baseType: !2365, size: 64, offset: 8768)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2367, line: 32, size: 64, elements: !2368)
!2367 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2368 = !{!2369, !2370}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2366, file: !2367, line: 33, baseType: !974, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2366, file: !2367, line: 34, baseType: !974, size: 32, offset: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !485, file: !6, line: 563, baseType: !258, size: 128, offset: 8832)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !485, file: !6, line: 565, baseType: !258, size: 128, offset: 8960)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !485, file: !6, line: 568, baseType: !2374, size: 64, offset: 9088)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !485, file: !6, line: 570, baseType: !368, size: 32, offset: 9152)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !44, line: 2382, baseType: !459, size: 64, offset: 448)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !460, file: !44, line: 2383, baseType: !904, size: 64, offset: 512)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !460, file: !44, line: 2385, baseType: !2381, offset: 576)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2299, line: 206, elements: !831)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !460, file: !44, line: 2386, baseType: !2381, offset: 576)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !460, file: !44, line: 2387, baseType: !2381, offset: 576)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !460, file: !44, line: 2388, baseType: !2385, offset: 576)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2381, elements: !232)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !460, file: !44, line: 2390, baseType: !2381, offset: 576)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !460, file: !44, line: 2391, baseType: !2381, offset: 576)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !460, file: !44, line: 2392, baseType: !2381, offset: 576)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !460, file: !44, line: 2393, baseType: !2381, offset: 576)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !446, file: !44, line: 1197, baseType: !2391, size: 64, offset: 384)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2393)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 2057, size: 1664, elements: !2394)
!2394 = !{!2395, !2399, !2403, !2404, !2408, !2412, !2416, !2417, !2418, !2422, !2426, !2430, !2431, !2432, !2438, !2442, !2443, !2447, !2448, !2449, !2450, !2454, !2458, !2505, !2520, !2521}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2393, file: !44, line: 2058, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!331, !445}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2393, file: !44, line: 2059, baseType: !2400, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !331}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2393, file: !44, line: 2060, baseType: !2400, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2393, file: !44, line: 2062, baseType: !2405, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !331, !81}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2393, file: !44, line: 2063, baseType: !2409, size: 64, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!81, !331, !1764}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2393, file: !44, line: 2064, baseType: !2413, size: 64, offset: 320)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!81, !331}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2393, file: !44, line: 2065, baseType: !2400, size: 64, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2393, file: !44, line: 2066, baseType: !480, size: 64, offset: 448)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2393, file: !44, line: 2067, baseType: !2419, size: 64, offset: 512)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!81, !445, !81}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2393, file: !44, line: 2068, baseType: !2423, size: 64, offset: 576)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!81, !445, !43}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2393, file: !44, line: 2069, baseType: !2427, size: 64, offset: 640)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!81, !445}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2393, file: !44, line: 2070, baseType: !2423, size: 64, offset: 704)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2393, file: !44, line: 2071, baseType: !2427, size: 64, offset: 768)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2393, file: !44, line: 2072, baseType: !2433, size: 64, offset: 832)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!81, !284, !2436}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 62, flags: DIFlagFwdDecl)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2393, file: !44, line: 2073, baseType: !2439, size: 64, offset: 896)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!81, !445, !2170, !434}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2393, file: !44, line: 2074, baseType: !480, size: 64, offset: 960)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2393, file: !44, line: 2076, baseType: !2444, size: 64, offset: 1024)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!81, !1431, !284}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2393, file: !44, line: 2077, baseType: !2444, size: 64, offset: 1088)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2393, file: !44, line: 2078, baseType: !2444, size: 64, offset: 1152)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2393, file: !44, line: 2079, baseType: !2444, size: 64, offset: 1216)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2393, file: !44, line: 2081, baseType: !2451, size: 64, offset: 1280)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!567, !445, !81, !434, !578, !455}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2393, file: !44, line: 2082, baseType: !2455, size: 64, offset: 1344)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!567, !445, !81, !408, !578, !455}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2393, file: !44, line: 2083, baseType: !2459, size: 64, offset: 1408)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!2462, !331}
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !49, line: 296, size: 1664, elements: !2465)
!2465 = !{!2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2490, !2491, !2492}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2464, file: !49, line: 297, baseType: !908, size: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2464, file: !49, line: 298, baseType: !258, size: 128, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2464, file: !49, line: 299, baseType: !258, size: 128, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2464, file: !49, line: 300, baseType: !258, size: 128, offset: 384)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2464, file: !49, line: 301, baseType: !857, size: 256, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2464, file: !49, line: 302, baseType: !348, size: 32, offset: 768)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2464, file: !49, line: 303, baseType: !368, size: 32, offset: 800)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2464, file: !49, line: 304, baseType: !445, size: 64, offset: 832)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2464, file: !49, line: 305, baseType: !2475, size: 64, offset: 896)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !49, line: 68, size: 64, elements: !2476)
!2476 = !{!2477, !2489}
!2477 = !DIDerivedType(tag: DW_TAG_member, scope: !2475, file: !49, line: 69, baseType: !2478, size: 32)
!2478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2475, file: !49, line: 69, size: 32, elements: !2479)
!2479 = !{!2480, !2481, !2482}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2478, file: !49, line: 70, baseType: !250, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2478, file: !49, line: 71, baseType: !264, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2478, file: !49, line: 72, baseType: !2483, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2484, line: 24, baseType: !2485)
!2484 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2484, line: 22, size: 32, elements: !2486)
!2486 = !{!2487}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2485, file: !2484, line: 23, baseType: !2488, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2484, line: 20, baseType: !256)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2475, file: !49, line: 74, baseType: !48, size: 32, offset: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2464, file: !49, line: 306, baseType: !455, size: 64, offset: 960)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2464, file: !49, line: 307, baseType: !225, size: 64, offset: 1024)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2464, file: !49, line: 308, baseType: !2493, size: 576, offset: 1088)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !49, line: 205, size: 576, elements: !2494)
!2494 = !{!2495, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2493, file: !49, line: 206, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !49, line: 66, baseType: !457)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2493, file: !49, line: 207, baseType: !2496, size: 64, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2493, file: !49, line: 208, baseType: !2496, size: 64, offset: 128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2493, file: !49, line: 209, baseType: !2496, size: 64, offset: 192)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2493, file: !49, line: 210, baseType: !2496, size: 64, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2493, file: !49, line: 211, baseType: !2496, size: 64, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2493, file: !49, line: 212, baseType: !2496, size: 64, offset: 384)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2493, file: !49, line: 213, baseType: !990, size: 64, offset: 448)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2493, file: !49, line: 214, baseType: !990, size: 64, offset: 512)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2393, file: !44, line: 2085, baseType: !2506, size: 64, offset: 1472)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!241, !445, !2509}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2511, line: 15, size: 256, elements: !2512)
!2511 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2512 = !{!2513, !2514, !2515, !2516, !2517}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2510, file: !2511, line: 16, baseType: !217, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2510, file: !2511, line: 19, baseType: !81, size: 32, offset: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2510, file: !2511, line: 26, baseType: !225, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2510, file: !2511, line: 33, baseType: !225, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2510, file: !2511, line: 36, baseType: !2518, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !22, line: 33, flags: DIFlagFwdDecl)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2393, file: !44, line: 2087, baseType: !2506, size: 64, offset: 1536)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2393, file: !44, line: 2089, baseType: !480, size: 64, offset: 1600)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !446, file: !44, line: 1198, baseType: !2523, size: 64, offset: 448)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2525)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !49, line: 324, size: 704, elements: !2526)
!2526 = !{!2527, !2531, !2535, !2539, !2540, !2541, !2542, !2543, !2548, !2553, !2557}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2525, file: !49, line: 325, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!81, !2463}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2525, file: !49, line: 326, baseType: !2532, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!2463, !445, !81}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2525, file: !49, line: 327, baseType: !2536, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{null, !2463}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2525, file: !49, line: 328, baseType: !2528, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2525, file: !49, line: 329, baseType: !2528, size: 64, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2525, file: !49, line: 330, baseType: !2528, size: 64, offset: 320)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2525, file: !49, line: 331, baseType: !2419, size: 64, offset: 384)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2525, file: !49, line: 334, baseType: !2544, size: 64, offset: 448)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!2547, !331}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2525, file: !49, line: 335, baseType: !2549, size: 64, offset: 512)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!81, !331, !2552}
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2525, file: !49, line: 337, baseType: !2554, size: 64, offset: 576)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!81, !331, !2547}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2525, file: !49, line: 339, baseType: !2558, size: 64, offset: 640)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!81, !445, !2561}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !446, file: !44, line: 1199, baseType: !2563, size: 64, offset: 512)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2565)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !49, line: 430, size: 704, elements: !2566)
!2566 = !{!2567, !2573, !2574, !2578, !2579, !2580, !2595, !2618, !2622, !2623, !2646}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2565, file: !49, line: 431, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!81, !445, !81, !81, !2571}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1143)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2565, file: !49, line: 432, baseType: !2419, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2565, file: !49, line: 433, baseType: !2575, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!81, !445, !7}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2565, file: !49, line: 434, baseType: !2575, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2565, file: !49, line: 435, baseType: !2419, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2565, file: !49, line: 436, baseType: !2581, size: 64, offset: 320)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!81, !445, !81, !2584}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !49, line: 417, size: 256, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2585, file: !49, line: 418, baseType: !81, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2585, file: !49, line: 419, baseType: !7, size: 32, offset: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2585, file: !49, line: 420, baseType: !7, size: 32, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2585, file: !49, line: 422, baseType: !7, size: 32, offset: 96)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2585, file: !49, line: 423, baseType: !7, size: 32, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2585, file: !49, line: 424, baseType: !7, size: 32, offset: 160)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2585, file: !49, line: 425, baseType: !7, size: 32, offset: 192)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2585, file: !49, line: 426, baseType: !7, size: 32, offset: 224)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2565, file: !49, line: 437, baseType: !2596, size: 64, offset: 384)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!81, !445, !2475, !2599}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !49, line: 345, size: 960, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2600, file: !49, line: 346, baseType: !81, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2600, file: !49, line: 347, baseType: !324, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2600, file: !49, line: 348, baseType: !324, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2600, file: !49, line: 349, baseType: !324, size: 64, offset: 192)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2600, file: !49, line: 350, baseType: !324, size: 64, offset: 256)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2600, file: !49, line: 351, baseType: !324, size: 64, offset: 320)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2600, file: !49, line: 352, baseType: !324, size: 64, offset: 384)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2600, file: !49, line: 353, baseType: !628, size: 64, offset: 448)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2600, file: !49, line: 355, baseType: !628, size: 64, offset: 512)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2600, file: !49, line: 356, baseType: !81, size: 32, offset: 576)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2600, file: !49, line: 357, baseType: !81, size: 32, offset: 608)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2600, file: !49, line: 358, baseType: !324, size: 64, offset: 640)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2600, file: !49, line: 359, baseType: !324, size: 64, offset: 704)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2600, file: !49, line: 360, baseType: !324, size: 64, offset: 768)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2600, file: !49, line: 361, baseType: !628, size: 64, offset: 832)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2600, file: !49, line: 362, baseType: !81, size: 32, offset: 896)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2565, file: !49, line: 438, baseType: !2619, size: 64, offset: 448)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!81, !445, !2561, !2599}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2565, file: !49, line: 440, baseType: !2596, size: 64, offset: 512)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2565, file: !49, line: 441, baseType: !2624, size: 64, offset: 576)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!81, !445, !2627}
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !49, line: 411, size: 1408, elements: !2629)
!2629 = !{!2630, !2631}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2628, file: !49, line: 412, baseType: !7, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2628, file: !49, line: 413, baseType: !2632, size: 1344, offset: 64)
!2632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2633, size: 1344, elements: !232)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !49, line: 397, size: 448, elements: !2634)
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2645}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2633, file: !49, line: 398, baseType: !7, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2633, file: !49, line: 399, baseType: !7, size: 32, offset: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2633, file: !49, line: 401, baseType: !7, size: 32, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2633, file: !49, line: 402, baseType: !7, size: 32, offset: 96)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2633, file: !49, line: 403, baseType: !7, size: 32, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2633, file: !49, line: 404, baseType: !7, size: 32, offset: 160)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2633, file: !49, line: 405, baseType: !7, size: 32, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2633, file: !49, line: 406, baseType: !326, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2633, file: !49, line: 407, baseType: !2644, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !218, line: 132, baseType: !324)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2633, file: !49, line: 408, baseType: !2644, size: 64, offset: 384)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2565, file: !49, line: 442, baseType: !2575, size: 64, offset: 640)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !446, file: !44, line: 1200, baseType: !2648, size: 64, offset: 576)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2650)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !2651, line: 201, size: 640, elements: !2652)
!2651 = !DIFile(filename: "./include/linux/exportfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b88049a7651ed625da9f6bb7042c568")
!2652 = !{!2653, !2658, !2691, !2692, !2696, !2700, !2701, !2708, !2714, !2751}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "encode_fh", scope: !2650, file: !2651, line: 202, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!81, !331, !2657, !2170, !331}
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "fh_to_dentry", scope: !2650, file: !2651, line: 204, baseType: !2659, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!284, !445, !2662, !81, !81}
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fid", file: !2651, line: 118, size: 160, elements: !2664)
!2664 = !{!2665}
!2665 = !DIDerivedType(tag: DW_TAG_member, scope: !2663, file: !2651, line: 119, baseType: !2666, size: 160)
!2666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2663, file: !2651, line: 119, size: 160, elements: !2667)
!2667 = !{!2668, !2675, !2684}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !2666, file: !2651, line: 125, baseType: !2669, size: 128)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2666, file: !2651, line: 120, size: 128, elements: !2670)
!2670 = !{!2671, !2672, !2673, !2674}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2669, file: !2651, line: 121, baseType: !318, size: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !2669, file: !2651, line: 122, baseType: !318, size: 32, offset: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ino", scope: !2669, file: !2651, line: 123, baseType: !318, size: 32, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2669, file: !2651, line: 124, baseType: !318, size: 32, offset: 96)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "udf", scope: !2666, file: !2651, line: 133, baseType: !2676, size: 160)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2666, file: !2651, line: 126, size: 160, elements: !2677)
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2683}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2676, file: !2651, line: 127, baseType: !318, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "partref", scope: !2676, file: !2651, line: 128, baseType: !383, size: 16, offset: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "parent_partref", scope: !2676, file: !2651, line: 129, baseType: !383, size: 16, offset: 48)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2676, file: !2651, line: 130, baseType: !318, size: 32, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "parent_block", scope: !2676, file: !2651, line: 131, baseType: !318, size: 32, offset: 96)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "parent_generation", scope: !2676, file: !2651, line: 132, baseType: !318, size: 32, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, scope: !2666, file: !2651, line: 134, baseType: !2685)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2666, file: !2651, line: 134, elements: !2686)
!2686 = !{!2687, !2689}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_raw", scope: !2685, file: !2651, line: 134, baseType: !2688)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2685, file: !2651, line: 134, elements: !831)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2685, file: !2651, line: 134, baseType: !2690)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, elements: !932)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "fh_to_parent", scope: !2650, file: !2651, line: 206, baseType: !2659, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2650, file: !2651, line: 208, baseType: !2693, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!81, !284, !434, !284}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2650, file: !2651, line: 210, baseType: !2697, size: 64, offset: 256)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!284, !284}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "commit_metadata", scope: !2650, file: !2651, line: 211, baseType: !2413, size: 64, offset: 320)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "get_uuid", scope: !2650, file: !2651, line: 213, baseType: !2702, size: 64, offset: 384)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!81, !445, !2705, !2706, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "map_blocks", scope: !2650, file: !2651, line: 214, baseType: !2709, size: 64, offset: 448)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!81, !331, !455, !324, !2712, !748, !2706}
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "iomap", file: !2651, line: 10, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "commit_blocks", scope: !2650, file: !2651, line: 217, baseType: !2715, size: 64, offset: 512)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!81, !331, !2712, !81, !2718}
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 226, size: 640, elements: !2720)
!2720 = !{!2721, !2722, !2723, !2733, !2742, !2743, !2748, !2749, !2750}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2719, file: !44, line: 227, baseType: !7, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2719, file: !44, line: 228, baseType: !246, size: 16, offset: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, scope: !2719, file: !44, line: 241, baseType: !2724, size: 32, offset: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2719, file: !44, line: 241, size: 32, elements: !2725)
!2725 = !{!2726, !2727}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2724, file: !44, line: 242, baseType: !250, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !2724, file: !44, line: 243, baseType: !2728, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !2729, line: 16, baseType: !2730)
!2729 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2729, line: 14, size: 32, elements: !2731)
!2731 = !{!2732}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2730, file: !2729, line: 15, baseType: !255, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, scope: !2719, file: !44, line: 245, baseType: !2734, size: 32, offset: 96)
!2734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2719, file: !44, line: 245, size: 32, elements: !2735)
!2735 = !{!2736, !2737}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2734, file: !44, line: 246, baseType: !264, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !2734, file: !44, line: 247, baseType: !2738, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !2729, line: 20, baseType: !2739)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2729, line: 18, size: 32, elements: !2740)
!2740 = !{!2741}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2739, file: !2729, line: 19, baseType: !268, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2719, file: !44, line: 249, baseType: !455, size: 64, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2719, file: !44, line: 250, baseType: !2744, size: 128, offset: 192)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !991, line: 13, size: 128, elements: !2745)
!2745 = !{!2746, !2747}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2744, file: !991, line: 14, baseType: !990, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2744, file: !991, line: 15, baseType: !241, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2719, file: !44, line: 251, baseType: !2744, size: 128, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2719, file: !44, line: 252, baseType: !2744, size: 128, offset: 448)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2719, file: !44, line: 259, baseType: !838, size: 64, offset: 576)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2650, file: !2651, line: 227, baseType: !225, size: 64, offset: 576)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !446, file: !44, line: 1201, baseType: !225, size: 64, offset: 640)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !446, file: !44, line: 1202, baseType: !225, size: 64, offset: 704)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !446, file: !44, line: 1203, baseType: !225, size: 64, offset: 768)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !446, file: !44, line: 1204, baseType: !284, size: 64, offset: 832)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !446, file: !44, line: 1205, baseType: !618, size: 320, offset: 896)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !446, file: !44, line: 1206, baseType: !81, size: 32, offset: 1216)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !446, file: !44, line: 1207, baseType: !368, size: 32, offset: 1248)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !446, file: !44, line: 1209, baseType: !219, size: 64, offset: 1280)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !446, file: !44, line: 1211, baseType: !2761, size: 64, offset: 1344)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2764)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1211, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !446, file: !44, line: 1223, baseType: !2766, size: 64, offset: 1408)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !301, line: 34, size: 64, elements: !2767)
!2767 = !{!2768}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2766, file: !301, line: 35, baseType: !304, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !446, file: !44, line: 1224, baseType: !258, size: 128, offset: 1472)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !446, file: !44, line: 1225, baseType: !2771, size: 64, offset: 1600)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2773, line: 40, size: 7424, elements: !2774)
!2773 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2774 = !{!2775, !2776, !2777, !2780, !2784, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2811, !2812}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2772, file: !2773, line: 41, baseType: !1807, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2772, file: !2773, line: 42, baseType: !1807, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2772, file: !2773, line: 43, baseType: !2778, size: 64, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1408, line: 1453, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2772, file: !2773, line: 44, baseType: !2781, size: 64, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2783, line: 74, flags: DIFlagFwdDecl)
!2783 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2772, file: !2773, line: 45, baseType: !2785, size: 64, offset: 256)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2773, line: 45, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2772, file: !2773, line: 46, baseType: !225, size: 64, offset: 320)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2772, file: !2773, line: 47, baseType: !748, size: 8, offset: 384)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2772, file: !2773, line: 48, baseType: !376, size: 8, offset: 392)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2772, file: !2773, line: 49, baseType: !748, size: 8, offset: 400)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2772, file: !2773, line: 50, baseType: !748, size: 8, offset: 408)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2772, file: !2773, line: 51, baseType: !450, size: 32, offset: 416)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2772, file: !2773, line: 52, baseType: !368, size: 32, offset: 448)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2772, file: !2773, line: 53, baseType: !348, size: 32, offset: 480)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2772, file: !2773, line: 54, baseType: !331, size: 64, offset: 512)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2772, file: !2773, line: 55, baseType: !219, size: 64, offset: 576)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2772, file: !2773, line: 56, baseType: !219, size: 64, offset: 640)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2772, file: !2773, line: 57, baseType: !2799, size: 64, offset: 704)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2801)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2773, line: 57, flags: DIFlagFwdDecl)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2772, file: !2773, line: 58, baseType: !857, size: 256, offset: 768)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2772, file: !2773, line: 60, baseType: !81, size: 32, offset: 1024)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2772, file: !2773, line: 61, baseType: !81, size: 32, offset: 1056)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2772, file: !2773, line: 62, baseType: !503, size: 64, offset: 1088)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2772, file: !2773, line: 65, baseType: !857, size: 256, offset: 1152)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2772, file: !2773, line: 66, baseType: !445, size: 64, offset: 1408)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2772, file: !2773, line: 68, baseType: !2809, size: 64, offset: 1472)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2773, line: 68, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2772, file: !2773, line: 72, baseType: !748, size: 8, offset: 1536)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2772, file: !2773, line: 77, baseType: !2813, size: 5824, offset: 1600)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !61, line: 705, size: 5824, elements: !2814)
!2814 = !{!2815, !2816, !2818, !2821, !2822, !2875, !2945, !2946, !2947, !2948, !2949, !2956, !3116, !3129, !3139, !3143, !3144, !3145, !3146, !3150, !3157, !3158, !3161, !3164, !3168, !3171, !3172, !3173, !3174, !3175, !3176, !3206, !3207, !3208, !3211, !3214, !3223, !3224, !3225, !3226, !3227, !3228}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2813, file: !61, line: 706, baseType: !497, size: 512)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2813, file: !61, line: 707, baseType: !2817, size: 64, offset: 512)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2813, file: !61, line: 709, baseType: !2819, size: 64, offset: 576)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !61, line: 37, flags: DIFlagFwdDecl)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2813, file: !61, line: 711, baseType: !408, size: 64, offset: 640)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2813, file: !61, line: 712, baseType: !2823, size: 64, offset: 704)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2825)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !61, line: 89, size: 384, elements: !2826)
!2826 = !{!2827, !2828, !2829, !2835, !2840, !2844}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2825, file: !61, line: 90, baseType: !408, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2825, file: !61, line: 91, baseType: !582, size: 64, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2825, file: !61, line: 92, baseType: !2830, size: 64, offset: 128)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!81, !2833, !533}
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2813)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2825, file: !61, line: 93, baseType: !2836, size: 64, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!434, !2833, !2839, !1912, !1913}
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2825, file: !61, line: 95, baseType: !2841, size: 64, offset: 256)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{null, !2817}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2825, file: !61, line: 97, baseType: !2845, size: 64, offset: 320)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2847)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !73, line: 286, size: 1472, elements: !2848)
!2848 = !{!2849, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2847, file: !73, line: 287, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!81, !2817}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2847, file: !73, line: 288, baseType: !2841, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2847, file: !73, line: 289, baseType: !2850, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2847, file: !73, line: 290, baseType: !2850, size: 64, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2847, file: !73, line: 291, baseType: !2850, size: 64, offset: 256)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2847, file: !73, line: 292, baseType: !2850, size: 64, offset: 320)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2847, file: !73, line: 293, baseType: !2850, size: 64, offset: 384)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2847, file: !73, line: 294, baseType: !2850, size: 64, offset: 448)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2847, file: !73, line: 295, baseType: !2850, size: 64, offset: 512)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2847, file: !73, line: 296, baseType: !2850, size: 64, offset: 576)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2847, file: !73, line: 297, baseType: !2850, size: 64, offset: 640)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2847, file: !73, line: 298, baseType: !2850, size: 64, offset: 704)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2847, file: !73, line: 299, baseType: !2850, size: 64, offset: 768)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2847, file: !73, line: 300, baseType: !2850, size: 64, offset: 832)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2847, file: !73, line: 301, baseType: !2850, size: 64, offset: 896)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2847, file: !73, line: 302, baseType: !2850, size: 64, offset: 960)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2847, file: !73, line: 303, baseType: !2850, size: 64, offset: 1024)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2847, file: !73, line: 304, baseType: !2850, size: 64, offset: 1088)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2847, file: !73, line: 305, baseType: !2850, size: 64, offset: 1152)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2847, file: !73, line: 306, baseType: !2850, size: 64, offset: 1216)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2847, file: !73, line: 307, baseType: !2850, size: 64, offset: 1280)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2847, file: !73, line: 308, baseType: !2850, size: 64, offset: 1344)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2847, file: !73, line: 309, baseType: !2850, size: 64, offset: 1408)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2813, file: !61, line: 714, baseType: !2876, size: 64, offset: 768)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2878)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2879, line: 80, size: 1344, elements: !2880)
!2879 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2880 = !{!2881, !2882, !2883, !2884, !2885, !2886, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2944}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2878, file: !2879, line: 81, baseType: !408, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2878, file: !2879, line: 82, baseType: !408, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2878, file: !2879, line: 83, baseType: !582, size: 64, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2878, file: !2879, line: 84, baseType: !582, size: 64, offset: 192)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2878, file: !2879, line: 85, baseType: !582, size: 64, offset: 256)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2878, file: !2879, line: 87, baseType: !2887, size: 64, offset: 320)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!81, !2817, !2890}
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !55, line: 96, size: 1152, elements: !2892)
!2892 = !{!2893, !2894, !2895, !2896, !2897, !2898, !2899, !2903, !2907, !2908, !2909, !2910, !2911, !2919, !2920, !2921, !2922, !2923, !2924}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2891, file: !55, line: 97, baseType: !408, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2891, file: !55, line: 98, baseType: !2876, size: 64, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2891, file: !55, line: 100, baseType: !484, size: 64, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2891, file: !55, line: 101, baseType: !408, size: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2891, file: !55, line: 103, baseType: !748, size: 8, offset: 256)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2891, file: !55, line: 104, baseType: !54, size: 32, offset: 288)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2891, file: !55, line: 106, baseType: !2900, size: 64, offset: 320)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2902)
!2902 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !55, line: 106, flags: DIFlagFwdDecl)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2891, file: !55, line: 107, baseType: !2904, size: 64, offset: 384)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2906)
!2906 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !55, line: 107, flags: DIFlagFwdDecl)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2891, file: !55, line: 109, baseType: !2850, size: 64, offset: 448)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2891, file: !55, line: 110, baseType: !2841, size: 64, offset: 512)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2891, file: !55, line: 111, baseType: !2850, size: 64, offset: 576)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2891, file: !55, line: 112, baseType: !2841, size: 64, offset: 640)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2891, file: !55, line: 113, baseType: !2912, size: 64, offset: 704)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!81, !2817, !2915}
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !73, line: 60, baseType: !2916)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !73, line: 58, size: 32, elements: !2917)
!2917 = !{!2918}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2916, file: !73, line: 59, baseType: !81, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2891, file: !55, line: 114, baseType: !2850, size: 64, offset: 768)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2891, file: !55, line: 115, baseType: !582, size: 64, offset: 832)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2891, file: !55, line: 116, baseType: !582, size: 64, offset: 896)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2891, file: !55, line: 118, baseType: !2845, size: 64, offset: 960)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2891, file: !55, line: 119, baseType: !2841, size: 64, offset: 1024)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2891, file: !55, line: 121, baseType: !2925, size: 64, offset: 1088)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !55, line: 121, flags: DIFlagFwdDecl)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2878, file: !2879, line: 88, baseType: !2830, size: 64, offset: 384)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2878, file: !2879, line: 89, baseType: !2850, size: 64, offset: 448)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2878, file: !2879, line: 90, baseType: !2841, size: 64, offset: 512)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2878, file: !2879, line: 91, baseType: !2841, size: 64, offset: 576)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2878, file: !2879, line: 92, baseType: !2841, size: 64, offset: 640)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2878, file: !2879, line: 94, baseType: !2850, size: 64, offset: 704)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2878, file: !2879, line: 95, baseType: !2850, size: 64, offset: 768)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2878, file: !2879, line: 97, baseType: !2912, size: 64, offset: 832)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2878, file: !2879, line: 98, baseType: !2850, size: 64, offset: 896)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2878, file: !2879, line: 100, baseType: !2850, size: 64, offset: 960)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2878, file: !2879, line: 102, baseType: !2850, size: 64, offset: 1024)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2878, file: !2879, line: 103, baseType: !2841, size: 64, offset: 1088)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2878, file: !2879, line: 105, baseType: !2845, size: 64, offset: 1152)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2878, file: !2879, line: 107, baseType: !2941, size: 64, offset: 1216)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2943)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2879, line: 107, flags: DIFlagFwdDecl)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2878, file: !2879, line: 109, baseType: !748, size: 8, offset: 1280)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2813, file: !61, line: 715, baseType: !2890, size: 64, offset: 832)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2813, file: !61, line: 717, baseType: !219, size: 64, offset: 896)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2813, file: !61, line: 719, baseType: !219, size: 64, offset: 960)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2813, file: !61, line: 721, baseType: !857, size: 256, offset: 1024)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2813, file: !61, line: 725, baseType: !2950, size: 448, offset: 1280)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !61, line: 517, size: 448, elements: !2951)
!2951 = !{!2952, !2953, !2954, !2955}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2950, file: !61, line: 518, baseType: !258, size: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2950, file: !61, line: 519, baseType: !258, size: 128, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2950, file: !61, line: 520, baseType: !258, size: 128, offset: 256)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2950, file: !61, line: 521, baseType: !60, size: 32, offset: 384)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2813, file: !61, line: 726, baseType: !2957, size: 2496, offset: 1728)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !73, line: 663, size: 2496, elements: !2958)
!2958 = !{!2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !3003, !3004, !3005, !3006, !3007, !3008, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3109, !3113}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2957, file: !73, line: 664, baseType: !2915, size: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2957, file: !73, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2957, file: !73, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2957, file: !73, line: 667, baseType: !748, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2957, file: !73, line: 668, baseType: !748, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2957, file: !73, line: 669, baseType: !748, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2957, file: !73, line: 670, baseType: !748, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2957, file: !73, line: 671, baseType: !748, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2957, file: !73, line: 672, baseType: !748, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2957, file: !73, line: 673, baseType: !748, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2957, file: !73, line: 674, baseType: !748, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2957, file: !73, line: 675, baseType: !318, size: 32, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2957, file: !73, line: 676, baseType: !348, size: 32, offset: 96)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2957, file: !73, line: 678, baseType: !258, size: 128, offset: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2957, file: !73, line: 679, baseType: !762, size: 256, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2957, file: !73, line: 680, baseType: !2975, size: 64, offset: 512)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2977, line: 43, size: 1536, elements: !2978)
!2977 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2978 = !{!2979, !2980, !2981, !2982, !2983, !2986, !2987, !2988, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2976, file: !2977, line: 44, baseType: !408, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2976, file: !2977, line: 45, baseType: !81, size: 32, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2976, file: !2977, line: 46, baseType: !258, size: 128, offset: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2976, file: !2977, line: 47, baseType: !348, size: 32, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2976, file: !2977, line: 48, baseType: !2984, size: 64, offset: 320)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !73, line: 629, flags: DIFlagFwdDecl)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2976, file: !2977, line: 49, baseType: !2270, size: 320, offset: 384)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2976, file: !2977, line: 50, baseType: !225, size: 64, offset: 704)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2976, file: !2977, line: 51, baseType: !2989, size: 64, offset: 768)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2990, line: 29, baseType: !628)
!2990 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2976, file: !2977, line: 52, baseType: !2989, size: 64, offset: 832)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2976, file: !2977, line: 53, baseType: !2989, size: 64, offset: 896)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2976, file: !2977, line: 54, baseType: !2989, size: 64, offset: 960)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2976, file: !2977, line: 55, baseType: !2989, size: 64, offset: 1024)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2976, file: !2977, line: 56, baseType: !225, size: 64, offset: 1088)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2976, file: !2977, line: 57, baseType: !225, size: 64, offset: 1152)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2976, file: !2977, line: 58, baseType: !225, size: 64, offset: 1216)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2976, file: !2977, line: 59, baseType: !225, size: 64, offset: 1280)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2976, file: !2977, line: 60, baseType: !225, size: 64, offset: 1344)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2976, file: !2977, line: 61, baseType: !2817, size: 64, offset: 1408)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2976, file: !2977, line: 62, baseType: !748, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2976, file: !2977, line: 63, baseType: !748, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2957, file: !73, line: 681, baseType: !748, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2957, file: !73, line: 682, baseType: !748, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2957, file: !73, line: 683, baseType: !748, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2957, file: !73, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2957, file: !73, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2957, file: !73, line: 690, baseType: !3009, size: 512, offset: 640)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !68, line: 118, size: 512, elements: !3010)
!3010 = !{!3011, !3017, !3018, !3023, !3071, !3072, !3073, !3074}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3009, file: !68, line: 119, baseType: !3012, size: 256)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3013, line: 9, size: 256, elements: !3014)
!3013 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3014 = !{!3015, !3016}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3012, file: !3013, line: 10, baseType: !650, size: 192, align: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3012, file: !3013, line: 11, baseType: !2989, size: 64, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3009, file: !68, line: 120, baseType: !2989, size: 64, offset: 256)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3009, file: !68, line: 121, baseType: !3019, size: 64, offset: 320)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!67, !3022}
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3009, file: !68, line: 122, baseType: !3024, size: 64, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !68, line: 159, size: 512, align: 512, elements: !3026)
!3026 = !{!3027, !3052, !3053, !3056, !3061, !3062, !3066, !3070}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3025, file: !68, line: 160, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !68, line: 215, size: 4608, align: 512, elements: !3030)
!3030 = !{!3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3029, file: !68, line: 216, baseType: !637, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3029, file: !68, line: 217, baseType: !7, size: 32, offset: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3029, file: !68, line: 218, baseType: !7, size: 32, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3029, file: !68, line: 219, baseType: !7, size: 32, offset: 96)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3029, file: !68, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3029, file: !68, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3029, file: !68, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3029, file: !68, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3029, file: !68, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3029, file: !68, line: 226, baseType: !7, size: 32, offset: 160)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3029, file: !68, line: 227, baseType: !247, size: 16, offset: 192)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3029, file: !68, line: 228, baseType: !247, size: 16, offset: 208)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3029, file: !68, line: 229, baseType: !7, size: 32, offset: 224)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3029, file: !68, line: 235, baseType: !2989, size: 64, offset: 256)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3029, file: !68, line: 236, baseType: !3022, size: 64, offset: 320)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3029, file: !68, line: 237, baseType: !2989, size: 64, offset: 384)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3029, file: !68, line: 238, baseType: !3022, size: 64, offset: 448)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3029, file: !68, line: 239, baseType: !3049, size: 4096, align: 512, offset: 512)
!3049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3025, size: 4096, align: 512, elements: !3050)
!3050 = !{!3051}
!3051 = !DISubrange(count: 8)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3025, file: !68, line: 161, baseType: !7, size: 32, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3025, file: !68, line: 162, baseType: !3054, size: 32, offset: 96)
!3054 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !218, line: 32, baseType: !3055)
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !239, line: 96, baseType: !81)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3025, file: !68, line: 163, baseType: !3057, size: 32, offset: 128)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !291, line: 274, baseType: !3058)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !291, line: 274, size: 32, elements: !3059)
!3059 = !{!3060}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3058, file: !291, line: 274, baseType: !295, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3025, file: !68, line: 164, baseType: !3022, size: 64, offset: 192)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3025, file: !68, line: 165, baseType: !3063, size: 128, offset: 256)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3013, line: 14, size: 128, elements: !3064)
!3064 = !{!3065}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3063, file: !3013, line: 15, baseType: !642, size: 128)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3025, file: !68, line: 166, baseType: !3067, size: 64, offset: 384)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!2989}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3025, file: !68, line: 167, baseType: !2989, size: 64, offset: 448)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3009, file: !68, line: 123, baseType: !376, size: 8, offset: 448)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3009, file: !68, line: 124, baseType: !376, size: 8, offset: 456)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3009, file: !68, line: 125, baseType: !376, size: 8, offset: 464)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3009, file: !68, line: 126, baseType: !376, size: 8, offset: 472)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2957, file: !73, line: 691, baseType: !324, size: 64, offset: 1152)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2957, file: !73, line: 692, baseType: !1589, size: 256, offset: 1216)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2957, file: !73, line: 693, baseType: !917, size: 192, offset: 1472)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2957, file: !73, line: 694, baseType: !2984, size: 64, offset: 1664)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2957, file: !73, line: 695, baseType: !368, size: 32, offset: 1728)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2957, file: !73, line: 696, baseType: !368, size: 32, offset: 1760)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2957, file: !73, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2957, file: !73, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2957, file: !73, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2957, file: !73, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2957, file: !73, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2957, file: !73, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2957, file: !73, line: 703, baseType: !748, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2957, file: !73, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2957, file: !73, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2957, file: !73, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2957, file: !73, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2957, file: !73, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2957, file: !73, line: 709, baseType: !7, size: 32, offset: 1824)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2957, file: !73, line: 710, baseType: !72, size: 32, offset: 1856)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2957, file: !73, line: 711, baseType: !80, size: 32, offset: 1888)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2957, file: !73, line: 712, baseType: !80, size: 32, offset: 1920)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2957, file: !73, line: 713, baseType: !81, size: 32, offset: 1952)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2957, file: !73, line: 714, baseType: !81, size: 32, offset: 1984)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2957, file: !73, line: 715, baseType: !324, size: 64, offset: 2048)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2957, file: !73, line: 716, baseType: !324, size: 64, offset: 2112)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2957, file: !73, line: 717, baseType: !324, size: 64, offset: 2176)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2957, file: !73, line: 718, baseType: !324, size: 64, offset: 2240)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2957, file: !73, line: 720, baseType: !3104, size: 64, offset: 2304)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !73, line: 632, size: 64, elements: !3106)
!3106 = !{!3107, !3108}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3105, file: !73, line: 633, baseType: !348, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3105, file: !73, line: 634, baseType: !7, size: 32, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2957, file: !73, line: 721, baseType: !3110, size: 64, offset: 2368)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{null, !2817, !974}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2957, file: !73, line: 722, baseType: !3114, size: 64, offset: 2432)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !73, line: 722, flags: DIFlagFwdDecl)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2813, file: !61, line: 727, baseType: !3117, size: 64, offset: 4224)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !73, line: 742, size: 1792, elements: !3119)
!3119 = !{!3120, !3121, !3122, !3126, !3127, !3128}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3118, file: !73, line: 743, baseType: !2847, size: 1472)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3118, file: !73, line: 744, baseType: !2850, size: 64, offset: 1472)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3118, file: !73, line: 745, baseType: !3123, size: 64, offset: 1536)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{null, !2817, !748}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3118, file: !73, line: 746, baseType: !2850, size: 64, offset: 1600)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3118, file: !73, line: 747, baseType: !2841, size: 64, offset: 1664)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3118, file: !73, line: 748, baseType: !2841, size: 64, offset: 1728)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2813, file: !61, line: 736, baseType: !3130, size: 128, offset: 4288)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !61, line: 529, size: 128, elements: !3131)
!3131 = !{!3132, !3136}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3130, file: !61, line: 531, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3135, line: 13, flags: DIFlagFwdDecl)
!3135 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3130, file: !61, line: 532, baseType: !3137, size: 64, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !61, line: 49, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2813, file: !61, line: 738, baseType: !3140, size: 64, offset: 4416)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3142)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !61, line: 738, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2813, file: !61, line: 740, baseType: !2707, size: 64, offset: 4480)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2813, file: !61, line: 741, baseType: !324, size: 64, offset: 4544)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2813, file: !61, line: 746, baseType: !324, size: 64, offset: 4608)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2813, file: !61, line: 747, baseType: !3147, size: 64, offset: 4672)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3149)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !61, line: 747, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2813, file: !61, line: 749, baseType: !3151, size: 64, offset: 4736)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !61, line: 428, size: 128, elements: !3153)
!3153 = !{!3154, !3155, !3156}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3152, file: !61, line: 433, baseType: !7, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3152, file: !61, line: 434, baseType: !7, size: 32, offset: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3152, file: !61, line: 435, baseType: !225, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2813, file: !61, line: 751, baseType: !258, size: 128, offset: 4800)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2813, file: !61, line: 762, baseType: !3159, size: 64, offset: 4928)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !61, line: 762, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2813, file: !61, line: 770, baseType: !3162, offset: 4992)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3163, line: 5, elements: !831)
!3163 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2813, file: !61, line: 772, baseType: !3165, size: 64, offset: 4992)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3167, line: 18, flags: DIFlagFwdDecl)
!3167 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2813, file: !61, line: 773, baseType: !3169, size: 64, offset: 5056)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2879, line: 22, flags: DIFlagFwdDecl)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2813, file: !61, line: 776, baseType: !81, size: 32, offset: 5120)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2813, file: !61, line: 778, baseType: !450, size: 32, offset: 5152)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2813, file: !61, line: 779, baseType: !318, size: 32, offset: 5184)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2813, file: !61, line: 781, baseType: !348, size: 32, offset: 5216)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2813, file: !61, line: 782, baseType: !258, size: 128, offset: 5248)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2813, file: !61, line: 784, baseType: !3177, size: 64, offset: 5376)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3179)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3180, line: 52, size: 768, elements: !3181)
!3180 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3181 = !{!3182, !3183, !3184, !3185, !3186, !3190, !3194, !3195, !3196, !3197, !3201, !3205}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3179, file: !3180, line: 53, baseType: !408, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3179, file: !3180, line: 55, baseType: !582, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3179, file: !3180, line: 56, baseType: !582, size: 64, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3179, file: !3180, line: 58, baseType: !2830, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3179, file: !3180, line: 59, baseType: !3187, size: 64, offset: 256)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!434, !2833, !2839}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3179, file: !3180, line: 61, baseType: !3191, size: 64, offset: 320)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{null, !3177}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3179, file: !3180, line: 62, baseType: !2841, size: 64, offset: 384)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3179, file: !3180, line: 64, baseType: !2850, size: 64, offset: 448)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3179, file: !3180, line: 66, baseType: !1877, size: 64, offset: 512)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3179, file: !3180, line: 67, baseType: !3198, size: 64, offset: 576)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!1550, !2833}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3179, file: !3180, line: 69, baseType: !3202, size: 64, offset: 640)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{null, !2833, !1912, !1913}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3179, file: !3180, line: 71, baseType: !2845, size: 64, offset: 704)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2813, file: !61, line: 785, baseType: !582, size: 64, offset: 5440)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2813, file: !61, line: 787, baseType: !2841, size: 64, offset: 5504)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2813, file: !61, line: 788, baseType: !3209, size: 64, offset: 5568)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !61, line: 46, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2813, file: !61, line: 789, baseType: !3212, size: 64, offset: 5632)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !61, line: 48, flags: DIFlagFwdDecl)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2813, file: !61, line: 791, baseType: !3215, size: 64, offset: 5696)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !61, line: 597, size: 128, elements: !3217)
!3217 = !{!3218, !3219, !3220, !3221, !3222}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3216, file: !61, line: 598, baseType: !88, size: 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3216, file: !61, line: 599, baseType: !97, size: 32, offset: 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3216, file: !61, line: 600, baseType: !102, size: 32, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3216, file: !61, line: 601, baseType: !748, size: 8, offset: 96)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3216, file: !61, line: 602, baseType: !748, size: 8, offset: 104)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2813, file: !61, line: 793, baseType: !107, size: 32, offset: 5760)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2813, file: !61, line: 795, baseType: !748, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2813, file: !61, line: 796, baseType: !748, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2813, file: !61, line: 797, baseType: !748, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2813, file: !61, line: 798, baseType: !748, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2813, file: !61, line: 799, baseType: !748, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !446, file: !44, line: 1226, baseType: !3230, size: 64, offset: 1664)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !44, line: 1226, flags: DIFlagFwdDecl)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !446, file: !44, line: 1227, baseType: !3233, size: 64, offset: 1728)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !446, file: !44, line: 1228, baseType: !3236, size: 64, offset: 1792)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1228, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !446, file: !44, line: 1229, baseType: !908, size: 128, offset: 1856)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !446, file: !44, line: 1230, baseType: !7, size: 32, offset: 1984)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !446, file: !44, line: 1231, baseType: !3241, size: 2496, offset: 2048)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !49, line: 521, size: 2496, elements: !3242)
!3242 = !{!3243, !3244, !3245, !3247, !3279}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3241, file: !49, line: 522, baseType: !7, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3241, file: !49, line: 523, baseType: !618, size: 320, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3241, file: !49, line: 524, baseType: !3246, size: 192, offset: 384)
!3246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 192, elements: !232)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3241, file: !49, line: 525, baseType: !3248, size: 1728, offset: 576)
!3248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3249, size: 1728, elements: !232)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !49, line: 222, size: 576, elements: !3250)
!3250 = !{!3251, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3249, file: !49, line: 223, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !49, line: 445, size: 256, elements: !3254)
!3254 = !{!3255, !3256, !3269, !3270}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3253, file: !49, line: 446, baseType: !81, size: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3253, file: !49, line: 447, baseType: !3257, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3259)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !49, line: 312, size: 512, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3259, file: !49, line: 313, baseType: !2419, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3259, file: !49, line: 314, baseType: !2419, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3259, file: !49, line: 315, baseType: !2419, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3259, file: !49, line: 316, baseType: !2419, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3259, file: !49, line: 317, baseType: !2528, size: 64, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3259, file: !49, line: 318, baseType: !2528, size: 64, offset: 320)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3259, file: !49, line: 319, baseType: !2528, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3259, file: !49, line: 320, baseType: !2558, size: 64, offset: 448)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3253, file: !49, line: 448, baseType: !484, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3253, file: !49, line: 449, baseType: !3252, size: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3249, file: !49, line: 224, baseType: !81, size: 32, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3249, file: !49, line: 226, baseType: !258, size: 128, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3249, file: !49, line: 227, baseType: !225, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3249, file: !49, line: 228, baseType: !7, size: 32, offset: 320)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3249, file: !49, line: 229, baseType: !7, size: 32, offset: 352)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3249, file: !49, line: 230, baseType: !2496, size: 64, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3249, file: !49, line: 231, baseType: !2496, size: 64, offset: 448)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3249, file: !49, line: 232, baseType: !219, size: 64, offset: 512)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3241, file: !49, line: 526, baseType: !3280, size: 192, offset: 2304)
!3280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3257, size: 192, elements: !232)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !446, file: !44, line: 1233, baseType: !3282, size: 2368, offset: 4544)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1184, size: 2368, elements: !3283)
!3283 = !{!3284, !3285, !3286}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3282, file: !44, line: 1185, baseType: !247, size: 16)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3282, file: !44, line: 1186, baseType: !247, size: 16, offset: 16)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3282, file: !44, line: 1187, baseType: !3287, size: 2304, offset: 64)
!3287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3288, size: 2304, elements: !232)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3289, line: 12, size: 768, elements: !3290)
!3289 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3290 = !{!3291, !3299, !3300, !4505, !4506}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3288, file: !3289, line: 13, baseType: !3292, size: 384)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3293, line: 17, size: 384, elements: !3294)
!3293 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3294 = !{!3295, !3296, !3297, !3298}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3292, file: !3293, line: 18, baseType: !81, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3292, file: !3293, line: 19, baseType: !81, size: 32, offset: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3292, file: !3293, line: 20, baseType: !917, size: 192, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3292, file: !3293, line: 22, baseType: !752, size: 128, align: 64, offset: 256)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3288, file: !3289, line: 14, baseType: !2122, size: 64, offset: 384)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3288, file: !3289, line: 15, baseType: !3301, size: 64, offset: 448)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3302, line: 16, size: 64, elements: !3303)
!3302 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3303 = !{!3304}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3301, file: !3302, line: 17, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1408, line: 746, size: 58368, elements: !3307)
!3307 = !{!3308, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3388, !3399, !3419, !3423, !3426, !3457, !3458, !3459, !3460, !3471, !3473, !3474, !3475, !3476, !3477, !3478, !3489, !3490, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3507, !3508, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3595, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3643, !3649, !3650, !3651, !3652, !3653, !3657, !3660, !3667, !3672, !3675, !3678, !3681, !3685, !3823, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3861, !3862, !3863, !3872, !3880, !3881, !3882, !3883, !3884, !3889, !3890, !3891, !3894, !3895, !3985, !3988, !3991, !3998, !4001, !4002, !4088, !4089, !4090, !4091, !4092, !4098, !4099, !4100, !4101, !4104, !4105, !4108, !4111, !4112, !4115, !4116, !4117, !4120, !4121, !4122, !4123, !4124, !4125, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4157, !4158, !4164, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4246, !4248, !4249, !4250, !4251, !4252, !4253, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4282, !4283, !4284}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3306, file: !1408, line: 752, baseType: !3309, size: 192)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3310, line: 56, size: 192, elements: !3311)
!3310 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3311 = !{!3312, !3313, !3314, !3315}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3309, file: !3310, line: 57, baseType: !225, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3309, file: !3310, line: 58, baseType: !225, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3309, file: !3310, line: 59, baseType: !318, size: 32, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3309, file: !3310, line: 61, baseType: !318, size: 32, offset: 160)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3306, file: !1408, line: 754, baseType: !7, size: 32, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3306, file: !1408, line: 767, baseType: !219, size: 64, offset: 256)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3306, file: !1408, line: 768, baseType: !895, size: 32, offset: 320)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3306, file: !1408, line: 770, baseType: !7, size: 32, offset: 352)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3306, file: !1408, line: 771, baseType: !7, size: 32, offset: 384)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3306, file: !1408, line: 774, baseType: !81, size: 32, offset: 416)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3306, file: !1408, line: 775, baseType: !3323, size: 128, offset: 448)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3324, line: 58, size: 128, elements: !3325)
!3324 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3325 = !{!3326, !3327, !3332, !3333}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3323, file: !3324, line: 59, baseType: !845, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, scope: !3323, file: !3324, line: 60, baseType: !3328, size: 32, offset: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3323, file: !3324, line: 60, size: 32, elements: !3329)
!3329 = !{!3330, !3331}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3328, file: !3324, line: 61, baseType: !7, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3328, file: !3324, line: 62, baseType: !368, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3323, file: !3324, line: 65, baseType: !383, size: 16, offset: 96)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3323, file: !3324, line: 65, baseType: !383, size: 16, offset: 112)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3306, file: !1408, line: 776, baseType: !7, size: 32, offset: 576)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3306, file: !1408, line: 777, baseType: !225, size: 64, offset: 640)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3306, file: !1408, line: 778, baseType: !3305, size: 64, offset: 704)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3306, file: !1408, line: 787, baseType: !81, size: 32, offset: 768)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3306, file: !1408, line: 788, baseType: !81, size: 32, offset: 800)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3306, file: !1408, line: 790, baseType: !81, size: 32, offset: 832)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3306, file: !1408, line: 792, baseType: !81, size: 32, offset: 864)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3306, file: !1408, line: 793, baseType: !81, size: 32, offset: 896)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3306, file: !1408, line: 794, baseType: !81, size: 32, offset: 928)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3306, file: !1408, line: 795, baseType: !7, size: 32, offset: 960)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3306, file: !1408, line: 797, baseType: !3345, size: 2048, offset: 1024)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1408, line: 551, size: 2048, elements: !3346)
!3346 = !{!3347, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3367, !3370, !3371, !3372}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3345, file: !1408, line: 553, baseType: !3348, size: 128)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1408, line: 411, size: 128, elements: !3349)
!3349 = !{!3350, !3351}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3348, file: !1408, line: 412, baseType: !225, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3348, file: !1408, line: 413, baseType: !318, size: 32, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3345, file: !1408, line: 554, baseType: !650, size: 192, align: 64, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3345, file: !1408, line: 555, baseType: !324, size: 64, offset: 320)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3345, file: !1408, line: 556, baseType: !324, size: 64, offset: 384)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3345, file: !1408, line: 558, baseType: !258, size: 128, offset: 448)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3345, file: !1408, line: 559, baseType: !7, size: 32, offset: 576)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3345, file: !1408, line: 561, baseType: !324, size: 64, offset: 640)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3345, file: !1408, line: 562, baseType: !324, size: 64, offset: 704)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3345, file: !1408, line: 563, baseType: !324, size: 64, offset: 768)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3345, file: !1408, line: 564, baseType: !324, size: 64, offset: 832)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3345, file: !1408, line: 565, baseType: !628, size: 64, offset: 896)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3345, file: !1408, line: 566, baseType: !324, size: 64, offset: 960)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3345, file: !1408, line: 568, baseType: !324, size: 64, offset: 1024)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3345, file: !1408, line: 571, baseType: !81, size: 32, offset: 1088)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3345, file: !1408, line: 572, baseType: !3366, size: 64, offset: 1152)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3345, file: !1408, line: 574, baseType: !3368, size: 64, offset: 1216)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1408, line: 49, flags: DIFlagFwdDecl)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3345, file: !1408, line: 576, baseType: !3368, size: 64, offset: 1280)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3345, file: !1408, line: 578, baseType: !225, size: 64, offset: 1344)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3345, file: !1408, line: 588, baseType: !3373, size: 512, align: 512, offset: 1536)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1408, line: 497, size: 512, align: 512, elements: !3374)
!3374 = !{!3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3373, file: !1408, line: 498, baseType: !324, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3373, file: !1408, line: 499, baseType: !324, size: 64, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3373, file: !1408, line: 500, baseType: !324, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3373, file: !1408, line: 501, baseType: !318, size: 32, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3373, file: !1408, line: 502, baseType: !318, size: 32, offset: 224)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3373, file: !1408, line: 503, baseType: !225, size: 64, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3373, file: !1408, line: 504, baseType: !225, size: 64, offset: 320)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3373, file: !1408, line: 505, baseType: !225, size: 64, offset: 384)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3373, file: !1408, line: 506, baseType: !3384, size: 64, align: 64, offset: 448)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1408, line: 445, size: 64, align: 64, elements: !3385)
!3385 = !{!3386, !3387}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3384, file: !1408, line: 446, baseType: !7, size: 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3384, file: !1408, line: 447, baseType: !7, size: 32, offset: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3306, file: !1408, line: 798, baseType: !3389, size: 384, offset: 3072)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1408, line: 592, size: 384, elements: !3390)
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3396, !3397}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3389, file: !1408, line: 593, baseType: !258, size: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3389, file: !1408, line: 594, baseType: !225, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3389, file: !1408, line: 595, baseType: !225, size: 64, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3389, file: !1408, line: 596, baseType: !7, size: 32, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3389, file: !1408, line: 597, baseType: !247, size: 16, offset: 288)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3389, file: !1408, line: 598, baseType: !247, size: 16, offset: 304)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3389, file: !1408, line: 600, baseType: !3398, size: 64, offset: 320)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3306, file: !1408, line: 799, baseType: !3400, size: 1792, offset: 3456)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1408, line: 610, size: 1792, elements: !3401)
!3401 = !{!3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3400, file: !1408, line: 611, baseType: !650, size: 192, align: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3400, file: !1408, line: 618, baseType: !324, size: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3400, file: !1408, line: 619, baseType: !324, size: 64, offset: 256)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3400, file: !1408, line: 620, baseType: !324, size: 64, offset: 320)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3400, file: !1408, line: 621, baseType: !324, size: 64, offset: 384)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3400, file: !1408, line: 622, baseType: !324, size: 64, offset: 448)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3400, file: !1408, line: 629, baseType: !628, size: 64, offset: 512)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3400, file: !1408, line: 630, baseType: !324, size: 64, offset: 576)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3400, file: !1408, line: 631, baseType: !7, size: 32, offset: 640)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3400, file: !1408, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3400, file: !1408, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3400, file: !1408, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3400, file: !1408, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3400, file: !1408, line: 662, baseType: !3009, size: 512, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3400, file: !1408, line: 671, baseType: !3009, size: 512, offset: 1216)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3400, file: !1408, line: 679, baseType: !3418, size: 64, offset: 1728)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3306, file: !1408, line: 800, baseType: !3420, size: 64, offset: 5248)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3422)
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1408, line: 800, flags: DIFlagFwdDecl)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3306, file: !1408, line: 809, baseType: !3424, size: 64, offset: 5312)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1408, line: 70, flags: DIFlagFwdDecl)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3306, file: !1408, line: 825, baseType: !3427, size: 2048, align: 512, offset: 5632)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1408, line: 509, size: 2048, align: 512, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3427, file: !1408, line: 511, baseType: !324, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3427, file: !1408, line: 512, baseType: !324, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3427, file: !1408, line: 513, baseType: !324, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3427, file: !1408, line: 514, baseType: !324, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3427, file: !1408, line: 515, baseType: !324, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3427, file: !1408, line: 516, baseType: !324, size: 64, offset: 320)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3427, file: !1408, line: 518, baseType: !324, size: 64, offset: 384)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3427, file: !1408, line: 519, baseType: !324, size: 64, offset: 448)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3427, file: !1408, line: 520, baseType: !628, size: 64, offset: 512)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3427, file: !1408, line: 522, baseType: !324, size: 64, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3427, file: !1408, line: 523, baseType: !324, size: 64, offset: 640)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3427, file: !1408, line: 524, baseType: !628, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3427, file: !1408, line: 526, baseType: !628, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3427, file: !1408, line: 527, baseType: !324, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3427, file: !1408, line: 529, baseType: !324, size: 64, offset: 896)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3427, file: !1408, line: 530, baseType: !324, size: 64, offset: 960)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3427, file: !1408, line: 531, baseType: !324, size: 64, offset: 1024)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3427, file: !1408, line: 532, baseType: !324, size: 64, offset: 1088)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3427, file: !1408, line: 533, baseType: !324, size: 64, offset: 1152)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3427, file: !1408, line: 535, baseType: !324, size: 64, offset: 1216)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3427, file: !1408, line: 536, baseType: !324, size: 64, offset: 1280)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3427, file: !1408, line: 537, baseType: !324, size: 64, offset: 1344)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3427, file: !1408, line: 538, baseType: !324, size: 64, offset: 1408)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3427, file: !1408, line: 539, baseType: !324, size: 64, offset: 1472)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3427, file: !1408, line: 540, baseType: !324, size: 64, offset: 1536)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3427, file: !1408, line: 541, baseType: !324, size: 64, offset: 1600)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3427, file: !1408, line: 542, baseType: !324, size: 64, offset: 1664)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3427, file: !1408, line: 543, baseType: !324, size: 64, offset: 1728)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3306, file: !1408, line: 833, baseType: !7, size: 32, offset: 7680)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3306, file: !1408, line: 836, baseType: !7, size: 32, offset: 7712)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3306, file: !1408, line: 837, baseType: !81, size: 32, offset: 7744)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3306, file: !1408, line: 838, baseType: !3461, size: 64, offset: 7808)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3463)
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3464, line: 19, baseType: !3465)
!3464 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3464, line: 19, size: 64, elements: !3466)
!3466 = !{!3467}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3465, file: !3464, line: 19, baseType: !3468, size: 64)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 64, elements: !3469)
!3469 = !{!3470}
!3470 = !DISubrange(count: 1)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3306, file: !1408, line: 839, baseType: !3472, size: 64, offset: 7872)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3306, file: !1408, line: 840, baseType: !3463, size: 64, offset: 7936)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3306, file: !1408, line: 841, baseType: !219, size: 64, offset: 8000)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3306, file: !1408, line: 843, baseType: !247, size: 16, offset: 8064)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3306, file: !1408, line: 845, baseType: !247, size: 16, offset: 8080)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3306, file: !1408, line: 848, baseType: !81, size: 32, offset: 8096)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3306, file: !1408, line: 849, baseType: !3479, size: 32, offset: 8128)
!3479 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1408, line: 718, size: 32, elements: !3480)
!3480 = !{!3481, !3488}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3479, file: !1408, line: 724, baseType: !3482, size: 32)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3479, file: !1408, line: 719, size: 32, elements: !3483)
!3483 = !{!3484, !3485, !3486, !3487}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3482, file: !1408, line: 720, baseType: !376, size: 8)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3482, file: !1408, line: 721, baseType: !376, size: 8, offset: 8)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3482, file: !1408, line: 722, baseType: !376, size: 8, offset: 16)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3482, file: !1408, line: 723, baseType: !376, size: 8, offset: 24)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3479, file: !1408, line: 725, baseType: !318, size: 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3306, file: !1408, line: 850, baseType: !258, size: 128, offset: 8192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3306, file: !1408, line: 851, baseType: !3491, size: 64, offset: 8320)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1408, line: 60, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3306, file: !1408, line: 855, baseType: !225, size: 64, offset: 8384)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3306, file: !1408, line: 856, baseType: !376, size: 8, offset: 8448)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3306, file: !1408, line: 857, baseType: !376, size: 8, offset: 8456)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3306, file: !1408, line: 858, baseType: !81, size: 32, offset: 8480)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3306, file: !1408, line: 859, baseType: !258, size: 128, offset: 8512)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3306, file: !1408, line: 860, baseType: !81, size: 32, offset: 8640)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3306, file: !1408, line: 861, baseType: !258, size: 128, offset: 8704)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3306, file: !1408, line: 873, baseType: !3501, size: 256, offset: 8832)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1408, line: 376, size: 256, elements: !3502)
!3502 = !{!3503, !3504, !3505, !3506}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3501, file: !1408, line: 381, baseType: !225, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3501, file: !1408, line: 384, baseType: !326, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3501, file: !1408, line: 389, baseType: !326, size: 64, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3501, file: !1408, line: 392, baseType: !326, size: 64, offset: 192)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3306, file: !1408, line: 875, baseType: !258, size: 128, offset: 9088)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3306, file: !1408, line: 877, baseType: !3509, size: 320, offset: 9216)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3510, line: 86, size: 320, elements: !3511)
!3510 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3511 = !{!3512, !3513, !3514}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3509, file: !3510, line: 87, baseType: !81, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3509, file: !3510, line: 88, baseType: !258, size: 128, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3509, file: !3510, line: 89, baseType: !258, size: 128, offset: 192)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3306, file: !1408, line: 878, baseType: !650, size: 192, align: 64, offset: 9536)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3306, file: !1408, line: 881, baseType: !810, size: 64, offset: 9728)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3306, file: !1408, line: 882, baseType: !810, size: 64, offset: 9792)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3306, file: !1408, line: 884, baseType: !81, size: 32, offset: 9856)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3306, file: !1408, line: 885, baseType: !81, size: 32, offset: 9888)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3306, file: !1408, line: 886, baseType: !81, size: 32, offset: 9920)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3306, file: !1408, line: 888, baseType: !81, size: 32, offset: 9952)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3306, file: !1408, line: 890, baseType: !225, size: 64, offset: 9984)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3306, file: !1408, line: 893, baseType: !7, size: 32, offset: 10048)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3306, file: !1408, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3306, file: !1408, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3306, file: !1408, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3306, file: !1408, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3306, file: !1408, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3306, file: !1408, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3306, file: !1408, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3306, file: !1408, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3306, file: !1408, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3306, file: !1408, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3306, file: !1408, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3306, file: !1408, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3306, file: !1408, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3306, file: !1408, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3306, file: !1408, line: 969, baseType: !225, size: 64, offset: 10176)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3306, file: !1408, line: 971, baseType: !3540, size: 448, offset: 10240)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !114, line: 25, size: 448, elements: !3541)
!3541 = !{!3542, !3543, !3548}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3540, file: !114, line: 26, baseType: !225, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3540, file: !114, line: 27, baseType: !3544, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!241, !3547}
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, scope: !3540, file: !114, line: 28, baseType: !3549, size: 320, offset: 128)
!3549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3540, file: !114, line: 28, size: 320, elements: !3550)
!3550 = !{!3551, !3560, !3585}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3549, file: !114, line: 37, baseType: !3552, size: 320)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3549, file: !114, line: 30, size: 320, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557, !3558, !3559}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3552, file: !114, line: 31, baseType: !2706, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3552, file: !114, line: 32, baseType: !318, size: 32, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3552, file: !114, line: 33, baseType: !318, size: 32, offset: 96)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3552, file: !114, line: 34, baseType: !318, size: 32, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3552, file: !114, line: 35, baseType: !324, size: 64, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3552, file: !114, line: 36, baseType: !2706, size: 64, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3549, file: !114, line: 47, baseType: !3561, size: 192)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3549, file: !114, line: 39, size: 192, elements: !3562)
!3562 = !{!3563, !3564, !3565, !3584}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3561, file: !114, line: 40, baseType: !3054, size: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3561, file: !114, line: 41, baseType: !113, size: 32, offset: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, scope: !3561, file: !114, line: 42, baseType: !3566, size: 64, offset: 64)
!3566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3561, file: !114, line: 42, size: 64, elements: !3567)
!3567 = !{!3568, !3576}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3566, file: !114, line: 43, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3571, line: 7, size: 128, elements: !3572)
!3571 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3572 = !{!3573, !3575}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3570, file: !3571, line: 8, baseType: !3574, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !239, line: 93, baseType: !457)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3570, file: !3571, line: 9, baseType: !457, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3566, file: !114, line: 44, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3579, line: 7, size: 64, elements: !3580)
!3579 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3580 = !{!3581, !3583}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3578, file: !3579, line: 8, baseType: !3582, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3579, line: 5, baseType: !974)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3578, file: !3579, line: 9, baseType: !974, size: 32, offset: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3561, file: !114, line: 46, baseType: !324, size: 64, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3549, file: !114, line: 55, baseType: !3586, size: 256)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3549, file: !114, line: 49, size: 256, elements: !3587)
!3587 = !{!3588, !3591, !3592, !3593, !3594}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3586, file: !114, line: 50, baseType: !3589, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !114, line: 14, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3586, file: !114, line: 51, baseType: !81, size: 32, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3586, file: !114, line: 52, baseType: !81, size: 32, offset: 96)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3586, file: !114, line: 53, baseType: !225, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3586, file: !114, line: 54, baseType: !225, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3306, file: !1408, line: 973, baseType: !3596, size: 32, offset: 10688)
!3596 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !218, line: 27, baseType: !3597)
!3597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !239, line: 28, baseType: !81)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3306, file: !1408, line: 974, baseType: !3596, size: 32, offset: 10720)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3306, file: !1408, line: 978, baseType: !225, size: 64, offset: 10752)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3306, file: !1408, line: 987, baseType: !3305, size: 64, offset: 10816)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3306, file: !1408, line: 990, baseType: !3305, size: 64, offset: 10880)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3306, file: !1408, line: 995, baseType: !258, size: 128, offset: 10944)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3306, file: !1408, line: 996, baseType: !258, size: 128, offset: 11072)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3306, file: !1408, line: 997, baseType: !3305, size: 64, offset: 11200)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3306, file: !1408, line: 1005, baseType: !258, size: 128, offset: 11264)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3306, file: !1408, line: 1006, baseType: !258, size: 128, offset: 11392)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3306, file: !1408, line: 1009, baseType: !891, size: 64, offset: 11520)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3306, file: !1408, line: 1010, baseType: !3609, size: 512, offset: 11584)
!3609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 512, elements: !913)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3306, file: !1408, line: 1011, baseType: !258, size: 128, offset: 12096)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3306, file: !1408, line: 1012, baseType: !258, size: 128, offset: 12224)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3306, file: !1408, line: 1014, baseType: !2033, size: 64, offset: 12352)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3306, file: !1408, line: 1017, baseType: !2170, size: 64, offset: 12416)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3306, file: !1408, line: 1020, baseType: !2170, size: 64, offset: 12480)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3306, file: !1408, line: 1023, baseType: !219, size: 64, offset: 12544)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3306, file: !1408, line: 1025, baseType: !324, size: 64, offset: 12608)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3306, file: !1408, line: 1026, baseType: !324, size: 64, offset: 12672)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3306, file: !1408, line: 1031, baseType: !324, size: 64, offset: 12736)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3306, file: !1408, line: 1032, baseType: !3620, size: 192, offset: 12800)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1408, line: 324, size: 192, elements: !3621)
!3621 = !{!3622, !3623, !3624}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3620, file: !1408, line: 326, baseType: !324, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3620, file: !1408, line: 327, baseType: !324, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3620, file: !1408, line: 328, baseType: !637, size: 32, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3306, file: !1408, line: 1041, baseType: !225, size: 64, offset: 12992)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3306, file: !1408, line: 1042, baseType: !225, size: 64, offset: 13056)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3306, file: !1408, line: 1045, baseType: !324, size: 64, offset: 13120)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3306, file: !1408, line: 1048, baseType: !324, size: 64, offset: 13184)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3306, file: !1408, line: 1051, baseType: !225, size: 64, offset: 13248)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3306, file: !1408, line: 1052, baseType: !225, size: 64, offset: 13312)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3306, file: !1408, line: 1055, baseType: !3632, size: 640, offset: 13376)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3633, line: 132, size: 640, elements: !3634)
!3633 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3634 = !{!3635, !3641, !3642}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3632, file: !3633, line: 133, baseType: !3636, size: 576)
!3636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3637, size: 576, elements: !232)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3633, line: 117, size: 192, elements: !3638)
!3638 = !{!3639, !3640}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3637, file: !3633, line: 118, baseType: !324, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3637, file: !3633, line: 119, baseType: !3063, size: 128, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3632, file: !3633, line: 134, baseType: !7, size: 32, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3632, file: !3633, line: 135, baseType: !7, size: 32, offset: 608)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3306, file: !1408, line: 1058, baseType: !3644, size: 448, offset: 14016)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3633, line: 144, size: 448, elements: !3645)
!3645 = !{!3646, !3647, !3648}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3644, file: !3633, line: 145, baseType: !752, size: 128, align: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3644, file: !3633, line: 146, baseType: !857, size: 256, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3644, file: !3633, line: 147, baseType: !7, size: 32, offset: 384)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3306, file: !1408, line: 1064, baseType: !939, size: 64, offset: 14464)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3306, file: !1408, line: 1067, baseType: !939, size: 64, offset: 14528)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3306, file: !1408, line: 1070, baseType: !939, size: 64, offset: 14592)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3306, file: !1408, line: 1074, baseType: !966, size: 64, offset: 14656)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3306, file: !1408, line: 1084, baseType: !3654, size: 128, offset: 14720)
!3654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 128, elements: !3655)
!3655 = !{!3656}
!3656 = !DISubrange(count: 16)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3306, file: !1408, line: 1086, baseType: !3658, size: 64, offset: 14848)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1408, line: 55, flags: DIFlagFwdDecl)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3306, file: !1408, line: 1089, baseType: !3661, size: 64, offset: 14912)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3662, line: 12, size: 64, elements: !3663)
!3662 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3663 = !{!3664}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3661, file: !3662, line: 13, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3662, line: 8, flags: DIFlagFwdDecl)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3306, file: !1408, line: 1090, baseType: !3668, size: 128, offset: 14976)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3669, line: 13, size: 128, elements: !3670)
!3669 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3670 = !{!3671}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3668, file: !3669, line: 14, baseType: !258, size: 128)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3306, file: !1408, line: 1097, baseType: !3673, size: 64, offset: 15104)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1408, line: 50, flags: DIFlagFwdDecl)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3306, file: !1408, line: 1100, baseType: !3676, size: 64, offset: 15168)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1408, line: 1100, flags: DIFlagFwdDecl)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3306, file: !1408, line: 1103, baseType: !3679, size: 64, offset: 15232)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1408, line: 53, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3306, file: !1408, line: 1107, baseType: !3682, size: 64, offset: 15296)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3684, line: 35, flags: DIFlagFwdDecl)
!3684 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3306, file: !1408, line: 1110, baseType: !3686, size: 64, offset: 15360)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3688, line: 93, size: 8768, elements: !3689)
!3688 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3689 = !{!3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3737, !3746, !3747, !3749, !3750, !3751, !3754, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3792, !3793, !3800, !3810, !3813, !3814, !3817, !3818, !3819, !3820, !3821, !3822}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3687, file: !3688, line: 94, baseType: !895, size: 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3687, file: !3688, line: 95, baseType: !368, size: 32, offset: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3687, file: !3688, line: 96, baseType: !81, size: 32, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3687, file: !3688, line: 97, baseType: !81, size: 32, offset: 96)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3687, file: !3688, line: 98, baseType: !258, size: 128, offset: 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3687, file: !3688, line: 100, baseType: !917, size: 192, offset: 256)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3687, file: !3688, line: 103, baseType: !3305, size: 64, offset: 448)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3687, file: !3688, line: 106, baseType: !3698, size: 192, offset: 512)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1119, line: 32, size: 192, elements: !3699)
!3699 = !{!3700, !3701}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3698, file: !1119, line: 33, baseType: !258, size: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3698, file: !1119, line: 34, baseType: !3702, size: 64, offset: 128)
!3702 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3703, line: 25, baseType: !3704)
!3703 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3703, line: 23, size: 64, elements: !3705)
!3705 = !{!3706}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3704, file: !3703, line: 24, baseType: !3468, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3687, file: !3688, line: 109, baseType: !904, size: 64, offset: 704)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3687, file: !3688, line: 112, baseType: !81, size: 32, offset: 768)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3687, file: !3688, line: 114, baseType: !81, size: 32, offset: 800)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3687, file: !3688, line: 115, baseType: !3305, size: 64, offset: 832)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3687, file: !3688, line: 118, baseType: !81, size: 32, offset: 896)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3687, file: !3688, line: 119, baseType: !7, size: 32, offset: 928)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3687, file: !3688, line: 121, baseType: !3714, size: 64, offset: 960)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3688, line: 80, size: 448, elements: !3716)
!3716 = !{!3717, !3718, !3724}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3715, file: !3688, line: 81, baseType: !368, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3715, file: !3688, line: 82, baseType: !3719, size: 128, offset: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3688, line: 75, size: 128, elements: !3720)
!3720 = !{!3721, !3722}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3719, file: !3688, line: 76, baseType: !3305, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3719, file: !3688, line: 77, baseType: !3723, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3715, file: !3688, line: 83, baseType: !762, size: 256, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3687, file: !3688, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3687, file: !3688, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3687, file: !3688, line: 138, baseType: !7, size: 32, offset: 1056)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3687, file: !3688, line: 139, baseType: !258, size: 128, offset: 1088)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3687, file: !3688, line: 142, baseType: !3009, size: 512, offset: 1216)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3687, file: !3688, line: 143, baseType: !2989, size: 64, offset: 1728)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3687, file: !3688, line: 150, baseType: !3732, size: 256, offset: 1792)
!3732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3733, size: 256, elements: !2160)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3688, line: 38, size: 128, elements: !3734)
!3734 = !{!3735, !3736}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3733, file: !3688, line: 39, baseType: !324, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3733, file: !3688, line: 40, baseType: !324, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3687, file: !3688, line: 156, baseType: !3738, size: 192, offset: 2048)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3688, line: 66, size: 192, elements: !3739)
!3739 = !{!3740}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3738, file: !3688, line: 67, baseType: !3741, size: 192)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3688, line: 47, size: 192, elements: !3742)
!3742 = !{!3743, !3744, !3745}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3741, file: !3688, line: 48, baseType: !624, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3741, file: !3688, line: 49, baseType: !624, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3741, file: !3688, line: 50, baseType: !624, size: 64, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3687, file: !3688, line: 160, baseType: !3632, size: 640, offset: 2240)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3687, file: !3688, line: 163, baseType: !3748, size: 256, offset: 2880)
!3748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 256, elements: !913)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3687, file: !3688, line: 169, baseType: !891, size: 64, offset: 3136)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3687, file: !3688, line: 172, baseType: !81, size: 32, offset: 3200)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3687, file: !3688, line: 174, baseType: !3752, size: 64, offset: 3264)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3688, line: 174, flags: DIFlagFwdDecl)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3687, file: !3688, line: 185, baseType: !3755, size: 64, offset: 3328)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !291, line: 860, baseType: !3756)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !291, line: 853, size: 64, elements: !3757)
!3757 = !{!3758, !3759}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3756, file: !291, line: 858, baseType: !290, size: 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3756, file: !291, line: 859, baseType: !348, size: 32, offset: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3687, file: !3688, line: 186, baseType: !324, size: 64, offset: 3392)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3687, file: !3688, line: 186, baseType: !324, size: 64, offset: 3456)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3687, file: !3688, line: 186, baseType: !324, size: 64, offset: 3520)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3687, file: !3688, line: 186, baseType: !324, size: 64, offset: 3584)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3687, file: !3688, line: 187, baseType: !324, size: 64, offset: 3648)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3687, file: !3688, line: 188, baseType: !324, size: 64, offset: 3712)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3687, file: !3688, line: 189, baseType: !3620, size: 192, offset: 3776)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3687, file: !3688, line: 190, baseType: !225, size: 64, offset: 3968)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3687, file: !3688, line: 190, baseType: !225, size: 64, offset: 4032)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3687, file: !3688, line: 190, baseType: !225, size: 64, offset: 4096)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3687, file: !3688, line: 190, baseType: !225, size: 64, offset: 4160)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3687, file: !3688, line: 191, baseType: !225, size: 64, offset: 4224)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3687, file: !3688, line: 191, baseType: !225, size: 64, offset: 4288)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3687, file: !3688, line: 191, baseType: !225, size: 64, offset: 4352)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3687, file: !3688, line: 191, baseType: !225, size: 64, offset: 4416)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3687, file: !3688, line: 192, baseType: !225, size: 64, offset: 4480)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3687, file: !3688, line: 192, baseType: !225, size: 64, offset: 4544)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3687, file: !3688, line: 192, baseType: !225, size: 64, offset: 4608)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3687, file: !3688, line: 192, baseType: !225, size: 64, offset: 4672)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3687, file: !3688, line: 193, baseType: !225, size: 64, offset: 4736)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3687, file: !3688, line: 193, baseType: !225, size: 64, offset: 4800)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3687, file: !3688, line: 194, baseType: !3782, size: 448, offset: 4864)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3783, line: 12, size: 448, elements: !3784)
!3783 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790, !3791}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3782, file: !3783, line: 15, baseType: !324, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3782, file: !3783, line: 17, baseType: !324, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3782, file: !3783, line: 19, baseType: !324, size: 64, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3782, file: !3783, line: 21, baseType: !324, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3782, file: !3783, line: 29, baseType: !324, size: 64, offset: 256)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3782, file: !3783, line: 35, baseType: !324, size: 64, offset: 320)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3782, file: !3783, line: 44, baseType: !324, size: 64, offset: 384)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3687, file: !3688, line: 202, baseType: !326, size: 64, offset: 5312)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3687, file: !3688, line: 213, baseType: !3794, size: 2048, offset: 5376)
!3794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3795, size: 2048, elements: !3655)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3796, line: 43, size: 128, elements: !3797)
!3796 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3797 = !{!3798, !3799}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3795, file: !3796, line: 44, baseType: !580, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3795, file: !3796, line: 45, baseType: !580, size: 64, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3687, file: !3688, line: 216, baseType: !3801, size: 448, offset: 7424)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3688, line: 30, size: 448, elements: !3802)
!3802 = !{!3803, !3804, !3805, !3806, !3807, !3808, !3809}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3801, file: !3688, line: 31, baseType: !81, size: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3801, file: !3688, line: 32, baseType: !241, size: 64, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3801, file: !3688, line: 33, baseType: !225, size: 64, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3801, file: !3688, line: 34, baseType: !324, size: 64, offset: 192)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3801, file: !3688, line: 34, baseType: !324, size: 64, offset: 256)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3801, file: !3688, line: 35, baseType: !225, size: 64, offset: 320)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3801, file: !3688, line: 35, baseType: !225, size: 64, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3687, file: !3688, line: 219, baseType: !3811, size: 64, offset: 7872)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3688, line: 219, flags: DIFlagFwdDecl)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3687, file: !3688, line: 222, baseType: !7, size: 32, offset: 7936)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3687, file: !3688, line: 223, baseType: !3815, size: 64, offset: 8000)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3688, line: 223, flags: DIFlagFwdDecl)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3687, file: !3688, line: 230, baseType: !748, size: 8, offset: 8064)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3687, file: !3688, line: 231, baseType: !1002, size: 16, offset: 8080)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3687, file: !3688, line: 232, baseType: !1002, size: 16, offset: 8096)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3687, file: !3688, line: 234, baseType: !810, size: 64, offset: 8128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3687, file: !3688, line: 237, baseType: !857, size: 256, offset: 8192)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3687, file: !3688, line: 243, baseType: !618, size: 320, offset: 8448)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3306, file: !1408, line: 1111, baseType: !3824, size: 64, offset: 15424)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3688, line: 20, size: 16640, elements: !3826)
!3826 = !{!3827, !3828, !3829, !3830}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3825, file: !3688, line: 21, baseType: !348, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3825, file: !3688, line: 22, baseType: !895, size: 32, offset: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3825, file: !3688, line: 23, baseType: !917, size: 192, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3825, file: !3688, line: 24, baseType: !3831, size: 16384, offset: 256)
!3831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3832, size: 16384, elements: !540)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1119, line: 51, size: 256, elements: !3833)
!3833 = !{!3834}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3832, file: !1119, line: 52, baseType: !3835, size: 256)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1119, line: 37, size: 256, elements: !3836)
!3836 = !{!3837, !3844, !3845, !3849}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3835, file: !1119, line: 39, baseType: !3838, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3839, line: 83, baseType: !3840)
!3839 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3839, line: 82, baseType: !3842)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{null, !81}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3835, file: !1119, line: 40, baseType: !225, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3835, file: !1119, line: 46, baseType: !3846, size: 64, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3839, line: 86, baseType: !3847)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3839, line: 85, baseType: !2375)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3835, file: !1119, line: 48, baseType: !3702, size: 64, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3306, file: !1408, line: 1112, baseType: !3702, size: 64, offset: 15488)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3306, file: !1408, line: 1113, baseType: !3702, size: 64, offset: 15552)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3306, file: !1408, line: 1115, baseType: !3702, size: 64, offset: 15616)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3306, file: !1408, line: 1116, baseType: !3698, size: 192, offset: 15680)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3306, file: !1408, line: 1117, baseType: !225, size: 64, offset: 15872)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3306, file: !1408, line: 1118, baseType: !578, size: 64, offset: 15936)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3306, file: !1408, line: 1119, baseType: !7, size: 32, offset: 16000)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3306, file: !1408, line: 1121, baseType: !755, size: 64, offset: 16064)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3306, file: !1408, line: 1125, baseType: !3859, size: 64, offset: 16128)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1408, line: 43, flags: DIFlagFwdDecl)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3306, file: !1408, line: 1127, baseType: !250, size: 32, offset: 16192)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3306, file: !1408, line: 1128, baseType: !7, size: 32, offset: 16224)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3306, file: !1408, line: 1130, baseType: !3864, size: 128, offset: 16256)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3865, line: 37, size: 128, elements: !3866)
!3865 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3866 = !{!3867, !3868, !3869}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3864, file: !3865, line: 38, baseType: !81, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3864, file: !3865, line: 39, baseType: !368, size: 32, offset: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3864, file: !3865, line: 40, baseType: !3870, size: 64, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3865, line: 24, flags: DIFlagFwdDecl)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3306, file: !1408, line: 1131, baseType: !3873, size: 256, offset: 16384)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3874, line: 12, size: 256, elements: !3875)
!3874 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3875 = !{!3876, !3877, !3878, !3879}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3873, file: !3874, line: 13, baseType: !434, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3873, file: !3874, line: 14, baseType: !225, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3873, file: !3874, line: 15, baseType: !225, size: 64, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3873, file: !3874, line: 16, baseType: !748, size: 8, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3306, file: !1408, line: 1134, baseType: !324, size: 64, offset: 16640)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3306, file: !1408, line: 1135, baseType: !324, size: 64, offset: 16704)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3306, file: !1408, line: 1138, baseType: !348, size: 32, offset: 16768)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3306, file: !1408, line: 1141, baseType: !637, size: 32, offset: 16800)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3306, file: !1408, line: 1143, baseType: !3885, size: 64, offset: 16832)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1408, line: 735, size: 64, elements: !3886)
!3886 = !{!3887}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3885, file: !1408, line: 736, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3306, file: !1408, line: 1147, baseType: !642, size: 128, offset: 16896)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3306, file: !1408, line: 1149, baseType: !3305, size: 64, offset: 17024)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3306, file: !1408, line: 1151, baseType: !3892, size: 64, offset: 17088)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1408, line: 1151, flags: DIFlagFwdDecl)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3306, file: !1408, line: 1188, baseType: !219, size: 64, offset: 17152)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3306, file: !1408, line: 1191, baseType: !3896, size: 64, offset: 17216)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !3898, line: 550, size: 128, elements: !3899)
!3898 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!3899 = !{!3900, !3984}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3897, file: !3898, line: 551, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2773, line: 265, size: 960, elements: !3903)
!3903 = !{!3904, !3905, !3906, !3908, !3909, !3910, !3912, !3913, !3920, !3922, !3927, !3928, !3931, !3935, !3936, !3938, !3939, !3940, !3941, !3943, !3982}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !3902, file: !2773, line: 266, baseType: !3901, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !3902, file: !2773, line: 267, baseType: !2771, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !3902, file: !2773, line: 268, baseType: !3907, size: 32, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2773, line: 256, baseType: !320)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !3902, file: !2773, line: 271, baseType: !247, size: 16, offset: 160)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !3902, file: !2773, line: 272, baseType: !247, size: 16, offset: 176)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !3902, file: !2773, line: 273, baseType: !3911, size: 8, offset: 192)
!3911 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2773, line: 97, baseType: !376)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !3902, file: !2773, line: 274, baseType: !368, size: 32, offset: 224)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !3902, file: !2773, line: 276, baseType: !3914, size: 160, align: 32, offset: 256)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1320, line: 77, size: 160, align: 32, elements: !3915)
!3915 = !{!3916, !3917, !3918, !3919}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !3914, file: !1320, line: 78, baseType: !1807, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !3914, file: !1320, line: 80, baseType: !7, size: 32, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !3914, file: !1320, line: 82, baseType: !7, size: 32, offset: 96)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !3914, file: !1320, line: 84, baseType: !7, size: 32, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !3902, file: !2773, line: 278, baseType: !3921, size: 32, offset: 416)
!3921 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2773, line: 258, baseType: !7)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !3902, file: !2773, line: 279, baseType: !3923, size: 64, offset: 448)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2773, line: 20, baseType: !3925)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{null, !3901}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !3902, file: !2773, line: 280, baseType: !219, size: 64, offset: 512)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !3902, file: !2773, line: 288, baseType: !3929, size: 64, offset: 576)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2773, line: 288, flags: DIFlagFwdDecl)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !3902, file: !2773, line: 289, baseType: !3932, size: 64, offset: 640)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2773, line: 228, size: 64, elements: !3933)
!3933 = !{!3934}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3932, file: !2773, line: 229, baseType: !324, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !3902, file: !2773, line: 291, baseType: !324, size: 64, offset: 704)
!3936 = !DIDerivedType(tag: DW_TAG_member, scope: !3902, file: !2773, line: 299, baseType: !3937, offset: 768)
!3937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3902, file: !2773, line: 299, elements: !831)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !3902, file: !2773, line: 305, baseType: !247, size: 16, offset: 768)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !3902, file: !2773, line: 311, baseType: !247, size: 16, offset: 784)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !3902, file: !2773, line: 313, baseType: !368, size: 32, offset: 800)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !3902, file: !2773, line: 315, baseType: !3942, size: 64, offset: 832)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !3902, file: !2773, line: 317, baseType: !3944, size: 64, offset: 896)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !3898, line: 678, size: 1984, elements: !3946)
!3946 = !{!3947, !3951, !3952, !3955, !3975, !3976, !3977, !3978, !3979, !3980, !3981}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !3945, file: !3898, line: 679, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3950, line: 11, flags: DIFlagFwdDecl)
!3950 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !3945, file: !3898, line: 680, baseType: !7, size: 32, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !3945, file: !3898, line: 685, baseType: !3953, size: 64, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !3898, line: 685, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !3945, file: !3898, line: 687, baseType: !3956, size: 576, offset: 192)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !3950, line: 26, baseType: !3957)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !3950, line: 16, size: 576, elements: !3958)
!3958 = !{!3959, !3960, !3961, !3962, !3963, !3964, !3969, !3974}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3957, file: !3950, line: 17, baseType: !348, size: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !3957, file: !3950, line: 18, baseType: !81, size: 32, offset: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !3957, file: !3950, line: 19, baseType: !81, size: 32, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3957, file: !3950, line: 20, baseType: !1422, size: 64, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !3957, file: !3950, line: 22, baseType: !219, size: 64, offset: 192)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3957, file: !3950, line: 23, baseType: !3965, size: 64, offset: 256)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !3950, line: 13, baseType: !3967)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!219, !217, !219}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3957, file: !3950, line: 24, baseType: !3970, size: 64, offset: 320)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !3950, line: 14, baseType: !3972)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{null, !219, !219}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3957, file: !3950, line: 25, baseType: !917, size: 192, offset: 384)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !3945, file: !3898, line: 688, baseType: !3956, size: 576, offset: 768)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !3945, file: !3898, line: 694, baseType: !7, size: 32, offset: 1344)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !3945, file: !3898, line: 699, baseType: !348, size: 32, offset: 1376)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !3945, file: !3898, line: 700, baseType: !3897, size: 128, offset: 1408)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !3945, file: !3898, line: 701, baseType: !1589, size: 256, offset: 1536)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !3945, file: !3898, line: 702, baseType: !2332, size: 64, offset: 1792)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !3945, file: !3898, line: 707, baseType: !908, size: 128, offset: 1856)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !3902, file: !2773, line: 324, baseType: !3983, offset: 960)
!3983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1319, elements: !932)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3897, file: !3898, line: 552, baseType: !3901, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3306, file: !1408, line: 1194, baseType: !3986, size: 64, offset: 17280)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1408, line: 45, flags: DIFlagFwdDecl)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3306, file: !1408, line: 1197, baseType: !3989, size: 64, offset: 17344)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1408, line: 61, flags: DIFlagFwdDecl)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3306, file: !1408, line: 1199, baseType: !3992, size: 64, offset: 17408)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2783, line: 99, size: 128, elements: !3994)
!3994 = !{!3995, !3996, !3997}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3993, file: !2783, line: 100, baseType: !622, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3993, file: !2783, line: 101, baseType: !368, size: 32, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3993, file: !2783, line: 103, baseType: !247, size: 16, offset: 96)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3306, file: !1408, line: 1202, baseType: !3999, size: 64, offset: 17472)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1408, line: 48, flags: DIFlagFwdDecl)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3306, file: !1408, line: 1205, baseType: !225, size: 64, offset: 17536)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3306, file: !1408, line: 1206, baseType: !4003, size: 64, offset: 17600)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1119, line: 14, baseType: !4005)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1119, line: 12, size: 384, elements: !4006)
!4006 = !{!4007}
!4007 = !DIDerivedType(tag: DW_TAG_member, scope: !4005, file: !1119, line: 13, baseType: !4008, size: 384)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4005, file: !1119, line: 13, size: 384, elements: !4009)
!4009 = !{!4010, !4011, !4012, !4013}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4008, file: !1119, line: 13, baseType: !81, size: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4008, file: !1119, line: 13, baseType: !81, size: 32, offset: 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4008, file: !1119, line: 13, baseType: !81, size: 32, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4008, file: !1119, line: 13, baseType: !4014, size: 256, offset: 128)
!4014 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4015, line: 37, size: 256, elements: !4016)
!4015 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4016 = !{!4017, !4022, !4035, !4041, !4050, !4077, !4082}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4014, file: !4015, line: 42, baseType: !4018, size: 64)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4014, file: !4015, line: 39, size: 64, elements: !4019)
!4019 = !{!4020, !4021}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4018, file: !4015, line: 40, baseType: !3597, size: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4018, file: !4015, line: 41, baseType: !256, size: 32, offset: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4014, file: !4015, line: 50, baseType: !4023, size: 192)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4014, file: !4015, line: 45, size: 192, elements: !4024)
!4024 = !{!4025, !4027, !4028, !4034}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4023, file: !4015, line: 46, baseType: !4026, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !239, line: 95, baseType: !81)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4023, file: !4015, line: 47, baseType: !81, size: 32, offset: 32)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4023, file: !4015, line: 48, baseType: !4029, size: 64, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4015, line: 11, baseType: !4030)
!4030 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4015, line: 8, size: 64, elements: !4031)
!4031 = !{!4032, !4033}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4030, file: !4015, line: 9, baseType: !81, size: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4030, file: !4015, line: 10, baseType: !219, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4023, file: !4015, line: 49, baseType: !81, size: 32, offset: 128)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4014, file: !4015, line: 57, baseType: !4036, size: 128)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4014, file: !4015, line: 53, size: 128, elements: !4037)
!4037 = !{!4038, !4039, !4040}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4036, file: !4015, line: 54, baseType: !3597, size: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4036, file: !4015, line: 55, baseType: !256, size: 32, offset: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4036, file: !4015, line: 56, baseType: !4029, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4014, file: !4015, line: 66, baseType: !4042, size: 256)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4014, file: !4015, line: 60, size: 256, elements: !4043)
!4043 = !{!4044, !4045, !4046, !4047, !4049}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4042, file: !4015, line: 61, baseType: !3597, size: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4042, file: !4015, line: 62, baseType: !256, size: 32, offset: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4042, file: !4015, line: 63, baseType: !81, size: 32, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4042, file: !4015, line: 64, baseType: !4048, size: 64, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !239, line: 94, baseType: !240)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4042, file: !4015, line: 65, baseType: !4048, size: 64, offset: 192)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4014, file: !4015, line: 105, baseType: !4051, size: 256)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4014, file: !4015, line: 69, size: 256, elements: !4052)
!4052 = !{!4053, !4054}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4051, file: !4015, line: 70, baseType: !219, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, scope: !4051, file: !4015, line: 79, baseType: !4055, size: 192, offset: 64)
!4055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4051, file: !4015, line: 79, size: 192, elements: !4056)
!4056 = !{!4057, !4058, !4059, !4066, !4071}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4055, file: !4015, line: 81, baseType: !81, size: 32)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4055, file: !4015, line: 86, baseType: !1002, size: 16)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4055, file: !4015, line: 92, baseType: !4060, size: 192)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4055, file: !4015, line: 88, size: 192, elements: !4061)
!4061 = !{!4062, !4064, !4065}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4060, file: !4015, line: 89, baseType: !4063, size: 64)
!4063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 64, elements: !3050)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4060, file: !4015, line: 90, baseType: !219, size: 64, offset: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4060, file: !4015, line: 91, baseType: !219, size: 64, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4055, file: !4015, line: 97, baseType: !4067, size: 96)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4055, file: !4015, line: 94, size: 96, elements: !4068)
!4068 = !{!4069, !4070}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4067, file: !4015, line: 95, baseType: !4063, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4067, file: !4015, line: 96, baseType: !320, size: 32, offset: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4055, file: !4015, line: 103, baseType: !4072, size: 128)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4055, file: !4015, line: 99, size: 128, elements: !4073)
!4073 = !{!4074, !4075, !4076}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4072, file: !4015, line: 100, baseType: !225, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4072, file: !4015, line: 101, baseType: !320, size: 32, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4072, file: !4015, line: 102, baseType: !320, size: 32, offset: 96)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4014, file: !4015, line: 111, baseType: !4078, size: 128)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4014, file: !4015, line: 108, size: 128, elements: !4079)
!4079 = !{!4080, !4081}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4078, file: !4015, line: 109, baseType: !241, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4078, file: !4015, line: 110, baseType: !81, size: 32, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4014, file: !4015, line: 118, baseType: !4083, size: 128)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4014, file: !4015, line: 114, size: 128, elements: !4084)
!4084 = !{!4085, !4086, !4087}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4083, file: !4015, line: 115, baseType: !219, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4083, file: !4015, line: 116, baseType: !81, size: 32, offset: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4083, file: !4015, line: 117, baseType: !7, size: 32, offset: 96)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3306, file: !1408, line: 1208, baseType: !3782, size: 448, offset: 17664)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3306, file: !1408, line: 1215, baseType: !324, size: 64, offset: 18112)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3306, file: !1408, line: 1217, baseType: !324, size: 64, offset: 18176)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3306, file: !1408, line: 1219, baseType: !324, size: 64, offset: 18240)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3306, file: !1408, line: 1223, baseType: !4093, size: 64, offset: 18304)
!4093 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4094, line: 99, baseType: !4095)
!4094 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4094, line: 99, size: 64, elements: !4096)
!4096 = !{!4097}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4095, file: !4094, line: 99, baseType: !3468, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3306, file: !1408, line: 1225, baseType: !290, size: 32, offset: 18368)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3306, file: !1408, line: 1226, baseType: !81, size: 32, offset: 18400)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3306, file: !1408, line: 1227, baseType: !81, size: 32, offset: 18432)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3306, file: !1408, line: 1231, baseType: !4102, size: 64, offset: 18496)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1408, line: 1231, flags: DIFlagFwdDecl)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3306, file: !1408, line: 1233, baseType: !258, size: 128, offset: 18560)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3306, file: !1408, line: 1240, baseType: !4106, size: 64, offset: 18688)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1408, line: 62, flags: DIFlagFwdDecl)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3306, file: !1408, line: 1242, baseType: !4109, size: 64, offset: 18752)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1408, line: 1242, flags: DIFlagFwdDecl)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3306, file: !1408, line: 1244, baseType: !258, size: 128, offset: 18816)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3306, file: !1408, line: 1245, baseType: !4113, size: 64, offset: 18944)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1408, line: 51, flags: DIFlagFwdDecl)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3306, file: !1408, line: 1246, baseType: !857, size: 256, offset: 19008)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3306, file: !1408, line: 1247, baseType: !7, size: 32, offset: 19264)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3306, file: !1408, line: 1250, baseType: !4118, size: 64, offset: 19328)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1408, line: 57, flags: DIFlagFwdDecl)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3306, file: !1408, line: 1251, baseType: !857, size: 256, offset: 19392)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3306, file: !1408, line: 1252, baseType: !258, size: 128, offset: 19648)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3306, file: !1408, line: 1259, baseType: !1680, size: 64, offset: 19776)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3306, file: !1408, line: 1260, baseType: !1002, size: 16, offset: 19840)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3306, file: !1408, line: 1261, baseType: !1002, size: 16, offset: 19856)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3306, file: !1408, line: 1314, baseType: !4126, size: 64, offset: 19904)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4128, line: 62, size: 256, align: 256, elements: !4129)
!4128 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4129 = !{!4130, !4131, !4132, !4133, !4134, !4135, !4136}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4127, file: !4128, line: 75, baseType: !320, size: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4127, file: !4128, line: 90, baseType: !320, size: 32, offset: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4127, file: !4128, line: 112, baseType: !325, size: 64, offset: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4127, file: !4128, line: 132, baseType: !320, size: 32, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4127, file: !4128, line: 140, baseType: !320, size: 32, offset: 160)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4127, file: !4128, line: 149, baseType: !320, size: 32, offset: 192)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4127, file: !4128, line: 154, baseType: !4137, offset: 224)
!4137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, elements: !932)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3306, file: !1408, line: 1315, baseType: !318, size: 32, offset: 19968)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3306, file: !1408, line: 1316, baseType: !318, size: 32, offset: 20000)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3306, file: !1408, line: 1321, baseType: !225, size: 64, offset: 20032)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3306, file: !1408, line: 1325, baseType: !81, size: 32, offset: 20096)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3306, file: !1408, line: 1326, baseType: !81, size: 32, offset: 20128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3306, file: !1408, line: 1327, baseType: !81, size: 32, offset: 20160)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3306, file: !1408, line: 1328, baseType: !81, size: 32, offset: 20192)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3306, file: !1408, line: 1329, baseType: !752, size: 128, align: 64, offset: 20224)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3306, file: !1408, line: 1332, baseType: !4147, size: 128, offset: 20352)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4148, line: 51, size: 128, elements: !4149)
!4148 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4149 = !{!4150, !4155, !4156}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4147, file: !4148, line: 60, baseType: !4151, size: 64)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4152, line: 7, size: 64, elements: !4153)
!4152 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4153 = !{!4154}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4151, file: !4152, line: 12, baseType: !3465, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4147, file: !4148, line: 63, baseType: !748, size: 8, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4147, file: !4148, line: 70, baseType: !748, size: 8, offset: 72)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3306, file: !1408, line: 1335, baseType: !1406, size: 64, offset: 20480)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3306, file: !1408, line: 1337, baseType: !4159, size: 128, offset: 20544)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4148, line: 39, size: 128, elements: !4160)
!4160 = !{!4161, !4162, !4163}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4159, file: !4148, line: 40, baseType: !667, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4159, file: !4148, line: 42, baseType: !320, size: 32, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4159, file: !4148, line: 43, baseType: !320, size: 32, offset: 96)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3306, file: !1408, line: 1340, baseType: !4165, size: 64, offset: 20672)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1408, line: 69, flags: DIFlagFwdDecl)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3306, file: !1408, line: 1351, baseType: !81, size: 32, offset: 20736)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3306, file: !1408, line: 1352, baseType: !81, size: 32, offset: 20768)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3306, file: !1408, line: 1354, baseType: !225, size: 64, offset: 20800)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3306, file: !1408, line: 1364, baseType: !324, size: 64, offset: 20864)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3306, file: !1408, line: 1365, baseType: !324, size: 64, offset: 20928)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3306, file: !1408, line: 1412, baseType: !225, size: 64, offset: 20992)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3306, file: !1408, line: 1453, baseType: !2778, size: 64, offset: 21056)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3306, file: !1408, line: 1457, baseType: !4175, size: 64, offset: 21120)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !120, line: 61, size: 576, elements: !4177)
!4177 = !{!4178, !4179, !4198, !4201, !4202, !4235, !4245}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4176, file: !120, line: 62, baseType: !119, size: 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, scope: !4176, file: !120, line: 64, baseType: !4180, size: 192, offset: 64)
!4180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4176, file: !120, line: 64, size: 192, elements: !4181)
!4181 = !{!4182, !4193}
!4182 = !DIDerivedType(tag: DW_TAG_member, scope: !4180, file: !120, line: 65, baseType: !4183, size: 192)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4180, file: !120, line: 65, size: 192, elements: !4184)
!4184 = !{!4185, !4192}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4183, file: !120, line: 66, baseType: !4186, size: 128)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4187, line: 50, size: 128, elements: !4188)
!4187 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4188 = !{!4189, !4190, !4191}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4186, file: !4187, line: 52, baseType: !225, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4186, file: !4187, line: 54, baseType: !7, size: 32, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4186, file: !4187, line: 55, baseType: !7, size: 32, offset: 96)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4183, file: !120, line: 67, baseType: !225, size: 64, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, scope: !4180, file: !120, line: 70, baseType: !4194, size: 192)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4180, file: !120, line: 70, size: 192, elements: !4195)
!4195 = !{!4196, !4197}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4194, file: !120, line: 71, baseType: !752, size: 128, align: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4194, file: !120, line: 72, baseType: !225, size: 64, offset: 128)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4176, file: !120, line: 76, baseType: !4199, size: 64, offset: 256)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !120, line: 76, flags: DIFlagFwdDecl)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4176, file: !120, line: 77, baseType: !225, size: 64, offset: 320)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4176, file: !120, line: 79, baseType: !4203, size: 64, offset: 384)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4187, line: 25, size: 256, elements: !4205)
!4205 = !{!4206, !4212, !4216}
!4206 = !DIDerivedType(tag: DW_TAG_member, scope: !4204, file: !4187, line: 26, baseType: !4207, size: 128)
!4207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4204, file: !4187, line: 26, size: 128, elements: !4208)
!4208 = !{!4209, !4211}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4207, file: !4187, line: 27, baseType: !4210, size: 128)
!4210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 128, elements: !3655)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4207, file: !4187, line: 28, baseType: !4210, size: 128)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4204, file: !4187, line: 31, baseType: !4213, size: 64, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4215)
!4215 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4187, line: 23, flags: DIFlagFwdDecl)
!4216 = !DIDerivedType(tag: DW_TAG_member, scope: !4204, file: !4187, line: 33, baseType: !4217, size: 64, offset: 192)
!4217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4204, file: !4187, line: 33, size: 64, elements: !4218)
!4218 = !{!4219, !4225, !4230}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4217, file: !4187, line: 38, baseType: !4220, size: 64)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4217, file: !4187, line: 34, size: 64, elements: !4221)
!4221 = !{!4222, !4223, !4224}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4220, file: !4187, line: 35, baseType: !974, size: 32)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4220, file: !4187, line: 36, baseType: !376, size: 8, offset: 32)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4220, file: !4187, line: 37, baseType: !376, size: 8, offset: 40)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4217, file: !4187, line: 42, baseType: !4226, size: 16)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4217, file: !4187, line: 39, size: 16, elements: !4227)
!4227 = !{!4228, !4229}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4226, file: !4187, line: 40, baseType: !376, size: 8)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4226, file: !4187, line: 41, baseType: !376, size: 8, offset: 8)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4217, file: !4187, line: 46, baseType: !4231, size: 16)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4217, file: !4187, line: 43, size: 16, elements: !4232)
!4232 = !{!4233, !4234}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4231, file: !4187, line: 44, baseType: !376, size: 8)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4231, file: !4187, line: 45, baseType: !376, size: 8, offset: 8)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4176, file: !120, line: 81, baseType: !4236, size: 64, offset: 448)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !120, line: 85, size: 384, elements: !4238)
!4238 = !{!4239, !4240, !4241, !4242, !4243, !4244}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4237, file: !120, line: 86, baseType: !4199, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4237, file: !120, line: 87, baseType: !225, size: 64, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4237, file: !120, line: 88, baseType: !225, size: 64, offset: 128)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4237, file: !120, line: 89, baseType: !225, size: 64, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4237, file: !120, line: 90, baseType: !748, size: 8, offset: 256)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4237, file: !120, line: 92, baseType: !4236, size: 64, offset: 320)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4176, file: !120, line: 82, baseType: !7, size: 32, offset: 512)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3306, file: !1408, line: 1463, baseType: !4247, offset: 21184)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1408, line: 739, elements: !831)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3306, file: !1408, line: 1470, baseType: !752, size: 128, align: 64, offset: 21184)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3306, file: !1408, line: 1471, baseType: !895, size: 32, offset: 21312)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3306, file: !1408, line: 1472, baseType: !81, size: 32, offset: 21344)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3306, file: !1408, line: 1474, baseType: !3305, size: 64, offset: 21376)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3306, file: !1408, line: 1475, baseType: !2270, size: 320, offset: 21440)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3306, file: !1408, line: 1478, baseType: !4254, size: 64, offset: 21760)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4256, line: 49, size: 512, elements: !4257)
!4256 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4257 = !{!4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4267}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4255, file: !4256, line: 50, baseType: !4254, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4255, file: !4256, line: 51, baseType: !219, size: 64, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4255, file: !4256, line: 52, baseType: !225, size: 64, offset: 128)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4255, file: !4256, line: 53, baseType: !225, size: 64, offset: 192)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4255, file: !4256, line: 54, baseType: !1798, size: 64, offset: 256)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4255, file: !4256, line: 56, baseType: !7, size: 32, offset: 320)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4255, file: !4256, line: 58, baseType: !7, size: 32, offset: 352)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4255, file: !4256, line: 59, baseType: !4266, size: 64, offset: 384)
!4266 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !218, line: 159, baseType: !324)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4255, file: !4256, line: 60, baseType: !1550, size: 64, offset: 448)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3306, file: !1408, line: 1482, baseType: !895, size: 32, offset: 21824)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3306, file: !1408, line: 1489, baseType: !219, size: 64, offset: 21888)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3306, file: !1408, line: 1504, baseType: !219, size: 64, offset: 21952)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3306, file: !1408, line: 1505, baseType: !325, size: 64, offset: 22016)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3306, file: !1408, line: 1506, baseType: !324, size: 64, offset: 22080)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3306, file: !1408, line: 1507, baseType: !325, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3306, file: !1408, line: 1508, baseType: !325, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3306, file: !1408, line: 1509, baseType: !325, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3306, file: !1408, line: 1510, baseType: !752, size: 128, align: 64, offset: 22208)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3306, file: !1408, line: 1511, baseType: !81, size: 32, offset: 22336)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3306, file: !1408, line: 1515, baseType: !4279, size: 64, offset: 22400)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !846, line: 56, size: 64, elements: !4280)
!4280 = !{!4281}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4279, file: !846, line: 57, baseType: !849, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3306, file: !1408, line: 1518, baseType: !4279, size: 64, offset: 22464)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3306, file: !1408, line: 1528, baseType: !752, size: 128, align: 64, offset: 22528)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3306, file: !1408, line: 1552, baseType: !4285, size: 35328, offset: 23040)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4286, line: 430, size: 35328, elements: !4287)
!4286 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4287 = !{!4288, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4317, !4318, !4319, !4320, !4321, !4322, !4325, !4326, !4327, !4328}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4285, file: !4286, line: 432, baseType: !4289, size: 192)
!4289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4290, size: 192, elements: !232)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4291, line: 16, size: 64, elements: !4292)
!4291 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4292 = !{!4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4290, file: !4291, line: 17, baseType: !383, size: 16)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4290, file: !4291, line: 18, baseType: !383, size: 16, offset: 16)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4290, file: !4291, line: 19, baseType: !383, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4290, file: !4291, line: 19, baseType: !383, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4290, file: !4291, line: 19, baseType: !383, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4290, file: !4291, line: 19, baseType: !383, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4290, file: !4291, line: 19, baseType: !383, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4290, file: !4291, line: 20, baseType: !383, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4290, file: !4291, line: 20, baseType: !383, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4290, file: !4291, line: 20, baseType: !383, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4290, file: !4291, line: 20, baseType: !383, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4290, file: !4291, line: 20, baseType: !383, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4290, file: !4291, line: 20, baseType: !383, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4285, file: !4286, line: 436, baseType: !225, size: 64, offset: 192)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4285, file: !4286, line: 440, baseType: !247, size: 16, offset: 256)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4285, file: !4286, line: 441, baseType: !247, size: 16, offset: 272)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4285, file: !4286, line: 442, baseType: !247, size: 16, offset: 288)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4285, file: !4286, line: 443, baseType: !247, size: 16, offset: 304)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4285, file: !4286, line: 447, baseType: !225, size: 64, offset: 320)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4285, file: !4286, line: 448, baseType: !225, size: 64, offset: 384)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4285, file: !4286, line: 459, baseType: !4314, size: 256, offset: 448)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4315, size: 256, elements: !913)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4286, line: 428, flags: DIFlagFwdDecl)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4285, file: !4286, line: 461, baseType: !225, size: 64, offset: 704)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4285, file: !4286, line: 463, baseType: !225, size: 64, offset: 768)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4285, file: !4286, line: 465, baseType: !225, size: 64, offset: 832)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4285, file: !4286, line: 466, baseType: !225, size: 64, offset: 896)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4285, file: !4286, line: 467, baseType: !225, size: 64, offset: 960)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4285, file: !4286, line: 473, baseType: !4323, size: 64, offset: 1024)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4286, line: 10, flags: DIFlagFwdDecl)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4285, file: !4286, line: 480, baseType: !225, size: 64, offset: 1088)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4285, file: !4286, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4285, file: !4286, line: 491, baseType: !318, size: 32, offset: 1184)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4285, file: !4286, line: 501, baseType: !4329, size: 33792, offset: 1536)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4330, line: 448, size: 33792, elements: !4331)
!4330 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4331 = !{!4332, !4333, !4334, !4496, !4497, !4503, !4504}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4329, file: !4330, line: 461, baseType: !7, size: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4329, file: !4330, line: 468, baseType: !225, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4329, file: !4330, line: 476, baseType: !4335, size: 64, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4330, line: 356, size: 33280, align: 512, elements: !4337)
!4337 = !{!4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4336, file: !4330, line: 358, baseType: !7, size: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4336, file: !4330, line: 361, baseType: !7, size: 32, offset: 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4336, file: !4330, line: 364, baseType: !324, size: 64, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4336, file: !4330, line: 367, baseType: !324, size: 64, offset: 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4336, file: !4330, line: 370, baseType: !324, size: 64, offset: 192)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4336, file: !4330, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4336, file: !4330, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4336, file: !4330, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4336, file: !4330, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4336, file: !4330, line: 397, baseType: !4348, size: 32768, offset: 512)
!4348 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4330, line: 348, size: 32768, elements: !4349)
!4349 = !{!4350, !4365, !4402, !4479, !4492}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4348, file: !4330, line: 349, baseType: !4351, size: 896)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4330, line: 12, size: 896, elements: !4352)
!4352 = !{!4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4364}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4351, file: !4330, line: 13, baseType: !318, size: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4351, file: !4330, line: 14, baseType: !318, size: 32, offset: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4351, file: !4330, line: 15, baseType: !318, size: 32, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4351, file: !4330, line: 16, baseType: !318, size: 32, offset: 96)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4351, file: !4330, line: 17, baseType: !318, size: 32, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4351, file: !4330, line: 18, baseType: !318, size: 32, offset: 160)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4351, file: !4330, line: 19, baseType: !318, size: 32, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4351, file: !4330, line: 22, baseType: !4361, size: 640, offset: 224)
!4361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 640, elements: !4362)
!4362 = !{!4363}
!4363 = !DISubrange(count: 20)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4351, file: !4330, line: 25, baseType: !318, size: 32, offset: 864)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4348, file: !4330, line: 350, baseType: !4366, size: 4096, align: 128)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4330, line: 34, size: 4096, align: 128, elements: !4367)
!4367 = !{!4368, !4369, !4370, !4371, !4372, !4387, !4388, !4389, !4391, !4393, !4397}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4366, file: !4330, line: 35, baseType: !383, size: 16)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4366, file: !4330, line: 36, baseType: !383, size: 16, offset: 16)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4366, file: !4330, line: 37, baseType: !383, size: 16, offset: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4366, file: !4330, line: 38, baseType: !383, size: 16, offset: 48)
!4372 = !DIDerivedType(tag: DW_TAG_member, scope: !4366, file: !4330, line: 39, baseType: !4373, size: 128, offset: 64)
!4373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4366, file: !4330, line: 39, size: 128, elements: !4374)
!4374 = !{!4375, !4380}
!4375 = !DIDerivedType(tag: DW_TAG_member, scope: !4373, file: !4330, line: 40, baseType: !4376, size: 128)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4373, file: !4330, line: 40, size: 128, elements: !4377)
!4377 = !{!4378, !4379}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4376, file: !4330, line: 41, baseType: !324, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4376, file: !4330, line: 42, baseType: !324, size: 64, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, scope: !4373, file: !4330, line: 44, baseType: !4381, size: 128)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4373, file: !4330, line: 44, size: 128, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4386}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4381, file: !4330, line: 45, baseType: !318, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4381, file: !4330, line: 46, baseType: !318, size: 32, offset: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4381, file: !4330, line: 47, baseType: !318, size: 32, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4381, file: !4330, line: 48, baseType: !318, size: 32, offset: 96)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4366, file: !4330, line: 51, baseType: !318, size: 32, offset: 192)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4366, file: !4330, line: 52, baseType: !318, size: 32, offset: 224)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4366, file: !4330, line: 55, baseType: !4390, size: 1024, offset: 256)
!4390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 1024, elements: !334)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4366, file: !4330, line: 58, baseType: !4392, size: 2048, offset: 1280)
!4392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 2048, elements: !540)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4366, file: !4330, line: 60, baseType: !4394, size: 384, offset: 3328)
!4394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 384, elements: !4395)
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
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4403, file: !4330, line: 80, baseType: !318, size: 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4403, file: !4330, line: 81, baseType: !318, size: 32, offset: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4403, file: !4330, line: 82, baseType: !318, size: 32, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4403, file: !4330, line: 83, baseType: !318, size: 32, offset: 96)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4403, file: !4330, line: 84, baseType: !318, size: 32, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4403, file: !4330, line: 85, baseType: !318, size: 32, offset: 160)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4403, file: !4330, line: 86, baseType: !318, size: 32, offset: 192)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4403, file: !4330, line: 88, baseType: !4361, size: 640, offset: 224)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4403, file: !4330, line: 89, baseType: !376, size: 8, offset: 864)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4403, file: !4330, line: 90, baseType: !376, size: 8, offset: 872)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4403, file: !4330, line: 91, baseType: !376, size: 8, offset: 880)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4403, file: !4330, line: 92, baseType: !376, size: 8, offset: 888)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4403, file: !4330, line: 93, baseType: !376, size: 8, offset: 896)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4403, file: !4330, line: 94, baseType: !376, size: 8, offset: 904)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4403, file: !4330, line: 95, baseType: !4420, size: 64, offset: 960)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4422, line: 11, size: 128, elements: !4423)
!4422 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4423 = !{!4424, !4425}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4421, file: !4422, line: 12, baseType: !241, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4421, file: !4422, line: 13, baseType: !4426, size: 64, offset: 64)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4428, line: 103, size: 1344, elements: !4429)
!4428 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4429 = !{!4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4458, !4459, !4460}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4427, file: !4428, line: 109, baseType: !225, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4427, file: !4428, line: 110, baseType: !225, size: 64, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4427, file: !4428, line: 111, baseType: !225, size: 64, offset: 128)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4427, file: !4428, line: 112, baseType: !225, size: 64, offset: 192)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4427, file: !4428, line: 113, baseType: !225, size: 64, offset: 256)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4427, file: !4428, line: 114, baseType: !225, size: 64, offset: 320)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4427, file: !4428, line: 117, baseType: !225, size: 64, offset: 384)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4427, file: !4428, line: 118, baseType: !225, size: 64, offset: 448)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4427, file: !4428, line: 119, baseType: !225, size: 64, offset: 512)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4427, file: !4428, line: 120, baseType: !225, size: 64, offset: 576)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4427, file: !4428, line: 121, baseType: !225, size: 64, offset: 640)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4427, file: !4428, line: 122, baseType: !225, size: 64, offset: 704)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4427, file: !4428, line: 123, baseType: !225, size: 64, offset: 768)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4427, file: !4428, line: 124, baseType: !225, size: 64, offset: 832)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4427, file: !4428, line: 125, baseType: !225, size: 64, offset: 896)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4427, file: !4428, line: 139, baseType: !225, size: 64, offset: 960)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4427, file: !4428, line: 142, baseType: !225, size: 64, offset: 1024)
!4447 = !DIDerivedType(tag: DW_TAG_member, scope: !4427, file: !4428, line: 144, baseType: !4448, size: 64, offset: 1088)
!4448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4427, file: !4428, line: 144, size: 64, elements: !4449)
!4449 = !{!4450, !4451, !4452}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4448, file: !4428, line: 146, baseType: !383, size: 16)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4448, file: !4428, line: 148, baseType: !324, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4448, file: !4428, line: 150, baseType: !4453, size: 64)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4428, line: 59, size: 64, elements: !4454)
!4454 = !{!4455, !4456, !4457}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4453, file: !4428, line: 61, baseType: !324, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4453, file: !4428, line: 63, baseType: !324, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4453, file: !4428, line: 65, baseType: !324, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4427, file: !4428, line: 153, baseType: !225, size: 64, offset: 1152)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4427, file: !4428, line: 154, baseType: !225, size: 64, offset: 1216)
!4460 = !DIDerivedType(tag: DW_TAG_member, scope: !4427, file: !4428, line: 156, baseType: !4461, size: 64, offset: 1280)
!4461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4427, file: !4428, line: 156, size: 64, elements: !4462)
!4462 = !{!4463, !4464, !4465}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4461, file: !4428, line: 158, baseType: !383, size: 16)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4461, file: !4428, line: 160, baseType: !324, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4461, file: !4428, line: 162, baseType: !4466, size: 64)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4428, line: 69, size: 64, elements: !4467)
!4467 = !{!4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4466, file: !4428, line: 71, baseType: !324, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4466, file: !4428, line: 73, baseType: !324, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4466, file: !4428, line: 75, baseType: !324, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4466, file: !4428, line: 77, baseType: !324, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4466, file: !4428, line: 80, baseType: !324, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4466, file: !4428, line: 83, baseType: !324, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4466, file: !4428, line: 86, baseType: !324, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4466, file: !4428, line: 88, baseType: !324, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4466, file: !4428, line: 93, baseType: !324, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4466, file: !4428, line: 100, baseType: !324, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4403, file: !4330, line: 96, baseType: !318, size: 32, offset: 1024)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4348, file: !4330, line: 352, baseType: !4480, size: 4608, align: 512)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4330, line: 333, size: 4608, align: 512, elements: !4481)
!4481 = !{!4482, !4483, !4490}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4480, file: !4330, line: 334, baseType: !4366, size: 4096, align: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4480, file: !4330, line: 335, baseType: !4484, size: 512, offset: 4096)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4330, line: 312, size: 512, elements: !4485)
!4485 = !{!4486, !4487, !4488}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4484, file: !4330, line: 313, baseType: !324, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4484, file: !4330, line: 314, baseType: !324, size: 64, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4484, file: !4330, line: 315, baseType: !4489, size: 384, offset: 128)
!4489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 384, elements: !1020)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4480, file: !4330, line: 336, baseType: !4491, offset: 4608)
!4491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, elements: !932)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4348, file: !4330, line: 353, baseType: !4493, size: 32768)
!4493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 32768, elements: !4494)
!4494 = !{!4495}
!4495 = !DISubrange(count: 4096)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4329, file: !4330, line: 484, baseType: !4335, size: 64, offset: 192)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4329, file: !4330, line: 491, baseType: !4498, size: 128, offset: 256)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4330, line: 404, size: 128, elements: !4499)
!4499 = !{!4500, !4501, !4502}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4498, file: !4330, line: 424, baseType: !324, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4498, file: !4330, line: 432, baseType: !7, size: 32, offset: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4498, file: !4330, line: 440, baseType: !7, size: 32, offset: 96)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4329, file: !4330, line: 498, baseType: !4498, size: 128, offset: 384)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4329, file: !4330, line: 508, baseType: !4336, size: 33280, align: 512, offset: 512)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3288, file: !3289, line: 16, baseType: !917, size: 192, offset: 512)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3288, file: !3289, line: 17, baseType: !368, size: 32, offset: 704)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !446, file: !44, line: 1240, baseType: !219, size: 64, offset: 6912)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !446, file: !44, line: 1243, baseType: !318, size: 32, offset: 6976)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !446, file: !44, line: 1245, baseType: !990, size: 64, offset: 7040)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !446, file: !44, line: 1246, baseType: !990, size: 64, offset: 7104)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !446, file: !44, line: 1248, baseType: !320, size: 32, offset: 7168)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !446, file: !44, line: 1249, baseType: !4513, size: 64, offset: 7232)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 634, flags: DIFlagFwdDecl)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !446, file: !44, line: 1252, baseType: !4516, size: 256, offset: 7296)
!4516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 256, elements: !334)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !446, file: !44, line: 1253, baseType: !4518, size: 128, offset: 7552)
!4518 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4519, line: 21, baseType: !4520)
!4519 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4519, line: 19, size: 128, elements: !4521)
!4521 = !{!4522}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4520, file: !4519, line: 20, baseType: !4523, size: 128)
!4523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 128, elements: !3655)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !446, file: !44, line: 1255, baseType: !7, size: 32, offset: 7680)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !446, file: !44, line: 1261, baseType: !857, size: 256, offset: 7744)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !446, file: !44, line: 1267, baseType: !408, size: 64, offset: 8000)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !446, file: !44, line: 1269, baseType: !388, size: 64, offset: 8064)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !446, file: !44, line: 1271, baseType: !4529, size: 448, offset: 8128)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2511, line: 63, size: 448, elements: !4530)
!4530 = !{!4531, !4536, !4537, !4538, !4539, !4540, !4541}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4529, file: !2511, line: 64, baseType: !4532, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!225, !4535, !2509}
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4529, file: !2511, line: 66, baseType: !4532, size: 64, offset: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4529, file: !2511, line: 69, baseType: !241, size: 64, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4529, file: !2511, line: 70, baseType: !81, size: 32, offset: 192)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4529, file: !2511, line: 71, baseType: !7, size: 32, offset: 224)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4529, file: !2511, line: 74, baseType: !258, size: 128, offset: 256)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4529, file: !2511, line: 85, baseType: !4542, size: 64, offset: 384)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !446, file: !44, line: 1274, baseType: !622, size: 64, offset: 8576)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !446, file: !44, line: 1280, baseType: !622, size: 64, offset: 8640)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !446, file: !44, line: 1283, baseType: !81, size: 32, offset: 8704)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !446, file: !44, line: 1286, baseType: !1459, size: 32, offset: 8736)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !446, file: !44, line: 1289, baseType: !2332, size: 64, offset: 8768)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !446, file: !44, line: 1290, baseType: !904, size: 64, offset: 8832)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !446, file: !44, line: 1297, baseType: !1114, size: 64, offset: 8896)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !446, file: !44, line: 1304, baseType: !4551, size: 64, offset: 8960)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4552, line: 49, size: 64, elements: !4553)
!4552 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4553 = !{!4554}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4551, file: !4552, line: 50, baseType: !4555, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4552, line: 41, size: 512, align: 512, elements: !4557)
!4557 = !{!4558, !4559, !4564}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4556, file: !4552, line: 43, baseType: !348, size: 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4556, file: !4552, line: 45, baseType: !4560, size: 192, offset: 64)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4552, line: 29, size: 192, elements: !4561)
!4561 = !{!4562, !4563}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4560, file: !4552, line: 30, baseType: !258, size: 128)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4560, file: !4552, line: 32, baseType: !241, size: 64, offset: 128)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4556, file: !4552, line: 46, baseType: !241, size: 64, offset: 256)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !446, file: !44, line: 1305, baseType: !4551, size: 64, offset: 9024)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !446, file: !44, line: 1306, baseType: !752, size: 128, align: 64, offset: 9088)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !446, file: !44, line: 1307, baseType: !1589, size: 256, offset: 9216)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !446, file: !44, line: 1309, baseType: !857, size: 256, offset: 9472)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !446, file: !44, line: 1314, baseType: !81, size: 32, offset: 9728)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !446, file: !44, line: 1317, baseType: !348, size: 32, align: 512, offset: 10240)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !446, file: !44, line: 1318, baseType: !258, size: 128, offset: 10304)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !446, file: !44, line: 1320, baseType: !348, size: 32, offset: 10432)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !446, file: !44, line: 1321, baseType: !258, size: 128, offset: 10496)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !440, file: !441, line: 73, baseType: !81, size: 32, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !440, file: !441, line: 74, baseType: !4576, size: 64, offset: 192)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !956, line: 42, flags: DIFlagFwdDecl)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !390, file: !286, line: 141, baseType: !4580, size: 64, offset: 704)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!81, !2571, !748}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !390, file: !286, line: 142, baseType: !4584, size: 64, offset: 768)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!284, !284, !4587}
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !285, file: !286, line: 96, baseType: !445, size: 64, offset: 832)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !285, file: !286, line: 97, baseType: !225, size: 64, offset: 896)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !285, file: !286, line: 98, baseType: !219, size: 64, offset: 960)
!4592 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !286, line: 100, baseType: !4593, size: 128, offset: 1024)
!4593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !285, file: !286, line: 100, size: 128, elements: !4594)
!4594 = !{!4595, !4596}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4593, file: !286, line: 101, baseType: !258, size: 128)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4593, file: !286, line: 102, baseType: !4597, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !285, file: !286, line: 104, baseType: !258, size: 128, offset: 1152)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !285, file: !286, line: 105, baseType: !258, size: 128, offset: 1280)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !285, file: !286, line: 113, baseType: !4601, size: 128, offset: 1408)
!4601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !285, file: !286, line: 109, size: 128, elements: !4602)
!4602 = !{!4603, !4604, !4605}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4601, file: !286, line: 110, baseType: !908, size: 128)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4601, file: !286, line: 111, baseType: !300, size: 128)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4601, file: !286, line: 112, baseType: !752, size: 128, align: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !278, file: !44, line: 1968, baseType: !4607, size: 64, offset: 64)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!408, !284, !331, !4610}
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4612, line: 10, size: 128, elements: !4613)
!4612 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4613 = !{!4614, !4615}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4611, file: !4612, line: 11, baseType: !1901, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4611, file: !4612, line: 12, baseType: !219, size: 64, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !278, file: !44, line: 1969, baseType: !4617, size: 64, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!81, !4576, !331, !81}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !278, file: !44, line: 1970, baseType: !4621, size: 64, offset: 192)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!272, !331, !81, !748}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !278, file: !44, line: 1972, baseType: !4625, size: 64, offset: 256)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!81, !284, !434, !81}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !278, file: !44, line: 1974, baseType: !4629, size: 64, offset: 320)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!81, !4576, !331, !284, !246, !748}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !278, file: !44, line: 1976, baseType: !4633, size: 64, offset: 384)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!81, !284, !331, !284}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !278, file: !44, line: 1977, baseType: !4637, size: 64, offset: 448)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!81, !331, !284}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !278, file: !44, line: 1978, baseType: !4641, size: 64, offset: 512)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!81, !4576, !331, !284, !408}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !278, file: !44, line: 1980, baseType: !4645, size: 64, offset: 576)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!81, !4576, !331, !284, !246}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !278, file: !44, line: 1982, baseType: !4637, size: 64, offset: 640)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !278, file: !44, line: 1983, baseType: !4650, size: 64, offset: 704)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!81, !4576, !331, !284, !246, !450}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !278, file: !44, line: 1985, baseType: !4654, size: 64, offset: 768)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!81, !4576, !331, !284, !331, !284, !7}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !278, file: !44, line: 1987, baseType: !4658, size: 64, offset: 832)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!81, !4576, !284, !2718}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !278, file: !44, line: 1988, baseType: !4662, size: 64, offset: 896)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!81, !4576, !2571, !4665, !318, !7}
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4667, line: 22, size: 1280, elements: !4668)
!4667 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4668 = !{!4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4666, file: !4667, line: 23, baseType: !318, size: 32)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4666, file: !4667, line: 24, baseType: !246, size: 16, offset: 32)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4666, file: !4667, line: 25, baseType: !7, size: 32, offset: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4666, file: !4667, line: 26, baseType: !998, size: 32, offset: 96)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4666, file: !4667, line: 27, baseType: !324, size: 64, offset: 128)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4666, file: !4667, line: 28, baseType: !324, size: 64, offset: 192)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4666, file: !4667, line: 41, baseType: !324, size: 64, offset: 256)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4666, file: !4667, line: 42, baseType: !450, size: 32, offset: 320)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4666, file: !4667, line: 43, baseType: !450, size: 32, offset: 352)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4666, file: !4667, line: 44, baseType: !250, size: 32, offset: 384)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4666, file: !4667, line: 45, baseType: !264, size: 32, offset: 416)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4666, file: !4667, line: 46, baseType: !455, size: 64, offset: 448)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4666, file: !4667, line: 47, baseType: !2744, size: 128, offset: 512)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4666, file: !4667, line: 48, baseType: !2744, size: 128, offset: 640)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4666, file: !4667, line: 49, baseType: !2744, size: 128, offset: 768)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4666, file: !4667, line: 50, baseType: !2744, size: 128, offset: 896)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4666, file: !4667, line: 51, baseType: !324, size: 64, offset: 1024)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4666, file: !4667, line: 52, baseType: !324, size: 64, offset: 1088)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4666, file: !4667, line: 53, baseType: !318, size: 32, offset: 1152)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4666, file: !4667, line: 54, baseType: !318, size: 32, offset: 1184)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4666, file: !4667, line: 55, baseType: !324, size: 64, offset: 1216)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !278, file: !44, line: 1990, baseType: !4691, size: 64, offset: 960)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!567, !284, !434, !578}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !278, file: !44, line: 1991, baseType: !4695, size: 64, offset: 1024)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!81, !331, !4698, !324, !324}
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 55, flags: DIFlagFwdDecl)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !278, file: !44, line: 1993, baseType: !4701, size: 64, offset: 1088)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!81, !331, !81}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !278, file: !44, line: 1994, baseType: !4705, size: 64, offset: 1152)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!81, !331, !284, !838, !7, !246}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !278, file: !44, line: 1997, baseType: !4709, size: 64, offset: 1216)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!81, !4576, !331, !838, !246}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !278, file: !44, line: 1999, baseType: !4713, size: 64, offset: 1280)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!272, !4576, !284, !81}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !278, file: !44, line: 2001, baseType: !4717, size: 64, offset: 1344)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!81, !4576, !284, !272, !81}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !278, file: !44, line: 2003, baseType: !4721, size: 64, offset: 1408)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!81, !4576, !284, !4724}
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !44, line: 76, flags: DIFlagFwdDecl)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !278, file: !44, line: 2005, baseType: !4727, size: 64, offset: 1472)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!81, !284, !4724}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !278, file: !44, line: 2006, baseType: !4731, size: 64, offset: 1536)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!4734, !331}
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !44, line: 3192, size: 192, elements: !4736)
!4736 = !{!4737, !4738}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4735, file: !44, line: 3193, baseType: !611, size: 128)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4735, file: !44, line: 3194, baseType: !318, size: 32, offset: 128)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !243, file: !44, line: 655, baseType: !445, size: 64, offset: 448)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !243, file: !44, line: 656, baseType: !606, size: 64, offset: 512)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !243, file: !44, line: 659, baseType: !219, size: 64, offset: 576)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !243, file: !44, line: 663, baseType: !225, size: 64, offset: 640)
!4743 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !44, line: 671, baseType: !4744, size: 32, offset: 704)
!4744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !44, line: 671, size: 32, elements: !4745)
!4745 = !{!4746, !4748}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4744, file: !44, line: 672, baseType: !4747, size: 32)
!4747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4744, file: !44, line: 673, baseType: !7, size: 32)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !243, file: !44, line: 675, baseType: !450, size: 32, offset: 736)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !243, file: !44, line: 676, baseType: !455, size: 64, offset: 768)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !243, file: !44, line: 677, baseType: !2744, size: 128, offset: 832)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !243, file: !44, line: 678, baseType: !2744, size: 128, offset: 960)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !243, file: !44, line: 679, baseType: !2744, size: 128, offset: 1088)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !243, file: !44, line: 680, baseType: !348, size: 32, offset: 1216)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !243, file: !44, line: 681, baseType: !247, size: 16, offset: 1248)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !243, file: !44, line: 682, baseType: !376, size: 8, offset: 1264)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !243, file: !44, line: 683, baseType: !376, size: 8, offset: 1272)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !243, file: !44, line: 684, baseType: !2644, size: 64, offset: 1280)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !243, file: !44, line: 691, baseType: !225, size: 64, offset: 1344)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !243, file: !44, line: 692, baseType: !618, size: 320, offset: 1408)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !243, file: !44, line: 694, baseType: !225, size: 64, offset: 1728)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !243, file: !44, line: 695, baseType: !225, size: 64, offset: 1792)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !243, file: !44, line: 697, baseType: !908, size: 128, offset: 1856)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !243, file: !44, line: 698, baseType: !258, size: 128, offset: 1984)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !243, file: !44, line: 707, baseType: !258, size: 128, offset: 2112)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !243, file: !44, line: 708, baseType: !258, size: 128, offset: 2240)
!4767 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !44, line: 709, baseType: !4768, size: 128, offset: 2368)
!4768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !44, line: 709, size: 128, elements: !4769)
!4769 = !{!4770, !4771}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4768, file: !44, line: 710, baseType: !904, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4768, file: !44, line: 711, baseType: !752, size: 128, align: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !243, file: !44, line: 713, baseType: !624, size: 64, offset: 2496)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !243, file: !44, line: 714, baseType: !624, size: 64, offset: 2560)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !243, file: !44, line: 715, baseType: !368, size: 32, offset: 2624)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !243, file: !44, line: 716, baseType: !368, size: 32, offset: 2656)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !243, file: !44, line: 717, baseType: !368, size: 32, offset: 2688)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !243, file: !44, line: 719, baseType: !368, size: 32, offset: 2720)
!4778 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !44, line: 721, baseType: !4779, size: 64, offset: 2752)
!4779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !44, line: 721, size: 64, elements: !4780)
!4780 = !{!4781, !4782}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4779, file: !44, line: 722, baseType: !1150, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4779, file: !44, line: 723, baseType: !2400, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !243, file: !44, line: 725, baseType: !4784, size: 64, offset: 2816)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 725, flags: DIFlagFwdDecl)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !243, file: !44, line: 726, baseType: !607, size: 1536, align: 64, offset: 2880)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !243, file: !44, line: 727, baseType: !258, size: 128, offset: 4416)
!4788 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !44, line: 728, baseType: !4789, size: 64, offset: 4544)
!4789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !44, line: 728, size: 64, elements: !4790)
!4790 = !{!4791, !4792, !4795, !4796}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4789, file: !44, line: 729, baseType: !1406, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4789, file: !44, line: 730, baseType: !4793, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 730, flags: DIFlagFwdDecl)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4789, file: !44, line: 731, baseType: !434, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4789, file: !44, line: 732, baseType: !7, size: 32)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !243, file: !44, line: 735, baseType: !320, size: 32, offset: 4608)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !243, file: !44, line: 738, baseType: !320, size: 32, offset: 4640)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !243, file: !44, line: 739, baseType: !4513, size: 64, offset: 4672)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !243, file: !44, line: 750, baseType: !219, size: 64, offset: 4736)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !410)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !241)
!4805 = !DIDerivedType(tag: DW_TAG_typedef, name: "fgf_t", file: !1190, line: 597, baseType: !7)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4808)
!4808 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !225)
!4809 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !218, line: 42, baseType: !225)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!4813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1359, line: 38, baseType: !320)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!4816 = !{!0, !4817, !4819, !4824, !4827, !4832, !4837, !4841, !4843}
!4817 = !DIGlobalVariableExpression(var: !4818, expr: !DIExpression())
!4818 = distinct !DIGlobalVariable(name: "zisofs_zlib_workspace", scope: !2, file: !3, line: 32, type: !219, isLocal: true, isDefinition: true)
!4819 = !DIGlobalVariableExpression(var: !4820, expr: !DIExpression())
!4820 = distinct !DIGlobalVariable(scope: null, file: !187, line: 480, type: !4821, isLocal: true, isDefinition: true)
!4821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 168, elements: !4822)
!4822 = !{!4823}
!4823 = !DISubrange(count: 21)
!4824 = !DIGlobalVariableExpression(var: !4825, expr: !DIExpression())
!4825 = distinct !DIGlobalVariable(scope: null, file: !3, line: 222, type: !4826, isLocal: true, isDefinition: true)
!4826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 160, elements: !4362)
!4827 = !DIGlobalVariableExpression(var: !4828, expr: !DIExpression())
!4828 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !4829, isLocal: true, isDefinition: true)
!4829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 336, elements: !4830)
!4830 = !{!4831}
!4831 = !DISubrange(count: 42)
!4832 = !DIGlobalVariableExpression(var: !4833, expr: !DIExpression())
!4833 = distinct !DIGlobalVariable(scope: null, file: !3, line: 157, type: !4834, isLocal: true, isDefinition: true)
!4834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 896, elements: !4835)
!4835 = !{!4836}
!4836 = !DISubrange(count: 112)
!4837 = !DIGlobalVariableExpression(var: !4838, expr: !DIExpression())
!4838 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !4839, file: !4840, line: 112, type: !219, isLocal: true, isDefinition: true)
!4839 = distinct !DISubprogram(name: "might_resched", scope: !4840, file: !4840, line: 110, type: !2375, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4840 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4841 = !DIGlobalVariableExpression(var: !4842, expr: !DIExpression())
!4842 = distinct !DIGlobalVariable(name: "zisofs_zlib_lock", scope: !2, file: !3, line: 33, type: !857, isLocal: true, isDefinition: true)
!4843 = !DIGlobalVariableExpression(var: !4844, expr: !DIExpression())
!4844 = distinct !DIGlobalVariable(name: "zisofs_sink_page", scope: !2, file: !3, line: 26, type: !4845, isLocal: true, isDefinition: true)
!4845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 32768, elements: !4494)
!4846 = !{i32 7, !"Dwarf Version", i32 5}
!4847 = !{i32 2, !"Debug Info Version", i32 3}
!4848 = !{i32 1, !"wchar_size", i32 2}
!4849 = !{i32 8, !"cf-protection-branch", i32 1}
!4850 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4851 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4852 = !{i32 1, !"Code Model", i32 2}
!4853 = !{i32 1, !"override-stack-alignment", i32 8}
!4854 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4855 = distinct !DISubprogram(name: "zisofs_read_folio", scope: !3, file: !3, line: 302, type: !1768, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4856)
!4856 = !{!4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4875, !4876, !4878}
!4857 = !DILocalVariable(name: "file", arg: 1, scope: !4855, file: !3, line: 302, type: !838)
!4858 = !DILocalVariable(name: "folio", arg: 2, scope: !4855, file: !3, line: 302, type: !1193)
!4859 = !DILocalVariable(name: "page", scope: !4855, file: !3, line: 304, type: !667)
!4860 = !DILocalVariable(name: "inode", scope: !4855, file: !3, line: 305, type: !331)
!4861 = !DILocalVariable(name: "mapping", scope: !4855, file: !3, line: 306, type: !606)
!4862 = !DILocalVariable(name: "err", scope: !4855, file: !3, line: 307, type: !81)
!4863 = !DILocalVariable(name: "i", scope: !4855, file: !3, line: 308, type: !81)
!4864 = !DILocalVariable(name: "pcount", scope: !4855, file: !3, line: 308, type: !81)
!4865 = !DILocalVariable(name: "full_page", scope: !4855, file: !3, line: 308, type: !81)
!4866 = !DILocalVariable(name: "zisofs_block_shift", scope: !4855, file: !3, line: 309, type: !7)
!4867 = !DILocalVariable(name: "zisofs_pages_per_cblock", scope: !4855, file: !3, line: 310, type: !7)
!4868 = !DILocalVariable(name: "pages", scope: !4855, file: !3, line: 313, type: !1798)
!4869 = !DILocalVariable(name: "index", scope: !4855, file: !3, line: 314, type: !225)
!4870 = !DILocalVariable(name: "end_index", scope: !4855, file: !3, line: 314, type: !225)
!4871 = !DILocalVariable(name: "__UNIQUE_ID___x337", scope: !4872, file: !3, line: 331, type: !81)
!4872 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 331, column: 12)
!4873 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 327, column: 40)
!4874 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 327, column: 6)
!4875 = !DILocalVariable(name: "__UNIQUE_ID___y338", scope: !4872, file: !3, line: 331, type: !81)
!4876 = !DILocalVariable(name: "__UNIQUE_ID___x339", scope: !4877, file: !3, line: 338, type: !7)
!4877 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 338, column: 18)
!4878 = !DILocalVariable(name: "__UNIQUE_ID___y340", scope: !4877, file: !3, line: 338, type: !7)
!4879 = !DILocation(line: 302, column: 43, scope: !4855)
!4880 = !DILocation(line: 302, column: 63, scope: !4855)
!4881 = !DILocation(line: 304, column: 2, scope: !4855)
!4882 = !DILocation(line: 304, column: 15, scope: !4855)
!4883 = !DILocation(line: 304, column: 23, scope: !4855)
!4884 = !DILocation(line: 304, column: 30, scope: !4855)
!4885 = !DILocation(line: 305, column: 2, scope: !4855)
!4886 = !DILocation(line: 305, column: 16, scope: !4855)
!4887 = !DILocation(line: 305, column: 35, scope: !4855)
!4888 = !DILocation(line: 305, column: 24, scope: !4855)
!4889 = !DILocation(line: 306, column: 2, scope: !4855)
!4890 = !DILocation(line: 306, column: 24, scope: !4855)
!4891 = !DILocation(line: 306, column: 34, scope: !4855)
!4892 = !DILocation(line: 306, column: 41, scope: !4855)
!4893 = !DILocation(line: 307, column: 2, scope: !4855)
!4894 = !DILocation(line: 307, column: 6, scope: !4855)
!4895 = !DILocation(line: 308, column: 2, scope: !4855)
!4896 = !DILocation(line: 308, column: 6, scope: !4855)
!4897 = !DILocation(line: 308, column: 9, scope: !4855)
!4898 = !DILocation(line: 308, column: 17, scope: !4855)
!4899 = !DILocation(line: 309, column: 2, scope: !4855)
!4900 = !DILocation(line: 309, column: 15, scope: !4855)
!4901 = !DILocation(line: 309, column: 44, scope: !4855)
!4902 = !DILocation(line: 309, column: 36, scope: !4855)
!4903 = !DILocation(line: 309, column: 52, scope: !4855)
!4904 = !DILocation(line: 310, column: 2, scope: !4855)
!4905 = !DILocation(line: 310, column: 15, scope: !4855)
!4906 = !DILocation(line: 311, column: 17, scope: !4855)
!4907 = !DILocation(line: 311, column: 14, scope: !4855)
!4908 = !DILocation(line: 311, column: 3, scope: !4855)
!4909 = !DILocation(line: 312, column: 10, scope: !4855)
!4910 = !DILocation(line: 312, column: 29, scope: !4855)
!4911 = !DILocation(line: 312, column: 6, scope: !4855)
!4912 = !DILocation(line: 313, column: 2, scope: !4855)
!4913 = !DILocation(line: 313, column: 16, scope: !4855)
!4914 = !DILocation(line: 314, column: 2, scope: !4855)
!4915 = !DILocation(line: 314, column: 10, scope: !4855)
!4916 = !DILocation(line: 314, column: 18, scope: !4855)
!4917 = !DILocation(line: 314, column: 24, scope: !4855)
!4918 = !DILocation(line: 314, column: 31, scope: !4855)
!4919 = !DILocation(line: 316, column: 15, scope: !4855)
!4920 = !DILocation(line: 316, column: 22, scope: !4855)
!4921 = !DILocation(line: 316, column: 29, scope: !4855)
!4922 = !DILocation(line: 316, column: 41, scope: !4855)
!4923 = !DILocation(line: 316, column: 46, scope: !4855)
!4924 = !DILocation(line: 316, column: 12, scope: !4855)
!4925 = !DILocation(line: 321, column: 6, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 321, column: 6)
!4927 = !DILocation(line: 321, column: 15, scope: !4926)
!4928 = !DILocation(line: 321, column: 12, scope: !4926)
!4929 = !DILocation(line: 321, column: 6, scope: !4855)
!4930 = !DILocation(line: 322, column: 19, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 321, column: 26)
!4932 = !DILocation(line: 322, column: 3, scope: !4931)
!4933 = !DILocation(line: 323, column: 15, scope: !4931)
!4934 = !DILocation(line: 323, column: 3, scope: !4931)
!4935 = !DILocation(line: 324, column: 3, scope: !4931)
!4936 = !DILocation(line: 327, column: 20, scope: !4874)
!4937 = !DILocation(line: 327, column: 17, scope: !4874)
!4938 = !DILocation(line: 327, column: 6, scope: !4855)
!4939 = !DILocation(line: 330, column: 15, scope: !4873)
!4940 = !DILocation(line: 330, column: 24, scope: !4873)
!4941 = !DILocation(line: 330, column: 48, scope: !4873)
!4942 = !DILocation(line: 330, column: 23, scope: !4873)
!4943 = !DILocation(line: 330, column: 21, scope: !4873)
!4944 = !DILocation(line: 330, column: 13, scope: !4873)
!4945 = !DILocation(line: 331, column: 12, scope: !4872)
!4946 = !DILocation(line: 331, column: 12, scope: !4873)
!4947 = !DILocation(line: 331, column: 10, scope: !4873)
!4948 = !DILocation(line: 333, column: 12, scope: !4873)
!4949 = !DILocation(line: 333, column: 9, scope: !4873)
!4950 = !DILocation(line: 334, column: 2, scope: !4873)
!4951 = !DILocation(line: 335, column: 13, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 334, column: 9)
!4953 = !DILocation(line: 336, column: 10, scope: !4952)
!4954 = !DILocation(line: 338, column: 18, scope: !4877)
!4955 = !DILocation(line: 338, column: 18, scope: !4855)
!4956 = !DILocation(line: 338, column: 10, scope: !4855)
!4957 = !DILocation(line: 338, column: 8, scope: !4855)
!4958 = !DILocation(line: 340, column: 7, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 340, column: 6)
!4960 = !DILocation(line: 340, column: 6, scope: !4855)
!4961 = !DILocation(line: 341, column: 15, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4959, file: !3, line: 340, column: 14)
!4963 = !DILocation(line: 341, column: 3, scope: !4962)
!4964 = !DILocation(line: 342, column: 3, scope: !4962)
!4965 = !DILocation(line: 344, column: 21, scope: !4855)
!4966 = !DILocation(line: 344, column: 2, scope: !4855)
!4967 = !DILocation(line: 344, column: 8, scope: !4855)
!4968 = !DILocation(line: 344, column: 19, scope: !4855)
!4969 = !DILocation(line: 346, column: 9, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 346, column: 2)
!4971 = !DILocation(line: 346, column: 7, scope: !4970)
!4972 = !DILocation(line: 346, column: 14, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 346, column: 2)
!4974 = !DILocation(line: 346, column: 18, scope: !4973)
!4975 = !DILocation(line: 346, column: 16, scope: !4973)
!4976 = !DILocation(line: 346, column: 2, scope: !4970)
!4977 = !DILocation(line: 347, column: 7, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 347, column: 7)
!4979 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 346, column: 40)
!4980 = !DILocation(line: 347, column: 12, scope: !4978)
!4981 = !DILocation(line: 347, column: 9, scope: !4978)
!4982 = !DILocation(line: 347, column: 7, scope: !4979)
!4983 = !DILocation(line: 348, column: 38, scope: !4978)
!4984 = !DILocation(line: 348, column: 47, scope: !4978)
!4985 = !DILocation(line: 348, column: 15, scope: !4978)
!4986 = !DILocation(line: 348, column: 4, scope: !4978)
!4987 = !DILocation(line: 348, column: 10, scope: !4978)
!4988 = !DILocation(line: 348, column: 13, scope: !4978)
!4989 = !DILocation(line: 349, column: 7, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 349, column: 7)
!4991 = !DILocation(line: 349, column: 13, scope: !4990)
!4992 = !DILocation(line: 349, column: 7, scope: !4979)
!4993 = !DILocation(line: 350, column: 19, scope: !4990)
!4994 = !DILocation(line: 350, column: 25, scope: !4990)
!4995 = !DILocation(line: 350, column: 4, scope: !4990)
!4996 = !DILocation(line: 351, column: 2, scope: !4979)
!4997 = !DILocation(line: 346, column: 27, scope: !4973)
!4998 = !DILocation(line: 346, column: 36, scope: !4973)
!4999 = !DILocation(line: 346, column: 2, scope: !4973)
!5000 = distinct !{!5000, !4976, !5001, !5002, !5003}
!5001 = !DILocation(line: 351, column: 2, scope: !4970)
!5002 = !{!"llvm.loop.mustprogress"}
!5003 = !{!"llvm.loop.unroll.disable"}
!5004 = !DILocation(line: 353, column: 26, scope: !4855)
!5005 = !DILocation(line: 353, column: 33, scope: !4855)
!5006 = !DILocation(line: 353, column: 44, scope: !4855)
!5007 = !DILocation(line: 353, column: 52, scope: !4855)
!5008 = !DILocation(line: 353, column: 8, scope: !4855)
!5009 = !DILocation(line: 353, column: 6, scope: !4855)
!5010 = !DILocation(line: 356, column: 9, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 356, column: 2)
!5012 = !DILocation(line: 356, column: 7, scope: !5011)
!5013 = !DILocation(line: 356, column: 14, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 356, column: 2)
!5015 = !DILocation(line: 356, column: 18, scope: !5014)
!5016 = !DILocation(line: 356, column: 16, scope: !5014)
!5017 = !DILocation(line: 356, column: 2, scope: !5011)
!5018 = !DILocation(line: 357, column: 7, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5020, file: !3, line: 357, column: 7)
!5020 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 356, column: 31)
!5021 = !DILocation(line: 357, column: 13, scope: !5019)
!5022 = !DILocation(line: 357, column: 7, scope: !5020)
!5023 = !DILocation(line: 358, column: 22, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 357, column: 17)
!5025 = !DILocation(line: 358, column: 28, scope: !5024)
!5026 = !DILocation(line: 358, column: 4, scope: !5024)
!5027 = !DILocation(line: 359, column: 8, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 359, column: 8)
!5029 = !DILocation(line: 359, column: 13, scope: !5028)
!5030 = !DILocation(line: 359, column: 10, scope: !5028)
!5031 = !DILocation(line: 359, column: 23, scope: !5028)
!5032 = !DILocation(line: 359, column: 26, scope: !5028)
!5033 = !DILocation(line: 359, column: 8, scope: !5024)
!5034 = !DILocation(line: 360, column: 18, scope: !5028)
!5035 = !DILocation(line: 360, column: 24, scope: !5028)
!5036 = !DILocation(line: 360, column: 5, scope: !5028)
!5037 = !DILocation(line: 361, column: 16, scope: !5024)
!5038 = !DILocation(line: 361, column: 22, scope: !5024)
!5039 = !DILocation(line: 361, column: 4, scope: !5024)
!5040 = !DILocation(line: 362, column: 8, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 362, column: 8)
!5042 = !DILocation(line: 362, column: 13, scope: !5041)
!5043 = !DILocation(line: 362, column: 10, scope: !5041)
!5044 = !DILocation(line: 362, column: 8, scope: !5024)
!5045 = !DILocation(line: 363, column: 14, scope: !5041)
!5046 = !DILocation(line: 363, column: 20, scope: !5041)
!5047 = !DILocation(line: 363, column: 5, scope: !5041)
!5048 = !DILocation(line: 364, column: 3, scope: !5024)
!5049 = !DILocation(line: 365, column: 2, scope: !5020)
!5050 = !DILocation(line: 356, column: 27, scope: !5014)
!5051 = !DILocation(line: 356, column: 2, scope: !5014)
!5052 = distinct !{!5052, !5017, !5053, !5002, !5003}
!5053 = !DILocation(line: 365, column: 2, scope: !5011)
!5054 = !DILocation(line: 368, column: 8, scope: !4855)
!5055 = !DILocation(line: 368, column: 2, scope: !4855)
!5056 = !DILocation(line: 369, column: 9, scope: !4855)
!5057 = !DILocation(line: 369, column: 2, scope: !4855)
!5058 = !DILocation(line: 370, column: 1, scope: !4855)
!5059 = distinct !DISubprogram(name: "zisofs_init", scope: !3, file: !3, line: 377, type: !2142, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5060 = !DILocation(line: 379, column: 34, scope: !5059)
!5061 = !DILocation(line: 379, column: 26, scope: !5059)
!5062 = !DILocation(line: 379, column: 24, scope: !5059)
!5063 = !DILocation(line: 380, column: 8, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 380, column: 7)
!5065 = !DILocation(line: 380, column: 7, scope: !5059)
!5066 = !DILocation(line: 381, column: 3, scope: !5064)
!5067 = !DILocation(line: 383, column: 2, scope: !5059)
!5068 = !DILocation(line: 384, column: 1, scope: !5059)
!5069 = !DISubprogram(name: "vmalloc", scope: !4256, file: !4256, line: 140, type: !5070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!219, !225}
!5072 = !DISubprogram(name: "zlib_inflate_workspacesize", scope: !5073, file: !5073, line: 315, type: !2142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5073 = !DIFile(filename: "./include/linux/zlib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "959204f2bbe0607cb05d45364420f12e")
!5074 = distinct !DISubprogram(name: "zisofs_cleanup", scope: !3, file: !3, line: 386, type: !2375, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5075 = !DILocation(line: 388, column: 8, scope: !5074)
!5076 = !DILocation(line: 388, column: 2, scope: !5074)
!5077 = !DILocation(line: 389, column: 1, scope: !5074)
!5078 = !DISubprogram(name: "vfree", scope: !4256, file: !4256, line: 161, type: !5079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{null, !1550}
!5081 = distinct !DISubprogram(name: "file_inode", scope: !44, file: !44, line: 1073, type: !5082, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5086)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!331, !5084}
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !839)
!5086 = !{!5087}
!5087 = !DILocalVariable(name: "f", arg: 1, scope: !5081, file: !44, line: 1073, type: !5084)
!5088 = !DILocation(line: 1073, column: 59, scope: !5081)
!5089 = !DILocation(line: 1075, column: 9, scope: !5081)
!5090 = !DILocation(line: 1075, column: 12, scope: !5081)
!5091 = !DILocation(line: 1075, column: 2, scope: !5081)
!5092 = distinct !DISubprogram(name: "ISOFS_I", scope: !222, file: !222, line: 70, type: !5093, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5095)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!220, !331}
!5095 = !{!5096, !5097}
!5096 = !DILocalVariable(name: "inode", arg: 1, scope: !5092, file: !222, line: 70, type: !331)
!5097 = !DILocalVariable(name: "__mptr", scope: !5098, file: !222, line: 72, type: !219)
!5098 = distinct !DILexicalBlock(scope: !5092, file: !222, line: 72, column: 9)
!5099 = !DILocation(line: 70, column: 60, scope: !5092)
!5100 = !DILocation(line: 72, column: 9, scope: !5098)
!5101 = !DILocation(line: 72, column: 9, scope: !5092)
!5102 = !DILocation(line: 72, column: 2, scope: !5092)
!5103 = distinct !DISubprogram(name: "SetPageUptodate", scope: !142, file: !142, line: 769, type: !782, scopeLine: 770, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5104)
!5104 = !{!5105}
!5105 = !DILocalVariable(name: "page", arg: 1, scope: !5103, file: !142, line: 769, type: !667)
!5106 = !DILocation(line: 769, column: 58, scope: !5103)
!5107 = !DILocation(line: 771, column: 38, scope: !5103)
!5108 = !DILocation(line: 771, column: 2, scope: !5103)
!5109 = !DILocation(line: 772, column: 1, scope: !5103)
!5110 = !DISubprogram(name: "unlock_page", scope: !1190, file: !1190, line: 1020, type: !782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5111 = distinct !DISubprogram(name: "kcalloc", scope: !187, file: !187, line: 666, type: !5112, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5114)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!219, !578, !578, !217}
!5114 = !{!5115, !5116, !5117}
!5115 = !DILocalVariable(name: "n", arg: 1, scope: !5111, file: !187, line: 666, type: !578)
!5116 = !DILocalVariable(name: "size", arg: 2, scope: !5111, file: !187, line: 666, type: !578)
!5117 = !DILocalVariable(name: "flags", arg: 3, scope: !5111, file: !187, line: 666, type: !217)
!5118 = !DILocation(line: 666, column: 55, scope: !5111)
!5119 = !DILocation(line: 666, column: 65, scope: !5111)
!5120 = !DILocation(line: 666, column: 77, scope: !5111)
!5121 = !DILocation(line: 668, column: 23, scope: !5111)
!5122 = !DILocation(line: 668, column: 26, scope: !5111)
!5123 = !DILocation(line: 668, column: 32, scope: !5111)
!5124 = !DILocation(line: 668, column: 38, scope: !5111)
!5125 = !DILocation(line: 668, column: 9, scope: !5111)
!5126 = !DILocation(line: 668, column: 2, scope: !5111)
!5127 = distinct !DISubprogram(name: "grab_cache_page_nowait", scope: !1190, file: !1190, line: 773, type: !5128, scopeLine: 775, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5130)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!667, !606, !225}
!5130 = !{!5131, !5132}
!5131 = !DILocalVariable(name: "mapping", arg: 1, scope: !5127, file: !1190, line: 773, type: !606)
!5132 = !DILocalVariable(name: "index", arg: 2, scope: !5127, file: !1190, line: 774, type: !225)
!5133 = !DILocation(line: 773, column: 73, scope: !5127)
!5134 = !DILocation(line: 774, column: 13, scope: !5127)
!5135 = !DILocation(line: 776, column: 28, scope: !5127)
!5136 = !DILocation(line: 776, column: 37, scope: !5127)
!5137 = !DILocation(line: 778, column: 21, scope: !5127)
!5138 = !DILocation(line: 778, column: 4, scope: !5127)
!5139 = !DILocation(line: 776, column: 9, scope: !5127)
!5140 = !DILocation(line: 776, column: 2, scope: !5127)
!5141 = distinct !DISubprogram(name: "ClearPageError", scope: !142, file: !142, line: 489, type: !782, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5142)
!5142 = !{!5143}
!5143 = !DILocalVariable(name: "page", arg: 1, scope: !5141, file: !142, line: 489, type: !667)
!5144 = !DILocation(line: 489, column: 1, scope: !5141)
!5145 = !DILocation(line: 489, column: 1, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5147, file: !142, line: 489, column: 1)
!5147 = distinct !DILexicalBlock(scope: !5141, file: !142, line: 489, column: 1)
!5148 = !DILocation(line: 489, column: 1, scope: !5147)
!5149 = distinct !DISubprogram(name: "zisofs_fill_pages", scope: !3, file: !3, line: 206, type: !5150, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5152)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!81, !331, !81, !81, !1798}
!5152 = !{!5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5192, !5193, !5194, !5195, !5196, !5198, !5199, !5201}
!5153 = !DILocalVariable(name: "inode", arg: 1, scope: !5149, file: !3, line: 206, type: !331)
!5154 = !DILocalVariable(name: "full_page", arg: 2, scope: !5149, file: !3, line: 206, type: !81)
!5155 = !DILocalVariable(name: "pcount", arg: 3, scope: !5149, file: !3, line: 206, type: !81)
!5156 = !DILocalVariable(name: "pages", arg: 4, scope: !5149, file: !3, line: 207, type: !1798)
!5157 = !DILocalVariable(name: "start_off", scope: !5149, file: !3, line: 209, type: !455)
!5158 = !DILocalVariable(name: "end_off", scope: !5149, file: !3, line: 209, type: !455)
!5159 = !DILocalVariable(name: "block_start", scope: !5149, file: !3, line: 210, type: !455)
!5160 = !DILocalVariable(name: "block_end", scope: !5149, file: !3, line: 210, type: !455)
!5161 = !DILocalVariable(name: "header_size", scope: !5149, file: !3, line: 211, type: !7)
!5162 = !DILocalVariable(name: "zisofs_block_shift", scope: !5149, file: !3, line: 212, type: !7)
!5163 = !DILocalVariable(name: "blockptr", scope: !5149, file: !3, line: 213, type: !7)
!5164 = !DILocalVariable(name: "poffset", scope: !5149, file: !3, line: 214, type: !455)
!5165 = !DILocalVariable(name: "cstart_block", scope: !5149, file: !3, line: 215, type: !2644)
!5166 = !DILocalVariable(name: "cend_block", scope: !5149, file: !3, line: 215, type: !2644)
!5167 = !DILocalVariable(name: "bh", scope: !5149, file: !3, line: 216, type: !5168)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_head", file: !197, line: 59, size: 832, elements: !5170)
!5170 = !{!5171, !5172, !5173, !5178, !5179, !5180, !5181, !5182, !5187, !5188, !5189, !5190, !5191}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "b_state", scope: !5169, file: !197, line: 60, baseType: !225, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "b_this_page", scope: !5169, file: !197, line: 61, baseType: !5168, size: 64, offset: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, scope: !5169, file: !197, line: 62, baseType: !5174, size: 64, offset: 128)
!5174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5169, file: !197, line: 62, size: 64, elements: !5175)
!5175 = !{!5176, !5177}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "b_page", scope: !5174, file: !197, line: 63, baseType: !667, size: 64)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "b_folio", scope: !5174, file: !197, line: 64, baseType: !1193, size: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "b_blocknr", scope: !5169, file: !197, line: 67, baseType: !1807, size: 64, offset: 192)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !5169, file: !197, line: 68, baseType: !578, size: 64, offset: 256)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "b_data", scope: !5169, file: !197, line: 69, baseType: !434, size: 64, offset: 320)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "b_bdev", scope: !5169, file: !197, line: 71, baseType: !2771, size: 64, offset: 384)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "b_end_io", scope: !5169, file: !197, line: 72, baseType: !5183, size: 64, offset: 448)
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = !DIDerivedType(tag: DW_TAG_typedef, name: "bh_end_io_t", file: !197, line: 48, baseType: !5185)
!5185 = !DISubroutineType(types: !5186)
!5186 = !{null, !5168, !81}
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "b_private", scope: !5169, file: !197, line: 73, baseType: !219, size: 64, offset: 512)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_buffers", scope: !5169, file: !197, line: 74, baseType: !258, size: 128, offset: 576)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_map", scope: !5169, file: !197, line: 75, baseType: !606, size: 64, offset: 704)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "b_count", scope: !5169, file: !197, line: 77, baseType: !368, size: 32, offset: 768)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "b_uptodate_lock", scope: !5169, file: !197, line: 78, baseType: !348, size: 32, offset: 800)
!5192 = !DILocalVariable(name: "blkbits", scope: !5149, file: !3, line: 217, type: !7)
!5193 = !DILocalVariable(name: "blksize", scope: !5149, file: !3, line: 218, type: !7)
!5194 = !DILocalVariable(name: "err", scope: !5149, file: !3, line: 219, type: !81)
!5195 = !DILocalVariable(name: "ret", scope: !5149, file: !3, line: 220, type: !455)
!5196 = !DILocalVariable(name: "__UNIQUE_ID___x335", scope: !5197, file: !3, line: 230, type: !455)
!5197 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 230, column: 12)
!5198 = !DILocalVariable(name: "__UNIQUE_ID___y336", scope: !5197, file: !3, line: 230, type: !455)
!5199 = !DILocalVariable(name: "__ret_warn_on", scope: !5200, file: !3, line: 236, type: !81)
!5200 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 236, column: 2)
!5201 = !DILocalVariable(name: "__flags", scope: !5202, file: !3, line: 236, type: !81)
!5202 = distinct !DILexicalBlock(scope: !5203, file: !3, line: 236, column: 2)
!5203 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 236, column: 2)
!5204 = !DILocation(line: 206, column: 44, scope: !5149)
!5205 = !DILocation(line: 206, column: 55, scope: !5149)
!5206 = !DILocation(line: 206, column: 70, scope: !5149)
!5207 = !DILocation(line: 207, column: 23, scope: !5149)
!5208 = !DILocation(line: 209, column: 2, scope: !5149)
!5209 = !DILocation(line: 209, column: 9, scope: !5149)
!5210 = !DILocation(line: 209, column: 20, scope: !5149)
!5211 = !DILocation(line: 210, column: 2, scope: !5149)
!5212 = !DILocation(line: 210, column: 9, scope: !5149)
!5213 = !DILocation(line: 210, column: 22, scope: !5149)
!5214 = !DILocation(line: 211, column: 2, scope: !5149)
!5215 = !DILocation(line: 211, column: 15, scope: !5149)
!5216 = !DILocation(line: 211, column: 37, scope: !5149)
!5217 = !DILocation(line: 211, column: 29, scope: !5149)
!5218 = !DILocation(line: 211, column: 45, scope: !5149)
!5219 = !DILocation(line: 212, column: 2, scope: !5149)
!5220 = !DILocation(line: 212, column: 15, scope: !5149)
!5221 = !DILocation(line: 212, column: 44, scope: !5149)
!5222 = !DILocation(line: 212, column: 36, scope: !5149)
!5223 = !DILocation(line: 212, column: 52, scope: !5149)
!5224 = !DILocation(line: 213, column: 2, scope: !5149)
!5225 = !DILocation(line: 213, column: 15, scope: !5149)
!5226 = !DILocation(line: 214, column: 2, scope: !5149)
!5227 = !DILocation(line: 214, column: 9, scope: !5149)
!5228 = !DILocation(line: 215, column: 2, scope: !5149)
!5229 = !DILocation(line: 215, column: 11, scope: !5149)
!5230 = !DILocation(line: 215, column: 25, scope: !5149)
!5231 = !DILocation(line: 216, column: 2, scope: !5149)
!5232 = !DILocation(line: 216, column: 22, scope: !5149)
!5233 = !DILocation(line: 217, column: 2, scope: !5149)
!5234 = !DILocation(line: 217, column: 15, scope: !5149)
!5235 = !DILocation(line: 217, column: 25, scope: !5149)
!5236 = !DILocation(line: 218, column: 2, scope: !5149)
!5237 = !DILocation(line: 218, column: 15, scope: !5149)
!5238 = !DILocation(line: 218, column: 30, scope: !5149)
!5239 = !DILocation(line: 218, column: 27, scope: !5149)
!5240 = !DILocation(line: 219, column: 2, scope: !5149)
!5241 = !DILocation(line: 219, column: 6, scope: !5149)
!5242 = !DILocation(line: 220, column: 2, scope: !5149)
!5243 = !DILocation(line: 220, column: 9, scope: !5149)
!5244 = !DILocation(line: 222, column: 2, scope: !5149)
!5245 = !DILocation(line: 222, column: 2, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 222, column: 2)
!5247 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 222, column: 2)
!5248 = !DILocation(line: 222, column: 2, scope: !5247)
!5249 = !DILocation(line: 222, column: 2, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 222, column: 2)
!5251 = !DILocation(line: 222, column: 2, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 222, column: 2)
!5253 = !DILocation(line: 222, column: 2, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 222, column: 2)
!5255 = !{i64 2155348957, i64 2155348986, i64 2155349032, i64 2155349090, i64 2155349144, i64 2155349198, i64 2155349253, i64 2155349284}
!5256 = !DILocation(line: 229, column: 26, scope: !5149)
!5257 = !DILocation(line: 229, column: 32, scope: !5149)
!5258 = !DILocation(line: 229, column: 14, scope: !5149)
!5259 = !DILocation(line: 229, column: 12, scope: !5149)
!5260 = !DILocation(line: 230, column: 12, scope: !5197)
!5261 = !DILocation(line: 230, column: 12, scope: !5149)
!5262 = !DILocation(line: 230, column: 10, scope: !5149)
!5263 = !DILocation(line: 232, column: 17, scope: !5149)
!5264 = !DILocation(line: 232, column: 30, scope: !5149)
!5265 = !DILocation(line: 232, column: 27, scope: !5149)
!5266 = !DILocation(line: 232, column: 15, scope: !5149)
!5267 = !DILocation(line: 233, column: 16, scope: !5149)
!5268 = !DILocation(line: 233, column: 32, scope: !5149)
!5269 = !DILocation(line: 233, column: 29, scope: !5149)
!5270 = !DILocation(line: 233, column: 26, scope: !5149)
!5271 = !DILocation(line: 233, column: 24, scope: !5149)
!5272 = !DILocation(line: 233, column: 52, scope: !5149)
!5273 = !DILocation(line: 234, column: 7, scope: !5149)
!5274 = !DILocation(line: 234, column: 4, scope: !5149)
!5275 = !DILocation(line: 233, column: 13, scope: !5149)
!5276 = !DILocation(line: 236, column: 2, scope: !5200)
!5277 = !DILocation(line: 236, column: 2, scope: !5203)
!5278 = !DILocation(line: 236, column: 2, scope: !5202)
!5279 = !DILocation(line: 236, column: 2, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 236, column: 2)
!5281 = !DILocation(line: 236, column: 2, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 236, column: 2)
!5283 = !{i64 2155362266, i64 2155362295, i64 2155362341, i64 2155362399, i64 2155362453, i64 2155362507, i64 2155362562, i64 2155362593, i64 2155362901, i64 2155362907, i64 2155362954, i64 2155362977, i64 2155363003}
!5284 = !DILocation(line: 236, column: 2, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 236, column: 2)
!5286 = !DILocation(line: 236, column: 2, scope: !5149)
!5287 = !DILocation(line: 242, column: 14, scope: !5149)
!5288 = !DILocation(line: 242, column: 28, scope: !5149)
!5289 = !DILocation(line: 242, column: 26, scope: !5149)
!5290 = !DILocation(line: 242, column: 42, scope: !5149)
!5291 = !DILocation(line: 242, column: 13, scope: !5149)
!5292 = !DILocation(line: 242, column: 11, scope: !5149)
!5293 = !DILocation(line: 243, column: 19, scope: !5149)
!5294 = !DILocation(line: 243, column: 26, scope: !5149)
!5295 = !DILocation(line: 243, column: 38, scope: !5149)
!5296 = !DILocation(line: 243, column: 35, scope: !5149)
!5297 = !DILocation(line: 243, column: 7, scope: !5149)
!5298 = !DILocation(line: 243, column: 5, scope: !5149)
!5299 = !DILocation(line: 244, column: 7, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 244, column: 6)
!5301 = !DILocation(line: 244, column: 6, scope: !5149)
!5302 = !DILocation(line: 245, column: 3, scope: !5300)
!5303 = !DILocation(line: 246, column: 16, scope: !5149)
!5304 = !DILocation(line: 246, column: 14, scope: !5149)
!5305 = !DILocation(line: 249, column: 2, scope: !5149)
!5306 = !DILocation(line: 249, column: 9, scope: !5149)
!5307 = !DILocation(line: 249, column: 24, scope: !5149)
!5308 = !DILocation(line: 249, column: 22, scope: !5149)
!5309 = !DILocation(line: 249, column: 35, scope: !5149)
!5310 = !DILocation(line: 249, column: 38, scope: !5149)
!5311 = !DILocation(line: 249, column: 45, scope: !5149)
!5312 = !DILocation(line: 0, scope: !5149)
!5313 = !DILocation(line: 251, column: 12, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 249, column: 50)
!5315 = !DILocation(line: 253, column: 9, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 253, column: 7)
!5317 = !DILocation(line: 253, column: 21, scope: !5316)
!5318 = !DILocation(line: 253, column: 29, scope: !5316)
!5319 = !DILocation(line: 253, column: 18, scope: !5316)
!5320 = !DILocation(line: 253, column: 7, scope: !5314)
!5321 = !DILocation(line: 254, column: 11, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 253, column: 36)
!5323 = !DILocation(line: 254, column: 4, scope: !5322)
!5324 = !DILocation(line: 256, column: 21, scope: !5322)
!5325 = !DILocation(line: 256, column: 28, scope: !5322)
!5326 = !DILocation(line: 256, column: 40, scope: !5322)
!5327 = !DILocation(line: 256, column: 37, scope: !5322)
!5328 = !DILocation(line: 256, column: 9, scope: !5322)
!5329 = !DILocation(line: 256, column: 7, scope: !5322)
!5330 = !DILocation(line: 257, column: 9, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 257, column: 8)
!5332 = !DILocation(line: 257, column: 8, scope: !5322)
!5333 = !DILocation(line: 258, column: 5, scope: !5331)
!5334 = !DILocation(line: 259, column: 3, scope: !5322)
!5335 = !DILocation(line: 260, column: 15, scope: !5314)
!5336 = !DILocation(line: 260, column: 13, scope: !5314)
!5337 = !DILocation(line: 262, column: 7, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 262, column: 7)
!5339 = !DILocation(line: 262, column: 21, scope: !5338)
!5340 = !DILocation(line: 262, column: 19, scope: !5338)
!5341 = !DILocation(line: 262, column: 7, scope: !5314)
!5342 = !DILocation(line: 263, column: 11, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 262, column: 32)
!5344 = !DILocation(line: 263, column: 4, scope: !5343)
!5345 = !DILocation(line: 264, column: 4, scope: !5343)
!5346 = !DILocation(line: 266, column: 7, scope: !5314)
!5347 = !DILocation(line: 267, column: 33, scope: !5314)
!5348 = !DILocation(line: 267, column: 40, scope: !5314)
!5349 = !DILocation(line: 267, column: 53, scope: !5314)
!5350 = !DILocation(line: 268, column: 12, scope: !5314)
!5351 = !DILocation(line: 268, column: 20, scope: !5314)
!5352 = !DILocation(line: 268, column: 27, scope: !5314)
!5353 = !DILocation(line: 267, column: 9, scope: !5314)
!5354 = !DILocation(line: 267, column: 7, scope: !5314)
!5355 = !DILocation(line: 269, column: 14, scope: !5314)
!5356 = !DILocation(line: 269, column: 11, scope: !5314)
!5357 = !DILocation(line: 270, column: 12, scope: !5314)
!5358 = !DILocation(line: 270, column: 20, scope: !5314)
!5359 = !DILocation(line: 270, column: 9, scope: !5314)
!5360 = !DILocation(line: 271, column: 13, scope: !5314)
!5361 = !DILocation(line: 271, column: 21, scope: !5314)
!5362 = !DILocation(line: 271, column: 10, scope: !5314)
!5363 = !DILocation(line: 272, column: 16, scope: !5314)
!5364 = !DILocation(line: 272, column: 24, scope: !5314)
!5365 = !DILocation(line: 272, column: 13, scope: !5314)
!5366 = !DILocation(line: 273, column: 11, scope: !5314)
!5367 = !DILocation(line: 275, column: 7, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 275, column: 7)
!5369 = !DILocation(line: 275, column: 7, scope: !5314)
!5370 = !DILocation(line: 276, column: 11, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 275, column: 12)
!5372 = !DILocation(line: 276, column: 4, scope: !5371)
!5373 = !DILocation(line: 281, column: 8, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 281, column: 8)
!5375 = !DILocation(line: 281, column: 18, scope: !5374)
!5376 = !DILocation(line: 281, column: 8, scope: !5371)
!5377 = !DILocation(line: 282, column: 5, scope: !5374)
!5378 = !DILocation(line: 283, column: 11, scope: !5371)
!5379 = !DILocation(line: 283, column: 4, scope: !5371)
!5380 = !DILocation(line: 286, column: 17, scope: !5314)
!5381 = !DILocation(line: 286, column: 15, scope: !5314)
!5382 = !DILocation(line: 287, column: 15, scope: !5314)
!5383 = distinct !{!5383, !5305, !5384, !5002, !5003}
!5384 = !DILocation(line: 288, column: 2, scope: !5149)
!5385 = !DILocation(line: 290, column: 6, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 290, column: 6)
!5387 = !DILocation(line: 290, column: 14, scope: !5386)
!5388 = !DILocation(line: 290, column: 18, scope: !5386)
!5389 = !DILocation(line: 290, column: 17, scope: !5386)
!5390 = !DILocation(line: 290, column: 6, scope: !5149)
!5391 = !DILocation(line: 291, column: 17, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 290, column: 25)
!5393 = !DILocation(line: 291, column: 16, scope: !5392)
!5394 = !DILocation(line: 291, column: 24, scope: !5392)
!5395 = !DILocation(line: 291, column: 45, scope: !5392)
!5396 = !DILocation(line: 291, column: 43, scope: !5392)
!5397 = !DILocation(line: 291, column: 3, scope: !5392)
!5398 = !DILocation(line: 292, column: 20, scope: !5392)
!5399 = !DILocation(line: 292, column: 19, scope: !5392)
!5400 = !DILocation(line: 292, column: 3, scope: !5392)
!5401 = !DILocation(line: 293, column: 2, scope: !5392)
!5402 = !DILocation(line: 294, column: 2, scope: !5149)
!5403 = !DILocation(line: 295, column: 1, scope: !5149)
!5404 = distinct !DISubprogram(name: "flush_dcache_page", scope: !5405, file: !5405, line: 51, type: !782, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5406)
!5405 = !DIFile(filename: "./include/asm-generic/cacheflush.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "21f5dc5a8efda717141cd13596db7eb7")
!5406 = !{!5407}
!5407 = !DILocalVariable(name: "page", arg: 1, scope: !5404, file: !5405, line: 51, type: !667)
!5408 = !DILocation(line: 51, column: 51, scope: !5404)
!5409 = !DILocation(line: 53, column: 1, scope: !5404)
!5410 = distinct !DISubprogram(name: "SetPageError", scope: !142, file: !142, line: 489, type: !782, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5411)
!5411 = !{!5412}
!5412 = !DILocalVariable(name: "page", arg: 1, scope: !5410, file: !142, line: 489, type: !667)
!5413 = !DILocation(line: 489, column: 1, scope: !5410)
!5414 = !DILocation(line: 489, column: 1, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5416, file: !142, line: 489, column: 1)
!5416 = distinct !DILexicalBlock(scope: !5410, file: !142, line: 489, column: 1)
!5417 = !DILocation(line: 489, column: 1, scope: !5416)
!5418 = distinct !DISubprogram(name: "put_page", scope: !791, file: !791, line: 1540, type: !782, scopeLine: 1541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5419)
!5419 = !{!5420, !5421}
!5420 = !DILocalVariable(name: "page", arg: 1, scope: !5418, file: !791, line: 1540, type: !667)
!5421 = !DILocalVariable(name: "folio", scope: !5418, file: !791, line: 1542, type: !1193)
!5422 = !DILocation(line: 1540, column: 42, scope: !5418)
!5423 = !DILocation(line: 1542, column: 2, scope: !5418)
!5424 = !DILocation(line: 1542, column: 16, scope: !5418)
!5425 = !DILocation(line: 1542, column: 24, scope: !5418)
!5426 = !DILocation(line: 1548, column: 31, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5418, file: !791, line: 1548, column: 6)
!5428 = !DILocation(line: 1548, column: 38, scope: !5427)
!5429 = !DILocation(line: 1548, column: 6, scope: !5427)
!5430 = !DILocation(line: 1548, column: 6, scope: !5418)
!5431 = !DILocation(line: 1549, column: 3, scope: !5427)
!5432 = !DILocation(line: 1550, column: 12, scope: !5418)
!5433 = !DILocation(line: 1550, column: 2, scope: !5418)
!5434 = !DILocation(line: 1551, column: 1, scope: !5418)
!5435 = !DISubprogram(name: "kfree", scope: !187, file: !187, line: 227, type: !5079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5436 = distinct !DISubprogram(name: "folio_mark_uptodate", scope: !142, file: !142, line: 753, type: !1818, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5437)
!5437 = !{!5438}
!5438 = !DILocalVariable(name: "folio", arg: 1, scope: !5436, file: !142, line: 753, type: !1193)
!5439 = !DILocation(line: 753, column: 63, scope: !5436)
!5440 = !DILocation(line: 760, column: 2, scope: !5436)
!5441 = !DILocation(line: 760, column: 2, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5436, file: !142, line: 760, column: 2)
!5443 = !DILocation(line: 760, column: 2, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5442, file: !142, line: 760, column: 2)
!5445 = !{i64 2151008839}
!5446 = !DILocation(line: 761, column: 35, scope: !5436)
!5447 = !DILocation(line: 761, column: 23, scope: !5436)
!5448 = !DILocation(line: 761, column: 2, scope: !5436)
!5449 = !DILocation(line: 762, column: 1, scope: !5436)
!5450 = distinct !DISubprogram(name: "set_bit", scope: !5451, file: !5451, line: 26, type: !5452, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5455)
!5451 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5452 = !DISubroutineType(types: !5453)
!5453 = !{null, !241, !5454}
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!5455 = !{!5456, !5457}
!5456 = !DILocalVariable(name: "nr", arg: 1, scope: !5450, file: !5451, line: 26, type: !241)
!5457 = !DILocalVariable(name: "addr", arg: 2, scope: !5450, file: !5451, line: 26, type: !5454)
!5458 = !DILocation(line: 26, column: 42, scope: !5450)
!5459 = !DILocation(line: 26, column: 70, scope: !5450)
!5460 = !DILocation(line: 28, column: 26, scope: !5450)
!5461 = !DILocation(line: 28, column: 33, scope: !5450)
!5462 = !DILocation(line: 28, column: 31, scope: !5450)
!5463 = !DILocation(line: 28, column: 2, scope: !5450)
!5464 = !DILocation(line: 29, column: 15, scope: !5450)
!5465 = !DILocation(line: 29, column: 19, scope: !5450)
!5466 = !DILocation(line: 29, column: 2, scope: !5450)
!5467 = !DILocation(line: 30, column: 1, scope: !5450)
!5468 = distinct !DISubprogram(name: "folio_flags", scope: !142, file: !142, line: 308, type: !5469, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5471)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{!2361, !1193, !7}
!5471 = !{!5472, !5473, !5474}
!5472 = !DILocalVariable(name: "folio", arg: 1, scope: !5468, file: !142, line: 308, type: !1193)
!5473 = !DILocalVariable(name: "n", arg: 2, scope: !5468, file: !142, line: 308, type: !7)
!5474 = !DILocalVariable(name: "page", scope: !5468, file: !142, line: 310, type: !667)
!5475 = !DILocation(line: 308, column: 49, scope: !5468)
!5476 = !DILocation(line: 308, column: 65, scope: !5468)
!5477 = !DILocation(line: 310, column: 2, scope: !5468)
!5478 = !DILocation(line: 310, column: 15, scope: !5468)
!5479 = !DILocation(line: 310, column: 23, scope: !5468)
!5480 = !DILocation(line: 310, column: 30, scope: !5468)
!5481 = !DILocation(line: 314, column: 10, scope: !5468)
!5482 = !DILocation(line: 314, column: 15, scope: !5468)
!5483 = !DILocation(line: 314, column: 18, scope: !5468)
!5484 = !DILocation(line: 315, column: 1, scope: !5468)
!5485 = !DILocation(line: 314, column: 2, scope: !5468)
!5486 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5487, file: !5487, line: 80, type: !5488, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5493)
!5487 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5488 = !DISubroutineType(types: !5489)
!5489 = !{null, !5490, !578}
!5490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5491, size: 64)
!5491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5492)
!5492 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5493 = !{!5494, !5495}
!5494 = !DILocalVariable(name: "v", arg: 1, scope: !5486, file: !5487, line: 80, type: !5490)
!5495 = !DILocalVariable(name: "size", arg: 2, scope: !5486, file: !5487, line: 80, type: !578)
!5496 = !DILocation(line: 80, column: 74, scope: !5486)
!5497 = !DILocation(line: 80, column: 84, scope: !5486)
!5498 = !DILocation(line: 82, column: 20, scope: !5486)
!5499 = !DILocation(line: 82, column: 23, scope: !5486)
!5500 = !DILocation(line: 82, column: 2, scope: !5486)
!5501 = !DILocation(line: 83, column: 2, scope: !5486)
!5502 = !DILocation(line: 84, column: 1, scope: !5486)
!5503 = distinct !DISubprogram(name: "arch_set_bit", scope: !5504, file: !5504, line: 52, type: !5452, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5505)
!5504 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5505 = !{!5506, !5507}
!5506 = !DILocalVariable(name: "nr", arg: 1, scope: !5503, file: !5504, line: 52, type: !241)
!5507 = !DILocalVariable(name: "addr", arg: 2, scope: !5503, file: !5504, line: 52, type: !5454)
!5508 = !DILocation(line: 52, column: 19, scope: !5503)
!5509 = !DILocation(line: 52, column: 47, scope: !5503)
!5510 = !DILocation(line: 54, column: 27, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5503, file: !5504, line: 54, column: 6)
!5512 = !DILocation(line: 54, column: 6, scope: !5511)
!5513 = !DILocation(line: 54, column: 6, scope: !5503)
!5514 = !DILocation(line: 56, column: 6, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5511, file: !5504, line: 54, column: 32)
!5516 = !DILocation(line: 57, column: 12, scope: !5515)
!5517 = !DILocation(line: 55, column: 3, scope: !5515)
!5518 = !{i64 2148337141, i64 2148337180, i64 2148337201, i64 2148337238, i64 2148337261, i64 2148337131}
!5519 = !DILocation(line: 59, column: 2, scope: !5515)
!5520 = !DILocation(line: 61, column: 8, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5511, file: !5504, line: 59, column: 9)
!5522 = !DILocation(line: 61, column: 32, scope: !5521)
!5523 = !DILocation(line: 60, column: 3, scope: !5521)
!5524 = !{i64 2148337426, i64 2148337465, i64 2148337486, i64 2148337523, i64 2148337546, i64 2148337416}
!5525 = !DILocation(line: 63, column: 1, scope: !5503)
!5526 = distinct !DISubprogram(name: "kasan_check_write", scope: !5527, file: !5527, line: 44, type: !5528, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5530)
!5527 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5528 = !DISubroutineType(types: !5529)
!5529 = !{!748, !5490, !7}
!5530 = !{!5531, !5532}
!5531 = !DILocalVariable(name: "p", arg: 1, scope: !5526, file: !5527, line: 44, type: !5490)
!5532 = !DILocalVariable(name: "size", arg: 2, scope: !5526, file: !5527, line: 44, type: !7)
!5533 = !DILocation(line: 44, column: 59, scope: !5526)
!5534 = !DILocation(line: 44, column: 75, scope: !5526)
!5535 = !DILocation(line: 46, column: 2, scope: !5526)
!5536 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5537, file: !5537, line: 229, type: !5538, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5540)
!5537 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5538 = !DISubroutineType(types: !5539)
!5539 = !{null, !5490, !578, !81}
!5540 = !{!5541, !5542, !5543}
!5541 = !DILocalVariable(name: "ptr", arg: 1, scope: !5536, file: !5537, line: 229, type: !5490)
!5542 = !DILocalVariable(name: "size", arg: 2, scope: !5536, file: !5537, line: 229, type: !578)
!5543 = !DILocalVariable(name: "type", arg: 3, scope: !5536, file: !5537, line: 230, type: !81)
!5544 = !DILocation(line: 229, column: 60, scope: !5536)
!5545 = !DILocation(line: 229, column: 72, scope: !5536)
!5546 = !DILocation(line: 230, column: 15, scope: !5536)
!5547 = !DILocation(line: 230, column: 23, scope: !5536)
!5548 = distinct !DISubprogram(name: "kmalloc_array", scope: !187, file: !187, line: 629, type: !5112, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5549)
!5549 = !{!5550, !5551, !5552, !5553}
!5550 = !DILocalVariable(name: "n", arg: 1, scope: !5548, file: !187, line: 629, type: !578)
!5551 = !DILocalVariable(name: "size", arg: 2, scope: !5548, file: !187, line: 629, type: !578)
!5552 = !DILocalVariable(name: "flags", arg: 3, scope: !5548, file: !187, line: 629, type: !217)
!5553 = !DILocalVariable(name: "bytes", scope: !5548, file: !187, line: 631, type: !578)
!5554 = !DILocation(line: 629, column: 61, scope: !5548)
!5555 = !DILocation(line: 629, column: 71, scope: !5548)
!5556 = !DILocation(line: 629, column: 83, scope: !5548)
!5557 = !DILocation(line: 631, column: 2, scope: !5548)
!5558 = !DILocation(line: 631, column: 9, scope: !5548)
!5559 = !DILocation(line: 633, column: 6, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5548, file: !187, line: 633, column: 6)
!5561 = !DILocation(line: 633, column: 6, scope: !5548)
!5562 = !DILocation(line: 634, column: 3, scope: !5560)
!5563 = !DILocation(line: 635, column: 27, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5548, file: !187, line: 635, column: 6)
!5565 = !DILocation(line: 635, column: 6, scope: !5564)
!5566 = !DILocation(line: 635, column: 30, scope: !5564)
!5567 = !DILocation(line: 635, column: 54, scope: !5564)
!5568 = !DILocation(line: 635, column: 33, scope: !5564)
!5569 = !DILocation(line: 635, column: 6, scope: !5548)
!5570 = !DILocation(line: 636, column: 18, scope: !5564)
!5571 = !DILocation(line: 636, column: 25, scope: !5564)
!5572 = !DILocation(line: 636, column: 10, scope: !5564)
!5573 = !DILocation(line: 636, column: 3, scope: !5564)
!5574 = !DILocation(line: 637, column: 19, scope: !5548)
!5575 = !DILocation(line: 637, column: 26, scope: !5548)
!5576 = !DILocation(line: 637, column: 9, scope: !5548)
!5577 = !DILocation(line: 637, column: 2, scope: !5548)
!5578 = !DILocation(line: 638, column: 1, scope: !5548)
!5579 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5580, file: !5580, line: 51, type: !5581, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5583)
!5580 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5581 = !DISubroutineType(types: !5582)
!5582 = !{!748, !748}
!5583 = !{!5584}
!5584 = !DILocalVariable(name: "overflow", arg: 1, scope: !5579, file: !5580, line: 51, type: !748)
!5585 = !DILocation(line: 51, column: 60, scope: !5579)
!5586 = !DILocation(line: 53, column: 9, scope: !5579)
!5587 = !{i8 0, i8 2}
!5588 = !DILocation(line: 53, column: 2, scope: !5579)
!5589 = distinct !DISubprogram(name: "kmalloc", scope: !187, file: !187, line: 591, type: !5590, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5592)
!5590 = !DISubroutineType(types: !5591)
!5591 = !{!219, !578, !217}
!5592 = !{!5593, !5594, !5595}
!5593 = !DILocalVariable(name: "size", arg: 1, scope: !5589, file: !187, line: 591, type: !578)
!5594 = !DILocalVariable(name: "flags", arg: 2, scope: !5589, file: !187, line: 591, type: !217)
!5595 = !DILocalVariable(name: "index", scope: !5596, file: !187, line: 594, type: !7)
!5596 = distinct !DILexicalBlock(scope: !5597, file: !187, line: 593, column: 42)
!5597 = distinct !DILexicalBlock(scope: !5589, file: !187, line: 593, column: 6)
!5598 = !DILocation(line: 591, column: 61, scope: !5589)
!5599 = !DILocation(line: 591, column: 73, scope: !5589)
!5600 = !DILocation(line: 593, column: 27, scope: !5597)
!5601 = !DILocation(line: 593, column: 6, scope: !5597)
!5602 = !DILocation(line: 593, column: 33, scope: !5597)
!5603 = !DILocation(line: 593, column: 36, scope: !5597)
!5604 = !DILocation(line: 593, column: 6, scope: !5589)
!5605 = !DILocation(line: 594, column: 3, scope: !5596)
!5606 = !DILocation(line: 594, column: 16, scope: !5596)
!5607 = !DILocation(line: 596, column: 7, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5596, file: !187, line: 596, column: 7)
!5609 = !DILocation(line: 596, column: 12, scope: !5608)
!5610 = !DILocation(line: 596, column: 7, scope: !5596)
!5611 = !DILocation(line: 597, column: 25, scope: !5608)
!5612 = !DILocation(line: 597, column: 31, scope: !5608)
!5613 = !DILocation(line: 597, column: 11, scope: !5608)
!5614 = !DILocation(line: 597, column: 4, scope: !5608)
!5615 = !DILocation(line: 599, column: 11, scope: !5596)
!5616 = !DILocation(line: 599, column: 9, scope: !5596)
!5617 = !DILocation(line: 601, column: 33, scope: !5596)
!5618 = !DILocation(line: 601, column: 40, scope: !5596)
!5619 = !DILocation(line: 601, column: 20, scope: !5596)
!5620 = !DILocation(line: 601, column: 5, scope: !5596)
!5621 = !DILocation(line: 601, column: 51, scope: !5596)
!5622 = !DILocation(line: 602, column: 5, scope: !5596)
!5623 = !DILocation(line: 602, column: 12, scope: !5596)
!5624 = !DILocation(line: 600, column: 10, scope: !5596)
!5625 = !DILocation(line: 600, column: 3, scope: !5596)
!5626 = !DILocation(line: 603, column: 2, scope: !5597)
!5627 = !DILocation(line: 604, column: 19, scope: !5589)
!5628 = !DILocation(line: 604, column: 25, scope: !5589)
!5629 = !DILocation(line: 604, column: 9, scope: !5589)
!5630 = !DILocation(line: 604, column: 2, scope: !5589)
!5631 = !DILocation(line: 605, column: 1, scope: !5589)
!5632 = !DISubprogram(name: "__kmalloc", scope: !187, file: !187, line: 488, type: !5590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5633 = !DISubprogram(name: "kmalloc_large", scope: !187, file: !187, line: 531, type: !5590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5634 = distinct !DISubprogram(name: "__kmalloc_index", scope: !187, file: !187, line: 444, type: !5635, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5637)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{!7, !578, !748}
!5637 = !{!5638, !5639}
!5638 = !DILocalVariable(name: "size", arg: 1, scope: !5634, file: !187, line: 444, type: !578)
!5639 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5634, file: !187, line: 445, type: !748)
!5640 = !DILocation(line: 444, column: 60, scope: !5634)
!5641 = !DILocation(line: 445, column: 16, scope: !5634)
!5642 = !DILocation(line: 447, column: 7, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 447, column: 6)
!5644 = !DILocation(line: 447, column: 6, scope: !5634)
!5645 = !DILocation(line: 448, column: 3, scope: !5643)
!5646 = !DILocation(line: 450, column: 6, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 450, column: 6)
!5648 = !DILocation(line: 450, column: 11, scope: !5647)
!5649 = !DILocation(line: 450, column: 6, scope: !5634)
!5650 = !DILocation(line: 451, column: 3, scope: !5647)
!5651 = !DILocation(line: 453, column: 32, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 453, column: 6)
!5653 = !DILocation(line: 453, column: 37, scope: !5652)
!5654 = !DILocation(line: 453, column: 42, scope: !5652)
!5655 = !DILocation(line: 453, column: 45, scope: !5652)
!5656 = !DILocation(line: 453, column: 50, scope: !5652)
!5657 = !DILocation(line: 453, column: 6, scope: !5634)
!5658 = !DILocation(line: 454, column: 3, scope: !5652)
!5659 = !DILocation(line: 455, column: 32, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 455, column: 6)
!5661 = !DILocation(line: 455, column: 37, scope: !5660)
!5662 = !DILocation(line: 455, column: 43, scope: !5660)
!5663 = !DILocation(line: 455, column: 46, scope: !5660)
!5664 = !DILocation(line: 455, column: 51, scope: !5660)
!5665 = !DILocation(line: 455, column: 6, scope: !5634)
!5666 = !DILocation(line: 456, column: 3, scope: !5660)
!5667 = !DILocation(line: 457, column: 6, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 457, column: 6)
!5669 = !DILocation(line: 457, column: 11, scope: !5668)
!5670 = !DILocation(line: 457, column: 6, scope: !5634)
!5671 = !DILocation(line: 457, column: 26, scope: !5668)
!5672 = !DILocation(line: 458, column: 6, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 458, column: 6)
!5674 = !DILocation(line: 458, column: 11, scope: !5673)
!5675 = !DILocation(line: 458, column: 6, scope: !5634)
!5676 = !DILocation(line: 458, column: 26, scope: !5673)
!5677 = !DILocation(line: 459, column: 6, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 459, column: 6)
!5679 = !DILocation(line: 459, column: 11, scope: !5678)
!5680 = !DILocation(line: 459, column: 6, scope: !5634)
!5681 = !DILocation(line: 459, column: 26, scope: !5678)
!5682 = !DILocation(line: 460, column: 6, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 460, column: 6)
!5684 = !DILocation(line: 460, column: 11, scope: !5683)
!5685 = !DILocation(line: 460, column: 6, scope: !5634)
!5686 = !DILocation(line: 460, column: 26, scope: !5683)
!5687 = !DILocation(line: 461, column: 6, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 461, column: 6)
!5689 = !DILocation(line: 461, column: 11, scope: !5688)
!5690 = !DILocation(line: 461, column: 6, scope: !5634)
!5691 = !DILocation(line: 461, column: 26, scope: !5688)
!5692 = !DILocation(line: 462, column: 6, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 462, column: 6)
!5694 = !DILocation(line: 462, column: 11, scope: !5693)
!5695 = !DILocation(line: 462, column: 6, scope: !5634)
!5696 = !DILocation(line: 462, column: 26, scope: !5693)
!5697 = !DILocation(line: 463, column: 6, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 463, column: 6)
!5699 = !DILocation(line: 463, column: 11, scope: !5698)
!5700 = !DILocation(line: 463, column: 6, scope: !5634)
!5701 = !DILocation(line: 463, column: 26, scope: !5698)
!5702 = !DILocation(line: 464, column: 6, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 464, column: 6)
!5704 = !DILocation(line: 464, column: 11, scope: !5703)
!5705 = !DILocation(line: 464, column: 6, scope: !5634)
!5706 = !DILocation(line: 464, column: 26, scope: !5703)
!5707 = !DILocation(line: 465, column: 6, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 465, column: 6)
!5709 = !DILocation(line: 465, column: 11, scope: !5708)
!5710 = !DILocation(line: 465, column: 6, scope: !5634)
!5711 = !DILocation(line: 465, column: 26, scope: !5708)
!5712 = !DILocation(line: 466, column: 6, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 466, column: 6)
!5714 = !DILocation(line: 466, column: 11, scope: !5713)
!5715 = !DILocation(line: 466, column: 6, scope: !5634)
!5716 = !DILocation(line: 466, column: 26, scope: !5713)
!5717 = !DILocation(line: 467, column: 6, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 467, column: 6)
!5719 = !DILocation(line: 467, column: 11, scope: !5718)
!5720 = !DILocation(line: 467, column: 6, scope: !5634)
!5721 = !DILocation(line: 467, column: 26, scope: !5718)
!5722 = !DILocation(line: 468, column: 6, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 468, column: 6)
!5724 = !DILocation(line: 468, column: 11, scope: !5723)
!5725 = !DILocation(line: 468, column: 6, scope: !5634)
!5726 = !DILocation(line: 468, column: 26, scope: !5723)
!5727 = !DILocation(line: 469, column: 6, scope: !5728)
!5728 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 469, column: 6)
!5729 = !DILocation(line: 469, column: 11, scope: !5728)
!5730 = !DILocation(line: 469, column: 6, scope: !5634)
!5731 = !DILocation(line: 469, column: 26, scope: !5728)
!5732 = !DILocation(line: 470, column: 6, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 470, column: 6)
!5734 = !DILocation(line: 470, column: 11, scope: !5733)
!5735 = !DILocation(line: 470, column: 6, scope: !5634)
!5736 = !DILocation(line: 470, column: 26, scope: !5733)
!5737 = !DILocation(line: 471, column: 6, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 471, column: 6)
!5739 = !DILocation(line: 471, column: 11, scope: !5738)
!5740 = !DILocation(line: 471, column: 6, scope: !5634)
!5741 = !DILocation(line: 471, column: 26, scope: !5738)
!5742 = !DILocation(line: 472, column: 6, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 472, column: 6)
!5744 = !DILocation(line: 472, column: 11, scope: !5743)
!5745 = !DILocation(line: 472, column: 6, scope: !5634)
!5746 = !DILocation(line: 472, column: 26, scope: !5743)
!5747 = !DILocation(line: 473, column: 6, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 473, column: 6)
!5749 = !DILocation(line: 473, column: 11, scope: !5748)
!5750 = !DILocation(line: 473, column: 6, scope: !5634)
!5751 = !DILocation(line: 473, column: 26, scope: !5748)
!5752 = !DILocation(line: 474, column: 6, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 474, column: 6)
!5754 = !DILocation(line: 474, column: 11, scope: !5753)
!5755 = !DILocation(line: 474, column: 6, scope: !5634)
!5756 = !DILocation(line: 474, column: 27, scope: !5753)
!5757 = !DILocation(line: 475, column: 6, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 475, column: 6)
!5759 = !DILocation(line: 475, column: 11, scope: !5758)
!5760 = !DILocation(line: 475, column: 6, scope: !5634)
!5761 = !DILocation(line: 475, column: 32, scope: !5758)
!5762 = !DILocation(line: 477, column: 50, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5634, file: !187, line: 477, column: 6)
!5764 = !DILocation(line: 477, column: 6, scope: !5634)
!5765 = !DILocation(line: 478, column: 3, scope: !5763)
!5766 = !DILocation(line: 478, column: 3, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5768, file: !187, line: 478, column: 3)
!5768 = distinct !DILexicalBlock(scope: !5763, file: !187, line: 478, column: 3)
!5769 = !{i32 -2141403157}
!5770 = !DILocation(line: 478, column: 3, scope: !5768)
!5771 = !DILocation(line: 480, column: 3, scope: !5763)
!5772 = !DILocation(line: 480, column: 3, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5763, file: !187, line: 480, column: 3)
!5774 = !DILocation(line: 480, column: 3, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5773, file: !187, line: 480, column: 3)
!5776 = !DILocation(line: 480, column: 3, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5773, file: !187, line: 480, column: 3)
!5778 = !{i64 2153564342, i64 2153564371, i64 2153564417, i64 2153564475, i64 2153564529, i64 2153564583, i64 2153564638, i64 2153564669}
!5779 = !DILocation(line: 483, column: 2, scope: !5634)
!5780 = !DILocation(line: 484, column: 1, scope: !5634)
!5781 = !DISubprogram(name: "kmalloc_trace", scope: !187, file: !187, line: 525, type: !5782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5782 = !DISubroutineType(types: !5783)
!5783 = !{!219, !3948, !217, !578}
!5784 = distinct !DISubprogram(name: "kmalloc_type", scope: !187, file: !187, line: 401, type: !5785, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5787)
!5785 = !DISubroutineType(types: !5786)
!5786 = !{!186, !217, !225}
!5787 = !{!5788, !5789}
!5788 = !DILocalVariable(name: "flags", arg: 1, scope: !5784, file: !187, line: 401, type: !217)
!5789 = !DILocalVariable(name: "caller", arg: 2, scope: !5784, file: !187, line: 401, type: !225)
!5790 = !DILocation(line: 401, column: 67, scope: !5784)
!5791 = !DILocation(line: 401, column: 88, scope: !5784)
!5792 = !DILocation(line: 407, column: 6, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5784, file: !187, line: 407, column: 6)
!5794 = !DILocation(line: 407, column: 6, scope: !5784)
!5795 = !DILocation(line: 413, column: 3, scope: !5793)
!5796 = !DILocation(line: 423, column: 38, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5784, file: !187, line: 423, column: 6)
!5798 = !DILocation(line: 423, column: 44, scope: !5797)
!5799 = !DILocation(line: 423, column: 6, scope: !5784)
!5800 = !DILocation(line: 424, column: 3, scope: !5797)
!5801 = !DILocation(line: 426, column: 3, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5784, file: !187, line: 425, column: 6)
!5803 = !DILocation(line: 429, column: 1, scope: !5784)
!5804 = !DISubprogram(name: "__compiletime_assert_256", scope: !187, file: !187, line: 478, type: !2375, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5805 = !DISubprogram(name: "pagecache_get_page", scope: !1190, file: !1190, line: 634, type: !5806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5806 = !DISubroutineType(types: !5807)
!5807 = !{!667, !606, !225, !4805, !217}
!5808 = distinct !DISubprogram(name: "mapping_gfp_mask", scope: !1190, file: !1190, line: 309, type: !5809, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5811)
!5809 = !DISubroutineType(types: !5810)
!5810 = !{!217, !606}
!5811 = !{!5812}
!5812 = !DILocalVariable(name: "mapping", arg: 1, scope: !5808, file: !1190, line: 309, type: !606)
!5813 = !DILocation(line: 309, column: 61, scope: !5808)
!5814 = !DILocation(line: 311, column: 9, scope: !5808)
!5815 = !DILocation(line: 311, column: 18, scope: !5808)
!5816 = !DILocation(line: 311, column: 2, scope: !5808)
!5817 = distinct !DISubprogram(name: "clear_bit", scope: !5451, file: !5451, line: 39, type: !5452, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5818)
!5818 = !{!5819, !5820}
!5819 = !DILocalVariable(name: "nr", arg: 1, scope: !5817, file: !5451, line: 39, type: !241)
!5820 = !DILocalVariable(name: "addr", arg: 2, scope: !5817, file: !5451, line: 39, type: !5454)
!5821 = !DILocation(line: 39, column: 44, scope: !5817)
!5822 = !DILocation(line: 39, column: 72, scope: !5817)
!5823 = !DILocation(line: 41, column: 26, scope: !5817)
!5824 = !DILocation(line: 41, column: 33, scope: !5817)
!5825 = !DILocation(line: 41, column: 31, scope: !5817)
!5826 = !DILocation(line: 41, column: 2, scope: !5817)
!5827 = !DILocation(line: 42, column: 17, scope: !5817)
!5828 = !DILocation(line: 42, column: 21, scope: !5817)
!5829 = !DILocation(line: 42, column: 2, scope: !5817)
!5830 = !DILocation(line: 43, column: 1, scope: !5817)
!5831 = distinct !DISubprogram(name: "_compound_head", scope: !142, file: !142, line: 244, type: !5832, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5834)
!5832 = !DISubroutineType(types: !5833)
!5833 = !{!225, !4811}
!5834 = !{!5835, !5836}
!5835 = !DILocalVariable(name: "page", arg: 1, scope: !5831, file: !142, line: 244, type: !4811)
!5836 = !DILocalVariable(name: "head", scope: !5831, file: !142, line: 246, type: !225)
!5837 = !DILocation(line: 244, column: 63, scope: !5831)
!5838 = !DILocation(line: 246, column: 2, scope: !5831)
!5839 = !DILocation(line: 246, column: 16, scope: !5831)
!5840 = !DILocation(line: 246, column: 23, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5831, file: !142, line: 246, column: 23)
!5842 = !DILocation(line: 246, column: 23, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5841, file: !142, line: 246, column: 23)
!5844 = !DILocation(line: 248, column: 6, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5831, file: !142, line: 248, column: 6)
!5846 = !DILocation(line: 248, column: 6, scope: !5831)
!5847 = !DILocation(line: 249, column: 10, scope: !5845)
!5848 = !DILocation(line: 249, column: 15, scope: !5845)
!5849 = !DILocation(line: 249, column: 3, scope: !5845)
!5850 = !DILocation(line: 250, column: 45, scope: !5831)
!5851 = !DILocation(line: 250, column: 24, scope: !5831)
!5852 = !DILocation(line: 250, column: 9, scope: !5831)
!5853 = !DILocation(line: 250, column: 2, scope: !5831)
!5854 = !DILocation(line: 251, column: 1, scope: !5831)
!5855 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5504, file: !5504, line: 72, type: !5452, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5856)
!5856 = !{!5857, !5858}
!5857 = !DILocalVariable(name: "nr", arg: 1, scope: !5855, file: !5504, line: 72, type: !241)
!5858 = !DILocalVariable(name: "addr", arg: 2, scope: !5855, file: !5504, line: 72, type: !5454)
!5859 = !DILocation(line: 72, column: 21, scope: !5855)
!5860 = !DILocation(line: 72, column: 49, scope: !5855)
!5861 = !DILocation(line: 74, column: 27, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5855, file: !5504, line: 74, column: 6)
!5863 = !DILocation(line: 74, column: 6, scope: !5862)
!5864 = !DILocation(line: 74, column: 6, scope: !5855)
!5865 = !DILocation(line: 76, column: 6, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5862, file: !5504, line: 74, column: 32)
!5867 = !DILocation(line: 77, column: 13, scope: !5866)
!5868 = !DILocation(line: 77, column: 12, scope: !5866)
!5869 = !DILocation(line: 75, column: 3, scope: !5866)
!5870 = !{i64 2148338429, i64 2148338468, i64 2148338489, i64 2148338526, i64 2148338549, i64 2148338419}
!5871 = !DILocation(line: 78, column: 2, scope: !5866)
!5872 = !DILocation(line: 80, column: 8, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5862, file: !5504, line: 78, column: 9)
!5874 = !DILocation(line: 80, column: 32, scope: !5873)
!5875 = !DILocation(line: 79, column: 3, scope: !5873)
!5876 = !{i64 2148338714, i64 2148338753, i64 2148338774, i64 2148338811, i64 2148338834, i64 2148338704}
!5877 = !DILocation(line: 82, column: 1, scope: !5855)
!5878 = distinct !DISubprogram(name: "page_fixed_fake_head", scope: !142, file: !142, line: 207, type: !5879, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5881)
!5879 = !DISubroutineType(types: !5880)
!5880 = !{!4811, !4811}
!5881 = !{!5882, !5883, !5886}
!5882 = !DILocalVariable(name: "page", arg: 1, scope: !5878, file: !142, line: 207, type: !4811)
!5883 = !DILocalVariable(name: "branch", scope: !5884, file: !142, line: 209, type: !748)
!5884 = distinct !DILexicalBlock(scope: !5885, file: !142, line: 209, column: 7)
!5885 = distinct !DILexicalBlock(scope: !5878, file: !142, line: 209, column: 6)
!5886 = !DILocalVariable(name: "head", scope: !5887, file: !142, line: 225, type: !225)
!5887 = distinct !DILexicalBlock(scope: !5888, file: !142, line: 219, column: 39)
!5888 = distinct !DILexicalBlock(scope: !5878, file: !142, line: 218, column: 6)
!5889 = !DILocation(line: 207, column: 83, scope: !5878)
!5890 = !DILocation(line: 209, column: 7, scope: !5884)
!5891 = !DILocation(line: 209, column: 7, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5893, file: !142, line: 209, column: 7)
!5893 = distinct !DILexicalBlock(scope: !5884, file: !142, line: 209, column: 7)
!5894 = !DILocation(line: 209, column: 7, scope: !5893)
!5895 = !DILocation(line: 209, column: 7, scope: !5885)
!5896 = !DILocation(line: 209, column: 6, scope: !5878)
!5897 = !DILocation(line: 210, column: 10, scope: !5885)
!5898 = !DILocation(line: 210, column: 3, scope: !5885)
!5899 = !DILocation(line: 218, column: 6, scope: !5888)
!5900 = !DILocation(line: 218, column: 49, scope: !5888)
!5901 = !DILocation(line: 219, column: 6, scope: !5888)
!5902 = !DILocation(line: 218, column: 6, scope: !5878)
!5903 = !DILocation(line: 225, column: 3, scope: !5887)
!5904 = !DILocation(line: 225, column: 17, scope: !5887)
!5905 = !DILocation(line: 225, column: 24, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5887, file: !142, line: 225, column: 24)
!5907 = !DILocation(line: 225, column: 24, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5906, file: !142, line: 225, column: 24)
!5909 = !DILocation(line: 227, column: 7, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5887, file: !142, line: 227, column: 7)
!5911 = !DILocation(line: 227, column: 7, scope: !5887)
!5912 = !DILocation(line: 228, column: 33, scope: !5910)
!5913 = !DILocation(line: 228, column: 38, scope: !5910)
!5914 = !DILocation(line: 228, column: 11, scope: !5910)
!5915 = !DILocation(line: 228, column: 4, scope: !5910)
!5916 = !DILocation(line: 229, column: 2, scope: !5888)
!5917 = !DILocation(line: 229, column: 2, scope: !5887)
!5918 = !DILocation(line: 230, column: 9, scope: !5878)
!5919 = !DILocation(line: 230, column: 2, scope: !5878)
!5920 = !DILocation(line: 231, column: 1, scope: !5878)
!5921 = distinct !DISubprogram(name: "arch_static_branch", scope: !5922, file: !5922, line: 25, type: !5923, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5937)
!5922 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5923 = !DISubroutineType(types: !5924)
!5924 = !{!748, !5925, !748}
!5925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5926, size: 64)
!5926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2339, line: 85, size: 128, elements: !5927)
!5927 = !{!5928, !5929}
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5926, file: !2339, line: 86, baseType: !368, size: 32)
!5929 = !DIDerivedType(tag: DW_TAG_member, scope: !5926, file: !2339, line: 101, baseType: !5930, size: 64, offset: 64)
!5930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5926, file: !2339, line: 101, size: 64, elements: !5931)
!5931 = !{!5932, !5933, !5934}
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5930, file: !2339, line: 102, baseType: !225, size: 64)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5930, file: !2339, line: 103, baseType: !2337, size: 64)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5930, file: !2339, line: 104, baseType: !5935, size: 64)
!5935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5936, size: 64)
!5936 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2339, line: 104, flags: DIFlagFwdDecl)
!5937 = !{!5938, !5939, !5940}
!5938 = !DILocalVariable(name: "key", arg: 1, scope: !5921, file: !5922, line: 25, type: !5925)
!5939 = !DILocalVariable(name: "branch", arg: 2, scope: !5921, file: !5922, line: 25, type: !748)
!5940 = !DILabel(scope: !5921, name: "l_yes", file: !5922, line: 33)
!5941 = !DILocation(line: 25, column: 67, scope: !5921)
!5942 = !DILocation(line: 25, column: 77, scope: !5921)
!5943 = !DILocation(line: 30, column: 13, scope: !5921)
!5944 = !DILocation(line: 30, column: 28, scope: !5921)
!5945 = !DILocation(line: 30, column: 26, scope: !5921)
!5946 = !DILocation(line: 27, column: 2, scope: !5921)
!5947 = !{i64 648730, i64 648774, i64 2148133457, i64 2148133478, i64 2148133504, i64 2148133537, i64 2148133571, i64 2148133595}
!5948 = !DILocation(line: 32, column: 2, scope: !5921)
!5949 = !DILocation(line: 33, column: 1, scope: !5921)
!5950 = !DILocation(line: 34, column: 2, scope: !5921)
!5951 = !DILocation(line: 35, column: 1, scope: !5921)
!5952 = distinct !DISubprogram(name: "const_test_bit", scope: !5953, file: !5953, line: 166, type: !5954, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5956)
!5953 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5954 = !DISubroutineType(types: !5955)
!5955 = !{!748, !225, !4806}
!5956 = !{!5957, !5958, !5959, !5960, !5961}
!5957 = !DILocalVariable(name: "nr", arg: 1, scope: !5952, file: !5953, line: 166, type: !225)
!5958 = !DILocalVariable(name: "addr", arg: 2, scope: !5952, file: !5953, line: 166, type: !4806)
!5959 = !DILocalVariable(name: "p", scope: !5952, file: !5953, line: 168, type: !4810)
!5960 = !DILocalVariable(name: "mask", scope: !5952, file: !5953, line: 169, type: !225)
!5961 = !DILocalVariable(name: "val", scope: !5952, file: !5953, line: 170, type: !225)
!5962 = !DILocation(line: 166, column: 30, scope: !5952)
!5963 = !DILocation(line: 166, column: 64, scope: !5952)
!5964 = !DILocation(line: 168, column: 2, scope: !5952)
!5965 = !DILocation(line: 168, column: 23, scope: !5952)
!5966 = !DILocation(line: 168, column: 50, scope: !5952)
!5967 = !DILocation(line: 168, column: 57, scope: !5952)
!5968 = !DILocation(line: 168, column: 55, scope: !5952)
!5969 = !DILocation(line: 169, column: 2, scope: !5952)
!5970 = !DILocation(line: 169, column: 16, scope: !5952)
!5971 = !DILocation(line: 169, column: 23, scope: !5952)
!5972 = !DILocation(line: 170, column: 2, scope: !5952)
!5973 = !DILocation(line: 170, column: 16, scope: !5952)
!5974 = !DILocation(line: 170, column: 23, scope: !5952)
!5975 = !DILocation(line: 170, column: 22, scope: !5952)
!5976 = !DILocation(line: 172, column: 12, scope: !5952)
!5977 = !DILocation(line: 172, column: 18, scope: !5952)
!5978 = !DILocation(line: 172, column: 16, scope: !5952)
!5979 = !DILocation(line: 172, column: 10, scope: !5952)
!5980 = !DILocation(line: 172, column: 9, scope: !5952)
!5981 = !DILocation(line: 173, column: 1, scope: !5952)
!5982 = !DILocation(line: 172, column: 2, scope: !5952)
!5983 = distinct !DISubprogram(name: "_test_bit", scope: !5984, file: !5984, line: 139, type: !5954, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5985)
!5984 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5985 = !{!5986, !5987}
!5986 = !DILocalVariable(name: "nr", arg: 1, scope: !5983, file: !5984, line: 139, type: !225)
!5987 = !DILocalVariable(name: "addr", arg: 2, scope: !5983, file: !5984, line: 139, type: !4806)
!5988 = !DILocation(line: 139, column: 25, scope: !5983)
!5989 = !DILocation(line: 139, column: 59, scope: !5983)
!5990 = !DILocation(line: 141, column: 25, scope: !5983)
!5991 = !DILocation(line: 141, column: 32, scope: !5983)
!5992 = !DILocation(line: 141, column: 30, scope: !5983)
!5993 = !DILocation(line: 141, column: 2, scope: !5983)
!5994 = !DILocation(line: 142, column: 23, scope: !5983)
!5995 = !DILocation(line: 142, column: 27, scope: !5983)
!5996 = !DILocation(line: 142, column: 9, scope: !5983)
!5997 = !DILocation(line: 142, column: 2, scope: !5983)
!5998 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5487, file: !5487, line: 66, type: !5488, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5999)
!5999 = !{!6000, !6001}
!6000 = !DILocalVariable(name: "v", arg: 1, scope: !5998, file: !5487, line: 66, type: !5490)
!6001 = !DILocalVariable(name: "size", arg: 2, scope: !5998, file: !5487, line: 66, type: !578)
!6002 = !DILocation(line: 66, column: 73, scope: !5998)
!6003 = !DILocation(line: 66, column: 83, scope: !5998)
!6004 = !DILocation(line: 68, column: 19, scope: !5998)
!6005 = !DILocation(line: 68, column: 22, scope: !5998)
!6006 = !DILocation(line: 68, column: 2, scope: !5998)
!6007 = !DILocation(line: 69, column: 2, scope: !5998)
!6008 = !DILocation(line: 70, column: 1, scope: !5998)
!6009 = distinct !DISubprogram(name: "arch_test_bit", scope: !5504, file: !5504, line: 237, type: !5954, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6010)
!6010 = !{!6011, !6012}
!6011 = !DILocalVariable(name: "nr", arg: 1, scope: !6009, file: !5504, line: 237, type: !225)
!6012 = !DILocalVariable(name: "addr", arg: 2, scope: !6009, file: !5504, line: 237, type: !4806)
!6013 = !DILocation(line: 237, column: 29, scope: !6009)
!6014 = !DILocation(line: 237, column: 63, scope: !6009)
!6015 = !DILocation(line: 239, column: 30, scope: !6009)
!6016 = !DILocation(line: 239, column: 9, scope: !6009)
!6017 = !DILocation(line: 239, column: 54, scope: !6009)
!6018 = !DILocation(line: 239, column: 58, scope: !6009)
!6019 = !DILocation(line: 239, column: 36, scope: !6009)
!6020 = !DILocation(line: 240, column: 26, scope: !6009)
!6021 = !DILocation(line: 240, column: 30, scope: !6009)
!6022 = !DILocation(line: 240, column: 8, scope: !6009)
!6023 = !DILocation(line: 239, column: 2, scope: !6009)
!6024 = distinct !DISubprogram(name: "kasan_check_read", scope: !5527, file: !5527, line: 40, type: !5528, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6025)
!6025 = !{!6026, !6027}
!6026 = !DILocalVariable(name: "p", arg: 1, scope: !6024, file: !5527, line: 40, type: !5490)
!6027 = !DILocalVariable(name: "size", arg: 2, scope: !6024, file: !5527, line: 40, type: !7)
!6028 = !DILocation(line: 40, column: 58, scope: !6024)
!6029 = !DILocation(line: 40, column: 74, scope: !6024)
!6030 = !DILocation(line: 42, column: 2, scope: !6024)
!6031 = distinct !DISubprogram(name: "constant_test_bit", scope: !5504, file: !5504, line: 204, type: !6032, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6034)
!6032 = !DISubroutineType(types: !6033)
!6033 = !{!748, !241, !4806}
!6034 = !{!6035, !6036}
!6035 = !DILocalVariable(name: "nr", arg: 1, scope: !6031, file: !5504, line: 204, type: !241)
!6036 = !DILocalVariable(name: "addr", arg: 2, scope: !6031, file: !5504, line: 204, type: !4806)
!6037 = !DILocation(line: 204, column: 52, scope: !6031)
!6038 = !DILocation(line: 204, column: 86, scope: !6031)
!6039 = !DILocation(line: 206, column: 19, scope: !6031)
!6040 = !DILocation(line: 206, column: 22, scope: !6031)
!6041 = !DILocation(line: 206, column: 15, scope: !6031)
!6042 = !DILocation(line: 207, column: 4, scope: !6031)
!6043 = !DILocation(line: 207, column: 9, scope: !6031)
!6044 = !DILocation(line: 207, column: 12, scope: !6031)
!6045 = !DILocation(line: 206, column: 44, scope: !6031)
!6046 = !DILocation(line: 207, column: 37, scope: !6031)
!6047 = !DILocation(line: 206, column: 2, scope: !6031)
!6048 = distinct !DISubprogram(name: "variable_test_bit", scope: !5504, file: !5504, line: 224, type: !6032, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6049)
!6049 = !{!6050, !6051, !6052}
!6050 = !DILocalVariable(name: "nr", arg: 1, scope: !6048, file: !5504, line: 224, type: !241)
!6051 = !DILocalVariable(name: "addr", arg: 2, scope: !6048, file: !5504, line: 224, type: !4806)
!6052 = !DILocalVariable(name: "oldbit", scope: !6048, file: !5504, line: 226, type: !748)
!6053 = !DILocation(line: 224, column: 52, scope: !6048)
!6054 = !DILocation(line: 224, column: 86, scope: !6048)
!6055 = !DILocation(line: 226, column: 2, scope: !6048)
!6056 = !DILocation(line: 226, column: 7, scope: !6048)
!6057 = !DILocation(line: 231, column: 33, scope: !6048)
!6058 = !DILocation(line: 231, column: 46, scope: !6048)
!6059 = !DILocation(line: 228, column: 2, scope: !6048)
!6060 = !{i64 2148350753, i64 2148350827}
!6061 = !DILocation(line: 233, column: 9, scope: !6048)
!6062 = !DILocation(line: 234, column: 1, scope: !6048)
!6063 = !DILocation(line: 233, column: 2, scope: !6048)
!6064 = distinct !DISubprogram(name: "page_offset", scope: !1190, file: !1190, line: 936, type: !6065, scopeLine: 937, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6067)
!6065 = !DISubroutineType(types: !6066)
!6066 = !{!455, !667}
!6067 = !{!6068}
!6068 = !DILocalVariable(name: "page", arg: 1, scope: !6064, file: !1190, line: 936, type: !667)
!6069 = !DILocation(line: 936, column: 47, scope: !6064)
!6070 = !DILocation(line: 938, column: 18, scope: !6064)
!6071 = !DILocation(line: 938, column: 24, scope: !6064)
!6072 = !DILocation(line: 938, column: 31, scope: !6064)
!6073 = !DILocation(line: 938, column: 2, scope: !6064)
!6074 = !DISubprogram(name: "isofs_bread", scope: !222, file: !222, line: 121, type: !6075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6075 = !DISubroutineType(types: !6076)
!6076 = !{!5168, !331, !1807}
!6077 = distinct !DISubprogram(name: "brelse", scope: !197, file: !197, line: 311, type: !6078, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6080)
!6078 = !DISubroutineType(types: !6079)
!6079 = !{null, !5168}
!6080 = !{!6081}
!6081 = !DILocalVariable(name: "bh", arg: 1, scope: !6077, file: !197, line: 311, type: !5168)
!6082 = !DILocation(line: 311, column: 47, scope: !6077)
!6083 = !DILocation(line: 313, column: 6, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6077, file: !197, line: 313, column: 6)
!6085 = !DILocation(line: 313, column: 6, scope: !6077)
!6086 = !DILocation(line: 314, column: 12, scope: !6084)
!6087 = !DILocation(line: 314, column: 3, scope: !6084)
!6088 = !DILocation(line: 315, column: 1, scope: !6077)
!6089 = distinct !DISubprogram(name: "zisofs_uncompress_block", scope: !3, file: !3, line: 40, type: !6090, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6092)
!6090 = !DISubroutineType(types: !6091)
!6091 = !{!455, !331, !455, !455, !81, !1798, !7, !2170}
!6092 = !{!6093, !6094, !6095, !6096, !6097, !6098, !6099, !6100, !6101, !6102, !6103, !6104, !6105, !6106, !6132, !6133, !6134, !6135, !6136, !6138, !6139, !6140, !6145, !6146, !6147, !6148}
!6093 = !DILocalVariable(name: "inode", arg: 1, scope: !6089, file: !3, line: 40, type: !331)
!6094 = !DILocalVariable(name: "block_start", arg: 2, scope: !6089, file: !3, line: 40, type: !455)
!6095 = !DILocalVariable(name: "block_end", arg: 3, scope: !6089, file: !3, line: 41, type: !455)
!6096 = !DILocalVariable(name: "pcount", arg: 4, scope: !6089, file: !3, line: 41, type: !81)
!6097 = !DILocalVariable(name: "pages", arg: 5, scope: !6089, file: !3, line: 42, type: !1798)
!6098 = !DILocalVariable(name: "poffset", arg: 6, scope: !6089, file: !3, line: 42, type: !7)
!6099 = !DILocalVariable(name: "errp", arg: 7, scope: !6089, file: !3, line: 43, type: !2170)
!6100 = !DILocalVariable(name: "zisofs_block_shift", scope: !6089, file: !3, line: 45, type: !7)
!6101 = !DILocalVariable(name: "bufsize", scope: !6089, file: !3, line: 46, type: !7)
!6102 = !DILocalVariable(name: "bufshift", scope: !6089, file: !3, line: 47, type: !7)
!6103 = !DILocalVariable(name: "bufmask", scope: !6089, file: !3, line: 48, type: !7)
!6104 = !DILocalVariable(name: "i", scope: !6089, file: !3, line: 49, type: !81)
!6105 = !DILocalVariable(name: "block_size", scope: !6089, file: !3, line: 49, type: !81)
!6106 = !DILocalVariable(name: "stream", scope: !6089, file: !3, line: 50, type: !6107)
!6107 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !5073, line: 101, baseType: !6108)
!6108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !5073, line: 84, size: 768, elements: !6109)
!6109 = !{!6110, !6115, !6117, !6118, !6120, !6121, !6122, !6123, !6128, !6129, !6130, !6131}
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !6108, file: !5073, line: 85, baseType: !6111, size: 64)
!6111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6112, size: 64)
!6112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6113)
!6113 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !6114, line: 52, baseType: !229)
!6114 = !DIFile(filename: "./include/linux/zconf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "66c2d885369ef0adc0f1780a0c1150c2")
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !6108, file: !5073, line: 86, baseType: !6116, size: 64, offset: 64)
!6116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !6114, line: 54, baseType: !225)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !6108, file: !5073, line: 87, baseType: !6116, size: 64, offset: 128)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !6108, file: !5073, line: 89, baseType: !6119, size: 64, offset: 192)
!6119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6113, size: 64)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !6108, file: !5073, line: 90, baseType: !6116, size: 64, offset: 256)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !6108, file: !5073, line: 91, baseType: !6116, size: 64, offset: 320)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !6108, file: !5073, line: 93, baseType: !434, size: 64, offset: 384)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6108, file: !5073, line: 94, baseType: !6124, size: 64, offset: 448)
!6124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6125, size: 64)
!6125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !5073, line: 592, size: 32, elements: !6126)
!6126 = !{!6127}
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !6125, file: !5073, line: 592, baseType: !81, size: 32)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "workspace", scope: !6108, file: !5073, line: 96, baseType: !219, size: 64, offset: 512)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !6108, file: !5073, line: 98, baseType: !81, size: 32, offset: 576)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !6108, file: !5073, line: 99, baseType: !6116, size: 64, offset: 640)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6108, file: !5073, line: 100, baseType: !6116, size: 64, offset: 704)
!6132 = !DILocalVariable(name: "zerr", scope: !6089, file: !3, line: 53, type: !81)
!6133 = !DILocalVariable(name: "needblocks", scope: !6089, file: !3, line: 54, type: !81)
!6134 = !DILocalVariable(name: "haveblocks", scope: !6089, file: !3, line: 56, type: !81)
!6135 = !DILocalVariable(name: "blocknum", scope: !6089, file: !3, line: 57, type: !2644)
!6136 = !DILocalVariable(name: "bhs", scope: !6089, file: !3, line: 58, type: !6137)
!6137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!6138 = !DILocalVariable(name: "curbh", scope: !6089, file: !3, line: 59, type: !81)
!6139 = !DILocalVariable(name: "curpage", scope: !6089, file: !3, line: 59, type: !81)
!6140 = !DILocalVariable(name: "__UNIQUE_ID___x331", scope: !6141, file: !3, line: 139, type: !7)
!6141 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 139, column: 22)
!6142 = distinct !DILexicalBlock(scope: !6143, file: !3, line: 131, column: 25)
!6143 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 131, column: 7)
!6144 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 119, column: 31)
!6145 = !DILocalVariable(name: "__UNIQUE_ID___y332", scope: !6141, file: !3, line: 139, type: !7)
!6146 = !DILabel(scope: !6089, name: "inflate_out", file: !3, line: 187)
!6147 = !DILabel(scope: !6089, name: "z_eio", file: !3, line: 192)
!6148 = !DILabel(scope: !6089, name: "b_eio", file: !3, line: 195)
!6149 = !DILocation(line: 40, column: 53, scope: !6089)
!6150 = !DILocation(line: 40, column: 67, scope: !6089)
!6151 = !DILocation(line: 41, column: 18, scope: !6089)
!6152 = !DILocation(line: 41, column: 33, scope: !6089)
!6153 = !DILocation(line: 42, column: 25, scope: !6089)
!6154 = !DILocation(line: 42, column: 41, scope: !6089)
!6155 = !DILocation(line: 43, column: 16, scope: !6089)
!6156 = !DILocation(line: 45, column: 2, scope: !6089)
!6157 = !DILocation(line: 45, column: 15, scope: !6089)
!6158 = !DILocation(line: 45, column: 44, scope: !6089)
!6159 = !DILocation(line: 45, column: 36, scope: !6089)
!6160 = !DILocation(line: 45, column: 52, scope: !6089)
!6161 = !DILocation(line: 46, column: 2, scope: !6089)
!6162 = !DILocation(line: 46, column: 15, scope: !6089)
!6163 = !DILocation(line: 46, column: 25, scope: !6089)
!6164 = !DILocation(line: 47, column: 2, scope: !6089)
!6165 = !DILocation(line: 47, column: 15, scope: !6089)
!6166 = !DILocation(line: 47, column: 26, scope: !6089)
!6167 = !DILocation(line: 48, column: 2, scope: !6089)
!6168 = !DILocation(line: 48, column: 15, scope: !6089)
!6169 = !DILocation(line: 48, column: 25, scope: !6089)
!6170 = !DILocation(line: 48, column: 33, scope: !6089)
!6171 = !DILocation(line: 49, column: 2, scope: !6089)
!6172 = !DILocation(line: 49, column: 6, scope: !6089)
!6173 = !DILocation(line: 49, column: 9, scope: !6089)
!6174 = !DILocation(line: 49, column: 22, scope: !6089)
!6175 = !DILocation(line: 49, column: 34, scope: !6089)
!6176 = !DILocation(line: 49, column: 32, scope: !6089)
!6177 = !DILocation(line: 50, column: 2, scope: !6089)
!6178 = !DILocation(line: 50, column: 11, scope: !6089)
!6179 = !DILocation(line: 53, column: 2, scope: !6089)
!6180 = !DILocation(line: 53, column: 6, scope: !6089)
!6181 = !DILocation(line: 54, column: 2, scope: !6089)
!6182 = !DILocation(line: 54, column: 6, scope: !6089)
!6183 = !DILocation(line: 54, column: 20, scope: !6089)
!6184 = !DILocation(line: 54, column: 34, scope: !6089)
!6185 = !DILocation(line: 54, column: 48, scope: !6089)
!6186 = !DILocation(line: 54, column: 46, scope: !6089)
!6187 = !DILocation(line: 54, column: 31, scope: !6089)
!6188 = !DILocation(line: 54, column: 59, scope: !6089)
!6189 = !DILocation(line: 54, column: 57, scope: !6089)
!6190 = !DILocation(line: 55, column: 8, scope: !6089)
!6191 = !DILocation(line: 55, column: 5, scope: !6089)
!6192 = !DILocation(line: 54, column: 19, scope: !6089)
!6193 = !DILocation(line: 56, column: 2, scope: !6089)
!6194 = !DILocation(line: 56, column: 6, scope: !6089)
!6195 = !DILocation(line: 57, column: 2, scope: !6089)
!6196 = !DILocation(line: 57, column: 11, scope: !6089)
!6197 = !DILocation(line: 58, column: 2, scope: !6089)
!6198 = !DILocation(line: 58, column: 23, scope: !6089)
!6199 = !DILocation(line: 59, column: 2, scope: !6089)
!6200 = !DILocation(line: 59, column: 6, scope: !6089)
!6201 = !DILocation(line: 59, column: 13, scope: !6089)
!6202 = !DILocation(line: 61, column: 6, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 61, column: 6)
!6204 = !DILocation(line: 61, column: 39, scope: !6203)
!6205 = !DILocation(line: 61, column: 36, scope: !6203)
!6206 = !DILocation(line: 61, column: 19, scope: !6203)
!6207 = !DILocation(line: 61, column: 17, scope: !6203)
!6208 = !DILocation(line: 61, column: 6, scope: !6089)
!6209 = !DILocation(line: 62, column: 4, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6203, file: !3, line: 61, column: 60)
!6211 = !DILocation(line: 62, column: 9, scope: !6210)
!6212 = !DILocation(line: 63, column: 3, scope: !6210)
!6213 = !DILocation(line: 66, column: 6, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 66, column: 6)
!6215 = !DILocation(line: 66, column: 17, scope: !6214)
!6216 = !DILocation(line: 66, column: 6, scope: !6089)
!6217 = !DILocation(line: 67, column: 11, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 67, column: 3)
!6219 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 66, column: 23)
!6220 = !DILocation(line: 67, column: 9, scope: !6218)
!6221 = !DILocation(line: 67, column: 17, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 67, column: 3)
!6223 = !DILocation(line: 67, column: 21, scope: !6222)
!6224 = !DILocation(line: 67, column: 19, scope: !6222)
!6225 = !DILocation(line: 67, column: 3, scope: !6218)
!6226 = !DILocation(line: 68, column: 9, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 68, column: 8)
!6228 = distinct !DILexicalBlock(scope: !6222, file: !3, line: 67, column: 36)
!6229 = !DILocation(line: 68, column: 15, scope: !6227)
!6230 = !DILocation(line: 68, column: 8, scope: !6228)
!6231 = !DILocation(line: 69, column: 5, scope: !6227)
!6232 = !DILocation(line: 70, column: 17, scope: !6228)
!6233 = !DILocation(line: 70, column: 23, scope: !6228)
!6234 = !DILocation(line: 70, column: 4, scope: !6228)
!6235 = !DILocation(line: 71, column: 20, scope: !6228)
!6236 = !DILocation(line: 71, column: 26, scope: !6228)
!6237 = !DILocation(line: 71, column: 4, scope: !6228)
!6238 = !DILocation(line: 72, column: 3, scope: !6228)
!6239 = !DILocation(line: 67, column: 31, scope: !6222)
!6240 = !DILocation(line: 67, column: 3, scope: !6222)
!6241 = distinct !{!6241, !6225, !6242, !5002, !5003}
!6242 = !DILocation(line: 72, column: 3, scope: !6218)
!6243 = !DILocation(line: 73, column: 19, scope: !6219)
!6244 = !DILocation(line: 73, column: 11, scope: !6219)
!6245 = !DILocation(line: 73, column: 27, scope: !6219)
!6246 = !DILocation(line: 73, column: 3, scope: !6219)
!6247 = !DILocation(line: 77, column: 13, scope: !6089)
!6248 = !DILocation(line: 77, column: 28, scope: !6089)
!6249 = !DILocation(line: 77, column: 25, scope: !6089)
!6250 = !DILocation(line: 77, column: 11, scope: !6089)
!6251 = !DILocation(line: 78, column: 16, scope: !6089)
!6252 = !DILocation(line: 78, column: 27, scope: !6089)
!6253 = !DILocation(line: 78, column: 8, scope: !6089)
!6254 = !DILocation(line: 78, column: 6, scope: !6089)
!6255 = !DILocation(line: 79, column: 7, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 79, column: 6)
!6257 = !DILocation(line: 79, column: 6, scope: !6089)
!6258 = !DILocation(line: 80, column: 4, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 79, column: 12)
!6260 = !DILocation(line: 80, column: 9, scope: !6259)
!6261 = !DILocation(line: 81, column: 3, scope: !6259)
!6262 = !DILocation(line: 83, column: 32, scope: !6089)
!6263 = !DILocation(line: 83, column: 39, scope: !6089)
!6264 = !DILocation(line: 83, column: 49, scope: !6089)
!6265 = !DILocation(line: 83, column: 54, scope: !6089)
!6266 = !DILocation(line: 83, column: 15, scope: !6089)
!6267 = !DILocation(line: 83, column: 13, scope: !6089)
!6268 = !DILocation(line: 84, column: 16, scope: !6089)
!6269 = !DILocation(line: 84, column: 28, scope: !6089)
!6270 = !DILocation(line: 84, column: 2, scope: !6089)
!6271 = !DILocation(line: 86, column: 8, scope: !6089)
!6272 = !DILocation(line: 87, column: 10, scope: !6089)
!6273 = !DILocation(line: 95, column: 7, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 95, column: 6)
!6275 = !DILocation(line: 95, column: 6, scope: !6089)
!6276 = !DILocation(line: 96, column: 3, scope: !6274)
!6277 = !DILocation(line: 98, column: 17, scope: !6089)
!6278 = !DILocation(line: 98, column: 2, scope: !6089)
!6279 = !DILocation(line: 99, column: 23, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 99, column: 6)
!6281 = !DILocation(line: 99, column: 7, scope: !6280)
!6282 = !DILocation(line: 99, column: 6, scope: !6089)
!6283 = !DILocation(line: 100, column: 4, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6280, file: !3, line: 99, column: 32)
!6285 = !DILocation(line: 100, column: 9, scope: !6284)
!6286 = !DILocation(line: 101, column: 3, scope: !6284)
!6287 = !DILocation(line: 104, column: 21, scope: !6089)
!6288 = !DILocation(line: 104, column: 9, scope: !6089)
!6289 = !DILocation(line: 104, column: 19, scope: !6089)
!6290 = !DILocation(line: 105, column: 2, scope: !6089)
!6291 = !DILocation(line: 107, column: 9, scope: !6089)
!6292 = !DILocation(line: 107, column: 7, scope: !6089)
!6293 = !DILocation(line: 108, column: 6, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 108, column: 6)
!6295 = !DILocation(line: 108, column: 11, scope: !6294)
!6296 = !DILocation(line: 108, column: 6, scope: !6089)
!6297 = !DILocation(line: 109, column: 7, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6299, file: !3, line: 109, column: 7)
!6299 = distinct !DILexicalBlock(scope: !6294, file: !3, line: 108, column: 20)
!6300 = !DILocation(line: 109, column: 12, scope: !6298)
!6301 = !DILocation(line: 109, column: 7, scope: !6299)
!6302 = !DILocation(line: 110, column: 5, scope: !6298)
!6303 = !DILocation(line: 110, column: 10, scope: !6298)
!6304 = !DILocation(line: 110, column: 4, scope: !6298)
!6305 = !DILocation(line: 112, column: 5, scope: !6298)
!6306 = !DILocation(line: 112, column: 10, scope: !6298)
!6307 = !DILocation(line: 113, column: 3, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6299, file: !3, line: 113, column: 3)
!6309 = !DILocation(line: 113, column: 3, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6308, file: !3, line: 113, column: 3)
!6311 = !DILocation(line: 115, column: 3, scope: !6299)
!6312 = !DILocation(line: 118, column: 2, scope: !6089)
!6313 = !DILocation(line: 118, column: 9, scope: !6089)
!6314 = !DILocation(line: 118, column: 19, scope: !6089)
!6315 = !DILocation(line: 118, column: 17, scope: !6089)
!6316 = !DILocation(line: 118, column: 26, scope: !6089)
!6317 = !DILocation(line: 118, column: 29, scope: !6089)
!6318 = !DILocation(line: 118, column: 37, scope: !6089)
!6319 = !DILocation(line: 118, column: 35, scope: !6089)
!6320 = !DILocation(line: 118, column: 48, scope: !6089)
!6321 = !DILocation(line: 119, column: 9, scope: !6089)
!6322 = !DILocation(line: 119, column: 14, scope: !6089)
!6323 = !DILocation(line: 0, scope: !6089)
!6324 = !DILocation(line: 120, column: 15, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 120, column: 7)
!6326 = !DILocation(line: 120, column: 8, scope: !6325)
!6327 = !DILocation(line: 120, column: 7, scope: !6144)
!6328 = !DILocation(line: 121, column: 8, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6330, file: !3, line: 121, column: 8)
!6330 = distinct !DILexicalBlock(scope: !6325, file: !3, line: 120, column: 26)
!6331 = !DILocation(line: 121, column: 14, scope: !6329)
!6332 = !DILocation(line: 121, column: 8, scope: !6330)
!6333 = !DILocation(line: 122, column: 39, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6329, file: !3, line: 121, column: 24)
!6335 = !DILocation(line: 122, column: 45, scope: !6334)
!6336 = !DILocation(line: 122, column: 23, scope: !6334)
!6337 = !DILocation(line: 123, column: 9, scope: !6334)
!6338 = !DILocation(line: 123, column: 7, scope: !6334)
!6339 = !DILocation(line: 122, column: 12, scope: !6334)
!6340 = !DILocation(line: 122, column: 21, scope: !6334)
!6341 = !DILocation(line: 124, column: 36, scope: !6334)
!6342 = !DILocation(line: 124, column: 34, scope: !6334)
!6343 = !DILocation(line: 124, column: 12, scope: !6334)
!6344 = !DILocation(line: 124, column: 22, scope: !6334)
!6345 = !DILocation(line: 125, column: 13, scope: !6334)
!6346 = !DILocation(line: 126, column: 4, scope: !6334)
!6347 = !DILocation(line: 127, column: 12, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6329, file: !3, line: 126, column: 11)
!6349 = !DILocation(line: 127, column: 21, scope: !6348)
!6350 = !DILocation(line: 128, column: 12, scope: !6348)
!6351 = !DILocation(line: 128, column: 22, scope: !6348)
!6352 = !DILocation(line: 130, column: 3, scope: !6330)
!6353 = !DILocation(line: 131, column: 15, scope: !6143)
!6354 = !DILocation(line: 131, column: 8, scope: !6143)
!6355 = !DILocation(line: 131, column: 7, scope: !6144)
!6356 = !DILocation(line: 132, column: 19, scope: !6142)
!6357 = !DILocation(line: 132, column: 23, scope: !6142)
!6358 = !DILocation(line: 132, column: 4, scope: !6142)
!6359 = !DILocation(line: 133, column: 25, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 133, column: 8)
!6361 = !DILocation(line: 133, column: 29, scope: !6360)
!6362 = !DILocation(line: 133, column: 9, scope: !6360)
!6363 = !DILocation(line: 133, column: 8, scope: !6142)
!6364 = !DILocation(line: 134, column: 6, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6360, file: !3, line: 133, column: 38)
!6366 = !DILocation(line: 134, column: 11, scope: !6365)
!6367 = !DILocation(line: 135, column: 5, scope: !6365)
!6368 = !DILocation(line: 137, column: 22, scope: !6142)
!6369 = !DILocation(line: 137, column: 26, scope: !6142)
!6370 = !DILocation(line: 137, column: 34, scope: !6142)
!6371 = !DILocation(line: 138, column: 8, scope: !6142)
!6372 = !DILocation(line: 138, column: 22, scope: !6142)
!6373 = !DILocation(line: 138, column: 20, scope: !6142)
!6374 = !DILocation(line: 137, column: 41, scope: !6142)
!6375 = !DILocation(line: 137, column: 11, scope: !6142)
!6376 = !DILocation(line: 137, column: 20, scope: !6142)
!6377 = !DILocation(line: 139, column: 22, scope: !6141)
!6378 = !DILocation(line: 139, column: 22, scope: !6142)
!6379 = !DILocation(line: 139, column: 11, scope: !6142)
!6380 = !DILocation(line: 139, column: 20, scope: !6142)
!6381 = !DILocation(line: 142, column: 25, scope: !6142)
!6382 = !DILocation(line: 142, column: 15, scope: !6142)
!6383 = !DILocation(line: 143, column: 16, scope: !6142)
!6384 = !DILocation(line: 144, column: 3, scope: !6142)
!6385 = !DILocation(line: 146, column: 3, scope: !6144)
!6386 = !DILocation(line: 146, column: 17, scope: !6144)
!6387 = !DILocation(line: 146, column: 10, scope: !6144)
!6388 = !DILocation(line: 146, column: 27, scope: !6144)
!6389 = !DILocation(line: 146, column: 37, scope: !6144)
!6390 = !DILocation(line: 0, scope: !6144)
!6391 = !DILocation(line: 147, column: 11, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 146, column: 47)
!6393 = !DILocation(line: 147, column: 9, scope: !6392)
!6394 = !DILocation(line: 148, column: 8, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6392, file: !3, line: 148, column: 8)
!6396 = !DILocation(line: 148, column: 13, scope: !6395)
!6397 = !DILocation(line: 148, column: 28, scope: !6395)
!6398 = !DILocation(line: 148, column: 38, scope: !6395)
!6399 = !DILocation(line: 148, column: 47, scope: !6395)
!6400 = !DILocation(line: 148, column: 8, scope: !6392)
!6401 = !DILocation(line: 149, column: 5, scope: !6395)
!6402 = !DILocation(line: 150, column: 8, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6392, file: !3, line: 150, column: 8)
!6404 = !DILocation(line: 150, column: 13, scope: !6403)
!6405 = !DILocation(line: 150, column: 8, scope: !6392)
!6406 = !DILocation(line: 151, column: 5, scope: !6403)
!6407 = !DILocation(line: 152, column: 8, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6392, file: !3, line: 152, column: 8)
!6409 = !DILocation(line: 152, column: 13, scope: !6408)
!6410 = !DILocation(line: 152, column: 8, scope: !6392)
!6411 = !DILocation(line: 154, column: 9, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6413, file: !3, line: 154, column: 9)
!6413 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 152, column: 22)
!6414 = !DILocation(line: 154, column: 14, scope: !6412)
!6415 = !DILocation(line: 154, column: 9, scope: !6413)
!6416 = !DILocation(line: 155, column: 7, scope: !6412)
!6417 = !DILocation(line: 155, column: 12, scope: !6412)
!6418 = !DILocation(line: 155, column: 6, scope: !6412)
!6419 = !DILocation(line: 157, column: 6, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6421, file: !3, line: 157, column: 6)
!6421 = distinct !DILexicalBlock(scope: !6412, file: !3, line: 156, column: 10)
!6422 = !DILocation(line: 157, column: 6, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 157, column: 6)
!6424 = !DILocation(line: 166, column: 7, scope: !6421)
!6425 = !DILocation(line: 166, column: 12, scope: !6421)
!6426 = !DILocation(line: 168, column: 5, scope: !6413)
!6427 = distinct !{!6427, !6385, !6428, !5002, !5003}
!6428 = !DILocation(line: 170, column: 3, scope: !6144)
!6429 = !DILocation(line: 172, column: 15, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 172, column: 7)
!6431 = !DILocation(line: 172, column: 8, scope: !6430)
!6432 = !DILocation(line: 172, column: 7, scope: !6144)
!6433 = !DILocation(line: 174, column: 8, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 174, column: 8)
!6435 = distinct !DILexicalBlock(scope: !6430, file: !3, line: 172, column: 26)
!6436 = !DILocation(line: 174, column: 14, scope: !6434)
!6437 = !DILocation(line: 174, column: 8, scope: !6435)
!6438 = !DILocation(line: 175, column: 23, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !6434, file: !3, line: 174, column: 24)
!6440 = !DILocation(line: 175, column: 29, scope: !6439)
!6441 = !DILocation(line: 175, column: 5, scope: !6439)
!6442 = !DILocation(line: 176, column: 21, scope: !6439)
!6443 = !DILocation(line: 176, column: 27, scope: !6439)
!6444 = !DILocation(line: 176, column: 5, scope: !6439)
!6445 = !DILocation(line: 177, column: 4, scope: !6439)
!6446 = !DILocation(line: 178, column: 15, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 178, column: 8)
!6448 = !DILocation(line: 178, column: 24, scope: !6447)
!6449 = !DILocation(line: 178, column: 8, scope: !6435)
!6450 = !DILocation(line: 179, column: 5, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6447, file: !3, line: 178, column: 62)
!6452 = !DILocation(line: 179, column: 5, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 179, column: 5)
!6454 = !DILocation(line: 179, column: 5, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6453, file: !3, line: 179, column: 5)
!6456 = !DILocation(line: 180, column: 12, scope: !6451)
!6457 = !DILocation(line: 180, column: 21, scope: !6451)
!6458 = !DILocation(line: 181, column: 4, scope: !6451)
!6459 = !DILocation(line: 182, column: 11, scope: !6435)
!6460 = !DILocation(line: 183, column: 3, scope: !6435)
!6461 = !DILocation(line: 184, column: 15, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 184, column: 7)
!6463 = !DILocation(line: 184, column: 8, scope: !6462)
!6464 = !DILocation(line: 184, column: 7, scope: !6144)
!6465 = !DILocation(line: 185, column: 9, scope: !6462)
!6466 = !DILocation(line: 185, column: 4, scope: !6462)
!6467 = distinct !{!6467, !6312, !6468, !5002, !5003}
!6468 = !DILocation(line: 186, column: 2, scope: !6089)
!6469 = !DILocation(line: 187, column: 1, scope: !6089)
!6470 = !DILocation(line: 188, column: 2, scope: !6089)
!6471 = !DILocation(line: 189, column: 13, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 189, column: 6)
!6473 = !DILocation(line: 189, column: 6, scope: !6472)
!6474 = !DILocation(line: 189, column: 22, scope: !6472)
!6475 = !DILocation(line: 189, column: 32, scope: !6472)
!6476 = !DILocation(line: 189, column: 41, scope: !6472)
!6477 = !DILocation(line: 189, column: 6, scope: !6089)
!6478 = !DILocation(line: 190, column: 3, scope: !6472)
!6479 = !DILocation(line: 190, column: 3, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6472, file: !3, line: 190, column: 3)
!6481 = !DILocation(line: 190, column: 3, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 190, column: 3)
!6483 = !DILocation(line: 189, column: 61, scope: !6472)
!6484 = !DILocation(line: 192, column: 1, scope: !6089)
!6485 = !DILocation(line: 193, column: 2, scope: !6089)
!6486 = !DILocation(line: 195, column: 1, scope: !6089)
!6487 = !DILocation(line: 196, column: 9, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 196, column: 2)
!6489 = !DILocation(line: 196, column: 7, scope: !6488)
!6490 = !DILocation(line: 196, column: 14, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6488, file: !3, line: 196, column: 2)
!6492 = !DILocation(line: 196, column: 18, scope: !6491)
!6493 = !DILocation(line: 196, column: 16, scope: !6491)
!6494 = !DILocation(line: 196, column: 2, scope: !6488)
!6495 = !DILocation(line: 197, column: 10, scope: !6491)
!6496 = !DILocation(line: 197, column: 14, scope: !6491)
!6497 = !DILocation(line: 197, column: 3, scope: !6491)
!6498 = !DILocation(line: 196, column: 31, scope: !6491)
!6499 = !DILocation(line: 196, column: 2, scope: !6491)
!6500 = distinct !{!6500, !6494, !6501, !5002, !5003}
!6501 = !DILocation(line: 197, column: 16, scope: !6488)
!6502 = !DILocation(line: 198, column: 8, scope: !6089)
!6503 = !DILocation(line: 198, column: 2, scope: !6089)
!6504 = !DILocation(line: 199, column: 16, scope: !6089)
!6505 = !DILocation(line: 199, column: 2, scope: !6089)
!6506 = !DILocation(line: 200, column: 1, scope: !6089)
!6507 = distinct !DISubprogram(name: "memzero_page", scope: !6508, file: !6508, line: 432, type: !6509, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6511)
!6508 = !DIFile(filename: "./include/linux/highmem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "44cc22a6674afa1c65f9d65e2d0f07bb")
!6509 = !DISubroutineType(types: !6510)
!6510 = !{null, !667, !578, !578}
!6511 = !{!6512, !6513, !6514, !6515}
!6512 = !DILocalVariable(name: "page", arg: 1, scope: !6507, file: !6508, line: 432, type: !667)
!6513 = !DILocalVariable(name: "offset", arg: 2, scope: !6507, file: !6508, line: 432, type: !578)
!6514 = !DILocalVariable(name: "len", arg: 3, scope: !6507, file: !6508, line: 432, type: !578)
!6515 = !DILocalVariable(name: "addr", scope: !6507, file: !6508, line: 434, type: !434)
!6516 = !DILocation(line: 432, column: 46, scope: !6507)
!6517 = !DILocation(line: 432, column: 59, scope: !6507)
!6518 = !DILocation(line: 432, column: 74, scope: !6507)
!6519 = !DILocation(line: 434, column: 2, scope: !6507)
!6520 = !DILocation(line: 434, column: 8, scope: !6507)
!6521 = !DILocation(line: 434, column: 31, scope: !6507)
!6522 = !DILocation(line: 434, column: 15, scope: !6507)
!6523 = !DILocation(line: 437, column: 9, scope: !6507)
!6524 = !DILocation(line: 437, column: 16, scope: !6507)
!6525 = !DILocation(line: 437, column: 14, scope: !6507)
!6526 = !DILocation(line: 437, column: 27, scope: !6507)
!6527 = !DILocation(line: 437, column: 2, scope: !6507)
!6528 = !DILocation(line: 438, column: 20, scope: !6507)
!6529 = !DILocation(line: 438, column: 2, scope: !6507)
!6530 = !DILocation(line: 439, column: 2, scope: !6507)
!6531 = !DILocation(line: 439, column: 2, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6507, file: !6508, line: 439, column: 2)
!6533 = !DILocation(line: 439, column: 2, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6532, file: !6508, line: 439, column: 2)
!6535 = !DILocation(line: 440, column: 1, scope: !6507)
!6536 = !DISubprogram(name: "__brelse", scope: !197, file: !197, line: 232, type: !6078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6537 = distinct !DISubprogram(name: "deflateBound", scope: !5073, file: !5073, line: 514, type: !6538, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6540)
!6538 = !DISubroutineType(types: !6539)
!6539 = !{!225, !225}
!6540 = !{!6541}
!6541 = !DILocalVariable(name: "s", arg: 1, scope: !6537, file: !5073, line: 514, type: !225)
!6542 = !DILocation(line: 514, column: 56, scope: !6537)
!6543 = !DILocation(line: 516, column: 9, scope: !6537)
!6544 = !DILocation(line: 516, column: 15, scope: !6537)
!6545 = !DILocation(line: 516, column: 17, scope: !6537)
!6546 = !DILocation(line: 516, column: 22, scope: !6537)
!6547 = !DILocation(line: 516, column: 11, scope: !6537)
!6548 = !DILocation(line: 516, column: 32, scope: !6537)
!6549 = !DILocation(line: 516, column: 34, scope: !6537)
!6550 = !DILocation(line: 516, column: 40, scope: !6537)
!6551 = !DILocation(line: 516, column: 28, scope: !6537)
!6552 = !DILocation(line: 516, column: 46, scope: !6537)
!6553 = !DILocation(line: 516, column: 2, scope: !6537)
!6554 = !DISubprogram(name: "isofs_get_blocks", scope: !222, file: !222, line: 122, type: !6555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6555 = !DISubroutineType(types: !6556)
!6556 = !{!81, !331, !1807, !6137, !225}
!6557 = distinct !DISubprogram(name: "bh_read_batch", scope: !197, file: !197, line: 426, type: !6558, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6560)
!6558 = !DISubroutineType(types: !6559)
!6559 = !{null, !81, !6137}
!6560 = !{!6561, !6562}
!6561 = !DILocalVariable(name: "nr", arg: 1, scope: !6557, file: !197, line: 426, type: !81)
!6562 = !DILocalVariable(name: "bhs", arg: 2, scope: !6557, file: !197, line: 426, type: !6137)
!6563 = !DILocation(line: 426, column: 38, scope: !6557)
!6564 = !DILocation(line: 426, column: 62, scope: !6557)
!6565 = !DILocation(line: 428, column: 18, scope: !6557)
!6566 = !DILocation(line: 428, column: 22, scope: !6557)
!6567 = !DILocation(line: 428, column: 2, scope: !6557)
!6568 = !DILocation(line: 429, column: 1, scope: !6557)
!6569 = distinct !DISubprogram(name: "wait_on_buffer", scope: !197, file: !197, line: 369, type: !6078, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6570)
!6570 = !{!6571}
!6571 = !DILocalVariable(name: "bh", arg: 1, scope: !6569, file: !197, line: 369, type: !5168)
!6572 = !DILocation(line: 369, column: 55, scope: !6569)
!6573 = !DILocation(line: 371, column: 2, scope: !6569)
!6574 = !DILocation(line: 371, column: 2, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6569, file: !197, line: 371, column: 2)
!6576 = !DILocation(line: 372, column: 20, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6569, file: !197, line: 372, column: 6)
!6578 = !DILocation(line: 372, column: 6, scope: !6577)
!6579 = !DILocation(line: 372, column: 6, scope: !6569)
!6580 = !DILocation(line: 373, column: 20, scope: !6577)
!6581 = !DILocation(line: 373, column: 3, scope: !6577)
!6582 = !DILocation(line: 374, column: 1, scope: !6569)
!6583 = distinct !DISubprogram(name: "buffer_uptodate", scope: !197, file: !197, line: 165, type: !6584, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6588)
!6584 = !DISubroutineType(types: !6585)
!6585 = !{!81, !6586}
!6586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6587, size: 64)
!6587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5169)
!6588 = !{!6589}
!6589 = !DILocalVariable(name: "bh", arg: 1, scope: !6583, file: !197, line: 165, type: !6586)
!6590 = !DILocation(line: 165, column: 70, scope: !6583)
!6591 = !DILocation(line: 171, column: 9, scope: !6583)
!6592 = !DILocation(line: 171, column: 2, scope: !6583)
!6593 = !DISubprogram(name: "mutex_lock", scope: !858, file: !858, line: 227, type: !6594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6594 = !DISubroutineType(types: !6595)
!6595 = !{null, !6596}
!6596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!6597 = !DISubprogram(name: "zlib_inflateInit2", scope: !5073, file: !5073, line: 589, type: !6598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6598 = !DISubroutineType(types: !6599)
!6599 = !{!81, !6600, !81}
!6600 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_streamp", file: !5073, line: 103, baseType: !6601)
!6601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6107, size: 64)
!6602 = !DISubprogram(name: "_printk", scope: !6603, file: !6603, line: 153, type: !6604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6603 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6604 = !DISubroutineType(types: !6605)
!6605 = !{!81, !408, null}
!6606 = distinct !DISubprogram(name: "kmap_local_page", scope: !6607, file: !6607, line: 183, type: !6608, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6610)
!6607 = !DIFile(filename: "./include/linux/highmem-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ae7838583c7018843a11d0e374eeb3")
!6608 = !DISubroutineType(types: !6609)
!6609 = !{!219, !667}
!6610 = !{!6611}
!6611 = !DILocalVariable(name: "page", arg: 1, scope: !6606, file: !6607, line: 183, type: !667)
!6612 = !DILocation(line: 183, column: 50, scope: !6606)
!6613 = !DILocation(line: 185, column: 9, scope: !6606)
!6614 = !DILocation(line: 185, column: 2, scope: !6606)
!6615 = !DISubprogram(name: "zlib_inflate", scope: !5073, file: !5073, line: 343, type: !6598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6616 = distinct !DISubprogram(name: "__kunmap_local", scope: !6607, file: !6607, line: 203, type: !5079, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6617)
!6617 = !{!6618}
!6618 = !DILocalVariable(name: "addr", arg: 1, scope: !6616, file: !6607, line: 203, type: !1550)
!6619 = !DILocation(line: 203, column: 47, scope: !6616)
!6620 = !DILocation(line: 208, column: 1, scope: !6616)
!6621 = !DISubprogram(name: "zlib_inflateEnd", scope: !5073, file: !5073, line: 442, type: !6622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6622 = !DISubroutineType(types: !6623)
!6623 = !{!81, !6600}
!6624 = !DISubprogram(name: "mutex_unlock", scope: !858, file: !858, line: 246, type: !6594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6625 = !DISubprogram(name: "__bh_read_batch", scope: !197, file: !197, line: 249, type: !6626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6626 = !DISubroutineType(types: !6627)
!6627 = !{null, !81, !6137, !3907, !748}
!6628 = !DILocation(line: 112, column: 2, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !4839, file: !4840, line: 112, column: 2)
!6630 = !DILocation(line: 112, column: 2, scope: !4839)
!6631 = !DILocation(line: 113, column: 1, scope: !4839)
!6632 = distinct !DISubprogram(name: "buffer_locked", scope: !197, file: !197, line: 124, type: !6584, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6633)
!6633 = !{!6634}
!6634 = !DILocalVariable(name: "bh", arg: 1, scope: !6632, file: !197, line: 124, type: !6586)
!6635 = !DILocation(line: 124, column: 1, scope: !6632)
!6636 = !DISubprogram(name: "__wait_on_buffer", scope: !197, file: !197, line: 226, type: !6078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6637 = distinct !DISubprogram(name: "generic_test_bit_acquire", scope: !5953, file: !5953, line: 137, type: !5954, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6638)
!6638 = !{!6639, !6640, !6641, !6642}
!6639 = !DILocalVariable(name: "nr", arg: 1, scope: !6637, file: !5953, line: 137, type: !225)
!6640 = !DILocalVariable(name: "addr", arg: 2, scope: !6637, file: !5953, line: 137, type: !4806)
!6641 = !DILocalVariable(name: "p", scope: !6637, file: !5953, line: 139, type: !2361)
!6642 = !DILocalVariable(name: "___p1", scope: !6643, file: !5953, line: 140, type: !225)
!6643 = distinct !DILexicalBlock(scope: !6637, file: !5953, line: 140, column: 16)
!6644 = !DILocation(line: 137, column: 40, scope: !6637)
!6645 = !DILocation(line: 137, column: 74, scope: !6637)
!6646 = !DILocation(line: 139, column: 2, scope: !6637)
!6647 = !DILocation(line: 139, column: 17, scope: !6637)
!6648 = !DILocation(line: 139, column: 39, scope: !6637)
!6649 = !DILocation(line: 139, column: 47, scope: !6637)
!6650 = !DILocation(line: 139, column: 45, scope: !6637)
!6651 = !DILocation(line: 140, column: 16, scope: !6643)
!6652 = !DILocation(line: 140, column: 16, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6643, file: !5953, line: 140, column: 16)
!6654 = !DILocation(line: 140, column: 16, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6653, file: !5953, line: 140, column: 16)
!6656 = !DILocation(line: 140, column: 16, scope: !6657)
!6657 = distinct !DILexicalBlock(scope: !6643, file: !5953, line: 140, column: 16)
!6658 = !{i64 2148322595}
!6659 = !DILocation(line: 140, column: 16, scope: !6637)
!6660 = !DILocation(line: 140, column: 40, scope: !6637)
!6661 = !DILocation(line: 140, column: 43, scope: !6637)
!6662 = !DILocation(line: 140, column: 36, scope: !6637)
!6663 = !DILocation(line: 140, column: 13, scope: !6637)
!6664 = !DILocation(line: 140, column: 9, scope: !6637)
!6665 = !DILocation(line: 141, column: 1, scope: !6637)
!6666 = !DILocation(line: 140, column: 2, scope: !6637)
!6667 = distinct !DISubprogram(name: "_test_bit_acquire", scope: !5984, file: !5984, line: 151, type: !5954, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6668)
!6668 = !{!6669, !6670}
!6669 = !DILocalVariable(name: "nr", arg: 1, scope: !6667, file: !5984, line: 151, type: !225)
!6670 = !DILocalVariable(name: "addr", arg: 2, scope: !6667, file: !5984, line: 151, type: !4806)
!6671 = !DILocation(line: 151, column: 33, scope: !6667)
!6672 = !DILocation(line: 151, column: 67, scope: !6667)
!6673 = !DILocation(line: 153, column: 25, scope: !6667)
!6674 = !DILocation(line: 153, column: 32, scope: !6667)
!6675 = !DILocation(line: 153, column: 30, scope: !6667)
!6676 = !DILocation(line: 153, column: 2, scope: !6667)
!6677 = !DILocation(line: 154, column: 31, scope: !6667)
!6678 = !DILocation(line: 154, column: 35, scope: !6667)
!6679 = !DILocation(line: 154, column: 9, scope: !6667)
!6680 = !DILocation(line: 154, column: 2, scope: !6667)
!6681 = distinct !DISubprogram(name: "arch_test_bit_acquire", scope: !5504, file: !5504, line: 244, type: !5954, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6682)
!6682 = !{!6683, !6684}
!6683 = !DILocalVariable(name: "nr", arg: 1, scope: !6681, file: !5504, line: 244, type: !225)
!6684 = !DILocalVariable(name: "addr", arg: 2, scope: !6681, file: !5504, line: 244, type: !4806)
!6685 = !DILocation(line: 244, column: 37, scope: !6681)
!6686 = !DILocation(line: 244, column: 71, scope: !6681)
!6687 = !DILocation(line: 246, column: 30, scope: !6681)
!6688 = !DILocation(line: 246, column: 9, scope: !6681)
!6689 = !DILocation(line: 246, column: 62, scope: !6681)
!6690 = !DILocation(line: 246, column: 66, scope: !6681)
!6691 = !DILocation(line: 246, column: 36, scope: !6681)
!6692 = !DILocation(line: 247, column: 26, scope: !6681)
!6693 = !DILocation(line: 247, column: 30, scope: !6681)
!6694 = !DILocation(line: 247, column: 8, scope: !6681)
!6695 = !DILocation(line: 246, column: 2, scope: !6681)
!6696 = distinct !DISubprogram(name: "constant_test_bit_acquire", scope: !5504, file: !5504, line: 210, type: !6032, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6697)
!6697 = !{!6698, !6699, !6700}
!6698 = !DILocalVariable(name: "nr", arg: 1, scope: !6696, file: !5504, line: 210, type: !241)
!6699 = !DILocalVariable(name: "addr", arg: 2, scope: !6696, file: !5504, line: 210, type: !4806)
!6700 = !DILocalVariable(name: "oldbit", scope: !6696, file: !5504, line: 212, type: !748)
!6701 = !DILocation(line: 210, column: 60, scope: !6696)
!6702 = !DILocation(line: 210, column: 94, scope: !6696)
!6703 = !DILocation(line: 212, column: 2, scope: !6696)
!6704 = !DILocation(line: 212, column: 7, scope: !6696)
!6705 = !DILocation(line: 217, column: 33, scope: !6696)
!6706 = !DILocation(line: 217, column: 39, scope: !6696)
!6707 = !DILocation(line: 217, column: 42, scope: !6696)
!6708 = !DILocation(line: 217, column: 15, scope: !6696)
!6709 = !DILocation(line: 218, column: 21, scope: !6696)
!6710 = !DILocation(line: 218, column: 24, scope: !6696)
!6711 = !DILocation(line: 218, column: 17, scope: !6696)
!6712 = !DILocation(line: 214, column: 2, scope: !6696)
!6713 = !{i64 844879, i64 2148350392}
!6714 = !DILocation(line: 221, column: 9, scope: !6696)
!6715 = !DILocation(line: 222, column: 1, scope: !6696)
!6716 = !DILocation(line: 221, column: 2, scope: !6696)
!6717 = distinct !DISubprogram(name: "lowmem_page_address", scope: !791, file: !791, line: 2176, type: !6718, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6720)
!6718 = !DISubroutineType(types: !6719)
!6719 = !{!219, !4811}
!6720 = !{!6721}
!6721 = !DILocalVariable(name: "page", arg: 1, scope: !6717, file: !791, line: 2176, type: !4811)
!6722 = !DILocation(line: 2176, column: 69, scope: !6717)
!6723 = !DILocation(line: 2178, column: 9, scope: !6717)
!6724 = !DILocation(line: 2178, column: 2, scope: !6717)
!6725 = distinct !DISubprogram(name: "put_devmap_managed_page", scope: !791, file: !791, line: 1428, type: !6726, scopeLine: 1429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6728)
!6726 = !DISubroutineType(types: !6727)
!6727 = !{!748, !667}
!6728 = !{!6729}
!6729 = !DILocalVariable(name: "page", arg: 1, scope: !6725, file: !791, line: 1428, type: !667)
!6730 = !DILocation(line: 1428, column: 57, scope: !6725)
!6731 = !DILocation(line: 1430, column: 38, scope: !6725)
!6732 = !DILocation(line: 1430, column: 9, scope: !6725)
!6733 = !DILocation(line: 1430, column: 2, scope: !6725)
!6734 = distinct !DISubprogram(name: "folio_put", scope: !791, file: !791, line: 1478, type: !1818, scopeLine: 1479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6735)
!6735 = !{!6736}
!6736 = !DILocalVariable(name: "folio", arg: 1, scope: !6734, file: !791, line: 1478, type: !1193)
!6737 = !DILocation(line: 1478, column: 44, scope: !6734)
!6738 = !DILocation(line: 1480, column: 25, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6734, file: !791, line: 1480, column: 6)
!6740 = !DILocation(line: 1480, column: 6, scope: !6739)
!6741 = !DILocation(line: 1480, column: 6, scope: !6734)
!6742 = !DILocation(line: 1481, column: 15, scope: !6739)
!6743 = !DILocation(line: 1481, column: 3, scope: !6739)
!6744 = !DILocation(line: 1482, column: 1, scope: !6734)
!6745 = distinct !DISubprogram(name: "put_devmap_managed_page_refs", scope: !791, file: !791, line: 1422, type: !6746, scopeLine: 1423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6748)
!6746 = !DISubroutineType(types: !6747)
!6747 = !{!748, !667, !81}
!6748 = !{!6749, !6750}
!6749 = !DILocalVariable(name: "page", arg: 1, scope: !6745, file: !791, line: 1422, type: !667)
!6750 = !DILocalVariable(name: "refs", arg: 2, scope: !6745, file: !791, line: 1422, type: !81)
!6751 = !DILocation(line: 1422, column: 62, scope: !6745)
!6752 = !DILocation(line: 1422, column: 72, scope: !6745)
!6753 = !DILocation(line: 1424, column: 2, scope: !6745)
!6754 = distinct !DISubprogram(name: "folio_put_testzero", scope: !791, file: !791, line: 1103, type: !1827, scopeLine: 1104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6755)
!6755 = !{!6756}
!6756 = !DILocalVariable(name: "folio", arg: 1, scope: !6754, file: !791, line: 1103, type: !1193)
!6757 = !DILocation(line: 1103, column: 52, scope: !6754)
!6758 = !DILocation(line: 1105, column: 28, scope: !6754)
!6759 = !DILocation(line: 1105, column: 35, scope: !6754)
!6760 = !DILocation(line: 1105, column: 9, scope: !6754)
!6761 = !DILocation(line: 1105, column: 2, scope: !6754)
!6762 = !DISubprogram(name: "__folio_put", scope: !791, file: !791, line: 1283, type: !1818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6763 = distinct !DISubprogram(name: "put_page_testzero", scope: !791, file: !791, line: 1097, type: !6764, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6766)
!6764 = !DISubroutineType(types: !6765)
!6765 = !{!81, !667}
!6766 = !{!6767}
!6767 = !DILocalVariable(name: "page", arg: 1, scope: !6763, file: !791, line: 1097, type: !667)
!6768 = !DILocation(line: 1097, column: 50, scope: !6763)
!6769 = !DILocation(line: 1100, column: 31, scope: !6763)
!6770 = !DILocation(line: 1100, column: 9, scope: !6763)
!6771 = !DILocation(line: 1100, column: 2, scope: !6763)
!6772 = distinct !DISubprogram(name: "page_ref_dec_and_test", scope: !6773, file: !6773, line: 208, type: !6764, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6774)
!6773 = !DIFile(filename: "./include/linux/page_ref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed1500ef964c39be8e0b4c715e2a9d4")
!6774 = !{!6775, !6776}
!6775 = !DILocalVariable(name: "page", arg: 1, scope: !6772, file: !6773, line: 208, type: !667)
!6776 = !DILocalVariable(name: "ret", scope: !6772, file: !6773, line: 210, type: !81)
!6777 = !DILocation(line: 208, column: 54, scope: !6772)
!6778 = !DILocation(line: 210, column: 2, scope: !6772)
!6779 = !DILocation(line: 210, column: 6, scope: !6772)
!6780 = !DILocation(line: 210, column: 33, scope: !6772)
!6781 = !DILocation(line: 210, column: 39, scope: !6772)
!6782 = !DILocation(line: 210, column: 12, scope: !6772)
!6783 = !DILocation(line: 214, column: 9, scope: !6772)
!6784 = !DILocation(line: 215, column: 1, scope: !6772)
!6785 = !DILocation(line: 214, column: 2, scope: !6772)
!6786 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !6787, file: !6787, line: 1372, type: !6788, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6791)
!6787 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6788 = !DISubroutineType(types: !6789)
!6789 = !{!748, !6790}
!6790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!6791 = !{!6792}
!6792 = !DILocalVariable(name: "v", arg: 1, scope: !6786, file: !6787, line: 1372, type: !6790)
!6793 = !DILocation(line: 1372, column: 31, scope: !6786)
!6794 = !DILocation(line: 1374, column: 2, scope: !6786)
!6795 = !DILocation(line: 1374, column: 2, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6786, file: !6787, line: 1374, column: 2)
!6797 = !DILocation(line: 1375, column: 31, scope: !6786)
!6798 = !DILocation(line: 1375, column: 2, scope: !6786)
!6799 = !DILocation(line: 1376, column: 33, scope: !6786)
!6800 = !DILocation(line: 1376, column: 9, scope: !6786)
!6801 = !DILocation(line: 1376, column: 2, scope: !6786)
!6802 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5487, file: !5487, line: 94, type: !5488, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6803)
!6803 = !{!6804, !6805}
!6804 = !DILocalVariable(name: "v", arg: 1, scope: !6802, file: !5487, line: 94, type: !5490)
!6805 = !DILocalVariable(name: "size", arg: 2, scope: !6802, file: !5487, line: 94, type: !578)
!6806 = !DILocation(line: 94, column: 79, scope: !6802)
!6807 = !DILocation(line: 94, column: 89, scope: !6802)
!6808 = !DILocation(line: 96, column: 20, scope: !6802)
!6809 = !DILocation(line: 96, column: 23, scope: !6802)
!6810 = !DILocation(line: 96, column: 2, scope: !6802)
!6811 = !DILocation(line: 97, column: 2, scope: !6802)
!6812 = !DILocation(line: 98, column: 1, scope: !6802)
!6813 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !6814, file: !6814, line: 2254, type: !6788, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6815)
!6814 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6815 = !{!6816}
!6816 = !DILocalVariable(name: "v", arg: 1, scope: !6813, file: !6814, line: 2254, type: !6790)
!6817 = !DILocation(line: 2254, column: 35, scope: !6813)
!6818 = !DILocation(line: 2257, column: 34, scope: !6813)
!6819 = !DILocation(line: 2257, column: 9, scope: !6813)
!6820 = !DILocation(line: 2257, column: 2, scope: !6813)
!6821 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !6822, file: !6822, line: 65, type: !6788, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6823)
!6822 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6823 = !{!6824, !6825}
!6824 = !DILocalVariable(name: "v", arg: 1, scope: !6821, file: !6822, line: 65, type: !6790)
!6825 = !DILocalVariable(name: "c", scope: !6826, file: !6822, line: 67, type: !748)
!6826 = distinct !DILexicalBlock(scope: !6821, file: !6822, line: 67, column: 9)
!6827 = !DILocation(line: 65, column: 64, scope: !6821)
!6828 = !DILocation(line: 67, column: 9, scope: !6826)
!6829 = !{i64 2148792583, i64 2148792622, i64 2148792643, i64 2148792680, i64 2148792703, i64 2148792712, i64 2148792786}
!6830 = !DILocation(line: 67, column: 9, scope: !6821)
!6831 = !DILocation(line: 67, column: 2, scope: !6821)
