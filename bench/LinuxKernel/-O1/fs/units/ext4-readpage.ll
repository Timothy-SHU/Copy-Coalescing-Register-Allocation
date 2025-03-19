; ModuleID = 'fs/ext4/readpage.c'
source_filename = "fs/ext4/readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.39 }
%union.anon.39 = type { i64 }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.16 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.folio = type { %union.anon.17, %union.anon.32, %union.anon.34 }
%union.anon.17 = type { %struct.page }
%struct.page = type { i64, %union.anon.22, %union.anon.31, %struct.atomic_t, [8 x i8] }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %union.anon.24, ptr, %union.anon.26, i64 }
%union.anon.24 = type { %struct.list_head }
%union.anon.26 = type { i64 }
%union.anon.31 = type { %struct.atomic_t }
%union.anon.32 = type { %struct.page }
%union.anon.34 = type { %struct.page }
%struct.anon.18 = type { i64, %union.anon.19, ptr, i64, %union.anon.21, %struct.atomic_t, %struct.atomic_t }
%union.anon.19 = type { %struct.list_head }
%union.anon.21 = type { ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, %union.anon.38, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.38 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.readahead_control = type { ptr, ptr, ptr, i64, i32, i32, i8, i64 }
%struct.bio_post_read_ctx = type { ptr, %struct.work_struct, i32, i32 }
%struct.anon.33 = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.folio_iter = type { ptr, i64, i64, ptr, i64, i32 }
%struct.anon.29 = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"bio_post_read_ctx\00", align 1, !dbg !0
@bio_post_read_ctx_cache = internal global ptr null, align 8, !dbg !7
@bio_post_read_ctx_pool = internal global ptr null, align 8, !dbg !5586
@.str.1 = private unnamed_addr constant [24 x i8] c"include/linux/pagemap.h\00", align 1, !dbg !5589
@.str.2 = private unnamed_addr constant [24 x i8] c"include/linux/highmem.h\00", align 1, !dbg !5592
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"include/linux/fsverity.h\00", align 1, !dbg !5595
@fs_bio_set = external dso_local global %struct.bio_set, align 8
@bio_post_read_processing.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5601
@bio_post_read_processing.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5608
@.str.5 = private unnamed_addr constant [20 x i8] c"include/linux/bio.h\00", align 1, !dbg !5610
@hugetlb_optimize_vmemmap_key = external dso_local global %struct.static_key_false, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ext4_mpage_readpages(ptr noundef %inode, ptr noundef %rac, ptr noundef %folio) #0 align 16 !dbg !5622 {
entry:
  %inode.addr = alloca ptr, align 8
  %rac.addr = alloca ptr, align 8
  %folio.addr = alloca ptr, align 8
  %bio = alloca ptr, align 8
  %last_block_in_bio = alloca i64, align 8
  %blkbits = alloca i32, align 4
  %blocks_per_page = alloca i32, align 4
  %blocksize = alloca i32, align 4
  %next_block = alloca i64, align 8
  %block_in_file = alloca i64, align 8
  %last_block = alloca i64, align 8
  %last_block_in_file = alloca i64, align 8
  %blocks = alloca [8 x i64], align 16
  %page_block = alloca i32, align 4
  %bdev = alloca ptr, align 8
  %length = alloca i32, align 4
  %relative_block = alloca i32, align 4
  %map = alloca %struct.ext4_map_blocks, align 8
  %nr_pages = alloca i32, align 4
  %fully_mapped = alloca i32, align 4
  %first_hole = alloca i32, align 4
  %map_offset = alloca i32, align 4
  %last = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5626, metadata !DIExpression()), !dbg !5675
  store ptr %rac, ptr %rac.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rac.addr, metadata !5627, metadata !DIExpression()), !dbg !5676
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5628, metadata !DIExpression()), !dbg !5677
  call void @llvm.lifetime.start.p0(i64 8, ptr %bio) #12, !dbg !5678
  call void @llvm.dbg.declare(metadata ptr %bio, metadata !5629, metadata !DIExpression()), !dbg !5679
  store ptr null, ptr %bio, align 8, !dbg !5679
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_block_in_bio) #12, !dbg !5680
  call void @llvm.dbg.declare(metadata ptr %last_block_in_bio, metadata !5630, metadata !DIExpression()), !dbg !5681
  store i64 0, ptr %last_block_in_bio, align 8, !dbg !5681
  call void @llvm.lifetime.start.p0(i64 4, ptr %blkbits) #12, !dbg !5682
  call void @llvm.dbg.declare(metadata ptr %blkbits, metadata !5631, metadata !DIExpression()), !dbg !5683
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5684
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21, !dbg !5685
  %1 = load i8, ptr %i_blkbits, align 2, !dbg !5685
  %conv = zext i8 %1 to i32, !dbg !5684
  store i32 %conv, ptr %blkbits, align 4, !dbg !5683
  call void @llvm.lifetime.start.p0(i64 4, ptr %blocks_per_page) #12, !dbg !5686
  call void @llvm.dbg.declare(metadata ptr %blocks_per_page, metadata !5632, metadata !DIExpression()), !dbg !5687
  %2 = load i32, ptr %blkbits, align 4, !dbg !5688
  %sh_prom = zext i32 %2 to i64, !dbg !5689
  %shr = lshr i64 4096, %sh_prom, !dbg !5689
  %conv1 = trunc i64 %shr to i32, !dbg !5690
  store i32 %conv1, ptr %blocks_per_page, align 4, !dbg !5687
  call void @llvm.lifetime.start.p0(i64 4, ptr %blocksize) #12, !dbg !5691
  call void @llvm.dbg.declare(metadata ptr %blocksize, metadata !5633, metadata !DIExpression()), !dbg !5692
  %3 = load i32, ptr %blkbits, align 4, !dbg !5693
  %shl = shl i32 1, %3, !dbg !5694
  store i32 %shl, ptr %blocksize, align 4, !dbg !5692
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_block) #12, !dbg !5695
  call void @llvm.dbg.declare(metadata ptr %next_block, metadata !5634, metadata !DIExpression()), !dbg !5696
  call void @llvm.lifetime.start.p0(i64 8, ptr %block_in_file) #12, !dbg !5697
  call void @llvm.dbg.declare(metadata ptr %block_in_file, metadata !5635, metadata !DIExpression()), !dbg !5698
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_block) #12, !dbg !5699
  call void @llvm.dbg.declare(metadata ptr %last_block, metadata !5636, metadata !DIExpression()), !dbg !5700
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_block_in_file) #12, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %last_block_in_file, metadata !5637, metadata !DIExpression()), !dbg !5702
  call void @llvm.lifetime.start.p0(i64 64, ptr %blocks) #12, !dbg !5703
  call void @llvm.dbg.declare(metadata ptr %blocks, metadata !5638, metadata !DIExpression()), !dbg !5704
  call void @llvm.lifetime.start.p0(i64 4, ptr %page_block) #12, !dbg !5705
  call void @llvm.dbg.declare(metadata ptr %page_block, metadata !5640, metadata !DIExpression()), !dbg !5706
  call void @llvm.lifetime.start.p0(i64 8, ptr %bdev) #12, !dbg !5707
  call void @llvm.dbg.declare(metadata ptr %bdev, metadata !5641, metadata !DIExpression()), !dbg !5708
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5709
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 9, !dbg !5710
  %5 = load ptr, ptr %i_sb, align 8, !dbg !5710
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 21, !dbg !5711
  %6 = load ptr, ptr %s_bdev, align 8, !dbg !5711
  store ptr %6, ptr %bdev, align 8, !dbg !5708
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #12, !dbg !5712
  call void @llvm.dbg.declare(metadata ptr %length, metadata !5642, metadata !DIExpression()), !dbg !5713
  call void @llvm.lifetime.start.p0(i64 4, ptr %relative_block) #12, !dbg !5714
  call void @llvm.dbg.declare(metadata ptr %relative_block, metadata !5643, metadata !DIExpression()), !dbg !5715
  store i32 0, ptr %relative_block, align 4, !dbg !5715
  call void @llvm.lifetime.start.p0(i64 24, ptr %map) #12, !dbg !5716
  call void @llvm.dbg.declare(metadata ptr %map, metadata !5644, metadata !DIExpression()), !dbg !5717
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_pages) #12, !dbg !5718
  call void @llvm.dbg.declare(metadata ptr %nr_pages, metadata !5654, metadata !DIExpression()), !dbg !5719
  %7 = load ptr, ptr %rac.addr, align 8, !dbg !5720
  %tobool = icmp ne ptr %7, null, !dbg !5720
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5720

cond.true:                                        ; preds = %entry
  %8 = load ptr, ptr %rac.addr, align 8, !dbg !5721
  %call = call i32 @readahead_count(ptr noundef %8) #13, !dbg !5722
  br label %cond.end, !dbg !5720

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5720

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 1, %cond.false ], !dbg !5720
  store i32 %cond, ptr %nr_pages, align 4, !dbg !5719
  %m_pblk = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 0, !dbg !5723
  store i64 0, ptr %m_pblk, align 8, !dbg !5724
  %m_lblk = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 1, !dbg !5725
  store i32 0, ptr %m_lblk, align 8, !dbg !5726
  %m_len = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2, !dbg !5727
  store i32 0, ptr %m_len, align 4, !dbg !5728
  %m_flags = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 3, !dbg !5729
  store i32 0, ptr %m_flags, align 8, !dbg !5730
  br label %for.cond, !dbg !5731

for.cond:                                         ; preds = %for.inc209, %cond.end
  %9 = load i32, ptr %nr_pages, align 4, !dbg !5732
  %tobool2 = icmp ne i32 %9, 0, !dbg !5733
  br i1 %tobool2, label %for.body, label %for.end210, !dbg !5733

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %fully_mapped) #12, !dbg !5734
  call void @llvm.dbg.declare(metadata ptr %fully_mapped, metadata !5655, metadata !DIExpression()), !dbg !5735
  store i32 1, ptr %fully_mapped, align 4, !dbg !5735
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_hole) #12, !dbg !5736
  call void @llvm.dbg.declare(metadata ptr %first_hole, metadata !5659, metadata !DIExpression()), !dbg !5737
  %10 = load i32, ptr %blocks_per_page, align 4, !dbg !5738
  store i32 %10, ptr %first_hole, align 4, !dbg !5737
  %11 = load ptr, ptr %rac.addr, align 8, !dbg !5739
  %tobool3 = icmp ne ptr %11, null, !dbg !5739
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5741

if.then:                                          ; preds = %for.body
  %12 = load ptr, ptr %rac.addr, align 8, !dbg !5742
  %call4 = call ptr @readahead_folio(ptr noundef %12) #13, !dbg !5743
  store ptr %call4, ptr %folio.addr, align 8, !dbg !5744
  br label %if.end, !dbg !5745

if.end:                                           ; preds = %if.then, %for.body
  %13 = load ptr, ptr %folio.addr, align 8, !dbg !5746
  %14 = getelementptr inbounds %struct.folio, ptr %13, i32 0, i32 0, !dbg !5747
  %flags = getelementptr inbounds %struct.anon.18, ptr %14, i32 0, i32 0, !dbg !5747
  call void @prefetchw(ptr noundef %flags) #13, !dbg !5748
  %15 = load ptr, ptr %folio.addr, align 8, !dbg !5749
  %call5 = call ptr @folio_get_private(ptr noundef %15) #13, !dbg !5749
  %tobool6 = icmp ne ptr %call5, null, !dbg !5749
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5751

if.then7:                                         ; preds = %if.end
  br label %confused, !dbg !5752

if.end8:                                          ; preds = %if.end
  %16 = load ptr, ptr %folio.addr, align 8, !dbg !5753
  %17 = getelementptr inbounds %struct.folio, ptr %16, i32 0, i32 0, !dbg !5754
  %index = getelementptr inbounds %struct.anon.18, ptr %17, i32 0, i32 3, !dbg !5754
  %18 = load i64, ptr %index, align 16, !dbg !5754
  %19 = load i32, ptr %blkbits, align 4, !dbg !5755
  %sub = sub i32 12, %19, !dbg !5756
  %sh_prom9 = zext i32 %sub to i64, !dbg !5757
  %shl10 = shl i64 %18, %sh_prom9, !dbg !5757
  store i64 %shl10, ptr %next_block, align 8, !dbg !5758
  store i64 %shl10, ptr %block_in_file, align 8, !dbg !5759
  %20 = load i64, ptr %block_in_file, align 8, !dbg !5760
  %21 = load i32, ptr %nr_pages, align 4, !dbg !5761
  %22 = load i32, ptr %blocks_per_page, align 4, !dbg !5762
  %mul = mul i32 %21, %22, !dbg !5763
  %conv11 = zext i32 %mul to i64, !dbg !5761
  %add = add i64 %20, %conv11, !dbg !5764
  store i64 %add, ptr %last_block, align 8, !dbg !5765
  %23 = load ptr, ptr %inode.addr, align 8, !dbg !5766
  %call12 = call i64 @ext4_readpage_limit(ptr noundef %23) #13, !dbg !5767
  %24 = load i32, ptr %blocksize, align 4, !dbg !5768
  %conv13 = zext i32 %24 to i64, !dbg !5768
  %add14 = add i64 %call12, %conv13, !dbg !5769
  %sub15 = sub i64 %add14, 1, !dbg !5770
  %25 = load i32, ptr %blkbits, align 4, !dbg !5771
  %sh_prom16 = zext i32 %25 to i64, !dbg !5772
  %shr17 = ashr i64 %sub15, %sh_prom16, !dbg !5772
  store i64 %shr17, ptr %last_block_in_file, align 8, !dbg !5773
  %26 = load i64, ptr %last_block, align 8, !dbg !5774
  %27 = load i64, ptr %last_block_in_file, align 8, !dbg !5776
  %cmp = icmp ugt i64 %26, %27, !dbg !5777
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !5778

if.then19:                                        ; preds = %if.end8
  %28 = load i64, ptr %last_block_in_file, align 8, !dbg !5779
  store i64 %28, ptr %last_block, align 8, !dbg !5780
  br label %if.end20, !dbg !5781

if.end20:                                         ; preds = %if.then19, %if.end8
  store i32 0, ptr %page_block, align 4, !dbg !5782
  %m_flags21 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 3, !dbg !5783
  %29 = load i32, ptr %m_flags21, align 8, !dbg !5783
  %conv22 = zext i32 %29 to i64, !dbg !5784
  %and = and i64 %conv22, 16, !dbg !5785
  %tobool23 = icmp ne i64 %and, 0, !dbg !5785
  br i1 %tobool23, label %land.lhs.true, label %if.end62, !dbg !5786

land.lhs.true:                                    ; preds = %if.end20
  %30 = load i64, ptr %block_in_file, align 8, !dbg !5787
  %m_lblk24 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 1, !dbg !5788
  %31 = load i32, ptr %m_lblk24, align 8, !dbg !5788
  %conv25 = zext i32 %31 to i64, !dbg !5789
  %cmp26 = icmp ugt i64 %30, %conv25, !dbg !5790
  br i1 %cmp26, label %land.lhs.true28, label %if.end62, !dbg !5791

land.lhs.true28:                                  ; preds = %land.lhs.true
  %32 = load i64, ptr %block_in_file, align 8, !dbg !5792
  %m_lblk29 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 1, !dbg !5793
  %33 = load i32, ptr %m_lblk29, align 8, !dbg !5793
  %m_len30 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2, !dbg !5794
  %34 = load i32, ptr %m_len30, align 4, !dbg !5794
  %add31 = add i32 %33, %34, !dbg !5795
  %conv32 = zext i32 %add31 to i64, !dbg !5796
  %cmp33 = icmp ult i64 %32, %conv32, !dbg !5797
  br i1 %cmp33, label %if.then35, label %if.end62, !dbg !5798

if.then35:                                        ; preds = %land.lhs.true28
  call void @llvm.lifetime.start.p0(i64 4, ptr %map_offset) #12, !dbg !5799
  call void @llvm.dbg.declare(metadata ptr %map_offset, metadata !5660, metadata !DIExpression()), !dbg !5800
  %35 = load i64, ptr %block_in_file, align 8, !dbg !5801
  %m_lblk36 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 1, !dbg !5802
  %36 = load i32, ptr %m_lblk36, align 8, !dbg !5802
  %conv37 = zext i32 %36 to i64, !dbg !5803
  %sub38 = sub i64 %35, %conv37, !dbg !5804
  %conv39 = trunc i64 %sub38 to i32, !dbg !5801
  store i32 %conv39, ptr %map_offset, align 4, !dbg !5800
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #12, !dbg !5805
  call void @llvm.dbg.declare(metadata ptr %last, metadata !5663, metadata !DIExpression()), !dbg !5806
  %m_len40 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2, !dbg !5807
  %37 = load i32, ptr %m_len40, align 4, !dbg !5807
  %38 = load i32, ptr %map_offset, align 4, !dbg !5808
  %sub41 = sub i32 %37, %38, !dbg !5809
  store i32 %sub41, ptr %last, align 4, !dbg !5806
  store i32 0, ptr %relative_block, align 4, !dbg !5810
  br label %for.cond42, !dbg !5812

for.cond42:                                       ; preds = %for.inc, %if.then35
  %39 = load i32, ptr %relative_block, align 4, !dbg !5813
  %40 = load i32, ptr %last, align 4, !dbg !5817
  %cmp43 = icmp eq i32 %39, %40, !dbg !5818
  br i1 %cmp43, label %if.then45, label %if.end50, !dbg !5819

if.then45:                                        ; preds = %for.cond42
  %m_flags46 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 3, !dbg !5820
  %41 = load i32, ptr %m_flags46, align 8, !dbg !5822
  %conv47 = zext i32 %41 to i64, !dbg !5822
  %and48 = and i64 %conv47, -17, !dbg !5822
  %conv49 = trunc i64 %and48 to i32, !dbg !5822
  store i32 %conv49, ptr %m_flags46, align 8, !dbg !5822
  br label %for.end, !dbg !5823

if.end50:                                         ; preds = %for.cond42
  %42 = load i32, ptr %page_block, align 4, !dbg !5824
  %43 = load i32, ptr %blocks_per_page, align 4, !dbg !5826
  %cmp51 = icmp eq i32 %42, %43, !dbg !5827
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !5828

if.then53:                                        ; preds = %if.end50
  br label %for.end, !dbg !5829

if.end54:                                         ; preds = %if.end50
  %m_pblk55 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 0, !dbg !5830
  %44 = load i64, ptr %m_pblk55, align 8, !dbg !5830
  %45 = load i32, ptr %map_offset, align 4, !dbg !5831
  %conv56 = zext i32 %45 to i64, !dbg !5831
  %add57 = add i64 %44, %conv56, !dbg !5832
  %46 = load i32, ptr %relative_block, align 4, !dbg !5833
  %conv58 = zext i32 %46 to i64, !dbg !5833
  %add59 = add i64 %add57, %conv58, !dbg !5834
  %47 = load i32, ptr %page_block, align 4, !dbg !5835
  %idxprom = zext i32 %47 to i64, !dbg !5836
  %arrayidx = getelementptr [8 x i64], ptr %blocks, i64 0, i64 %idxprom, !dbg !5836
  store i64 %add59, ptr %arrayidx, align 8, !dbg !5837
  %48 = load i32, ptr %page_block, align 4, !dbg !5838
  %inc = add i32 %48, 1, !dbg !5838
  store i32 %inc, ptr %page_block, align 4, !dbg !5838
  %49 = load i64, ptr %block_in_file, align 8, !dbg !5839
  %inc60 = add i64 %49, 1, !dbg !5839
  store i64 %inc60, ptr %block_in_file, align 8, !dbg !5839
  br label %for.inc, !dbg !5840

for.inc:                                          ; preds = %if.end54
  %50 = load i32, ptr %relative_block, align 4, !dbg !5841
  %inc61 = add i32 %50, 1, !dbg !5841
  store i32 %inc61, ptr %relative_block, align 4, !dbg !5841
  br label %for.cond42, !dbg !5842, !llvm.loop !5843

for.end:                                          ; preds = %if.then53, %if.then45
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #12, !dbg !5847
  call void @llvm.lifetime.end.p0(i64 4, ptr %map_offset) #12, !dbg !5847
  br label %if.end62, !dbg !5848

if.end62:                                         ; preds = %for.end, %land.lhs.true28, %land.lhs.true, %if.end20
  br label %while.cond, !dbg !5849

while.cond:                                       ; preds = %for.end131, %if.end89, %if.end62
  %51 = load i32, ptr %page_block, align 4, !dbg !5850
  %52 = load i32, ptr %blocks_per_page, align 4, !dbg !5851
  %cmp63 = icmp ult i32 %51, %52, !dbg !5852
  br i1 %cmp63, label %while.body, label %while.end, !dbg !5849

while.body:                                       ; preds = %while.cond
  %53 = load i64, ptr %block_in_file, align 8, !dbg !5853
  %54 = load i64, ptr %last_block, align 8, !dbg !5854
  %cmp65 = icmp ult i64 %53, %54, !dbg !5855
  br i1 %cmp65, label %if.then67, label %if.end79, !dbg !5856

if.then67:                                        ; preds = %while.body
  %55 = load i64, ptr %block_in_file, align 8, !dbg !5857
  %conv68 = trunc i64 %55 to i32, !dbg !5857
  %m_lblk69 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 1, !dbg !5858
  store i32 %conv68, ptr %m_lblk69, align 8, !dbg !5859
  %56 = load i64, ptr %last_block, align 8, !dbg !5860
  %57 = load i64, ptr %block_in_file, align 8, !dbg !5861
  %sub70 = sub i64 %56, %57, !dbg !5862
  %conv71 = trunc i64 %sub70 to i32, !dbg !5860
  %m_len72 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2, !dbg !5863
  store i32 %conv71, ptr %m_len72, align 4, !dbg !5864
  %58 = load ptr, ptr %inode.addr, align 8, !dbg !5865
  %call73 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %58, ptr noundef %map, i32 noundef 0) #13, !dbg !5866
  %cmp74 = icmp slt i32 %call73, 0, !dbg !5867
  br i1 %cmp74, label %if.then76, label %if.end78, !dbg !5868

if.then76:                                        ; preds = %if.then67
  br label %set_error_page, !dbg !5869

set_error_page:                                   ; preds = %if.then146, %if.then76
  call void @llvm.dbg.label(metadata !5664), !dbg !5870
  %59 = load ptr, ptr %folio.addr, align 8, !dbg !5871
  %60 = load ptr, ptr %folio.addr, align 8, !dbg !5872
  %call77 = call i64 @folio_size(ptr noundef %60) #13, !dbg !5873
  call void @folio_zero_segment(ptr noundef %59, i64 noundef 0, i64 noundef %call77) #13, !dbg !5874
  %61 = load ptr, ptr %folio.addr, align 8, !dbg !5875
  call void @folio_unlock(ptr noundef %61) #13, !dbg !5876
  br label %next_page, !dbg !5877

if.end78:                                         ; preds = %if.then67
  br label %if.end79, !dbg !5878

if.end79:                                         ; preds = %if.end78, %while.body
  %m_flags80 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 3, !dbg !5879
  %62 = load i32, ptr %m_flags80, align 8, !dbg !5879
  %conv81 = zext i32 %62 to i64, !dbg !5881
  %and82 = and i64 %conv81, 16, !dbg !5882
  %cmp83 = icmp eq i64 %and82, 0, !dbg !5883
  br i1 %cmp83, label %if.then85, label %if.end92, !dbg !5884

if.then85:                                        ; preds = %if.end79
  store i32 0, ptr %fully_mapped, align 4, !dbg !5885
  %63 = load i32, ptr %first_hole, align 4, !dbg !5887
  %64 = load i32, ptr %blocks_per_page, align 4, !dbg !5889
  %cmp86 = icmp eq i32 %63, %64, !dbg !5890
  br i1 %cmp86, label %if.then88, label %if.end89, !dbg !5891

if.then88:                                        ; preds = %if.then85
  %65 = load i32, ptr %page_block, align 4, !dbg !5892
  store i32 %65, ptr %first_hole, align 4, !dbg !5893
  br label %if.end89, !dbg !5894

if.end89:                                         ; preds = %if.then88, %if.then85
  %66 = load i32, ptr %page_block, align 4, !dbg !5895
  %inc90 = add i32 %66, 1, !dbg !5895
  store i32 %inc90, ptr %page_block, align 4, !dbg !5895
  %67 = load i64, ptr %block_in_file, align 8, !dbg !5896
  %inc91 = add i64 %67, 1, !dbg !5896
  store i64 %inc91, ptr %block_in_file, align 8, !dbg !5896
  br label %while.cond, !dbg !5897, !llvm.loop !5898

if.end92:                                         ; preds = %if.end79
  %68 = load i32, ptr %first_hole, align 4, !dbg !5901
  %69 = load i32, ptr %blocks_per_page, align 4, !dbg !5903
  %cmp93 = icmp ne i32 %68, %69, !dbg !5904
  br i1 %cmp93, label %if.then95, label %if.end96, !dbg !5905

if.then95:                                        ; preds = %if.end92
  br label %confused, !dbg !5906

if.end96:                                         ; preds = %if.end92
  %70 = load i32, ptr %page_block, align 4, !dbg !5907
  %tobool97 = icmp ne i32 %70, 0, !dbg !5907
  br i1 %tobool97, label %land.lhs.true98, label %if.end107, !dbg !5909

land.lhs.true98:                                  ; preds = %if.end96
  %71 = load i32, ptr %page_block, align 4, !dbg !5910
  %sub99 = sub i32 %71, 1, !dbg !5911
  %idxprom100 = zext i32 %sub99 to i64, !dbg !5912
  %arrayidx101 = getelementptr [8 x i64], ptr %blocks, i64 0, i64 %idxprom100, !dbg !5912
  %72 = load i64, ptr %arrayidx101, align 8, !dbg !5912
  %m_pblk102 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 0, !dbg !5913
  %73 = load i64, ptr %m_pblk102, align 8, !dbg !5913
  %sub103 = sub i64 %73, 1, !dbg !5914
  %cmp104 = icmp ne i64 %72, %sub103, !dbg !5915
  br i1 %cmp104, label %if.then106, label %if.end107, !dbg !5916

if.then106:                                       ; preds = %land.lhs.true98
  br label %confused, !dbg !5917

if.end107:                                        ; preds = %land.lhs.true98, %if.end96
  store i32 0, ptr %relative_block, align 4, !dbg !5918
  br label %for.cond108, !dbg !5920

for.cond108:                                      ; preds = %for.inc129, %if.end107
  %74 = load i32, ptr %relative_block, align 4, !dbg !5921
  %m_len109 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2, !dbg !5925
  %75 = load i32, ptr %m_len109, align 4, !dbg !5925
  %cmp110 = icmp eq i32 %74, %75, !dbg !5926
  br i1 %cmp110, label %if.then112, label %if.else, !dbg !5927

if.then112:                                       ; preds = %for.cond108
  %m_flags113 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 3, !dbg !5928
  %76 = load i32, ptr %m_flags113, align 8, !dbg !5930
  %conv114 = zext i32 %76 to i64, !dbg !5930
  %and115 = and i64 %conv114, -17, !dbg !5930
  %conv116 = trunc i64 %and115 to i32, !dbg !5930
  store i32 %conv116, ptr %m_flags113, align 8, !dbg !5930
  br label %for.end131, !dbg !5931

if.else:                                          ; preds = %for.cond108
  %77 = load i32, ptr %page_block, align 4, !dbg !5932
  %78 = load i32, ptr %blocks_per_page, align 4, !dbg !5934
  %cmp117 = icmp eq i32 %77, %78, !dbg !5935
  br i1 %cmp117, label %if.then119, label %if.end120, !dbg !5936

if.then119:                                       ; preds = %if.else
  br label %for.end131, !dbg !5937

if.end120:                                        ; preds = %if.else
  br label %if.end121

if.end121:                                        ; preds = %if.end120
  %m_pblk122 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 0, !dbg !5938
  %79 = load i64, ptr %m_pblk122, align 8, !dbg !5938
  %80 = load i32, ptr %relative_block, align 4, !dbg !5939
  %conv123 = zext i32 %80 to i64, !dbg !5939
  %add124 = add i64 %79, %conv123, !dbg !5940
  %81 = load i32, ptr %page_block, align 4, !dbg !5941
  %idxprom125 = zext i32 %81 to i64, !dbg !5942
  %arrayidx126 = getelementptr [8 x i64], ptr %blocks, i64 0, i64 %idxprom125, !dbg !5942
  store i64 %add124, ptr %arrayidx126, align 8, !dbg !5943
  %82 = load i32, ptr %page_block, align 4, !dbg !5944
  %inc127 = add i32 %82, 1, !dbg !5944
  store i32 %inc127, ptr %page_block, align 4, !dbg !5944
  %83 = load i64, ptr %block_in_file, align 8, !dbg !5945
  %inc128 = add i64 %83, 1, !dbg !5945
  store i64 %inc128, ptr %block_in_file, align 8, !dbg !5945
  br label %for.inc129, !dbg !5946

for.inc129:                                       ; preds = %if.end121
  %84 = load i32, ptr %relative_block, align 4, !dbg !5947
  %inc130 = add i32 %84, 1, !dbg !5947
  store i32 %inc130, ptr %relative_block, align 4, !dbg !5947
  br label %for.cond108, !dbg !5948, !llvm.loop !5949

for.end131:                                       ; preds = %if.then119, %if.then112
  br label %while.cond, !dbg !5849, !llvm.loop !5898

while.end:                                        ; preds = %while.cond
  %85 = load i32, ptr %first_hole, align 4, !dbg !5952
  %86 = load i32, ptr %blocks_per_page, align 4, !dbg !5954
  %cmp132 = icmp ne i32 %85, %86, !dbg !5955
  br i1 %cmp132, label %if.then134, label %if.else149, !dbg !5956

if.then134:                                       ; preds = %while.end
  %87 = load ptr, ptr %folio.addr, align 8, !dbg !5957
  %88 = load i32, ptr %first_hole, align 4, !dbg !5959
  %89 = load i32, ptr %blkbits, align 4, !dbg !5960
  %shl135 = shl i32 %88, %89, !dbg !5961
  %conv136 = zext i32 %shl135 to i64, !dbg !5959
  %90 = load ptr, ptr %folio.addr, align 8, !dbg !5962
  %call137 = call i64 @folio_size(ptr noundef %90) #13, !dbg !5963
  call void @folio_zero_segment(ptr noundef %87, i64 noundef %conv136, i64 noundef %call137) #13, !dbg !5964
  %91 = load i32, ptr %first_hole, align 4, !dbg !5965
  %cmp138 = icmp eq i32 %91, 0, !dbg !5967
  br i1 %cmp138, label %if.then140, label %if.end148, !dbg !5968

if.then140:                                       ; preds = %if.then134
  %92 = load ptr, ptr %inode.addr, align 8, !dbg !5969
  %93 = load ptr, ptr %folio.addr, align 8, !dbg !5972
  %94 = getelementptr inbounds %struct.folio, ptr %93, i32 0, i32 0, !dbg !5973
  %index141 = getelementptr inbounds %struct.anon.18, ptr %94, i32 0, i32 3, !dbg !5973
  %95 = load i64, ptr %index141, align 16, !dbg !5973
  %call142 = call zeroext i1 @ext4_need_verity(ptr noundef %92, i64 noundef %95) #13, !dbg !5974
  br i1 %call142, label %land.lhs.true144, label %if.end147, !dbg !5975

land.lhs.true144:                                 ; preds = %if.then140
  %96 = load ptr, ptr %folio.addr, align 8, !dbg !5976
  %call145 = call zeroext i1 @fsverity_verify_folio(ptr noundef %96) #13, !dbg !5977
  br i1 %call145, label %if.end147, label %if.then146, !dbg !5978

if.then146:                                       ; preds = %land.lhs.true144
  br label %set_error_page, !dbg !5979

if.end147:                                        ; preds = %land.lhs.true144, %if.then140
  %97 = load ptr, ptr %folio.addr, align 8, !dbg !5980
  call void @folio_mark_uptodate(ptr noundef %97) #13, !dbg !5981
  %98 = load ptr, ptr %folio.addr, align 8, !dbg !5982
  call void @folio_unlock(ptr noundef %98) #13, !dbg !5983
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5984

if.end148:                                        ; preds = %if.then134
  br label %if.end153, !dbg !5985

if.else149:                                       ; preds = %while.end
  %99 = load i32, ptr %fully_mapped, align 4, !dbg !5986
  %tobool150 = icmp ne i32 %99, 0, !dbg !5986
  br i1 %tobool150, label %if.then151, label %if.end152, !dbg !5988

if.then151:                                       ; preds = %if.else149
  %100 = load ptr, ptr %folio.addr, align 8, !dbg !5989
  call void @folio_set_mappedtodisk(ptr noundef %100) #13, !dbg !5991
  br label %if.end152, !dbg !5992

if.end152:                                        ; preds = %if.then151, %if.else149
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.end148
  %101 = load ptr, ptr %bio, align 8, !dbg !5993
  %tobool154 = icmp ne ptr %101, null, !dbg !5993
  br i1 %tobool154, label %land.lhs.true155, label %if.end162, !dbg !5994

land.lhs.true155:                                 ; preds = %if.end153
  %102 = load i64, ptr %last_block_in_bio, align 8, !dbg !5995
  %arrayidx156 = getelementptr [8 x i64], ptr %blocks, i64 0, i64 0, !dbg !5996
  %103 = load i64, ptr %arrayidx156, align 16, !dbg !5996
  %sub157 = sub i64 %103, 1, !dbg !5997
  %cmp158 = icmp ne i64 %102, %sub157, !dbg !5998
  br i1 %cmp158, label %if.then161, label %lor.lhs.false, !dbg !5999

lor.lhs.false:                                    ; preds = %land.lhs.true155
  %104 = load ptr, ptr %bio, align 8, !dbg !6000
  %105 = load ptr, ptr %inode.addr, align 8, !dbg !6001
  %106 = load i64, ptr %next_block, align 8, !dbg !6002
  %call160 = call zeroext i1 @fscrypt_mergeable_bio(ptr noundef %104, ptr noundef %105, i64 noundef %106) #13, !dbg !6003
  br i1 %call160, label %if.end162, label %if.then161, !dbg !6004

if.then161:                                       ; preds = %lor.lhs.false, %land.lhs.true155
  br label %submit_and_realloc, !dbg !6005

submit_and_realloc:                               ; preds = %if.then181, %if.then161
  call void @llvm.dbg.label(metadata !5670), !dbg !6006
  %107 = load ptr, ptr %bio, align 8, !dbg !6007
  call void @submit_bio(ptr noundef %107) #13, !dbg !6008
  store ptr null, ptr %bio, align 8, !dbg !6009
  br label %if.end162, !dbg !6010

if.end162:                                        ; preds = %submit_and_realloc, %lor.lhs.false, %if.end153
  %108 = load ptr, ptr %bio, align 8, !dbg !6011
  %cmp163 = icmp eq ptr %108, null, !dbg !6013
  br i1 %cmp163, label %if.then165, label %if.end177, !dbg !6014

if.then165:                                       ; preds = %if.end162
  %109 = load ptr, ptr %bdev, align 8, !dbg !6015
  %110 = load i32, ptr %nr_pages, align 4, !dbg !6017
  %call166 = call i32 @bio_max_segs(i32 noundef %110) #13, !dbg !6018
  %conv167 = trunc i32 %call166 to i16, !dbg !6018
  %call168 = call ptr @bio_alloc(ptr noundef %109, i16 noundef zeroext %conv167, i32 noundef 0, i32 noundef 3264) #13, !dbg !6019
  store ptr %call168, ptr %bio, align 8, !dbg !6020
  %111 = load ptr, ptr %bio, align 8, !dbg !6021
  %112 = load ptr, ptr %inode.addr, align 8, !dbg !6022
  %113 = load i64, ptr %next_block, align 8, !dbg !6023
  call void @fscrypt_set_bio_crypt_ctx(ptr noundef %111, ptr noundef %112, i64 noundef %113, i32 noundef 3264) #13, !dbg !6024
  %114 = load ptr, ptr %bio, align 8, !dbg !6025
  %115 = load ptr, ptr %inode.addr, align 8, !dbg !6026
  %116 = load ptr, ptr %folio.addr, align 8, !dbg !6027
  %117 = getelementptr inbounds %struct.folio, ptr %116, i32 0, i32 0, !dbg !6028
  %index169 = getelementptr inbounds %struct.anon.18, ptr %117, i32 0, i32 3, !dbg !6028
  %118 = load i64, ptr %index169, align 16, !dbg !6028
  call void @ext4_set_bio_post_read_ctx(ptr noundef %114, ptr noundef %115, i64 noundef %118) #13, !dbg !6029
  %arrayidx170 = getelementptr [8 x i64], ptr %blocks, i64 0, i64 0, !dbg !6030
  %119 = load i64, ptr %arrayidx170, align 16, !dbg !6030
  %120 = load i32, ptr %blkbits, align 4, !dbg !6031
  %sub171 = sub i32 %120, 9, !dbg !6032
  %sh_prom172 = zext i32 %sub171 to i64, !dbg !6033
  %shl173 = shl i64 %119, %sh_prom172, !dbg !6033
  %121 = load ptr, ptr %bio, align 8, !dbg !6034
  %bi_iter = getelementptr inbounds %struct.bio, ptr %121, i32 0, i32 7, !dbg !6035
  %bi_sector = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter, i32 0, i32 0, !dbg !6036
  store i64 %shl173, ptr %bi_sector, align 8, !dbg !6037
  %122 = load ptr, ptr %bio, align 8, !dbg !6038
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %122, i32 0, i32 9, !dbg !6039
  store ptr @mpage_end_io, ptr %bi_end_io, align 8, !dbg !6040
  %123 = load ptr, ptr %rac.addr, align 8, !dbg !6041
  %tobool174 = icmp ne ptr %123, null, !dbg !6041
  br i1 %tobool174, label %if.then175, label %if.end176, !dbg !6043

if.then175:                                       ; preds = %if.then165
  %124 = load ptr, ptr %bio, align 8, !dbg !6044
  %bi_opf = getelementptr inbounds %struct.bio, ptr %124, i32 0, i32 2, !dbg !6045
  %125 = load i32, ptr %bi_opf, align 8, !dbg !6046
  %or = or i32 %125, 524288, !dbg !6046
  store i32 %or, ptr %bi_opf, align 8, !dbg !6046
  br label %if.end176, !dbg !6044

if.end176:                                        ; preds = %if.then175, %if.then165
  br label %if.end177, !dbg !6047

if.end177:                                        ; preds = %if.end176, %if.end162
  %126 = load i32, ptr %first_hole, align 4, !dbg !6048
  %127 = load i32, ptr %blkbits, align 4, !dbg !6049
  %shl178 = shl i32 %126, %127, !dbg !6050
  store i32 %shl178, ptr %length, align 4, !dbg !6051
  %128 = load ptr, ptr %bio, align 8, !dbg !6052
  %129 = load ptr, ptr %folio.addr, align 8, !dbg !6054
  %130 = load i32, ptr %length, align 4, !dbg !6055
  %conv179 = sext i32 %130 to i64, !dbg !6055
  %call180 = call zeroext i1 @bio_add_folio(ptr noundef %128, ptr noundef %129, i64 noundef %conv179, i64 noundef 0) #13, !dbg !6056
  br i1 %call180, label %if.end182, label %if.then181, !dbg !6057

if.then181:                                       ; preds = %if.end177
  br label %submit_and_realloc, !dbg !6058

if.end182:                                        ; preds = %if.end177
  %m_flags183 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 3, !dbg !6059
  %131 = load i32, ptr %m_flags183, align 8, !dbg !6059
  %conv184 = zext i32 %131 to i64, !dbg !6061
  %and185 = and i64 %conv184, 512, !dbg !6062
  %tobool186 = icmp ne i64 %and185, 0, !dbg !6062
  br i1 %tobool186, label %land.lhs.true187, label %lor.lhs.false191, !dbg !6063

land.lhs.true187:                                 ; preds = %if.end182
  %132 = load i32, ptr %relative_block, align 4, !dbg !6064
  %m_len188 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2, !dbg !6065
  %133 = load i32, ptr %m_len188, align 4, !dbg !6065
  %cmp189 = icmp eq i32 %132, %133, !dbg !6066
  br i1 %cmp189, label %if.then194, label %lor.lhs.false191, !dbg !6067

lor.lhs.false191:                                 ; preds = %land.lhs.true187, %if.end182
  %134 = load i32, ptr %first_hole, align 4, !dbg !6068
  %135 = load i32, ptr %blocks_per_page, align 4, !dbg !6069
  %cmp192 = icmp ne i32 %134, %135, !dbg !6070
  br i1 %cmp192, label %if.then194, label %if.else195, !dbg !6071

if.then194:                                       ; preds = %lor.lhs.false191, %land.lhs.true187
  %136 = load ptr, ptr %bio, align 8, !dbg !6072
  call void @submit_bio(ptr noundef %136) #13, !dbg !6074
  store ptr null, ptr %bio, align 8, !dbg !6075
  br label %if.end199, !dbg !6076

if.else195:                                       ; preds = %lor.lhs.false191
  %137 = load i32, ptr %blocks_per_page, align 4, !dbg !6077
  %sub196 = sub i32 %137, 1, !dbg !6078
  %idxprom197 = zext i32 %sub196 to i64, !dbg !6079
  %arrayidx198 = getelementptr [8 x i64], ptr %blocks, i64 0, i64 %idxprom197, !dbg !6079
  %138 = load i64, ptr %arrayidx198, align 8, !dbg !6079
  store i64 %138, ptr %last_block_in_bio, align 8, !dbg !6080
  br label %if.end199

if.end199:                                        ; preds = %if.else195, %if.then194
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6081

confused:                                         ; preds = %if.then106, %if.then95, %if.then7
  call void @llvm.dbg.label(metadata !5673), !dbg !6082
  %139 = load ptr, ptr %bio, align 8, !dbg !6083
  %tobool200 = icmp ne ptr %139, null, !dbg !6083
  br i1 %tobool200, label %if.then201, label %if.end202, !dbg !6085

if.then201:                                       ; preds = %confused
  %140 = load ptr, ptr %bio, align 8, !dbg !6086
  call void @submit_bio(ptr noundef %140) #13, !dbg !6088
  store ptr null, ptr %bio, align 8, !dbg !6089
  br label %if.end202, !dbg !6090

if.end202:                                        ; preds = %if.then201, %confused
  %141 = load ptr, ptr %folio.addr, align 8, !dbg !6091
  %call203 = call zeroext i1 @folio_test_uptodate(ptr noundef %141) #13, !dbg !6093
  br i1 %call203, label %if.else206, label %if.then204, !dbg !6094

if.then204:                                       ; preds = %if.end202
  %142 = load ptr, ptr %folio.addr, align 8, !dbg !6095
  %call205 = call i32 @block_read_full_folio(ptr noundef %142, ptr noundef @ext4_get_block) #13, !dbg !6096
  br label %if.end207, !dbg !6096

if.else206:                                       ; preds = %if.end202
  %143 = load ptr, ptr %folio.addr, align 8, !dbg !6097
  call void @folio_unlock(ptr noundef %143) #13, !dbg !6098
  br label %if.end207

if.end207:                                        ; preds = %if.else206, %if.then204
  br label %next_page, !dbg !6099

next_page:                                        ; preds = %if.end207, %set_error_page
  call void @llvm.dbg.label(metadata !5674), !dbg !6100
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6101
  br label %cleanup, !dbg !6101

cleanup:                                          ; preds = %next_page, %if.end199, %if.end147
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_hole) #12, !dbg !6101
  call void @llvm.lifetime.end.p0(i64 4, ptr %fully_mapped) #12, !dbg !6101
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc209
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc209, !dbg !6102

for.inc209:                                       ; preds = %cleanup.cont, %cleanup
  %144 = load i32, ptr %nr_pages, align 4, !dbg !6103
  %dec = add i32 %144, -1, !dbg !6103
  store i32 %dec, ptr %nr_pages, align 4, !dbg !6103
  br label %for.cond, !dbg !6104, !llvm.loop !6105

for.end210:                                       ; preds = %for.cond
  %145 = load ptr, ptr %bio, align 8, !dbg !6107
  %tobool211 = icmp ne ptr %145, null, !dbg !6107
  br i1 %tobool211, label %if.then212, label %if.end213, !dbg !6109

if.then212:                                       ; preds = %for.end210
  %146 = load ptr, ptr %bio, align 8, !dbg !6110
  call void @submit_bio(ptr noundef %146) #13, !dbg !6111
  br label %if.end213, !dbg !6111

if.end213:                                        ; preds = %if.then212, %for.end210
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_pages) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 24, ptr %map) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 4, ptr %relative_block) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 8, ptr %bdev) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 4, ptr %page_block) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 64, ptr %blocks) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_block_in_file) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_block) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 8, ptr %block_in_file) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_block) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 4, ptr %blocksize) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 4, ptr %blocks_per_page) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 4, ptr %blkbits) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_block_in_bio) #12, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 8, ptr %bio) #12, !dbg !6112
  ret i32 0, !dbg !6113

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readahead_count(ptr noundef %rac) #3 align 16 !dbg !6114 {
entry:
  %rac.addr = alloca ptr, align 8
  store ptr %rac, ptr %rac.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rac.addr, metadata !6118, metadata !DIExpression()), !dbg !6119
  %0 = load ptr, ptr %rac.addr, align 8, !dbg !6120
  %_nr_pages = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 4, !dbg !6121
  %1 = load i32, ptr %_nr_pages, align 8, !dbg !6121
  ret i32 %1, !dbg !6122
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @readahead_folio(ptr noundef %ractl) #3 align 16 !dbg !6123 {
entry:
  %ractl.addr = alloca ptr, align 8
  %folio = alloca ptr, align 8
  store ptr %ractl, ptr %ractl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ractl.addr, metadata !6127, metadata !DIExpression()), !dbg !6129
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #12, !dbg !6130
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !6128, metadata !DIExpression()), !dbg !6131
  %0 = load ptr, ptr %ractl.addr, align 8, !dbg !6132
  %call = call ptr @__readahead_folio(ptr noundef %0) #13, !dbg !6133
  store ptr %call, ptr %folio, align 8, !dbg !6131
  %1 = load ptr, ptr %folio, align 8, !dbg !6134
  %tobool = icmp ne ptr %1, null, !dbg !6134
  br i1 %tobool, label %if.then, label %if.end, !dbg !6136

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %folio, align 8, !dbg !6137
  call void @folio_put(ptr noundef %2) #13, !dbg !6138
  br label %if.end, !dbg !6138

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %folio, align 8, !dbg !6139
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #12, !dbg !6140
  ret ptr %3, !dbg !6141
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @prefetchw(ptr noundef %x) #4 align 16 !dbg !6142 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6146, metadata !DIExpression()), !dbg !6147
  %0 = load ptr, ptr %x.addr, align 8, !dbg !6148
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09prefetcht0 ${1:P}\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 6*32+ 8)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09prefetchw ${1:P}\0A6651:\0A.popsection\0A", "i,*m,~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i8) %0) #12, !dbg !6148, !srcloc !6149
  ret void, !dbg !6150
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_get_private(ptr noundef %folio) #3 align 16 !dbg !6151 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6155, metadata !DIExpression()), !dbg !6156
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6157
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6158
  %2 = getelementptr inbounds %struct.anon.18, ptr %1, i32 0, i32 4, !dbg !6158
  %3 = load ptr, ptr %2, align 8, !dbg !6158
  ret ptr %3, !dbg !6159
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ext4_readpage_limit(ptr noundef %inode) #3 align 16 !dbg !6160 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6164, metadata !DIExpression()), !dbg !6165
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6166
  %call = call i64 @i_size_read(ptr noundef %0) #13, !dbg !6167
  ret i64 %call, !dbg !6168
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6169 dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_zero_segment(ptr noundef %folio, i64 noundef %start, i64 noundef %xend) #3 align 16 !dbg !6197 {
entry:
  %folio.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %xend.addr = alloca i64, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6199, metadata !DIExpression()), !dbg !6202
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6200, metadata !DIExpression()), !dbg !6203
  store i64 %xend, ptr %xend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xend.addr, metadata !6201, metadata !DIExpression()), !dbg !6204
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6205
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6206
  %2 = load i64, ptr %start.addr, align 8, !dbg !6207
  %conv = trunc i64 %2 to i32, !dbg !6207
  %3 = load i64, ptr %xend.addr, align 8, !dbg !6208
  %conv1 = trunc i64 %3 to i32, !dbg !6208
  call void @zero_user_segments(ptr noundef %1, i32 noundef %conv, i32 noundef %conv1, i32 noundef 0, i32 noundef 0) #13, !dbg !6209
  ret void, !dbg !6210
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @folio_size(ptr noundef %folio) #3 align 16 !dbg !6211 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6215, metadata !DIExpression()), !dbg !6216
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6217
  %call = call i32 @folio_order(ptr noundef %0) #13, !dbg !6218
  %sh_prom = zext i32 %call to i64, !dbg !6219
  %shl = shl i64 4096, %sh_prom, !dbg !6219
  ret i64 %shl, !dbg !6220
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6221 dso_local void @folio_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ext4_need_verity(ptr noundef %inode, i64 noundef %idx) #3 align 16 !dbg !6222 {
entry:
  %inode.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6226, metadata !DIExpression()), !dbg !6228
  store i64 %idx, ptr %idx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6227, metadata !DIExpression()), !dbg !6229
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6230
  %call = call zeroext i1 @fsverity_active(ptr noundef %0) #13, !dbg !6231
  br i1 %call, label %land.rhs, label %land.end, !dbg !6232

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %idx.addr, align 8, !dbg !6233
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6234
  %i_size = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 15, !dbg !6234
  %3 = load i64, ptr %i_size, align 8, !dbg !6234
  %add = add i64 %3, 4096, !dbg !6234
  %sub = sub i64 %add, 1, !dbg !6234
  %div = udiv i64 %sub, 4096, !dbg !6234
  %cmp = icmp ult i64 %1, %div, !dbg !6235
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !6236
  ret i1 %4, !dbg !6237
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fsverity_verify_folio(ptr noundef %folio) #3 align 16 !dbg !6238 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6242, metadata !DIExpression()), !dbg !6243
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6244
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !6245
  %call = call i64 @folio_size(ptr noundef %1) #13, !dbg !6246
  %call1 = call zeroext i1 @fsverity_verify_blocks(ptr noundef %0, i64 noundef %call, i64 noundef 0) #13, !dbg !6247
  ret i1 %call1, !dbg !6248
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_mark_uptodate(ptr noundef %folio) #4 align 16 !dbg !6249 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6251, metadata !DIExpression()), !dbg !6252
  br label %do.body, !dbg !6253

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6254

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6256

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6254, !srcloc !6258
  br label %do.end2, !dbg !6254

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6259
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #13, !dbg !6260
  call void @set_bit(i64 noundef 3, ptr noundef %call) #13, !dbg !6261
  ret void, !dbg !6262
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_set_mappedtodisk(ptr noundef %folio) #4 align 16 !dbg !6263 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6265, metadata !DIExpression()), !dbg !6266
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6266
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #13, !dbg !6266
  call void @set_bit(i64 noundef 17, ptr noundef %call) #13, !dbg !6266
  ret void, !dbg !6266
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fscrypt_mergeable_bio(ptr noundef %bio, ptr noundef %inode, i64 noundef %next_lblk) #3 align 16 !dbg !6267 {
entry:
  %bio.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %next_lblk.addr = alloca i64, align 8
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !6272, metadata !DIExpression()), !dbg !6275
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6273, metadata !DIExpression()), !dbg !6276
  store i64 %next_lblk, ptr %next_lblk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next_lblk.addr, metadata !6274, metadata !DIExpression()), !dbg !6277
  ret i1 true, !dbg !6278
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6279 dso_local void @submit_bio(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @bio_alloc(ptr noundef %bdev, i16 noundef zeroext %nr_vecs, i32 noundef %opf, i32 noundef %gfp_mask) #3 align 16 !dbg !6280 {
entry:
  %bdev.addr = alloca ptr, align 8
  %nr_vecs.addr = alloca i16, align 2
  %opf.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6284, metadata !DIExpression()), !dbg !6288
  store i16 %nr_vecs, ptr %nr_vecs.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nr_vecs.addr, metadata !6285, metadata !DIExpression()), !dbg !6289
  store i32 %opf, ptr %opf.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %opf.addr, metadata !6286, metadata !DIExpression()), !dbg !6290
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6287, metadata !DIExpression()), !dbg !6291
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !6292
  %1 = load i16, ptr %nr_vecs.addr, align 2, !dbg !6293
  %2 = load i32, ptr %opf.addr, align 4, !dbg !6294
  %3 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6295
  %call = call ptr @bio_alloc_bioset(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3, ptr noundef @fs_bio_set) #13, !dbg !6296
  ret ptr %call, !dbg !6297
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bio_max_segs(i32 noundef %nr_segs) #3 align 16 !dbg !6298 {
entry:
  %nr_segs.addr = alloca i32, align 4
  %__UNIQUE_ID___x317 = alloca i32, align 4
  %__UNIQUE_ID___y318 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %nr_segs, ptr %nr_segs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_segs.addr, metadata !6302, metadata !DIExpression()), !dbg !6306
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x317) #12, !dbg !6307
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x317, metadata !6303, metadata !DIExpression()), !dbg !6307
  %0 = load i32, ptr %nr_segs.addr, align 4, !dbg !6307
  store i32 %0, ptr %__UNIQUE_ID___x317, align 4, !dbg !6307
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y318) #12, !dbg !6307
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y318, metadata !6305, metadata !DIExpression()), !dbg !6307
  store i32 256, ptr %__UNIQUE_ID___y318, align 4, !dbg !6307
  %1 = load i32, ptr %__UNIQUE_ID___x317, align 4, !dbg !6307
  %2 = load i32, ptr %__UNIQUE_ID___y318, align 4, !dbg !6307
  %cmp = icmp ult i32 %1, %2, !dbg !6307
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6307

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %__UNIQUE_ID___x317, align 4, !dbg !6307
  br label %cond.end, !dbg !6307

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___y318, align 4, !dbg !6307
  br label %cond.end, !dbg !6307

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !6307
  store i32 %cond, ptr %tmp, align 4, !dbg !6307
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y318) #12, !dbg !6308
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x317) #12, !dbg !6308
  %5 = load i32, ptr %tmp, align 4, !dbg !6307
  ret i32 %5, !dbg !6309
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fscrypt_set_bio_crypt_ctx(ptr noundef %bio, ptr noundef %inode, i64 noundef %first_lblk, i32 noundef %gfp_mask) #3 align 16 !dbg !6310 {
entry:
  %bio.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %first_lblk.addr = alloca i64, align 8
  %gfp_mask.addr = alloca i32, align 4
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !6314, metadata !DIExpression()), !dbg !6318
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6315, metadata !DIExpression()), !dbg !6319
  store i64 %first_lblk, ptr %first_lblk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first_lblk.addr, metadata !6316, metadata !DIExpression()), !dbg !6320
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6317, metadata !DIExpression()), !dbg !6321
  ret void, !dbg !6322
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ext4_set_bio_post_read_ctx(ptr noundef %bio, ptr noundef %inode, i64 noundef %first_idx) #0 align 16 !dbg !6323 {
entry:
  %bio.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %first_idx.addr = alloca i64, align 8
  %post_read_steps = alloca i32, align 4
  %ctx = alloca ptr, align 8
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !6327, metadata !DIExpression()), !dbg !6334
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6328, metadata !DIExpression()), !dbg !6335
  store i64 %first_idx, ptr %first_idx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first_idx.addr, metadata !6329, metadata !DIExpression()), !dbg !6336
  call void @llvm.lifetime.start.p0(i64 4, ptr %post_read_steps) #12, !dbg !6337
  call void @llvm.dbg.declare(metadata ptr %post_read_steps, metadata !6330, metadata !DIExpression()), !dbg !6338
  store i32 0, ptr %post_read_steps, align 4, !dbg !6338
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6339
  %call = call zeroext i1 @fscrypt_inode_uses_fs_layer_crypto(ptr noundef %0) #13, !dbg !6341
  br i1 %call, label %if.then, label %if.end, !dbg !6342

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %post_read_steps, align 4, !dbg !6343
  %or = or i32 %1, 2, !dbg !6343
  store i32 %or, ptr %post_read_steps, align 4, !dbg !6343
  br label %if.end, !dbg !6344

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6345
  %3 = load i64, ptr %first_idx.addr, align 8, !dbg !6347
  %call1 = call zeroext i1 @ext4_need_verity(ptr noundef %2, i64 noundef %3) #13, !dbg !6348
  br i1 %call1, label %if.then2, label %if.end4, !dbg !6349

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %post_read_steps, align 4, !dbg !6350
  %or3 = or i32 %4, 4, !dbg !6350
  store i32 %or3, ptr %post_read_steps, align 4, !dbg !6350
  br label %if.end4, !dbg !6351

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load i32, ptr %post_read_steps, align 4, !dbg !6352
  %tobool = icmp ne i32 %5, 0, !dbg !6352
  br i1 %tobool, label %if.then5, label %if.end8, !dbg !6353

if.then5:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #12, !dbg !6354
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6331, metadata !DIExpression()), !dbg !6355
  %6 = load ptr, ptr @bio_post_read_ctx_pool, align 8, !dbg !6356
  %call6 = call noalias ptr @mempool_alloc(ptr noundef %6, i32 noundef 3136) #13, !dbg !6357
  store ptr %call6, ptr %ctx, align 8, !dbg !6355
  %7 = load ptr, ptr %bio.addr, align 8, !dbg !6358
  %8 = load ptr, ptr %ctx, align 8, !dbg !6359
  %bio7 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %8, i32 0, i32 0, !dbg !6360
  store ptr %7, ptr %bio7, align 8, !dbg !6361
  %9 = load i32, ptr %post_read_steps, align 4, !dbg !6362
  %10 = load ptr, ptr %ctx, align 8, !dbg !6363
  %enabled_steps = getelementptr inbounds %struct.bio_post_read_ctx, ptr %10, i32 0, i32 3, !dbg !6364
  store i32 %9, ptr %enabled_steps, align 4, !dbg !6365
  %11 = load ptr, ptr %ctx, align 8, !dbg !6366
  %12 = load ptr, ptr %bio.addr, align 8, !dbg !6367
  %bi_private = getelementptr inbounds %struct.bio, ptr %12, i32 0, i32 10, !dbg !6368
  store ptr %11, ptr %bi_private, align 8, !dbg !6369
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #12, !dbg !6370
  br label %if.end8, !dbg !6371

if.end8:                                          ; preds = %if.then5, %if.end4
  call void @llvm.lifetime.end.p0(i64 4, ptr %post_read_steps) #12, !dbg !6372
  ret void, !dbg !6372
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mpage_end_io(ptr noundef %bio) #0 align 16 !dbg !6373 {
entry:
  %bio.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !6375, metadata !DIExpression()), !dbg !6379
  %0 = load ptr, ptr %bio.addr, align 8, !dbg !6380
  %call = call zeroext i1 @bio_post_read_required(ptr noundef %0) #13, !dbg !6381
  br i1 %call, label %if.then, label %if.end, !dbg !6382

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #12, !dbg !6383
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6376, metadata !DIExpression()), !dbg !6384
  %1 = load ptr, ptr %bio.addr, align 8, !dbg !6385
  %bi_private = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 10, !dbg !6386
  %2 = load ptr, ptr %bi_private, align 8, !dbg !6386
  store ptr %2, ptr %ctx, align 8, !dbg !6384
  %3 = load ptr, ptr %ctx, align 8, !dbg !6387
  %cur_step = getelementptr inbounds %struct.bio_post_read_ctx, ptr %3, i32 0, i32 2, !dbg !6388
  store i32 0, ptr %cur_step, align 8, !dbg !6389
  %4 = load ptr, ptr %ctx, align 8, !dbg !6390
  call void @bio_post_read_processing(ptr noundef %4) #13, !dbg !6391
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #12, !dbg !6392
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %bio.addr, align 8, !dbg !6393
  call void @__read_end_io(ptr noundef %5) #13, !dbg !6394
  br label %return, !dbg !6395

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6395
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6396 dso_local zeroext i1 @bio_add_folio(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_uptodate(ptr noundef %folio) #3 align 16 !dbg !6399 {
entry:
  %folio.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6401, metadata !DIExpression()), !dbg !6403
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #12, !dbg !6404
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6402, metadata !DIExpression()), !dbg !6405
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6406
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #13, !dbg !6406
  %call1 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %call) #13, !dbg !6406
  %frombool = zext i1 %call1 to i8, !dbg !6405
  store i8 %frombool, ptr %ret, align 1, !dbg !6405
  %1 = load i8, ptr %ret, align 1, !dbg !6407, !range !6409, !noundef !1248
  %tobool = trunc i8 %1 to i1, !dbg !6407
  br i1 %tobool, label %if.then, label %if.end, !dbg !6410

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6411

do.body:                                          ; preds = %if.then
  br label %do.body2, !dbg !6412

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6414

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6414

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6412

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6416

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6418

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6418

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6416, !srcloc !6420
  br label %do.cond7, !dbg !6416

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6416

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6412

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6412

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !6412

if.end:                                           ; preds = %do.end10, %entry
  %2 = load i8, ptr %ret, align 1, !dbg !6421, !range !6409, !noundef !1248
  %tobool11 = trunc i8 %2 to i1, !dbg !6421
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #12, !dbg !6422
  ret i1 %tobool11, !dbg !6423
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6424 dso_local i32 @block_read_full_folio(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @ext4_init_post_read_processing() #6 section ".init.text" align 16 !dbg !6431 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @kmem_cache_create(ptr noundef @.str, i32 noundef 48, i32 noundef 8, i32 noundef 131072, ptr noundef null) #13, !dbg !6435
  store ptr %call, ptr @bio_post_read_ctx_cache, align 8, !dbg !6436
  %0 = load ptr, ptr @bio_post_read_ctx_cache, align 8, !dbg !6437
  %tobool = icmp ne ptr %0, null, !dbg !6437
  br i1 %tobool, label %if.end, label %if.then, !dbg !6439

if.then:                                          ; preds = %entry
  br label %fail, !dbg !6440

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @bio_post_read_ctx_cache, align 8, !dbg !6441
  %call1 = call ptr @mempool_create_slab_pool(i32 noundef 128, ptr noundef %1) #13, !dbg !6442
  store ptr %call1, ptr @bio_post_read_ctx_pool, align 8, !dbg !6443
  %2 = load ptr, ptr @bio_post_read_ctx_pool, align 8, !dbg !6444
  %tobool2 = icmp ne ptr %2, null, !dbg !6444
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6446

if.then3:                                         ; preds = %if.end
  br label %fail_free_cache, !dbg !6447

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6448
  br label %return, !dbg !6448

fail_free_cache:                                  ; preds = %if.then3
  call void @llvm.dbg.label(metadata !6433), !dbg !6449
  %3 = load ptr, ptr @bio_post_read_ctx_cache, align 8, !dbg !6450
  call void @kmem_cache_destroy(ptr noundef %3) #13, !dbg !6451
  br label %fail, !dbg !6451

fail:                                             ; preds = %fail_free_cache, %if.then
  call void @llvm.dbg.label(metadata !6434), !dbg !6452
  store i32 -12, ptr %retval, align 4, !dbg !6453
  br label %return, !dbg !6453

return:                                           ; preds = %fail, %if.end4
  %4 = load i32, ptr %retval, align 4, !dbg !6454
  ret i32 %4, !dbg !6454
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6455 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @mempool_create_slab_pool(i32 noundef %min_nr, ptr noundef %kc) #3 align 16 !dbg !6459 {
entry:
  %min_nr.addr = alloca i32, align 4
  %kc.addr = alloca ptr, align 8
  store i32 %min_nr, ptr %min_nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min_nr.addr, metadata !6463, metadata !DIExpression()), !dbg !6465
  store ptr %kc, ptr %kc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kc.addr, metadata !6464, metadata !DIExpression()), !dbg !6466
  %0 = load i32, ptr %min_nr.addr, align 4, !dbg !6467
  %1 = load ptr, ptr %kc.addr, align 8, !dbg !6468
  %call = call ptr @mempool_create(i32 noundef %0, ptr noundef @mempool_alloc_slab, ptr noundef @mempool_free_slab, ptr noundef %1) #13, !dbg !6469
  ret ptr %call, !dbg !6470
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6471 dso_local void @kmem_cache_destroy(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ext4_exit_post_read_processing() #0 align 16 !dbg !6474 {
entry:
  %0 = load ptr, ptr @bio_post_read_ctx_pool, align 8, !dbg !6475
  call void @mempool_destroy(ptr noundef %0) #13, !dbg !6476
  %1 = load ptr, ptr @bio_post_read_ctx_cache, align 8, !dbg !6477
  call void @kmem_cache_destroy(ptr noundef %1) #13, !dbg !6478
  ret void, !dbg !6479
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6480 dso_local void @mempool_destroy(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__readahead_folio(ptr noundef %ractl) #3 align 16 !dbg !6483 {
entry:
  %retval = alloca ptr, align 8
  %ractl.addr = alloca ptr, align 8
  %folio = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ractl, ptr %ractl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ractl.addr, metadata !6485, metadata !DIExpression()), !dbg !6487
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #12, !dbg !6488
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !6486, metadata !DIExpression()), !dbg !6489
  br label %do.body, !dbg !6490

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %ractl.addr, align 8, !dbg !6491
  %_batch_count = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 5, !dbg !6491
  %1 = load i32, ptr %_batch_count, align 4, !dbg !6491
  %2 = load ptr, ptr %ractl.addr, align 8, !dbg !6491
  %_nr_pages = getelementptr inbounds %struct.readahead_control, ptr %2, i32 0, i32 4, !dbg !6491
  %3 = load i32, ptr %_nr_pages, align 8, !dbg !6491
  %cmp = icmp ugt i32 %1, %3, !dbg !6491
  %lnot = xor i1 %cmp, true, !dbg !6491
  %lnot1 = xor i1 %lnot, true, !dbg !6491
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6491
  %conv = sext i32 %lnot.ext to i64, !dbg !6491
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6491
  %tobool = icmp ne i64 %expval, 0, !dbg !6491
  br i1 %tobool, label %if.then, label %if.end, !dbg !6494

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !6491

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !6495

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !6497

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !6497

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !6495

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 1355, i32 0, i64 12) #12, !dbg !6499, !srcloc !6501
  br label %do.cond5, !dbg !6499

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6499

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !6495

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !6495

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !6495

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !6494

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !6494

do.end10:                                         ; preds = %do.cond9
  %4 = load ptr, ptr %ractl.addr, align 8, !dbg !6502
  %_batch_count11 = getelementptr inbounds %struct.readahead_control, ptr %4, i32 0, i32 5, !dbg !6503
  %5 = load i32, ptr %_batch_count11, align 4, !dbg !6503
  %6 = load ptr, ptr %ractl.addr, align 8, !dbg !6504
  %_nr_pages12 = getelementptr inbounds %struct.readahead_control, ptr %6, i32 0, i32 4, !dbg !6505
  %7 = load i32, ptr %_nr_pages12, align 8, !dbg !6506
  %sub = sub i32 %7, %5, !dbg !6506
  store i32 %sub, ptr %_nr_pages12, align 8, !dbg !6506
  %8 = load ptr, ptr %ractl.addr, align 8, !dbg !6507
  %_batch_count13 = getelementptr inbounds %struct.readahead_control, ptr %8, i32 0, i32 5, !dbg !6508
  %9 = load i32, ptr %_batch_count13, align 4, !dbg !6508
  %conv14 = zext i32 %9 to i64, !dbg !6507
  %10 = load ptr, ptr %ractl.addr, align 8, !dbg !6509
  %_index = getelementptr inbounds %struct.readahead_control, ptr %10, i32 0, i32 3, !dbg !6510
  %11 = load i64, ptr %_index, align 8, !dbg !6511
  %add = add i64 %11, %conv14, !dbg !6511
  store i64 %add, ptr %_index, align 8, !dbg !6511
  %12 = load ptr, ptr %ractl.addr, align 8, !dbg !6512
  %_nr_pages15 = getelementptr inbounds %struct.readahead_control, ptr %12, i32 0, i32 4, !dbg !6514
  %13 = load i32, ptr %_nr_pages15, align 8, !dbg !6514
  %tobool16 = icmp ne i32 %13, 0, !dbg !6512
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !6515

if.then17:                                        ; preds = %do.end10
  %14 = load ptr, ptr %ractl.addr, align 8, !dbg !6516
  %_batch_count18 = getelementptr inbounds %struct.readahead_control, ptr %14, i32 0, i32 5, !dbg !6518
  store i32 0, ptr %_batch_count18, align 4, !dbg !6519
  store ptr null, ptr %retval, align 8, !dbg !6520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6520

if.end19:                                         ; preds = %do.end10
  %15 = load ptr, ptr %ractl.addr, align 8, !dbg !6521
  %mapping = getelementptr inbounds %struct.readahead_control, ptr %15, i32 0, i32 1, !dbg !6522
  %16 = load ptr, ptr %mapping, align 8, !dbg !6522
  %i_pages = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 1, !dbg !6523
  %17 = load ptr, ptr %ractl.addr, align 8, !dbg !6524
  %_index20 = getelementptr inbounds %struct.readahead_control, ptr %17, i32 0, i32 3, !dbg !6525
  %18 = load i64, ptr %_index20, align 8, !dbg !6525
  %call = call ptr @xa_load(ptr noundef %i_pages, i64 noundef %18) #13, !dbg !6526
  store ptr %call, ptr %folio, align 8, !dbg !6527
  %19 = load ptr, ptr %folio, align 8, !dbg !6528
  %call21 = call i64 @folio_nr_pages(ptr noundef %19) #13, !dbg !6529
  %conv22 = trunc i64 %call21 to i32, !dbg !6529
  %20 = load ptr, ptr %ractl.addr, align 8, !dbg !6530
  %_batch_count23 = getelementptr inbounds %struct.readahead_control, ptr %20, i32 0, i32 5, !dbg !6531
  store i32 %conv22, ptr %_batch_count23, align 4, !dbg !6532
  %21 = load ptr, ptr %folio, align 8, !dbg !6533
  store ptr %21, ptr %retval, align 8, !dbg !6534
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6534

cleanup:                                          ; preds = %if.end19, %if.then17
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #12, !dbg !6535
  %22 = load ptr, ptr %retval, align 8, !dbg !6535
  ret ptr %22, !dbg !6535
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_put(ptr noundef %folio) #3 align 16 !dbg !6536 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6538, metadata !DIExpression()), !dbg !6539
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6540
  %call = call i32 @folio_put_testzero(ptr noundef %0) #13, !dbg !6542
  %tobool = icmp ne i32 %call, 0, !dbg !6542
  br i1 %tobool, label %if.then, label %if.end, !dbg !6543

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !6544
  call void @__folio_put(ptr noundef %1) #13, !dbg !6545
  br label %if.end, !dbg !6545

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6546
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6547 dso_local ptr @xa_load(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @folio_nr_pages(ptr noundef %folio) #3 align 16 !dbg !6550 {
entry:
  %retval = alloca i64, align 8
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6554, metadata !DIExpression()), !dbg !6555
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6556
  %call = call zeroext i1 @folio_test_large(ptr noundef %0) #13, !dbg !6558
  br i1 %call, label %if.end, label %if.then, !dbg !6559

if.then:                                          ; preds = %entry
  store i64 1, ptr %retval, align 8, !dbg !6560
  br label %return, !dbg !6560

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !6561
  %2 = getelementptr inbounds %struct.folio, ptr %1, i32 0, i32 1, !dbg !6562
  %_folio_nr_pages = getelementptr inbounds %struct.anon.33, ptr %2, i32 0, i32 6, !dbg !6562
  %3 = load i32, ptr %_folio_nr_pages, align 4, !dbg !6562
  %conv = zext i32 %3 to i64, !dbg !6561
  store i64 %conv, ptr %retval, align 8, !dbg !6563
  br label %return, !dbg !6563

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, ptr %retval, align 8, !dbg !6564
  ret i64 %4, !dbg !6564
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_large(ptr noundef %folio) #3 align 16 !dbg !6565 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6567, metadata !DIExpression()), !dbg !6568
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6569
  %call = call zeroext i1 @folio_test_head(ptr noundef %0) #13, !dbg !6570
  ret i1 %call, !dbg !6571
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_head(ptr noundef %folio) #4 align 16 !dbg !6572 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6574, metadata !DIExpression()), !dbg !6575
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6576
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #13, !dbg !6576
  %call1 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %call) #13, !dbg !6576
  ret i1 %call1, !dbg !6577
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6578 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6583, metadata !DIExpression()), !dbg !6585
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6584, metadata !DIExpression()), !dbg !6586
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6587
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6588
  %div = udiv i64 %1, 64, !dbg !6588
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6589
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !6590
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6591
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6592
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6593
  ret i1 %call, !dbg !6594
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_flags(ptr noundef %folio, i32 noundef %n) #0 align 16 !dbg !6595 {
entry:
  %folio.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6599, metadata !DIExpression()), !dbg !6602
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6600, metadata !DIExpression()), !dbg !6603
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #12, !dbg !6604
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6601, metadata !DIExpression()), !dbg !6605
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6606
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6607
  store ptr %1, ptr %page, align 8, !dbg !6605
  %2 = load ptr, ptr %page, align 8, !dbg !6608
  %3 = load i32, ptr %n.addr, align 4, !dbg !6609
  %idxprom = zext i32 %3 to i64, !dbg !6608
  %arrayidx = getelementptr %struct.page, ptr %2, i64 %idxprom, !dbg !6608
  %flags = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 0, !dbg !6610
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #12, !dbg !6611
  ret ptr %flags, !dbg !6612
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6613 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6621, metadata !DIExpression()), !dbg !6623
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6622, metadata !DIExpression()), !dbg !6624
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6625
  %1 = load i64, ptr %size.addr, align 8, !dbg !6626
  %conv = trunc i64 %1 to i32, !dbg !6626
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !6627
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6628
  %3 = load i64, ptr %size.addr, align 8, !dbg !6628
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !6628
  ret void, !dbg !6629
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6630 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6633, metadata !DIExpression()), !dbg !6635
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6634, metadata !DIExpression()), !dbg !6636
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6637
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6638
  br i1 %1, label %cond.true, label %cond.false, !dbg !6638

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6639
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6640
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6641
  %conv = zext i1 %call to i32, !dbg !6641
  br label %cond.end, !dbg !6638

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6642
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6643
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !6644
  %conv2 = zext i1 %call1 to i32, !dbg !6644
  br label %cond.end, !dbg !6638

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6638
  %tobool = icmp ne i32 %cond, 0, !dbg !6638
  ret i1 %tobool, !dbg !6645
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6646 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6651, metadata !DIExpression()), !dbg !6653
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6652, metadata !DIExpression()), !dbg !6654
  ret i1 true, !dbg !6655
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6656 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6661, metadata !DIExpression()), !dbg !6664
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6662, metadata !DIExpression()), !dbg !6665
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6663, metadata !DIExpression()), !dbg !6666
  ret void, !dbg !6667
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6668 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6672, metadata !DIExpression()), !dbg !6674
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6673, metadata !DIExpression()), !dbg !6675
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6676
  %and = and i64 %0, 63, !dbg !6677
  %shl = shl i64 1, %and, !dbg !6678
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6679
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6680
  %shr = ashr i64 %2, 6, !dbg !6681
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6679
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6679
  %and1 = and i64 %shl, %3, !dbg !6682
  %cmp = icmp ne i64 %and1, 0, !dbg !6683
  ret i1 %cmp, !dbg !6684
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6685 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6687, metadata !DIExpression()), !dbg !6690
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6688, metadata !DIExpression()), !dbg !6691
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !6692
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6689, metadata !DIExpression()), !dbg !6693
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6694
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6695
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !6696, !srcloc !6697
  %3 = icmp ult i8 %2, 2, !dbg !6696
  call void @llvm.assume(i1 %3), !dbg !6696
  store i8 %2, ptr %oldbit, align 1, !dbg !6696
  %4 = load i8, ptr %oldbit, align 1, !dbg !6698, !range !6409, !noundef !1248
  %tobool = trunc i8 %4 to i1, !dbg !6698
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !6699
  ret i1 %tobool, !dbg !6700
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_put_testzero(ptr noundef %folio) #3 align 16 !dbg !6701 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6703, metadata !DIExpression()), !dbg !6704
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6705
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6706
  %call = call i32 @put_page_testzero(ptr noundef %1) #13, !dbg !6707
  ret i32 %call, !dbg !6708
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6709 dso_local void @__folio_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_page_testzero(ptr noundef %page) #3 align 16 !dbg !6710 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6714, metadata !DIExpression()), !dbg !6715
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6716
  %call = call i32 @page_ref_dec_and_test(ptr noundef %0) #13, !dbg !6717
  ret i32 %call, !dbg !6718
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_ref_dec_and_test(ptr noundef %page) #3 align 16 !dbg !6719 {
entry:
  %page.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6722, metadata !DIExpression()), !dbg !6724
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !6725
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6723, metadata !DIExpression()), !dbg !6726
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6727
  %_refcount = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3, !dbg !6728
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %_refcount) #13, !dbg !6729
  %conv = zext i1 %call to i32, !dbg !6729
  store i32 %conv, ptr %ret, align 4, !dbg !6726
  %1 = load i32, ptr %ret, align 4, !dbg !6730
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !6731
  ret i32 %1, !dbg !6732
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #4 align 16 !dbg !6733 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6739, metadata !DIExpression()), !dbg !6740
  br label %do.body, !dbg !6741

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6742

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6744
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #13, !dbg !6745
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6746
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #13, !dbg !6747
  ret i1 %call, !dbg !6748
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6749 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6751, metadata !DIExpression()), !dbg !6753
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6752, metadata !DIExpression()), !dbg !6754
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6755
  %1 = load i64, ptr %size.addr, align 8, !dbg !6756
  %conv = trunc i64 %1 to i32, !dbg !6756
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !6757
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6758
  %3 = load i64, ptr %size.addr, align 8, !dbg !6758
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #13, !dbg !6758
  ret void, !dbg !6759
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #4 align 16 !dbg !6760 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6763, metadata !DIExpression()), !dbg !6764
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6765
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #13, !dbg !6766
  ret i1 %call, !dbg !6767
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6768 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6770, metadata !DIExpression()), !dbg !6772
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6771, metadata !DIExpression()), !dbg !6773
  ret i1 true, !dbg !6774
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #4 align 16 !dbg !6775 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6778, metadata !DIExpression()), !dbg !6781
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !6782
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6779, metadata !DIExpression()), !dbg !6782
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6782
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6782
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #12, !dbg !6782, !srcloc !6783
  %2 = icmp ult i8 %1, 2, !dbg !6782
  call void @llvm.assume(i1 %2), !dbg !6782
  store i8 %1, ptr %c, align 1, !dbg !6782
  %3 = load i8, ptr %c, align 1, !dbg !6782, !range !6409, !noundef !1248
  %tobool = trunc i8 %3 to i1, !dbg !6782
  %frombool = zext i1 %tobool to i8, !dbg !6782
  store i8 %frombool, ptr %tmp, align 1, !dbg !6782
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !6784
  %4 = load i8, ptr %tmp, align 1, !dbg !6782, !range !6409, !noundef !1248
  %tobool1 = trunc i8 %4 to i1, !dbg !6782
  ret i1 %tobool1, !dbg !6785
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @i_size_read(ptr noundef %inode) #3 align 16 !dbg !6786 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6790, metadata !DIExpression()), !dbg !6791
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6792
  %i_size = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15, !dbg !6793
  %1 = load i64, ptr %i_size, align 8, !dbg !6793
  ret i64 %1, !dbg !6794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zero_user_segments(ptr noundef %page, i32 noundef %start1, i32 noundef %end1, i32 noundef %start2, i32 noundef %end2) #3 align 16 !dbg !6795 {
entry:
  %page.addr = alloca ptr, align 8
  %start1.addr = alloca i32, align 4
  %end1.addr = alloca i32, align 4
  %start2.addr = alloca i32, align 4
  %end2.addr = alloca i32, align 4
  %kaddr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6799, metadata !DIExpression()), !dbg !6806
  store i32 %start1, ptr %start1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start1.addr, metadata !6800, metadata !DIExpression()), !dbg !6807
  store i32 %end1, ptr %end1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %end1.addr, metadata !6801, metadata !DIExpression()), !dbg !6808
  store i32 %start2, ptr %start2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start2.addr, metadata !6802, metadata !DIExpression()), !dbg !6809
  store i32 %end2, ptr %end2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %end2.addr, metadata !6803, metadata !DIExpression()), !dbg !6810
  call void @llvm.lifetime.start.p0(i64 8, ptr %kaddr) #12, !dbg !6811
  call void @llvm.dbg.declare(metadata ptr %kaddr, metadata !6804, metadata !DIExpression()), !dbg !6812
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6813
  %call = call ptr @kmap_local_page(ptr noundef %0) #13, !dbg !6814
  store ptr %call, ptr %kaddr, align 8, !dbg !6812
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !6815
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6805, metadata !DIExpression()), !dbg !6816
  br label %do.body, !dbg !6817

do.body:                                          ; preds = %entry
  %1 = load i32, ptr %end1.addr, align 4, !dbg !6818
  %conv = zext i32 %1 to i64, !dbg !6818
  %2 = load ptr, ptr %page.addr, align 8, !dbg !6818
  %call1 = call i64 @page_size(ptr noundef %2) #13, !dbg !6818
  %cmp = icmp ugt i64 %conv, %call1, !dbg !6818
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6818

lor.rhs:                                          ; preds = %do.body
  %3 = load i32, ptr %end2.addr, align 4, !dbg !6818
  %conv3 = zext i32 %3 to i64, !dbg !6818
  %4 = load ptr, ptr %page.addr, align 8, !dbg !6818
  %call4 = call i64 @page_size(ptr noundef %4) #13, !dbg !6818
  %cmp5 = icmp ugt i64 %conv3, %call4, !dbg !6818
  br label %lor.end, !dbg !6818

lor.end:                                          ; preds = %lor.rhs, %do.body
  %5 = phi i1 [ true, %do.body ], [ %cmp5, %lor.rhs ]
  %lnot = xor i1 %5, true, !dbg !6818
  %lnot7 = xor i1 %lnot, true, !dbg !6818
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !6818
  %conv8 = sext i32 %lnot.ext to i64, !dbg !6818
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !6818
  %tobool = icmp ne i64 %expval, 0, !dbg !6818
  br i1 %tobool, label %if.then, label %if.end, !dbg !6821

if.then:                                          ; preds = %lor.end
  br label %do.body9, !dbg !6818

do.body9:                                         ; preds = %if.then
  br label %do.body10, !dbg !6822

do.body10:                                        ; preds = %do.body9
  br label %do.cond, !dbg !6824

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !6824

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !6822

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 275, i32 0, i64 12) #12, !dbg !6826, !srcloc !6828
  br label %do.cond12, !dbg !6826

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6826

do.end13:                                         ; preds = %do.cond12
  unreachable, !dbg !6822

do.cond14:                                        ; No predecessors!
  br label %do.end15, !dbg !6822

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !6822

if.end:                                           ; preds = %do.end15, %lor.end
  br label %do.cond16, !dbg !6821

do.cond16:                                        ; preds = %if.end
  br label %do.end17, !dbg !6821

do.end17:                                         ; preds = %do.cond16
  %6 = load i32, ptr %end1.addr, align 4, !dbg !6829
  %7 = load i32, ptr %start1.addr, align 4, !dbg !6831
  %cmp18 = icmp ugt i32 %6, %7, !dbg !6832
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !6833

if.then20:                                        ; preds = %do.end17
  %8 = load ptr, ptr %kaddr, align 8, !dbg !6834
  %9 = load i32, ptr %start1.addr, align 4, !dbg !6835
  %idx.ext = zext i32 %9 to i64, !dbg !6836
  %add.ptr = getelementptr i8, ptr %8, i64 %idx.ext, !dbg !6836
  %10 = load i32, ptr %end1.addr, align 4, !dbg !6837
  %11 = load i32, ptr %start1.addr, align 4, !dbg !6838
  %sub = sub i32 %10, %11, !dbg !6839
  %conv21 = zext i32 %sub to i64, !dbg !6837
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv21, i1 false), !dbg !6840
  br label %if.end22, !dbg !6840

if.end22:                                         ; preds = %if.then20, %do.end17
  %12 = load i32, ptr %end2.addr, align 4, !dbg !6841
  %13 = load i32, ptr %start2.addr, align 4, !dbg !6843
  %cmp23 = icmp ugt i32 %12, %13, !dbg !6844
  br i1 %cmp23, label %if.then25, label %if.end30, !dbg !6845

if.then25:                                        ; preds = %if.end22
  %14 = load ptr, ptr %kaddr, align 8, !dbg !6846
  %15 = load i32, ptr %start2.addr, align 4, !dbg !6847
  %idx.ext26 = zext i32 %15 to i64, !dbg !6848
  %add.ptr27 = getelementptr i8, ptr %14, i64 %idx.ext26, !dbg !6848
  %16 = load i32, ptr %end2.addr, align 4, !dbg !6849
  %17 = load i32, ptr %start2.addr, align 4, !dbg !6850
  %sub28 = sub i32 %16, %17, !dbg !6851
  %conv29 = zext i32 %sub28 to i64, !dbg !6849
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr27, i8 0, i64 %conv29, i1 false), !dbg !6852
  br label %if.end30, !dbg !6852

if.end30:                                         ; preds = %if.then25, %if.end22
  br label %do.body31, !dbg !6853

do.body31:                                        ; preds = %if.end30
  br label %do.body32, !dbg !6854

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !6856

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6856

do.end34:                                         ; preds = %do.cond33
  %18 = load ptr, ptr %kaddr, align 8, !dbg !6854
  call void @__kunmap_local(ptr noundef %18) #13, !dbg !6854
  br label %do.cond35, !dbg !6854

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6854

do.end36:                                         ; preds = %do.cond35
  store i32 0, ptr %i, align 4, !dbg !6858
  br label %for.cond, !dbg !6860

for.cond:                                         ; preds = %for.inc, %do.end36
  %19 = load i32, ptr %i, align 4, !dbg !6861
  %conv37 = zext i32 %19 to i64, !dbg !6861
  %20 = load ptr, ptr %page.addr, align 8, !dbg !6863
  %call38 = call i64 @compound_nr(ptr noundef %20) #13, !dbg !6864
  %cmp39 = icmp ult i64 %conv37, %call38, !dbg !6865
  br i1 %cmp39, label %for.body, label %for.end, !dbg !6866

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %page.addr, align 8, !dbg !6867
  %22 = load i32, ptr %i, align 4, !dbg !6868
  %idx.ext41 = zext i32 %22 to i64, !dbg !6869
  %add.ptr42 = getelementptr %struct.page, ptr %21, i64 %idx.ext41, !dbg !6869
  call void @flush_dcache_page(ptr noundef %add.ptr42) #13, !dbg !6870
  br label %for.inc, !dbg !6870

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4, !dbg !6871
  %inc = add i32 %23, 1, !dbg !6871
  store i32 %inc, ptr %i, align 4, !dbg !6871
  br label %for.cond, !dbg !6872, !llvm.loop !6873

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !6875
  call void @llvm.lifetime.end.p0(i64 8, ptr %kaddr) #12, !dbg !6875
  ret void, !dbg !6875
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmap_local_page(ptr noundef %page) #3 align 16 !dbg !6876 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6881, metadata !DIExpression()), !dbg !6882
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6883
  %call = call ptr @lowmem_page_address(ptr noundef %0) #13, !dbg !6883
  ret ptr %call, !dbg !6884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @page_size(ptr noundef %page) #3 align 16 !dbg !6885 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6889, metadata !DIExpression()), !dbg !6890
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6891
  %call = call i32 @compound_order(ptr noundef %0) #13, !dbg !6892
  %sh_prom = zext i32 %call to i64, !dbg !6893
  %shl = shl i64 4096, %sh_prom, !dbg !6893
  ret i64 %shl, !dbg !6894
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kunmap_local(ptr noundef %addr) #3 align 16 !dbg !6895 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6897, metadata !DIExpression()), !dbg !6898
  ret void, !dbg !6899
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @compound_nr(ptr noundef %page) #3 align 16 !dbg !6900 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %folio = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6902, metadata !DIExpression()), !dbg !6904
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #12, !dbg !6905
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !6903, metadata !DIExpression()), !dbg !6906
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6907
  store ptr %0, ptr %folio, align 8, !dbg !6906
  %1 = load ptr, ptr %folio, align 8, !dbg !6908
  %2 = getelementptr inbounds %struct.folio, ptr %1, i32 0, i32 0, !dbg !6908
  %flags = getelementptr inbounds %struct.anon.18, ptr %2, i32 0, i32 0, !dbg !6908
  %3 = ptrtoint ptr %flags to i64, !dbg !6908
  %cmp = icmp ne i64 %3, 0, !dbg !6908
  %conv = zext i1 %cmp to i32, !dbg !6908
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6908
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !6908

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %folio, align 8, !dbg !6908
  %6 = getelementptr inbounds %struct.folio, ptr %5, i32 0, i32 0, !dbg !6908
  %flags1 = getelementptr inbounds %struct.anon.18, ptr %6, i32 0, i32 0, !dbg !6908
  %7 = ptrtoint ptr %flags1 to i64, !dbg !6908
  %cmp2 = icmp ne i64 %7, 0, !dbg !6908
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !6908

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %folio, align 8, !dbg !6908
  %9 = getelementptr inbounds %struct.folio, ptr %8, i32 0, i32 0, !dbg !6908
  %flags5 = getelementptr inbounds %struct.anon.18, ptr %9, i32 0, i32 0, !dbg !6908
  %10 = load i64, ptr %flags5, align 16, !dbg !6908
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !6908
  br i1 %11, label %cond.true, label %cond.false, !dbg !6910

cond.true:                                        ; preds = %land.lhs.true4
  %12 = load ptr, ptr %folio, align 8, !dbg !6908
  %13 = getelementptr inbounds %struct.folio, ptr %12, i32 0, i32 0, !dbg !6908
  %flags6 = getelementptr inbounds %struct.anon.18, ptr %13, i32 0, i32 0, !dbg !6908
  %call = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags6) #13, !dbg !6908
  br i1 %call, label %if.end, label %if.then, !dbg !6908

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %14 = load ptr, ptr %folio, align 8, !dbg !6908
  %15 = getelementptr inbounds %struct.folio, ptr %14, i32 0, i32 0, !dbg !6908
  %flags8 = getelementptr inbounds %struct.anon.18, ptr %15, i32 0, i32 0, !dbg !6908
  %call9 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags8) #13, !dbg !6908
  br i1 %call9, label %if.end, label %if.then, !dbg !6910

if.then:                                          ; preds = %cond.false, %cond.true
  store i64 1, ptr %retval, align 8, !dbg !6911
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6911

if.end:                                           ; preds = %cond.false, %cond.true
  %16 = load ptr, ptr %folio, align 8, !dbg !6912
  %17 = getelementptr inbounds %struct.folio, ptr %16, i32 0, i32 1, !dbg !6913
  %_folio_nr_pages = getelementptr inbounds %struct.anon.33, ptr %17, i32 0, i32 6, !dbg !6913
  %18 = load i32, ptr %_folio_nr_pages, align 4, !dbg !6913
  %conv11 = zext i32 %18 to i64, !dbg !6912
  store i64 %conv11, ptr %retval, align 8, !dbg !6914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6914

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #12, !dbg !6915
  %19 = load i64, ptr %retval, align 8, !dbg !6915
  ret i64 %19, !dbg !6915
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @flush_dcache_page(ptr noundef %page) #3 align 16 !dbg !6916 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6919, metadata !DIExpression()), !dbg !6920
  ret void, !dbg !6921
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #4 align 16 !dbg !6922 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6926, metadata !DIExpression()), !dbg !6927
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6928
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !6928
  %2 = inttoptr i64 %1 to ptr, !dbg !6928
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !6928
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !6928
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6928
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6928
  %shl = shl i64 %sub.ptr.div, 12, !dbg !6928
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !6928
  %add = add i64 %shl, %3, !dbg !6928
  %4 = inttoptr i64 %add to ptr, !dbg !6928
  ret ptr %4, !dbg !6929
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compound_order(ptr noundef %page) #3 align 16 !dbg !6930 {
entry:
  %retval = alloca i32, align 4
  %page.addr = alloca ptr, align 8
  %folio = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6934, metadata !DIExpression()), !dbg !6936
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #12, !dbg !6937
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !6935, metadata !DIExpression()), !dbg !6938
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6939
  store ptr %0, ptr %folio, align 8, !dbg !6938
  %1 = load ptr, ptr %folio, align 8, !dbg !6940
  %2 = getelementptr inbounds %struct.folio, ptr %1, i32 0, i32 0, !dbg !6940
  %flags = getelementptr inbounds %struct.anon.18, ptr %2, i32 0, i32 0, !dbg !6940
  %3 = ptrtoint ptr %flags to i64, !dbg !6940
  %cmp = icmp ne i64 %3, 0, !dbg !6940
  %conv = zext i1 %cmp to i32, !dbg !6940
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6940
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !6940

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %folio, align 8, !dbg !6940
  %6 = getelementptr inbounds %struct.folio, ptr %5, i32 0, i32 0, !dbg !6940
  %flags1 = getelementptr inbounds %struct.anon.18, ptr %6, i32 0, i32 0, !dbg !6940
  %7 = ptrtoint ptr %flags1 to i64, !dbg !6940
  %cmp2 = icmp ne i64 %7, 0, !dbg !6940
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !6940

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %folio, align 8, !dbg !6940
  %9 = getelementptr inbounds %struct.folio, ptr %8, i32 0, i32 0, !dbg !6940
  %flags5 = getelementptr inbounds %struct.anon.18, ptr %9, i32 0, i32 0, !dbg !6940
  %10 = load i64, ptr %flags5, align 16, !dbg !6940
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !6940
  br i1 %11, label %cond.true, label %cond.false, !dbg !6942

cond.true:                                        ; preds = %land.lhs.true4
  %12 = load ptr, ptr %folio, align 8, !dbg !6940
  %13 = getelementptr inbounds %struct.folio, ptr %12, i32 0, i32 0, !dbg !6940
  %flags6 = getelementptr inbounds %struct.anon.18, ptr %13, i32 0, i32 0, !dbg !6940
  %call = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags6) #13, !dbg !6940
  br i1 %call, label %if.end, label %if.then, !dbg !6940

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %14 = load ptr, ptr %folio, align 8, !dbg !6940
  %15 = getelementptr inbounds %struct.folio, ptr %14, i32 0, i32 0, !dbg !6940
  %flags8 = getelementptr inbounds %struct.anon.18, ptr %15, i32 0, i32 0, !dbg !6940
  %call9 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags8) #13, !dbg !6940
  br i1 %call9, label %if.end, label %if.then, !dbg !6942

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !6943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6943

if.end:                                           ; preds = %cond.false, %cond.true
  %16 = load ptr, ptr %folio, align 8, !dbg !6944
  %17 = getelementptr inbounds %struct.folio, ptr %16, i32 0, i32 1, !dbg !6945
  %_flags_1 = getelementptr inbounds %struct.anon.33, ptr %17, i32 0, i32 0, !dbg !6945
  %18 = load i64, ptr %_flags_1, align 16, !dbg !6945
  %and = and i64 %18, 255, !dbg !6946
  %conv11 = trunc i64 %and to i32, !dbg !6944
  store i32 %conv11, ptr %retval, align 4, !dbg !6947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6947

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #12, !dbg !6948
  %19 = load i32, ptr %retval, align 4, !dbg !6948
  ret i32 %19, !dbg !6948
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6949 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6952, metadata !DIExpression()), !dbg !6957
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6953, metadata !DIExpression()), !dbg !6958
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !6959
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6954, metadata !DIExpression()), !dbg !6960
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6961
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6962
  %div = udiv i64 %1, 64, !dbg !6962
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6963
  store ptr %add.ptr, ptr %p, align 8, !dbg !6960
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !6964
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6955, metadata !DIExpression()), !dbg !6965
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6966
  %rem = urem i64 %2, 64, !dbg !6966
  %shl = shl i64 1, %rem, !dbg !6966
  store i64 %shl, ptr %mask, align 8, !dbg !6965
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !6967
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6956, metadata !DIExpression()), !dbg !6968
  %3 = load ptr, ptr %p, align 8, !dbg !6969
  %4 = load i64, ptr %3, align 8, !dbg !6970
  store i64 %4, ptr %val, align 8, !dbg !6968
  %5 = load i64, ptr %val, align 8, !dbg !6971
  %6 = load i64, ptr %mask, align 8, !dbg !6972
  %and = and i64 %5, %6, !dbg !6973
  %tobool = icmp ne i64 %and, 0, !dbg !6974
  %lnot = xor i1 %tobool, true, !dbg !6974
  %lnot1 = xor i1 %lnot, true, !dbg !6975
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !6976
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !6976
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !6976
  ret i1 %lnot1, !dbg !6977
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_order(ptr noundef %folio) #3 align 16 !dbg !6978 {
entry:
  %retval = alloca i32, align 4
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6982, metadata !DIExpression()), !dbg !6983
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6984
  %call = call zeroext i1 @folio_test_large(ptr noundef %0) #13, !dbg !6986
  br i1 %call, label %if.end, label %if.then, !dbg !6987

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6988
  br label %return, !dbg !6988

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !6989
  %2 = getelementptr inbounds %struct.folio, ptr %1, i32 0, i32 1, !dbg !6990
  %_flags_1 = getelementptr inbounds %struct.anon.33, ptr %2, i32 0, i32 0, !dbg !6990
  %3 = load i64, ptr %_flags_1, align 16, !dbg !6990
  %and = and i64 %3, 255, !dbg !6991
  %conv = trunc i64 %and to i32, !dbg !6989
  store i32 %conv, ptr %retval, align 4, !dbg !6992
  br label %return, !dbg !6992

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !6993
  ret i32 %4, !dbg !6993
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fsverity_active(ptr noundef %inode) #3 align 16 !dbg !6994 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6998, metadata !DIExpression()), !dbg !6999
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !7000
  %call = call ptr @fsverity_get_info(ptr noundef %0) #13, !dbg !7001
  %cmp = icmp ne ptr %call, null, !dbg !7002
  ret i1 %cmp, !dbg !7003
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fsverity_get_info(ptr noundef %inode) #3 align 16 !dbg !7004 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7010, metadata !DIExpression()), !dbg !7011
  ret ptr null, !dbg !7012
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fsverity_verify_blocks(ptr noundef %folio, i64 noundef %len, i64 noundef %offset) #3 align 16 !dbg !7013 {
entry:
  %folio.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7015, metadata !DIExpression()), !dbg !7023
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !7016, metadata !DIExpression()), !dbg !7024
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !7017, metadata !DIExpression()), !dbg !7025
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !7026
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7018, metadata !DIExpression()), !dbg !7026
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !7026
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !7027
  %tobool = icmp ne i32 %0, 0, !dbg !7027
  %lnot = xor i1 %tobool, true, !dbg !7027
  %lnot1 = xor i1 %lnot, true, !dbg !7027
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7027
  %conv = sext i32 %lnot.ext to i64, !dbg !7027
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7027
  %tobool2 = icmp ne i64 %expval, 0, !dbg !7027
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7026

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !7027

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !7028
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7020, metadata !DIExpression()), !dbg !7028
  store i32 2307, ptr %__flags, align 4, !dbg !7028
  br label %do.body3, !dbg !7028

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !7029

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !7029

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !7028

do.body4:                                         ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !7031
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 240, i32 %1, i64 12) #12, !dbg !7031, !srcloc !7033
  br label %do.cond5, !dbg !7031

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7031

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !7028

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !7034

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !7034

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !7027
  br label %do.cond10, !dbg !7028

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !7028

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !7028

if.end:                                           ; preds = %do.end11, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !7026
  %tobool12 = icmp ne i32 %2, 0, !dbg !7026
  %lnot13 = xor i1 %tobool12, true, !dbg !7026
  %lnot15 = xor i1 %lnot13, true, !dbg !7026
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !7026
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !7026
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !7026
  store i64 %expval18, ptr %tmp, align 8, !dbg !7027
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !7036
  %3 = load i64, ptr %tmp, align 8, !dbg !7026
  ret i1 false, !dbg !7037
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7038 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7044, metadata !DIExpression()), !dbg !7046
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7045, metadata !DIExpression()), !dbg !7047
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7048
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7049
  %div = sdiv i64 %1, 64, !dbg !7049
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7050
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !7051
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7052
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7053
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !7054
  ret void, !dbg !7055
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !7056 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7058, metadata !DIExpression()), !dbg !7060
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7059, metadata !DIExpression()), !dbg !7061
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7062
  %1 = load i64, ptr %size.addr, align 8, !dbg !7063
  %conv = trunc i64 %1 to i32, !dbg !7063
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !7064
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7065
  %3 = load i64, ptr %size.addr, align 8, !dbg !7065
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #13, !dbg !7065
  ret void, !dbg !7066
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7067 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7069, metadata !DIExpression()), !dbg !7071
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7070, metadata !DIExpression()), !dbg !7072
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7073
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7075
  br i1 %1, label %if.then, label %if.else, !dbg !7076

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7077
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7077
  %shr = ashr i64 %3, 3, !dbg !7077
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7077
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7079
  %and = and i64 %4, 7, !dbg !7079
  %sh_prom = trunc i64 %and to i32, !dbg !7079
  %shl = shl i32 1, %sh_prom, !dbg !7079
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #12, !dbg !7080, !srcloc !7081
  br label %if.end, !dbg !7082

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7083
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7085
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #12, !dbg !7086, !srcloc !7087
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7088
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7089 dso_local ptr @bio_alloc_bioset(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fscrypt_inode_uses_fs_layer_crypto(ptr noundef %inode) #3 align 16 !dbg !7092 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7094, metadata !DIExpression()), !dbg !7095
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !7096
  %call = call zeroext i1 @fscrypt_needs_contents_encryption(ptr noundef %0) #13, !dbg !7097
  br i1 %call, label %land.rhs, label %land.end, !dbg !7098

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !7099
  %call1 = call zeroext i1 @__fscrypt_inode_uses_inline_crypto(ptr noundef %1) #13, !dbg !7100
  %lnot = xor i1 %call1, true, !dbg !7101
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !7102
  ret i1 %2, !dbg !7103
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7104 dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fscrypt_needs_contents_encryption(ptr noundef %inode) #3 align 16 !dbg !7107 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7109, metadata !DIExpression()), !dbg !7110
  ret i1 false, !dbg !7111
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__fscrypt_inode_uses_inline_crypto(ptr noundef %inode) #3 align 16 !dbg !7112 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7114, metadata !DIExpression()), !dbg !7115
  ret i1 false, !dbg !7116
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bio_post_read_required(ptr noundef %bio) #0 align 16 !dbg !7117 {
entry:
  %bio.addr = alloca ptr, align 8
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !7121, metadata !DIExpression()), !dbg !7122
  %0 = load ptr, ptr %bio.addr, align 8, !dbg !7123
  %bi_private = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 10, !dbg !7124
  %1 = load ptr, ptr %bi_private, align 8, !dbg !7124
  %tobool = icmp ne ptr %1, null, !dbg !7123
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !7125

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %bio.addr, align 8, !dbg !7126
  %bi_status = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 5, !dbg !7127
  %3 = load i8, ptr %bi_status, align 8, !dbg !7127
  %tobool1 = icmp ne i8 %3, 0, !dbg !7128
  %lnot = xor i1 %tobool1, true, !dbg !7128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !7129
  ret i1 %4, !dbg !7130
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bio_post_read_processing(ptr noundef %ctx) #0 align 16 !dbg !5603 {
entry:
  %ctx.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  %.compoundliteral20 = alloca %struct.atomic64_t, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5607, metadata !DIExpression()), !dbg !7131
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !7132
  %cur_step = getelementptr inbounds %struct.bio_post_read_ctx, ptr %0, i32 0, i32 2, !dbg !7133
  %1 = load i32, ptr %cur_step, align 8, !dbg !7134
  %inc = add i32 %1, 1, !dbg !7134
  store i32 %inc, ptr %cur_step, align 8, !dbg !7134
  switch i32 %inc, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ], !dbg !7135

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !7136
  %enabled_steps = getelementptr inbounds %struct.bio_post_read_ctx, ptr %2, i32 0, i32 3, !dbg !7139
  %3 = load i32, ptr %enabled_steps, align 4, !dbg !7139
  %and = and i32 %3, 2, !dbg !7140
  %tobool = icmp ne i32 %and, 0, !dbg !7140
  br i1 %tobool, label %if.then, label %if.end, !dbg !7141

if.then:                                          ; preds = %sw.bb
  br label %do.body, !dbg !7142

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !7144

do.body1:                                         ; preds = %do.body
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !7146
  %work = getelementptr inbounds %struct.bio_post_read_ctx, ptr %4, i32 0, i32 1, !dbg !7146
  call void @__init_work(ptr noundef %work, i32 noundef 0) #13, !dbg !7146
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !7146
  %work2 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %5, i32 0, i32 1, !dbg !7146
  %data = getelementptr inbounds %struct.work_struct, ptr %work2, i32 0, i32 0, !dbg !7146
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !7146
  store i64 68719476704, ptr %counter, align 8, !dbg !7146
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !7146
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !7146
  %work3 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %6, i32 0, i32 1, !dbg !7146
  %entry4 = getelementptr inbounds %struct.work_struct, ptr %work3, i32 0, i32 1, !dbg !7146
  call void @INIT_LIST_HEAD(ptr noundef %entry4) #13, !dbg !7146
  %7 = load ptr, ptr %ctx.addr, align 8, !dbg !7146
  %work5 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %7, i32 0, i32 1, !dbg !7146
  %func = getelementptr inbounds %struct.work_struct, ptr %work5, i32 0, i32 2, !dbg !7146
  store ptr @decrypt_work, ptr %func, align 8, !dbg !7146
  br label %do.end, !dbg !7146

do.end:                                           ; preds = %do.body1
  br label %do.end6, !dbg !7144

do.end6:                                          ; preds = %do.end
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !7148
  %work7 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %8, i32 0, i32 1, !dbg !7149
  call void @fscrypt_enqueue_decrypt_work(ptr noundef %work7) #13, !dbg !7150
  br label %sw.epilog, !dbg !7151

if.end:                                           ; preds = %sw.bb
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !7152
  %cur_step8 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %9, i32 0, i32 2, !dbg !7153
  %10 = load i32, ptr %cur_step8, align 8, !dbg !7154
  %inc9 = add i32 %10, 1, !dbg !7154
  store i32 %inc9, ptr %cur_step8, align 8, !dbg !7154
  br label %sw.bb10, !dbg !7152

sw.bb10:                                          ; preds = %entry, %if.end
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !7155
  %enabled_steps11 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %11, i32 0, i32 3, !dbg !7157
  %12 = load i32, ptr %enabled_steps11, align 4, !dbg !7157
  %and12 = and i32 %12, 4, !dbg !7158
  %tobool13 = icmp ne i32 %and12, 0, !dbg !7158
  br i1 %tobool13, label %if.then14, label %if.end29, !dbg !7159

if.then14:                                        ; preds = %sw.bb10
  br label %do.body15, !dbg !7160

do.body15:                                        ; preds = %if.then14
  br label %do.body16, !dbg !7162

do.body16:                                        ; preds = %do.body15
  %13 = load ptr, ptr %ctx.addr, align 8, !dbg !7164
  %work17 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %13, i32 0, i32 1, !dbg !7164
  call void @__init_work(ptr noundef %work17, i32 noundef 0) #13, !dbg !7164
  %14 = load ptr, ptr %ctx.addr, align 8, !dbg !7164
  %work18 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %14, i32 0, i32 1, !dbg !7164
  %data19 = getelementptr inbounds %struct.work_struct, ptr %work18, i32 0, i32 0, !dbg !7164
  %counter21 = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral20, i32 0, i32 0, !dbg !7164
  store i64 68719476704, ptr %counter21, align 8, !dbg !7164
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data19, ptr align 8 %.compoundliteral20, i64 8, i1 false), !dbg !7164
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !7164
  %work22 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %15, i32 0, i32 1, !dbg !7164
  %entry23 = getelementptr inbounds %struct.work_struct, ptr %work22, i32 0, i32 1, !dbg !7164
  call void @INIT_LIST_HEAD(ptr noundef %entry23) #13, !dbg !7164
  %16 = load ptr, ptr %ctx.addr, align 8, !dbg !7164
  %work24 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %16, i32 0, i32 1, !dbg !7164
  %func25 = getelementptr inbounds %struct.work_struct, ptr %work24, i32 0, i32 2, !dbg !7164
  store ptr @verity_work, ptr %func25, align 8, !dbg !7164
  br label %do.end26, !dbg !7164

do.end26:                                         ; preds = %do.body16
  br label %do.end27, !dbg !7162

do.end27:                                         ; preds = %do.end26
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !7166
  %work28 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %17, i32 0, i32 1, !dbg !7167
  call void @fsverity_enqueue_verify_work(ptr noundef %work28) #13, !dbg !7168
  br label %sw.epilog, !dbg !7169

if.end29:                                         ; preds = %sw.bb10
  %18 = load ptr, ptr %ctx.addr, align 8, !dbg !7170
  %cur_step30 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %18, i32 0, i32 2, !dbg !7171
  %19 = load i32, ptr %cur_step30, align 8, !dbg !7172
  %inc31 = add i32 %19, 1, !dbg !7172
  store i32 %inc31, ptr %cur_step30, align 8, !dbg !7172
  br label %sw.default, !dbg !7170

sw.default:                                       ; preds = %entry, %if.end29
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !7173
  %bio = getelementptr inbounds %struct.bio_post_read_ctx, ptr %20, i32 0, i32 0, !dbg !7174
  %21 = load ptr, ptr %bio, align 8, !dbg !7174
  call void @__read_end_io(ptr noundef %21) #13, !dbg !7175
  br label %sw.epilog, !dbg !7176

sw.epilog:                                        ; preds = %do.end6, %do.end27, %sw.default
  ret void, !dbg !7177
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__read_end_io(ptr noundef %bio) #0 align 16 !dbg !7178 {
entry:
  %bio.addr = alloca ptr, align 8
  %fi = alloca %struct.folio_iter, align 8
  %folio1 = alloca ptr, align 8
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !7180, metadata !DIExpression()), !dbg !7194
  call void @llvm.lifetime.start.p0(i64 48, ptr %fi) #12, !dbg !7195
  call void @llvm.dbg.declare(metadata ptr %fi, metadata !7181, metadata !DIExpression()), !dbg !7196
  %0 = load ptr, ptr %bio.addr, align 8, !dbg !7197
  call void @bio_first_folio(ptr noundef %fi, ptr noundef %0, i32 noundef 0) #13, !dbg !7197
  br label %for.cond, !dbg !7197

for.cond:                                         ; preds = %for.inc, %entry
  %folio = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 0, !dbg !7198
  %1 = load ptr, ptr %folio, align 8, !dbg !7198
  %tobool = icmp ne ptr %1, null, !dbg !7197
  br i1 %tobool, label %for.body, label %for.end, !dbg !7197

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio1) #12, !dbg !7199
  call void @llvm.dbg.declare(metadata ptr %folio1, metadata !7190, metadata !DIExpression()), !dbg !7200
  %folio2 = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 0, !dbg !7201
  %2 = load ptr, ptr %folio2, align 8, !dbg !7201
  store ptr %2, ptr %folio1, align 8, !dbg !7200
  %3 = load ptr, ptr %bio.addr, align 8, !dbg !7202
  %bi_status = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 5, !dbg !7204
  %4 = load i8, ptr %bi_status, align 8, !dbg !7204
  %tobool3 = icmp ne i8 %4, 0, !dbg !7202
  br i1 %tobool3, label %if.then, label %if.else, !dbg !7205

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %folio1, align 8, !dbg !7206
  call void @folio_clear_uptodate(ptr noundef %5) #13, !dbg !7207
  br label %if.end, !dbg !7207

if.else:                                          ; preds = %for.body
  %6 = load ptr, ptr %folio1, align 8, !dbg !7208
  call void @folio_mark_uptodate(ptr noundef %6) #13, !dbg !7209
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %folio1, align 8, !dbg !7210
  call void @folio_unlock(ptr noundef %7) #13, !dbg !7211
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio1) #12, !dbg !7212
  br label %for.inc, !dbg !7213

for.inc:                                          ; preds = %if.end
  %8 = load ptr, ptr %bio.addr, align 8, !dbg !7198
  call void @bio_next_folio(ptr noundef %fi, ptr noundef %8) #13, !dbg !7198
  br label %for.cond, !dbg !7198, !llvm.loop !7214

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %bio.addr, align 8, !dbg !7216
  %bi_private = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 10, !dbg !7218
  %10 = load ptr, ptr %bi_private, align 8, !dbg !7218
  %tobool4 = icmp ne ptr %10, null, !dbg !7216
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !7219

if.then5:                                         ; preds = %for.end
  %11 = load ptr, ptr %bio.addr, align 8, !dbg !7220
  %bi_private6 = getelementptr inbounds %struct.bio, ptr %11, i32 0, i32 10, !dbg !7221
  %12 = load ptr, ptr %bi_private6, align 8, !dbg !7221
  %13 = load ptr, ptr @bio_post_read_ctx_pool, align 8, !dbg !7222
  call void @mempool_free(ptr noundef %12, ptr noundef %13) #13, !dbg !7223
  br label %if.end7, !dbg !7223

if.end7:                                          ; preds = %if.then5, %for.end
  %14 = load ptr, ptr %bio.addr, align 8, !dbg !7224
  call void @bio_put(ptr noundef %14) #13, !dbg !7225
  call void @llvm.lifetime.end.p0(i64 48, ptr %fi) #12, !dbg !7226
  ret void, !dbg !7226
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #3 align 16 !dbg !7227 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !7231, metadata !DIExpression()), !dbg !7233
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !7232, metadata !DIExpression()), !dbg !7234
  ret void, !dbg !7235
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !7236 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !7241, metadata !DIExpression()), !dbg !7242
  br label %do.body, !dbg !7243

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !7244

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !7246

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !7244

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !7248
  %1 = load ptr, ptr %list.addr, align 8, !dbg !7248
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !7248
  store volatile ptr %0, ptr %next, align 8, !dbg !7248
  br label %do.end3, !dbg !7248

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !7244

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !7250

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !7251

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !7253

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !7251

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !7255
  %3 = load ptr, ptr %list.addr, align 8, !dbg !7255
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !7255
  store volatile ptr %2, ptr %prev, align 8, !dbg !7255
  br label %do.end9, !dbg !7255

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !7251

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !7257
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @decrypt_work(ptr noundef %work) #0 align 16 !dbg !7258 {
entry:
  %work.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %bio = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !7260, metadata !DIExpression()), !dbg !7265
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #12, !dbg !7266
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !7261, metadata !DIExpression()), !dbg !7267
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !7268
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7262, metadata !DIExpression()), !dbg !7268
  %0 = load ptr, ptr %work.addr, align 8, !dbg !7268
  store ptr %0, ptr %__mptr, align 8, !dbg !7268
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7268
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !7268
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7268
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !7269
  %2 = load ptr, ptr %tmp, align 8, !dbg !7268
  store ptr %2, ptr %ctx, align 8, !dbg !7267
  call void @llvm.lifetime.start.p0(i64 8, ptr %bio) #12, !dbg !7270
  call void @llvm.dbg.declare(metadata ptr %bio, metadata !7264, metadata !DIExpression()), !dbg !7271
  %3 = load ptr, ptr %ctx, align 8, !dbg !7272
  %bio1 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %3, i32 0, i32 0, !dbg !7273
  %4 = load ptr, ptr %bio1, align 8, !dbg !7273
  store ptr %4, ptr %bio, align 8, !dbg !7271
  %5 = load ptr, ptr %bio, align 8, !dbg !7274
  %call = call zeroext i1 @fscrypt_decrypt_bio(ptr noundef %5) #13, !dbg !7276
  br i1 %call, label %if.then, label %if.else, !dbg !7277

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %ctx, align 8, !dbg !7278
  call void @bio_post_read_processing(ptr noundef %6) #13, !dbg !7279
  br label %if.end, !dbg !7279

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %bio, align 8, !dbg !7280
  call void @__read_end_io(ptr noundef %7) #13, !dbg !7281
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bio) #12, !dbg !7282
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #12, !dbg !7282
  ret void, !dbg !7282
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fscrypt_enqueue_decrypt_work(ptr noundef %work) #3 align 16 !dbg !7283 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !7285, metadata !DIExpression()), !dbg !7286
  ret void, !dbg !7287
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @verity_work(ptr noundef %work) #0 align 16 !dbg !7288 {
entry:
  %work.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %bio = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !7290, metadata !DIExpression()), !dbg !7295
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #12, !dbg !7296
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !7291, metadata !DIExpression()), !dbg !7297
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !7298
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7292, metadata !DIExpression()), !dbg !7298
  %0 = load ptr, ptr %work.addr, align 8, !dbg !7298
  store ptr %0, ptr %__mptr, align 8, !dbg !7298
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7298
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !7298
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7298
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !7299
  %2 = load ptr, ptr %tmp, align 8, !dbg !7298
  store ptr %2, ptr %ctx, align 8, !dbg !7297
  call void @llvm.lifetime.start.p0(i64 8, ptr %bio) #12, !dbg !7300
  call void @llvm.dbg.declare(metadata ptr %bio, metadata !7294, metadata !DIExpression()), !dbg !7301
  %3 = load ptr, ptr %ctx, align 8, !dbg !7302
  %bio1 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %3, i32 0, i32 0, !dbg !7303
  %4 = load ptr, ptr %bio1, align 8, !dbg !7303
  store ptr %4, ptr %bio, align 8, !dbg !7301
  br label %do.body, !dbg !7304

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7305

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7305

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %ctx, align 8, !dbg !7307
  %6 = load ptr, ptr @bio_post_read_ctx_pool, align 8, !dbg !7308
  call void @mempool_free(ptr noundef %5, ptr noundef %6) #13, !dbg !7309
  %7 = load ptr, ptr %bio, align 8, !dbg !7310
  %bi_private = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 10, !dbg !7311
  store ptr null, ptr %bi_private, align 8, !dbg !7312
  %8 = load ptr, ptr %bio, align 8, !dbg !7313
  call void @fsverity_verify_bio(ptr noundef %8) #13, !dbg !7314
  %9 = load ptr, ptr %bio, align 8, !dbg !7315
  call void @__read_end_io(ptr noundef %9) #13, !dbg !7316
  call void @llvm.lifetime.end.p0(i64 8, ptr %bio) #12, !dbg !7317
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #12, !dbg !7317
  ret void, !dbg !7317
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsverity_enqueue_verify_work(ptr noundef %work) #3 align 16 !dbg !7318 {
entry:
  %work.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !7320, metadata !DIExpression()), !dbg !7326
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !7327
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7321, metadata !DIExpression()), !dbg !7327
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !7327
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !7328
  %tobool = icmp ne i32 %0, 0, !dbg !7328
  %lnot = xor i1 %tobool, true, !dbg !7328
  %lnot1 = xor i1 %lnot, true, !dbg !7328
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7328
  %conv = sext i32 %lnot.ext to i64, !dbg !7328
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7328
  %tobool2 = icmp ne i64 %expval, 0, !dbg !7328
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7327

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !7328

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !7329
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7323, metadata !DIExpression()), !dbg !7329
  store i32 2307, ptr %__flags, align 4, !dbg !7329
  br label %do.body3, !dbg !7329

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !7330

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !7330

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !7329

do.body4:                                         ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !7332
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 251, i32 %1, i64 12) #12, !dbg !7332, !srcloc !7334
  br label %do.cond5, !dbg !7332

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7332

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !7329

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !7335

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !7335

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !7328
  br label %do.cond10, !dbg !7329

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !7329

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !7329

if.end:                                           ; preds = %do.end11, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !7327
  %tobool12 = icmp ne i32 %2, 0, !dbg !7327
  %lnot13 = xor i1 %tobool12, true, !dbg !7327
  %lnot15 = xor i1 %lnot13, true, !dbg !7327
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !7327
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !7327
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !7327
  store i64 %expval18, ptr %tmp, align 8, !dbg !7328
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !7337
  %3 = load i64, ptr %tmp, align 8, !dbg !7327
  ret void, !dbg !7338
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fscrypt_decrypt_bio(ptr noundef %bio) #3 align 16 !dbg !7339 {
entry:
  %bio.addr = alloca ptr, align 8
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !7341, metadata !DIExpression()), !dbg !7342
  ret i1 true, !dbg !7343
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7344 dso_local void @mempool_free(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsverity_verify_bio(ptr noundef %bio) #3 align 16 !dbg !7347 {
entry:
  %bio.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !7349, metadata !DIExpression()), !dbg !7355
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !7356
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7350, metadata !DIExpression()), !dbg !7356
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !7356
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !7357
  %tobool = icmp ne i32 %0, 0, !dbg !7357
  %lnot = xor i1 %tobool, true, !dbg !7357
  %lnot1 = xor i1 %lnot, true, !dbg !7357
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7357
  %conv = sext i32 %lnot.ext to i64, !dbg !7357
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7357
  %tobool2 = icmp ne i64 %expval, 0, !dbg !7357
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7356

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !7357

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !7358
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7352, metadata !DIExpression()), !dbg !7358
  store i32 2307, ptr %__flags, align 4, !dbg !7358
  br label %do.body3, !dbg !7358

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !7359

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !7359

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !7358

do.body4:                                         ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !7361
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 246, i32 %1, i64 12) #12, !dbg !7361, !srcloc !7363
  br label %do.cond5, !dbg !7361

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7361

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !7358

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !7364

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !7364

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !7357
  br label %do.cond10, !dbg !7358

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !7358

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !7358

if.end:                                           ; preds = %do.end11, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !7356
  %tobool12 = icmp ne i32 %2, 0, !dbg !7356
  %lnot13 = xor i1 %tobool12, true, !dbg !7356
  %lnot15 = xor i1 %lnot13, true, !dbg !7356
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !7356
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !7356
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !7356
  store i64 %expval18, ptr %tmp, align 8, !dbg !7357
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !7366
  %3 = load i64, ptr %tmp, align 8, !dbg !7356
  ret void, !dbg !7367
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bio_first_folio(ptr noundef %fi, ptr noundef %bio, i32 noundef %i) #3 align 16 !dbg !7368 {
entry:
  %fi.addr = alloca ptr, align 8
  %bio.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %bvec = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x323 = alloca i64, align 8
  %__UNIQUE_ID___y324 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %fi, ptr %fi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fi.addr, metadata !7373, metadata !DIExpression()), !dbg !7380
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !7374, metadata !DIExpression()), !dbg !7381
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7375, metadata !DIExpression()), !dbg !7382
  call void @llvm.lifetime.start.p0(i64 8, ptr %bvec) #12, !dbg !7383
  call void @llvm.dbg.declare(metadata ptr %bvec, metadata !7376, metadata !DIExpression()), !dbg !7384
  %0 = load ptr, ptr %bio.addr, align 8, !dbg !7385
  %call = call ptr @bio_first_bvec_all(ptr noundef %0) #13, !dbg !7386
  %1 = load i32, ptr %i.addr, align 4, !dbg !7387
  %idx.ext = sext i32 %1 to i64, !dbg !7388
  %add.ptr = getelementptr %struct.bio_vec, ptr %call, i64 %idx.ext, !dbg !7388
  store ptr %add.ptr, ptr %bvec, align 8, !dbg !7384
  %2 = load i32, ptr %i.addr, align 4, !dbg !7389
  %3 = load ptr, ptr %bio.addr, align 8, !dbg !7389
  %bi_vcnt = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 15, !dbg !7389
  %4 = load i16, ptr %bi_vcnt, align 8, !dbg !7389
  %conv = zext i16 %4 to i32, !dbg !7389
  %cmp = icmp sge i32 %2, %conv, !dbg !7389
  %lnot = xor i1 %cmp, true, !dbg !7389
  %lnot2 = xor i1 %lnot, true, !dbg !7389
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !7389
  %conv3 = sext i32 %lnot.ext to i64, !dbg !7389
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !7389
  %tobool = icmp ne i64 %expval, 0, !dbg !7389
  br i1 %tobool, label %if.then, label %if.end, !dbg !7391

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %fi.addr, align 8, !dbg !7392
  %folio = getelementptr inbounds %struct.folio_iter, ptr %5, i32 0, i32 0, !dbg !7394
  store ptr null, ptr %folio, align 8, !dbg !7395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7396

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %bvec, align 8, !dbg !7397
  %bv_page = getelementptr inbounds %struct.bio_vec, ptr %6, i32 0, i32 0, !dbg !7397
  %7 = load ptr, ptr %bv_page, align 8, !dbg !7397
  %call4 = call i64 @_compound_head(ptr noundef %7) #13, !dbg !7397
  %8 = inttoptr i64 %call4 to ptr, !dbg !7397
  %9 = load ptr, ptr %fi.addr, align 8, !dbg !7398
  %folio5 = getelementptr inbounds %struct.folio_iter, ptr %9, i32 0, i32 0, !dbg !7399
  store ptr %8, ptr %folio5, align 8, !dbg !7400
  %10 = load ptr, ptr %bvec, align 8, !dbg !7401
  %bv_offset = getelementptr inbounds %struct.bio_vec, ptr %10, i32 0, i32 2, !dbg !7402
  %11 = load i32, ptr %bv_offset, align 4, !dbg !7402
  %conv6 = zext i32 %11 to i64, !dbg !7401
  %12 = load ptr, ptr %bvec, align 8, !dbg !7403
  %bv_page7 = getelementptr inbounds %struct.bio_vec, ptr %12, i32 0, i32 0, !dbg !7404
  %13 = load ptr, ptr %bv_page7, align 8, !dbg !7404
  %14 = load ptr, ptr %fi.addr, align 8, !dbg !7405
  %folio8 = getelementptr inbounds %struct.folio_iter, ptr %14, i32 0, i32 0, !dbg !7406
  %15 = load ptr, ptr %folio8, align 8, !dbg !7406
  %16 = getelementptr inbounds %struct.folio, ptr %15, i32 0, i32 0, !dbg !7407
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i64, !dbg !7408
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i64, !dbg !7408
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !7408
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !7408
  %mul = mul i64 4096, %sub.ptr.div, !dbg !7409
  %add = add i64 %conv6, %mul, !dbg !7410
  %17 = load ptr, ptr %fi.addr, align 8, !dbg !7411
  %offset = getelementptr inbounds %struct.folio_iter, ptr %17, i32 0, i32 1, !dbg !7412
  store i64 %add, ptr %offset, align 8, !dbg !7413
  %18 = load ptr, ptr %bvec, align 8, !dbg !7414
  %bv_len = getelementptr inbounds %struct.bio_vec, ptr %18, i32 0, i32 1, !dbg !7415
  %19 = load i32, ptr %bv_len, align 8, !dbg !7415
  %conv9 = zext i32 %19 to i64, !dbg !7414
  %20 = load ptr, ptr %fi.addr, align 8, !dbg !7416
  %_seg_count = getelementptr inbounds %struct.folio_iter, ptr %20, i32 0, i32 4, !dbg !7417
  store i64 %conv9, ptr %_seg_count, align 8, !dbg !7418
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x323) #12, !dbg !7419
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x323, metadata !7377, metadata !DIExpression()), !dbg !7419
  %21 = load ptr, ptr %fi.addr, align 8, !dbg !7419
  %folio10 = getelementptr inbounds %struct.folio_iter, ptr %21, i32 0, i32 0, !dbg !7419
  %22 = load ptr, ptr %folio10, align 8, !dbg !7419
  %call11 = call i64 @folio_size(ptr noundef %22) #13, !dbg !7419
  %23 = load ptr, ptr %fi.addr, align 8, !dbg !7419
  %offset12 = getelementptr inbounds %struct.folio_iter, ptr %23, i32 0, i32 1, !dbg !7419
  %24 = load i64, ptr %offset12, align 8, !dbg !7419
  %sub = sub i64 %call11, %24, !dbg !7419
  store i64 %sub, ptr %__UNIQUE_ID___x323, align 8, !dbg !7419
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y324) #12, !dbg !7419
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y324, metadata !7379, metadata !DIExpression()), !dbg !7419
  %25 = load ptr, ptr %fi.addr, align 8, !dbg !7419
  %_seg_count13 = getelementptr inbounds %struct.folio_iter, ptr %25, i32 0, i32 4, !dbg !7419
  %26 = load i64, ptr %_seg_count13, align 8, !dbg !7419
  store i64 %26, ptr %__UNIQUE_ID___y324, align 8, !dbg !7419
  %27 = load i64, ptr %__UNIQUE_ID___x323, align 8, !dbg !7419
  %28 = load i64, ptr %__UNIQUE_ID___y324, align 8, !dbg !7419
  %cmp14 = icmp ult i64 %27, %28, !dbg !7419
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !7419

cond.true:                                        ; preds = %if.end
  %29 = load i64, ptr %__UNIQUE_ID___x323, align 8, !dbg !7419
  br label %cond.end, !dbg !7419

cond.false:                                       ; preds = %if.end
  %30 = load i64, ptr %__UNIQUE_ID___y324, align 8, !dbg !7419
  br label %cond.end, !dbg !7419

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %29, %cond.true ], [ %30, %cond.false ], !dbg !7419
  store i64 %cond, ptr %tmp, align 8, !dbg !7419
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y324) #12, !dbg !7420
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x323) #12, !dbg !7420
  %31 = load i64, ptr %tmp, align 8, !dbg !7419
  %32 = load ptr, ptr %fi.addr, align 8, !dbg !7421
  %length = getelementptr inbounds %struct.folio_iter, ptr %32, i32 0, i32 2, !dbg !7422
  store i64 %31, ptr %length, align 8, !dbg !7423
  %33 = load ptr, ptr %fi.addr, align 8, !dbg !7424
  %folio16 = getelementptr inbounds %struct.folio_iter, ptr %33, i32 0, i32 0, !dbg !7425
  %34 = load ptr, ptr %folio16, align 8, !dbg !7425
  %call17 = call ptr @folio_next(ptr noundef %34) #13, !dbg !7426
  %35 = load ptr, ptr %fi.addr, align 8, !dbg !7427
  %_next = getelementptr inbounds %struct.folio_iter, ptr %35, i32 0, i32 3, !dbg !7428
  store ptr %call17, ptr %_next, align 8, !dbg !7429
  %36 = load i32, ptr %i.addr, align 4, !dbg !7430
  %37 = load ptr, ptr %fi.addr, align 8, !dbg !7431
  %_i = getelementptr inbounds %struct.folio_iter, ptr %37, i32 0, i32 5, !dbg !7432
  store i32 %36, ptr %_i, align 8, !dbg !7433
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7434
  br label %cleanup, !dbg !7434

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bvec) #12, !dbg !7434
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7434

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_clear_uptodate(ptr noundef %folio) #4 align 16 !dbg !7435 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7437, metadata !DIExpression()), !dbg !7438
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7438
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #13, !dbg !7438
  call void @clear_bit(i64 noundef 3, ptr noundef %call) #13, !dbg !7438
  ret void, !dbg !7438
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bio_next_folio(ptr noundef %fi, ptr noundef %bio) #3 align 16 !dbg !7439 {
entry:
  %fi.addr = alloca ptr, align 8
  %bio.addr = alloca ptr, align 8
  %__UNIQUE_ID___x325 = alloca i64, align 8
  %__UNIQUE_ID___y326 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %fi, ptr %fi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fi.addr, metadata !7443, metadata !DIExpression()), !dbg !7450
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !7444, metadata !DIExpression()), !dbg !7451
  %0 = load ptr, ptr %fi.addr, align 8, !dbg !7452
  %length = getelementptr inbounds %struct.folio_iter, ptr %0, i32 0, i32 2, !dbg !7453
  %1 = load i64, ptr %length, align 8, !dbg !7453
  %2 = load ptr, ptr %fi.addr, align 8, !dbg !7454
  %_seg_count = getelementptr inbounds %struct.folio_iter, ptr %2, i32 0, i32 4, !dbg !7455
  %3 = load i64, ptr %_seg_count, align 8, !dbg !7456
  %sub = sub i64 %3, %1, !dbg !7456
  store i64 %sub, ptr %_seg_count, align 8, !dbg !7456
  %4 = load ptr, ptr %fi.addr, align 8, !dbg !7457
  %_seg_count1 = getelementptr inbounds %struct.folio_iter, ptr %4, i32 0, i32 4, !dbg !7458
  %5 = load i64, ptr %_seg_count1, align 8, !dbg !7458
  %tobool = icmp ne i64 %5, 0, !dbg !7457
  br i1 %tobool, label %if.then, label %if.else, !dbg !7459

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %fi.addr, align 8, !dbg !7460
  %_next = getelementptr inbounds %struct.folio_iter, ptr %6, i32 0, i32 3, !dbg !7461
  %7 = load ptr, ptr %_next, align 8, !dbg !7461
  %8 = load ptr, ptr %fi.addr, align 8, !dbg !7462
  %folio = getelementptr inbounds %struct.folio_iter, ptr %8, i32 0, i32 0, !dbg !7463
  store ptr %7, ptr %folio, align 8, !dbg !7464
  %9 = load ptr, ptr %fi.addr, align 8, !dbg !7465
  %offset = getelementptr inbounds %struct.folio_iter, ptr %9, i32 0, i32 1, !dbg !7466
  store i64 0, ptr %offset, align 8, !dbg !7467
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x325) #12, !dbg !7468
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x325, metadata !7445, metadata !DIExpression()), !dbg !7468
  %10 = load ptr, ptr %fi.addr, align 8, !dbg !7468
  %folio2 = getelementptr inbounds %struct.folio_iter, ptr %10, i32 0, i32 0, !dbg !7468
  %11 = load ptr, ptr %folio2, align 8, !dbg !7468
  %call = call i64 @folio_size(ptr noundef %11) #13, !dbg !7468
  store i64 %call, ptr %__UNIQUE_ID___x325, align 8, !dbg !7468
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y326) #12, !dbg !7468
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y326, metadata !7449, metadata !DIExpression()), !dbg !7468
  %12 = load ptr, ptr %fi.addr, align 8, !dbg !7468
  %_seg_count3 = getelementptr inbounds %struct.folio_iter, ptr %12, i32 0, i32 4, !dbg !7468
  %13 = load i64, ptr %_seg_count3, align 8, !dbg !7468
  store i64 %13, ptr %__UNIQUE_ID___y326, align 8, !dbg !7468
  %14 = load i64, ptr %__UNIQUE_ID___x325, align 8, !dbg !7468
  %15 = load i64, ptr %__UNIQUE_ID___y326, align 8, !dbg !7468
  %cmp = icmp ult i64 %14, %15, !dbg !7468
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7468

cond.true:                                        ; preds = %if.then
  %16 = load i64, ptr %__UNIQUE_ID___x325, align 8, !dbg !7468
  br label %cond.end, !dbg !7468

cond.false:                                       ; preds = %if.then
  %17 = load i64, ptr %__UNIQUE_ID___y326, align 8, !dbg !7468
  br label %cond.end, !dbg !7468

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !7468
  store i64 %cond, ptr %tmp, align 8, !dbg !7468
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y326) #12, !dbg !7469
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x325) #12, !dbg !7469
  %18 = load i64, ptr %tmp, align 8, !dbg !7468
  %19 = load ptr, ptr %fi.addr, align 8, !dbg !7470
  %length4 = getelementptr inbounds %struct.folio_iter, ptr %19, i32 0, i32 2, !dbg !7471
  store i64 %18, ptr %length4, align 8, !dbg !7472
  %20 = load ptr, ptr %fi.addr, align 8, !dbg !7473
  %folio5 = getelementptr inbounds %struct.folio_iter, ptr %20, i32 0, i32 0, !dbg !7474
  %21 = load ptr, ptr %folio5, align 8, !dbg !7474
  %call6 = call ptr @folio_next(ptr noundef %21) #13, !dbg !7475
  %22 = load ptr, ptr %fi.addr, align 8, !dbg !7476
  %_next7 = getelementptr inbounds %struct.folio_iter, ptr %22, i32 0, i32 3, !dbg !7477
  store ptr %call6, ptr %_next7, align 8, !dbg !7478
  br label %if.end, !dbg !7479

if.else:                                          ; preds = %entry
  %23 = load ptr, ptr %fi.addr, align 8, !dbg !7480
  %24 = load ptr, ptr %bio.addr, align 8, !dbg !7482
  %25 = load ptr, ptr %fi.addr, align 8, !dbg !7483
  %_i = getelementptr inbounds %struct.folio_iter, ptr %25, i32 0, i32 5, !dbg !7484
  %26 = load i32, ptr %_i, align 8, !dbg !7484
  %add = add i32 %26, 1, !dbg !7485
  call void @bio_first_folio(ptr noundef %23, ptr noundef %24, i32 noundef %add) #13, !dbg !7486
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  ret void, !dbg !7487
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7488 dso_local void @bio_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @bio_first_bvec_all(ptr noundef %bio) #3 align 16 !dbg !7489 {
entry:
  %bio.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !7493, metadata !DIExpression()), !dbg !7499
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !7500
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7494, metadata !DIExpression()), !dbg !7500
  %0 = load ptr, ptr %bio.addr, align 8, !dbg !7500
  %call = call zeroext i1 @bio_flagged(ptr noundef %0, i32 noundef 1) #13, !dbg !7500
  %lnot = xor i1 %call, true, !dbg !7500
  %lnot1 = xor i1 %lnot, true, !dbg !7500
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7500
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !7500
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !7501
  %tobool = icmp ne i32 %1, 0, !dbg !7501
  %lnot2 = xor i1 %tobool, true, !dbg !7501
  %lnot4 = xor i1 %lnot2, true, !dbg !7501
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !7501
  %conv = sext i32 %lnot.ext5 to i64, !dbg !7501
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7501
  %tobool6 = icmp ne i64 %expval, 0, !dbg !7501
  br i1 %tobool6, label %if.then, label %if.end, !dbg !7500

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !7501

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !7502
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7496, metadata !DIExpression()), !dbg !7502
  store i32 2307, ptr %__flags, align 4, !dbg !7502
  br label %do.body7, !dbg !7502

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !7503

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !7503

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !7502

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !7505
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 247, i32 %2, i64 12) #12, !dbg !7505, !srcloc !7507
  br label %do.cond9, !dbg !7505

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !7505

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !7502

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !7508

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !7508

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !7501
  br label %do.cond14, !dbg !7502

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !7502

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !7502

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !7500
  %tobool16 = icmp ne i32 %3, 0, !dbg !7500
  %lnot17 = xor i1 %tobool16, true, !dbg !7500
  %lnot19 = xor i1 %lnot17, true, !dbg !7500
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !7500
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !7500
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !7500
  store i64 %expval22, ptr %tmp, align 8, !dbg !7501
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !7510
  %4 = load i64, ptr %tmp, align 8, !dbg !7500
  %5 = load ptr, ptr %bio.addr, align 8, !dbg !7511
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 18, !dbg !7512
  %6 = load ptr, ptr %bi_io_vec, align 8, !dbg !7512
  ret ptr %6, !dbg !7513
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_compound_head(ptr noundef %page) #3 align 16 !dbg !7514 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %head = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7518, metadata !DIExpression()), !dbg !7520
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #12, !dbg !7521
  call void @llvm.dbg.declare(metadata ptr %head, metadata !7519, metadata !DIExpression()), !dbg !7522
  br label %do.body, !dbg !7523

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7525

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7525

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7523
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !7523
  %compound_head = getelementptr inbounds %struct.anon.29, ptr %1, i32 0, i32 0, !dbg !7523
  %2 = load volatile i64, ptr %compound_head, align 8, !dbg !7523
  store i64 %2, ptr %tmp, align 8, !dbg !7525
  %3 = load i64, ptr %tmp, align 8, !dbg !7523
  store i64 %3, ptr %head, align 8, !dbg !7522
  %4 = load i64, ptr %head, align 8, !dbg !7527
  %and = and i64 %4, 1, !dbg !7527
  %tobool = icmp ne i64 %and, 0, !dbg !7527
  %lnot = xor i1 %tobool, true, !dbg !7527
  %lnot1 = xor i1 %lnot, true, !dbg !7527
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7527
  %conv = sext i32 %lnot.ext to i64, !dbg !7527
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7527
  %tobool2 = icmp ne i64 %expval, 0, !dbg !7527
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7529

if.then:                                          ; preds = %do.end
  %5 = load i64, ptr %head, align 8, !dbg !7530
  %sub = sub i64 %5, 1, !dbg !7531
  store i64 %sub, ptr %retval, align 8, !dbg !7532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7532

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %page.addr, align 8, !dbg !7533
  %call = call ptr @page_fixed_fake_head(ptr noundef %6) #13, !dbg !7534
  %7 = ptrtoint ptr %call to i64, !dbg !7535
  store i64 %7, ptr %retval, align 8, !dbg !7536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7536

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #12, !dbg !7537
  %8 = load i64, ptr %retval, align 8, !dbg !7537
  ret i64 %8, !dbg !7537
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_next(ptr noundef %folio) #3 align 16 !dbg !7538 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7542, metadata !DIExpression()), !dbg !7543
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7544
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !7544
  %2 = load ptr, ptr %folio.addr, align 8, !dbg !7544
  %call = call i64 @folio_nr_pages(ptr noundef %2) #13, !dbg !7544
  %add.ptr = getelementptr %struct.page, ptr %1, i64 %call, !dbg !7544
  ret ptr %add.ptr, !dbg !7545
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bio_flagged(ptr noundef %bio, i32 noundef %bit) #3 align 16 !dbg !7546 {
entry:
  %bio.addr = alloca ptr, align 8
  %bit.addr = alloca i32, align 4
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !7550, metadata !DIExpression()), !dbg !7552
  store i32 %bit, ptr %bit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !7551, metadata !DIExpression()), !dbg !7553
  %0 = load ptr, ptr %bio.addr, align 8, !dbg !7554
  %bi_flags = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3, !dbg !7555
  %1 = load i16, ptr %bi_flags, align 4, !dbg !7555
  %conv = zext i16 %1 to i32, !dbg !7554
  %2 = load i32, ptr %bit.addr, align 4, !dbg !7556
  %shl = shl i32 1, %2, !dbg !7557
  %and = and i32 %conv, %shl, !dbg !7558
  %tobool = icmp ne i32 %and, 0, !dbg !7554
  ret i1 %tobool, !dbg !7559
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @page_fixed_fake_head(ptr noundef %page) #4 align 16 !dbg !7560 {
entry:
  %retval = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %head = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7564, metadata !DIExpression()), !dbg !7571
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #12, !dbg !7572
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !7565, metadata !DIExpression()), !dbg !7572
  %call = call zeroext i1 @arch_static_branch(ptr noundef @hugetlb_optimize_vmemmap_key, i1 noundef zeroext false) #13, !dbg !7573
  %frombool = zext i1 %call to i8, !dbg !7573
  store i8 %frombool, ptr %branch, align 1, !dbg !7573
  %0 = load i8, ptr %branch, align 1, !dbg !7572, !range !6409, !noundef !1248
  %tobool = trunc i8 %0 to i1, !dbg !7572
  %lnot = xor i1 %tobool, true, !dbg !7572
  %lnot1 = xor i1 %lnot, true, !dbg !7572
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7572
  %conv = sext i32 %lnot.ext to i64, !dbg !7572
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7572
  store i64 %expval, ptr %tmp, align 8, !dbg !7576
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #12, !dbg !7577
  %1 = load i64, ptr %tmp, align 8, !dbg !7572
  %tobool2 = icmp ne i64 %1, 0, !dbg !7577
  br i1 %tobool2, label %if.end, label %if.then, !dbg !7578

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !7579
  store ptr %2, ptr %retval, align 8, !dbg !7580
  br label %return, !dbg !7580

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !7581
  %4 = ptrtoint ptr %3 to i64, !dbg !7581
  %and = and i64 %4, 4095, !dbg !7581
  %cmp = icmp eq i64 %and, 0, !dbg !7581
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !7582

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %page.addr, align 8, !dbg !7583
  %flags = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 0, !dbg !7583
  %6 = ptrtoint ptr %flags to i64, !dbg !7583
  %cmp4 = icmp ne i64 %6, 0, !dbg !7583
  %conv5 = zext i1 %cmp4 to i32, !dbg !7583
  %7 = call i1 @llvm.is.constant.i32(i32 %conv5), !dbg !7583
  br i1 %7, label %land.lhs.true6, label %cond.false, !dbg !7583

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %page.addr, align 8, !dbg !7583
  %flags7 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 0, !dbg !7583
  %9 = ptrtoint ptr %flags7 to i64, !dbg !7583
  %cmp8 = icmp ne i64 %9, 0, !dbg !7583
  br i1 %cmp8, label %land.lhs.true10, label %cond.false, !dbg !7583

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %10 = load ptr, ptr %page.addr, align 8, !dbg !7583
  %flags11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 0, !dbg !7583
  %11 = load i64, ptr %flags11, align 16, !dbg !7583
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !7583
  br i1 %12, label %cond.true, label %cond.false, !dbg !7584

cond.true:                                        ; preds = %land.lhs.true10
  %13 = load ptr, ptr %page.addr, align 8, !dbg !7583
  %flags12 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 0, !dbg !7583
  %call13 = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags12) #13, !dbg !7583
  br i1 %call13, label %if.then18, label %if.end31, !dbg !7583

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true
  %14 = load ptr, ptr %page.addr, align 8, !dbg !7583
  %flags15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 0, !dbg !7583
  %call16 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags15) #13, !dbg !7583
  br i1 %call16, label %if.then18, label %if.end31, !dbg !7584

if.then18:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #12, !dbg !7585
  call void @llvm.dbg.declare(metadata ptr %head, metadata !7568, metadata !DIExpression()), !dbg !7586
  br label %do.body, !dbg !7587

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !7589

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7589

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %page.addr, align 8, !dbg !7587
  %arrayidx = getelementptr %struct.page, ptr %15, i64 1, !dbg !7587
  %16 = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 1, !dbg !7587
  %compound_head = getelementptr inbounds %struct.anon.29, ptr %16, i32 0, i32 0, !dbg !7587
  %17 = load volatile i64, ptr %compound_head, align 8, !dbg !7587
  store i64 %17, ptr %tmp19, align 8, !dbg !7589
  %18 = load i64, ptr %tmp19, align 8, !dbg !7587
  store i64 %18, ptr %head, align 8, !dbg !7586
  %19 = load i64, ptr %head, align 8, !dbg !7591
  %and20 = and i64 %19, 1, !dbg !7591
  %tobool21 = icmp ne i64 %and20, 0, !dbg !7591
  %lnot22 = xor i1 %tobool21, true, !dbg !7591
  %lnot24 = xor i1 %lnot22, true, !dbg !7591
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !7591
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !7591
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 1), !dbg !7591
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !7591
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !7593

if.then29:                                        ; preds = %do.end
  %20 = load i64, ptr %head, align 8, !dbg !7594
  %sub = sub i64 %20, 1, !dbg !7595
  %21 = inttoptr i64 %sub to ptr, !dbg !7596
  store ptr %21, ptr %retval, align 8, !dbg !7597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7597

if.end30:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7598
  br label %cleanup, !dbg !7598

cleanup:                                          ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #12, !dbg !7598
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31, !dbg !7599

if.end31:                                         ; preds = %cleanup.cont, %cond.false, %cond.true, %if.end
  %22 = load ptr, ptr %page.addr, align 8, !dbg !7600
  store ptr %22, ptr %retval, align 8, !dbg !7601
  br label %return, !dbg !7601

return:                                           ; preds = %if.end31, %cleanup, %if.then
  %23 = load ptr, ptr %retval, align 8, !dbg !7602
  ret ptr %23, !dbg !7602

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !7603 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7620, metadata !DIExpression()), !dbg !7623
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !7621, metadata !DIExpression()), !dbg !7624
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7625
  %1 = load i8, ptr %branch.addr, align 1, !dbg !7626, !range !6409, !noundef !1248
  %tobool = trunc i8 %1 to i1, !dbg !7626
  %conv = zext i1 %tobool to i32, !dbg !7626
  %or = or i32 2, %conv, !dbg !7627
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !7628, !srcloc !7629

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7630
  br label %return, !dbg !7630

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !7622), !dbg !7631
  store i1 true, ptr %retval, align 1, !dbg !7632
  br label %return, !dbg !7632

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !7633
  ret i1 %2, !dbg !7633
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7634 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7636, metadata !DIExpression()), !dbg !7638
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7637, metadata !DIExpression()), !dbg !7639
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7640
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7641
  %div = sdiv i64 %1, 64, !dbg !7641
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7642
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !7643
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7644
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7645
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !7646
  ret void, !dbg !7647
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7648 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7650, metadata !DIExpression()), !dbg !7652
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7651, metadata !DIExpression()), !dbg !7653
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7654
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7656
  br i1 %1, label %if.then, label %if.else, !dbg !7657

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7658
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7658
  %shr = ashr i64 %3, 3, !dbg !7658
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7658
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7660
  %and = and i64 %4, 7, !dbg !7660
  %sh_prom = trunc i64 %and to i32, !dbg !7660
  %shl = shl i32 1, %sh_prom, !dbg !7660
  %not = xor i32 %shl, -1, !dbg !7661
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #12, !dbg !7662, !srcloc !7663
  br label %if.end, !dbg !7664

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7665
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7667
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #12, !dbg !7668, !srcloc !7669
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7670
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7671 dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620}
!llvm.ident = !{!5621}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 403, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/ext4/readpage.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef2baa14e504c5b7700ecb3215ecbc44")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "bio_post_read_ctx_cache", scope: !9, file: !2, line: 51, type: !2545, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/ext4/.readpage.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/ext4/ext4\22 -D KBUILD_BASENAME=\22readpage\22 -D KBUILD_MODNAME=\22ext4\22 -D __KBUILD_MODNAME=kmod_ext4 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/ext4/readpage.ll fs/ext4/readpage.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !5562, globals: !5585, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !27, !35, !51, !56, !63, !69, !74, !80, !86, !92, !99, !104, !112, !120, !129, !134, !139, !145, !149, !154, !166, !172, !179, !199, !205, !5430, !5447, !5470, !5510, !5515, !5521, !5546}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !20, line: 68, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!21 = !{!22, !23, !24, !25, !26}
!22 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!23 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!24 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!25 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!26 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !28, line: 9, baseType: !13, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!31 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!32 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!33 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!34 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !36, line: 1325, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!38 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!39 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!40 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!41 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!42 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!43 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!44 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!45 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!46 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!47 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!48 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!49 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!50 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !52, line: 32, baseType: !13, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!53 = !{!54, !55}
!54 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!55 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !57, line: 15, baseType: !13, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!60 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!61 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!62 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !64, line: 26, baseType: !13, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!67 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!68 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !70, line: 2052, baseType: !13, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!73 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !75, line: 54, baseType: !13, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "USRQUOTA", value: 0)
!78 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!79 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !81, line: 1381, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!84 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!85 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !87, line: 45, baseType: !13, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!88 = !{!89, !90, !91}
!89 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!90 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!91 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !93, line: 487, baseType: !13, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!94 = !{!95, !96, !97, !98}
!95 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!96 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!97 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!98 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !100, line: 65, baseType: !13, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!101 = !{!102, !103}
!102 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!103 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !105, line: 620, baseType: !13, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!106 = !{!107, !108, !109, !110, !111}
!107 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!108 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!109 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!110 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!111 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !105, line: 597, baseType: !113, size: 32, elements: !114)
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !{!115, !116, !117, !118, !119}
!115 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!116 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!117 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!118 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!119 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !93, line: 547, baseType: !13, size: 32, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128}
!122 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!124 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!125 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!126 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!127 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!128 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !93, line: 564, baseType: !13, size: 32, elements: !130)
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!132 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !93, line: 577, baseType: !13, size: 32, elements: !135)
!135 = !{!136, !137, !138}
!136 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!137 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !93, line: 503, baseType: !13, size: 32, elements: !140)
!140 = !{!141, !142, !143, !144}
!141 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!142 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!143 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!144 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !81, line: 295, baseType: !13, size: 32, elements: !146)
!146 = !{!147, !148}
!147 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!148 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !81, line: 285, baseType: !13, size: 32, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!152 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!153 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !155, line: 44, baseType: !13, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165}
!157 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!158 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!159 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!160 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!161 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!162 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!163 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!164 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!165 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !167, line: 16, baseType: !13, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!168 = !{!169, !170, !171}
!169 = !DIEnumerator(name: "TT_NONE", value: 0)
!170 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!171 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !173, line: 51, baseType: !13, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!174 = !{!175, !176, !177, !178}
!175 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!176 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!177 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!178 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bh_state_bits", file: !180, line: 19, baseType: !13, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/buffer_head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc335f14f0fab7e7c331101f97325549")
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!182 = !DIEnumerator(name: "BH_Uptodate", value: 0)
!183 = !DIEnumerator(name: "BH_Dirty", value: 1)
!184 = !DIEnumerator(name: "BH_Lock", value: 2)
!185 = !DIEnumerator(name: "BH_Req", value: 3)
!186 = !DIEnumerator(name: "BH_Mapped", value: 4)
!187 = !DIEnumerator(name: "BH_New", value: 5)
!188 = !DIEnumerator(name: "BH_Async_Read", value: 6)
!189 = !DIEnumerator(name: "BH_Async_Write", value: 7)
!190 = !DIEnumerator(name: "BH_Delay", value: 8)
!191 = !DIEnumerator(name: "BH_Boundary", value: 9)
!192 = !DIEnumerator(name: "BH_Write_EIO", value: 10)
!193 = !DIEnumerator(name: "BH_Unwritten", value: 11)
!194 = !DIEnumerator(name: "BH_Quiet", value: 12)
!195 = !DIEnumerator(name: "BH_Meta", value: 13)
!196 = !DIEnumerator(name: "BH_Prio", value: 14)
!197 = !DIEnumerator(name: "BH_Defer_Completion", value: 15)
!198 = !DIEnumerator(name: "BH_PrivateStart", value: 16)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "passtype", file: !200, line: 741, baseType: !13, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/jbd2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "072378681f9a7c8bcf642036e73917c8")
!201 = !{!202, !203, !204}
!202 = !DIEnumerator(name: "PASS_SCAN", value: 0)
!203 = !DIEnumerator(name: "PASS_REVOKE", value: 1)
!204 = !DIEnumerator(name: "PASS_REPLAY", value: 2)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !206, file: !200, line: 567, baseType: !13, size: 32, elements: !5420)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_s", file: !200, line: 551, size: 1664, elements: !207)
!207 = !{!208, !5359, !5360, !5361, !5362, !5363, !5394, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5409, !5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5419}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "t_journal", scope: !206, file: !200, line: 554, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_t", file: !200, line: 105, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_s", file: !200, line: 750, size: 11776, elements: !212)
!212 = !{!213, !215, !216, !217, !279, !5119, !5160, !5161, !5162, !5163, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5214, !5216, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5229, !5243, !5244, !5245, !5248, !5265, !5266, !5267, !5345, !5346, !5351, !5355}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "j_flags", scope: !211, file: !200, line: 756, baseType: !214, size: 64)
!214 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "j_atomic_flags", scope: !211, file: !200, line: 761, baseType: !214, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "j_errno", scope: !211, file: !200, line: 769, baseType: !113, size: 32, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "j_abort_mutex", scope: !211, file: !200, line: 774, baseType: !218, size: 256, offset: 192)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !219, line: 66, size: 256, elements: !220)
!219 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!220 = !{!221, !234, !268, !273}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !218, file: !219, line: 67, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !223, line: 13, baseType: !224)
!223 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !225, line: 181, baseType: !226)
!225 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 179, size: 64, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !226, file: !225, line: 180, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !230, line: 22, baseType: !231)
!230 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !232, line: 30, baseType: !233)
!232 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!233 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !218, file: !219, line: 68, baseType: !235, size: 32, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !236, line: 23, baseType: !237)
!236 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !236, line: 14, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !237, file: !236, line: 15, baseType: !240, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !241, line: 44, baseType: !242)
!241 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !241, line: 14, size: 32, elements: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !242, file: !241, line: 15, baseType: !245, size: 32)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !241, line: 15, size: 32, elements: !246)
!246 = !{!247, !252, !260}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !245, file: !241, line: 16, baseType: !248, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !225, line: 174, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 172, size: 32, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !249, file: !225, line: 173, baseType: !113, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !241, line: 24, baseType: !253, size: 16)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !245, file: !241, line: 24, size: 16, elements: !254)
!254 = !{!255, !259}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !253, file: !241, line: 25, baseType: !256, size: 8)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !230, line: 17, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !232, line: 21, baseType: !258)
!258 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !253, file: !241, line: 26, baseType: !256, size: 8, offset: 8)
!260 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !241, line: 28, baseType: !261, size: 32)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !245, file: !241, line: 28, size: 32, elements: !262)
!262 = !{!263, !267}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !261, file: !241, line: 29, baseType: !264, size: 16)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !230, line: 19, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !232, line: 24, baseType: !266)
!266 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !261, file: !241, line: 30, baseType: !264, size: 16, offset: 16)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !218, file: !219, line: 70, baseType: !269, size: 32, offset: 96)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !270, line: 15, size: 32, elements: !271)
!270 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !269, file: !270, line: 20, baseType: !248, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !218, file: !219, line: 72, baseType: !274, size: 128, offset: 128)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !225, line: 190, size: 128, elements: !275)
!275 = !{!276, !278}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !225, line: 191, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !274, file: !225, line: 191, baseType: !277, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "j_sb_buffer", scope: !211, file: !200, line: 779, baseType: !280, size: 64, offset: 448)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_head", file: !180, line: 59, size: 832, elements: !282)
!282 = !{!283, !284, !285, !5105, !5106, !5107, !5108, !5109, !5114, !5115, !5116, !5117, !5118}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "b_state", scope: !281, file: !180, line: 60, baseType: !214, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "b_this_page", scope: !281, file: !180, line: 61, baseType: !280, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !180, line: 62, baseType: !286, size: 64, offset: 128)
!286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !281, file: !180, line: 62, size: 64, elements: !287)
!287 = !{!288, !5104}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "b_page", scope: !286, file: !180, line: 63, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !36, line: 74, size: 512, align: 128, elements: !291)
!291 = !{!292, !293, !5098, !5103}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !36, line: 75, baseType: !214, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, scope: !290, file: !36, line: 83, baseType: !294, size: 320, offset: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !290, file: !36, line: 83, size: 320, elements: !295)
!295 = !{!296, !5024, !5038, !5042, !5097}
!296 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !36, line: 84, baseType: !297, size: 320)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !36, line: 84, size: 320, elements: !298)
!298 = !{!299, !311, !5018, !5023}
!299 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !36, line: 90, baseType: !300, size: 128)
!300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !36, line: 90, size: 128, elements: !301)
!301 = !{!302, !303, !309, !310}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !300, file: !36, line: 91, baseType: !274, size: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, scope: !300, file: !36, line: 94, baseType: !304, size: 128)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !36, line: 94, size: 128, elements: !305)
!305 = !{!306, !308}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !304, file: !36, line: 96, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !304, file: !36, line: 98, baseType: !13, size: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !300, file: !36, line: 102, baseType: !274, size: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !300, file: !36, line: 103, baseType: !274, size: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !297, file: !36, line: 106, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !70, line: 472, size: 1536, align: 64, elements: !314)
!314 = !{!315, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !5012, !5013, !5014, !5015, !5016, !5017}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !313, file: !70, line: 473, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !70, line: 641, size: 4800, elements: !318)
!318 = !{!319, !321, !322, !331, !332, !339, !340, !343, !344, !4848, !4849, !4850, !4851, !4852, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4892, !4895, !4896, !4897, !4906, !4907, !4908, !4909}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !317, file: !70, line: 642, baseType: !320, size: 16)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !225, line: 24, baseType: !266)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !317, file: !70, line: 643, baseType: !266, size: 16, offset: 16)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !317, file: !70, line: 644, baseType: !323, size: 32, offset: 32)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !324, line: 23, baseType: !325)
!324 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 21, size: 32, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !325, file: !324, line: 22, baseType: !328, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !225, line: 37, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !330, line: 49, baseType: !13)
!330 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !317, file: !70, line: 645, baseType: !274, size: 128, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !317, file: !70, line: 646, baseType: !333, size: 32, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !324, line: 28, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 26, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !334, file: !324, line: 27, baseType: !337, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !225, line: 38, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !330, line: 50, baseType: !13)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !317, file: !70, line: 647, baseType: !13, size: 32, offset: 224)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !317, file: !70, line: 650, baseType: !341, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !70, line: 607, flags: DIFlagFwdDecl)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !317, file: !70, line: 651, baseType: !341, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !317, file: !70, line: 654, baseType: !345, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !70, line: 1966, size: 2048, align: 512, elements: !348)
!348 = !{!349, !4664, !4674, !4678, !4682, !4686, !4690, !4694, !4698, !4702, !4706, !4707, !4711, !4715, !4752, !4781, !4785, !4809, !4813, !4817, !4821, !4825, !4829, !4835, !4839}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !347, file: !70, line: 1967, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!353, !316, !353, !13}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !355, line: 82, size: 1536, elements: !356)
!355 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!356 = !{!357, !358, !368, !376, !377, !397, !398, !402, !423, !4647, !4648, !4649, !4650, !4656, !4657, !4658}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !354, file: !355, line: 84, baseType: !13, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !354, file: !355, line: 85, baseType: !359, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !360, line: 275, baseType: !361)
!360 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !360, line: 275, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !361, file: !360, line: 275, baseType: !364, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !360, line: 69, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !360, line: 64, size: 32, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !365, file: !360, line: 65, baseType: !13, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !354, file: !355, line: 86, baseType: !369, size: 128, offset: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !370, line: 38, size: 128, elements: !371)
!370 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!371 = !{!372, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !370, line: 39, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !369, file: !370, line: 39, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !354, file: !355, line: 87, baseType: !353, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !354, file: !355, line: 88, baseType: !378, size: 128, offset: 256)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !355, line: 49, size: 128, elements: !379)
!379 = !{!380, !394}
!380 = !DIDerivedType(tag: DW_TAG_member, scope: !378, file: !355, line: 50, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !355, line: 50, size: 64, elements: !382)
!382 = !{!383, !390}
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !355, line: 51, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !381, file: !355, line: 51, size: 64, elements: !385)
!385 = !{!386, !389}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !384, file: !355, line: 52, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !230, line: 21, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !232, line: 27, baseType: !13)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !384, file: !355, line: 52, baseType: !387, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !381, file: !355, line: 54, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !230, line: 23, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !232, line: 31, baseType: !393)
!393 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !378, file: !355, line: 56, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !354, file: !355, line: 89, baseType: !316, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !354, file: !355, line: 91, baseType: !399, size: 256, offset: 448)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 256, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !354, file: !355, line: 94, baseType: !403, size: 64, offset: 704)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !404, line: 25, size: 64, elements: !405)
!404 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !404, line: 26, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 26, size: 64, elements: !408)
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !407, file: !404, line: 28, baseType: !392, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !404, line: 30, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !407, file: !404, line: 30, size: 64, elements: !412)
!412 = !{!413, !422}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !411, file: !404, line: 31, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !415, line: 29, baseType: !416)
!415 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !415, line: 17, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !415, line: 18, baseType: !419, size: 32)
!419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !415, line: 18, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !419, file: !415, line: 19, baseType: !237, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !411, file: !404, line: 32, baseType: !113, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !354, file: !355, line: 95, baseType: !424, size: 64, offset: 768)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !355, line: 128, size: 1024, align: 512, elements: !427)
!427 = !{!428, !432, !433, !440, !448, !452, !456, !460, !461, !465, !470, !4637, !4641}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !426, file: !355, line: 129, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!113, !353, !13}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !426, file: !355, line: 130, baseType: !429, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !426, file: !355, line: 131, baseType: !434, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!113, !437, !439}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !426, file: !355, line: 132, baseType: !441, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!113, !437, !13, !444, !446}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !426, file: !355, line: 134, baseType: !449, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!113, !437}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !426, file: !355, line: 135, baseType: !453, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!113, !353}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !426, file: !355, line: 136, baseType: !457, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !353}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !426, file: !355, line: 137, baseType: !457, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !426, file: !355, line: 138, baseType: !462, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !353, !316}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !426, file: !355, line: 139, baseType: !466, size: 64, offset: 576)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !353, !469, !113}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !426, file: !355, line: 140, baseType: !471, size: 64, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!474, !4636}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !476, line: 70, size: 256, elements: !477)
!476 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!477 = !{!478, !479, !4632, !4633}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !475, file: !476, line: 71, baseType: !353, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !475, file: !476, line: 72, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !70, line: 1190, size: 10752, elements: !482)
!482 = !{!483, !484, !487, !488, !489, !492, !2170, !2322, !2362, !2447, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2464, !2468, !2469, !3370, !3376, !3377, !3380, !3381, !3382, !3423, !4566, !4567, !4568, !4569, !4570, !4571, !4574, !4575, !4582, !4583, !4584, !4585, !4586, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !481, file: !70, line: 1191, baseType: !274, size: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !481, file: !70, line: 1192, baseType: !485, size: 32, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !225, line: 21, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !225, line: 18, baseType: !387)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !481, file: !70, line: 1193, baseType: !258, size: 8, offset: 160)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !481, file: !70, line: 1194, baseType: !214, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !481, file: !70, line: 1195, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !225, line: 52, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !330, line: 88, baseType: !233)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !481, file: !70, line: 1196, baseType: !493, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !70, line: 2366, size: 576, elements: !495)
!495 = !{!496, !497, !498, !504, !508, !512, !516, !2158, !2159, !2160, !2162, !2163, !2164, !2166, !2167, !2168, !2169}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !494, file: !70, line: 2367, baseType: !444, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !494, file: !70, line: 2368, baseType: !113, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !494, file: !70, line: 2376, baseType: !499, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!113, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !476, line: 21, flags: DIFlagFwdDecl)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !494, file: !70, line: 2377, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !70, line: 75, flags: DIFlagFwdDecl)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !494, file: !70, line: 2378, baseType: !509, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!353, !493, !113, !444, !307}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !494, file: !70, line: 2380, baseType: !513, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !480}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !494, file: !70, line: 2381, baseType: !517, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !519)
!519 = !{!520, !521, !522, !526, !1814, !1840, !1841, !1842, !1843, !1847, !1850, !1851, !1852, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1920, !1924, !1944, !1962, !1963, !1964, !1965, !1974, !1997, !1998, !2001, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2015, !2016, !2116, !2124, !2125, !2126, !2128, !2132, !2133, !2137, !2138, !2139, !2140, !2142, !2143, !2144, !2151, !2152, !2153, !2157}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !518, file: !12, line: 403, baseType: !11, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !518, file: !12, line: 406, baseType: !274, size: 128, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !518, file: !12, line: 409, baseType: !523, size: 448, offset: 192)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 56)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !518, file: !12, line: 417, baseType: !527, size: 768, offset: 640)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !528)
!528 = !{!529, !1797, !1798, !1799, !1802}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !527, file: !12, line: 46, baseType: !530, size: 512)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !531, line: 64, size: 512, elements: !532)
!531 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!532 = !{!533, !534, !535, !537, !583, !1680, !1787, !1792, !1793, !1794, !1795, !1796}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !530, file: !531, line: 65, baseType: !444, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !530, file: !531, line: 66, baseType: !274, size: 128, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !530, file: !531, line: 67, baseType: !536, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !530, file: !531, line: 68, baseType: !538, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !531, line: 168, size: 768, elements: !540)
!540 = !{!541, !542, !543, !544}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !539, file: !531, line: 169, baseType: !274, size: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !539, file: !531, line: 170, baseType: !414, size: 32, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !539, file: !531, line: 171, baseType: !530, size: 512, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !539, file: !531, line: 172, baseType: !545, size: 64, offset: 704)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !531, line: 133, size: 192, elements: !548)
!548 = !{!549, !556, !561}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !547, file: !531, line: 134, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!113, !554}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !547, file: !531, line: 135, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!444, !554}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !547, file: !531, line: 136, baseType: !562, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!113, !554, !566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !531, line: 125, size: 20736, elements: !568)
!568 = !{!569, !573, !577, !578, !582}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !567, file: !531, line: 126, baseType: !570, size: 192)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 192, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 3)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !567, file: !531, line: 127, baseType: !574, size: 4096, offset: 192)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 4096, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !567, file: !531, line: 128, baseType: !113, size: 32, offset: 4288)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !567, file: !531, line: 129, baseType: !579, size: 16384, offset: 4320)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 2048)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !567, file: !531, line: 130, baseType: !113, size: 32, offset: 20704)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !530, file: !531, line: 69, baseType: !584, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !531, line: 116, size: 384, elements: !587)
!587 = !{!588, !592, !618, !1639, !1670, !1674}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !586, file: !531, line: 117, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !536}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !586, file: !531, line: 118, baseType: !593, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !596, line: 254, size: 128, elements: !597)
!596 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!597 = !{!598, !611}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !595, file: !596, line: 255, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!602, !536, !606, !469}
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !225, line: 66, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !330, line: 73, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !330, line: 15, baseType: !605)
!605 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !596, line: 30, size: 128, elements: !608)
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !607, file: !596, line: 31, baseType: !444, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !607, file: !596, line: 32, baseType: !320, size: 16, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !595, file: !596, line: 256, baseType: !612, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!602, !536, !606, !444, !615}
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !225, line: 61, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !330, line: 72, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !330, line: 16, baseType: !214)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !586, file: !531, line: 119, baseType: !619, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !596, line: 84, size: 320, elements: !623)
!623 = !{!624, !625, !629, !1635, !1637}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !622, file: !596, line: 85, baseType: !444, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !622, file: !596, line: 86, baseType: !626, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!320, !536, !606, !113}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !622, file: !596, line: 88, baseType: !630, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!320, !536, !633, !113}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !596, line: 175, size: 512, elements: !635)
!635 = !{!636, !637, !638, !639, !643, !1630, !1631}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !634, file: !596, line: 176, baseType: !607, size: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !634, file: !596, line: 177, baseType: !615, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !634, file: !596, line: 178, baseType: !307, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !634, file: !596, line: 179, baseType: !640, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!312}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !634, file: !596, line: 180, baseType: !644, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!602, !647, !536, !633, !469, !490, !615}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !70, line: 994, size: 1856, align: 64, elements: !649)
!649 = !{!650, !669, !670, !672, !673, !674, !675, !676, !748, !960, !969, !975, !976, !1620, !1621, !1622, !1623, !1625, !1626, !1629}
!650 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !70, line: 995, baseType: !651, size: 128)
!651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !70, line: 995, size: 128, elements: !652)
!652 = !{!653, !659, !668}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !651, file: !70, line: 996, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !655, line: 60, size: 64, elements: !656)
!655 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !654, file: !655, line: 61, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !651, file: !70, line: 997, baseType: !660, size: 128, align: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !225, line: 232, size: 128, align: 64, elements: !661)
!661 = !{!662, !664}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !660, file: !225, line: 233, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !660, file: !225, line: 234, baseType: !665, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !663}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !651, file: !70, line: 998, baseType: !13, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !648, file: !70, line: 1005, baseType: !414, size: 32, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !648, file: !70, line: 1006, baseType: !671, size: 32, offset: 160)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !225, line: 156, baseType: !13)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !648, file: !70, line: 1007, baseType: !222, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !648, file: !70, line: 1008, baseType: !218, size: 256, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !648, file: !70, line: 1009, baseType: !490, size: 64, offset: 512)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !648, file: !70, line: 1010, baseType: !13, size: 32, offset: 576)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !648, file: !70, line: 1011, baseType: !677, size: 256, offset: 640)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !70, line: 948, size: 256, elements: !678)
!678 = !{!679, !700, !744, !745, !746, !747}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !677, file: !70, line: 949, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !681, line: 34, baseType: !682)
!681 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !681, line: 25, size: 64, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !682, file: !681, line: 26, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !686, line: 27, baseType: !687)
!686 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !686, line: 13, size: 64, elements: !688)
!688 = !{!689, !699}
!689 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !686, line: 14, baseType: !690, size: 32)
!690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !687, file: !686, line: 14, size: 32, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !690, file: !686, line: 15, baseType: !248, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !686, line: 16, baseType: !694, size: 32)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !690, file: !686, line: 16, size: 32, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !694, file: !686, line: 18, baseType: !256, size: 8)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !694, file: !686, line: 19, baseType: !698, size: 24, offset: 8)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 24, elements: !571)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !687, file: !686, line: 26, baseType: !240, size: 32, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !677, file: !70, line: 950, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !28, line: 59, size: 768, elements: !703)
!703 = !{!704, !710, !711, !712, !725, !726, !733, !734}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !702, file: !28, line: 61, baseType: !705, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !706, line: 113, baseType: !707)
!706 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !706, line: 111, size: 32, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !707, file: !706, line: 112, baseType: !248, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !702, file: !28, line: 62, baseType: !13, size: 32, offset: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !702, file: !28, line: 63, baseType: !414, size: 32, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !702, file: !28, line: 65, baseType: !713, size: 256, offset: 128)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 256, elements: !723)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !225, line: 194, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !714, file: !225, line: 195, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !225, line: 198, size: 128, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !225, line: 199, baseType: !717, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !718, file: !225, line: 199, baseType: !722, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!723 = !{!724}
!724 = !DISubrange(count: 4)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !702, file: !28, line: 66, baseType: !714, size: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !702, file: !28, line: 68, baseType: !727, size: 192, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !728, line: 41, baseType: !729)
!728 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !728, line: 37, size: 192, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !729, file: !728, line: 38, baseType: !414, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !729, file: !728, line: 39, baseType: !274, size: 128, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !702, file: !28, line: 69, baseType: !660, size: 128, align: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !702, file: !28, line: 70, baseType: !735, offset: 768)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, elements: !742)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !28, line: 54, size: 128, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !736, file: !28, line: 55, baseType: !113, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !736, file: !28, line: 56, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !28, line: 56, flags: DIFlagFwdDecl)
!742 = !{!743}
!743 = !DISubrange(count: -1)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !677, file: !70, line: 951, baseType: !27, size: 32, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !677, file: !70, line: 952, baseType: !323, size: 32, offset: 160)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !677, file: !70, line: 952, baseType: !323, size: 32, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !677, file: !70, line: 953, baseType: !113, size: 32, offset: 224)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !648, file: !70, line: 1012, baseType: !749, size: 64, offset: 896)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !752, line: 110, size: 1472, elements: !753)
!752 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !770, !771, !772, !773, !774, !775, !905, !906, !907, !908, !909, !940, !943, !947, !955}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !751, file: !752, line: 111, baseType: !222, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !751, file: !752, line: 112, baseType: !323, size: 32, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !751, file: !752, line: 113, baseType: !333, size: 32, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !751, file: !752, line: 114, baseType: !323, size: 32, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !751, file: !752, line: 115, baseType: !333, size: 32, offset: 160)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !751, file: !752, line: 116, baseType: !323, size: 32, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !751, file: !752, line: 117, baseType: !333, size: 32, offset: 224)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !751, file: !752, line: 118, baseType: !323, size: 32, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !751, file: !752, line: 119, baseType: !333, size: 32, offset: 288)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !751, file: !752, line: 120, baseType: !13, size: 32, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !751, file: !752, line: 121, baseType: !765, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !766, line: 24, baseType: !767)
!766 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !766, line: 24, size: 64, elements: !768)
!768 = !{!769}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !767, file: !766, line: 24, baseType: !391, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !751, file: !752, line: 122, baseType: !765, size: 64, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !751, file: !752, line: 123, baseType: !765, size: 64, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !751, file: !752, line: 124, baseType: !765, size: 64, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !751, file: !752, line: 125, baseType: !765, size: 64, offset: 640)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !751, file: !752, line: 127, baseType: !258, size: 8, offset: 704)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !751, file: !752, line: 129, baseType: !776, size: 64, offset: 768)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !778, line: 195, size: 1728, elements: !779)
!778 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!779 = !{!780, !781, !786, !798, !807, !810, !811, !818, !819, !820, !821, !824, !825, !826, !828, !829, !869, !890}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !777, file: !778, line: 196, baseType: !705, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !777, file: !778, line: 197, baseType: !782, size: 32, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !778, line: 28, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !225, line: 104, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !230, line: 20, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !232, line: 26, baseType: !113)
!786 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !778, line: 198, baseType: !787, size: 192, offset: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !778, line: 198, size: 192, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !787, file: !778, line: 199, baseType: !274, size: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !787, file: !778, line: 200, baseType: !791, size: 192, align: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !792, line: 5, size: 192, align: 64, elements: !793)
!792 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!793 = !{!794, !795, !797}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !791, file: !792, line: 6, baseType: !214, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !791, file: !792, line: 7, baseType: !796, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !791, file: !792, line: 8, baseType: !796, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !777, file: !778, line: 205, baseType: !799, size: 320, offset: 256)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !800, line: 48, size: 320, elements: !801)
!800 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!801 = !{!802, !803, !804, !805, !806}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !799, file: !800, line: 49, baseType: !222, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !799, file: !800, line: 55, baseType: !222, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !799, file: !800, line: 57, baseType: !269, size: 32, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !799, file: !800, line: 59, baseType: !235, size: 32, offset: 160)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !799, file: !800, line: 60, baseType: !274, size: 128, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !777, file: !778, line: 206, baseType: !808, size: 64, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !778, line: 206, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !777, file: !778, line: 207, baseType: !307, size: 64, offset: 640)
!811 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !778, line: 208, baseType: !812, size: 64, offset: 704)
!812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !778, line: 208, size: 64, elements: !813)
!813 = !{!814, !817}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !812, file: !778, line: 209, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !816, line: 8, baseType: !231)
!816 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!817 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !812, file: !778, line: 210, baseType: !815, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !777, file: !778, line: 212, baseType: !815, size: 64, offset: 768)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !777, file: !778, line: 213, baseType: !323, size: 32, offset: 832)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !777, file: !778, line: 214, baseType: !333, size: 32, offset: 864)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !777, file: !778, line: 215, baseType: !822, size: 32, offset: 896)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !778, line: 31, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !225, line: 110, baseType: !387)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !777, file: !778, line: 216, baseType: !266, size: 16, offset: 928)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !777, file: !778, line: 217, baseType: !266, size: 16, offset: 944)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !777, file: !778, line: 221, baseType: !827, size: 16, offset: 960)
!827 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !778, line: 228, baseType: !214, size: 64, offset: 1024)
!829 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !778, line: 245, baseType: !830, size: 320, offset: 1088)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !778, line: 245, size: 320, elements: !831)
!831 = !{!832, !861}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !830, file: !778, line: 246, baseType: !833, size: 320)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !778, line: 114, size: 320, elements: !834)
!834 = !{!835, !836, !848, !851, !860}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !833, file: !778, line: 116, baseType: !214, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, scope: !833, file: !778, line: 117, baseType: !837, size: 64, offset: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !833, file: !778, line: 117, size: 64, elements: !838)
!838 = !{!839, !847}
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !778, line: 118, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !837, file: !778, line: 118, size: 64, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !840, file: !778, line: 120, baseType: !264, size: 16)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !840, file: !778, line: 121, baseType: !844, size: 48, offset: 16)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !845)
!845 = !{!846}
!846 = !DISubrange(count: 6)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !837, file: !778, line: 127, baseType: !214, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !833, file: !778, line: 129, baseType: !849, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !778, line: 102, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !833, file: !778, line: 130, baseType: !852, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !778, line: 108, size: 192, elements: !854)
!854 = !{!855, !856, !857}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !853, file: !778, line: 109, baseType: !660, size: 128, align: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !853, file: !778, line: 110, baseType: !705, size: 32, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !853, file: !778, line: 111, baseType: !858, size: 8, offset: 160)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !225, line: 35, baseType: !859)
!859 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !833, file: !778, line: 131, baseType: !444, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !778, line: 247, baseType: !862, size: 320)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !830, file: !778, line: 247, size: 320, elements: !863)
!863 = !{!864, !865, !866, !867, !868}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !862, file: !778, line: 248, baseType: !214, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !862, file: !778, line: 249, baseType: !214, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !862, file: !778, line: 250, baseType: !849, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !862, file: !778, line: 251, baseType: !852, size: 64, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !862, file: !778, line: 252, baseType: !469, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !778, line: 260, baseType: !870, size: 256, offset: 1408)
!870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !778, line: 260, size: 256, elements: !871)
!871 = !{!872, !878}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !870, file: !778, line: 261, baseType: !873, size: 256)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !778, line: 134, size: 256, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !873, file: !778, line: 135, baseType: !307, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !873, file: !778, line: 136, baseType: !877, size: 256)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 256, elements: !723)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !870, file: !778, line: 262, baseType: !879, size: 256)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !870, file: !778, line: 262, size: 256, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !879, file: !778, line: 264, baseType: !274, size: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !879, file: !778, line: 265, baseType: !883, size: 128, offset: 128)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !884, line: 22, size: 128, elements: !885)
!884 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!885 = !{!886, !889}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !883, file: !884, line: 23, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !884, line: 23, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !883, file: !884, line: 24, baseType: !214, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !777, file: !778, line: 280, baseType: !891, size: 64, offset: 1664)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !778, line: 176, size: 192, elements: !893)
!893 = !{!894, !903, !904}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !892, file: !778, line: 177, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !778, line: 171, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!113, !776, !899, !901, !776}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !892, file: !778, line: 178, baseType: !776, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !892, file: !778, line: 179, baseType: !849, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !751, file: !752, line: 130, baseType: !776, size: 64, offset: 832)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !751, file: !752, line: 131, baseType: !776, size: 64, offset: 896)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !751, file: !752, line: 132, baseType: !776, size: 64, offset: 960)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !751, file: !752, line: 135, baseType: !307, size: 64, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !751, file: !752, line: 137, baseType: !910, size: 64, offset: 1088)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !912, line: 14, size: 1088, elements: !913)
!912 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!913 = !{!914, !915, !924, !925, !926, !927, !928, !929}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !911, file: !912, line: 15, baseType: !705, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !911, file: !912, line: 17, baseType: !916, size: 320, offset: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !917, line: 22, size: 320, elements: !918)
!917 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!918 = !{!919, !920, !921, !922}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !916, file: !917, line: 23, baseType: !235, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !916, file: !917, line: 24, baseType: !229, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !916, file: !917, line: 26, baseType: !274, size: 128, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !916, file: !917, line: 28, baseType: !923, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !911, file: !912, line: 19, baseType: !214, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !911, file: !912, line: 20, baseType: !222, size: 64, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !911, file: !912, line: 23, baseType: !718, size: 128, offset: 512)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !911, file: !912, line: 24, baseType: !323, size: 32, offset: 640)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !911, file: !912, line: 29, baseType: !222, size: 64, offset: 704)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !911, file: !912, line: 36, baseType: !930, size: 320, offset: 768)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !931, line: 15, size: 320, elements: !932)
!931 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!932 = !{!933, !934, !935, !936, !937, !938, !939}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !930, file: !931, line: 16, baseType: !235, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !930, file: !931, line: 18, baseType: !113, size: 32, offset: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !930, file: !931, line: 19, baseType: !113, size: 32, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !930, file: !931, line: 20, baseType: !113, size: 32, offset: 96)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !930, file: !931, line: 21, baseType: !113, size: 32, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !930, file: !931, line: 22, baseType: !214, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !930, file: !931, line: 23, baseType: !214, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !751, file: !752, line: 138, baseType: !941, size: 64, offset: 1152)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !36, line: 901, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !751, file: !752, line: 139, baseType: !944, size: 64, offset: 1216)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !946, line: 16, flags: DIFlagFwdDecl)
!946 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!947 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !751, file: !752, line: 140, baseType: !948, size: 64, offset: 1280)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !752, line: 25, size: 64, elements: !950)
!950 = !{!951, !952, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !949, file: !752, line: 26, baseType: !248, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !949, file: !752, line: 27, baseType: !113, size: 32, offset: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !949, file: !752, line: 28, baseType: !954, offset: 64)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, elements: !742)
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !752, line: 142, baseType: !956, size: 128, offset: 1344)
!956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !752, line: 142, size: 128, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !956, file: !752, line: 143, baseType: !113, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !956, file: !752, line: 144, baseType: !660, size: 128, align: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !648, file: !70, line: 1013, baseType: !961, size: 256, offset: 960)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !70, line: 970, size: 256, elements: !962)
!962 = !{!963, !964, !965, !966, !967, !968}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !961, file: !70, line: 971, baseType: !214, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !961, file: !70, line: 972, baseType: !13, size: 32, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !961, file: !70, line: 973, baseType: !13, size: 32, offset: 96)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !961, file: !70, line: 974, baseType: !13, size: 32, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !961, file: !70, line: 975, baseType: !13, size: 32, offset: 160)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !961, file: !70, line: 976, baseType: !490, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !648, file: !70, line: 1014, baseType: !970, size: 128, offset: 1216)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !971, line: 8, size: 128, elements: !972)
!971 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !970, file: !971, line: 9, baseType: !474, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !970, file: !971, line: 10, baseType: !353, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !648, file: !70, line: 1015, baseType: !316, size: 64, offset: 1344)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !648, file: !70, line: 1016, baseType: !977, size: 64, offset: 1408)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !70, line: 1914, size: 2112, elements: !980)
!980 = !{!981, !982, !986, !991, !995, !1168, !1169, !1184, !1197, !1205, !1209, !1210, !1539, !1540, !1544, !1549, !1550, !1554, !1558, !1564, !1565, !1569, !1570, !1577, !1581, !1585, !1591, !1595, !1601, !1605, !1609, !1610, !1616}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !979, file: !70, line: 1915, baseType: !517, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !979, file: !70, line: 1916, baseType: !983, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!490, !647, !490, !113}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !979, file: !70, line: 1917, baseType: !987, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!602, !647, !469, !615, !990}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !979, file: !70, line: 1918, baseType: !992, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!602, !647, !444, !615, !990}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !979, file: !70, line: 1919, baseType: !996, size: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!602, !999, !1104}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !70, line: 373, size: 384, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1008, !1009, !1010, !1011}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1000, file: !70, line: 374, baseType: !647, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1000, file: !70, line: 375, baseType: !490, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1000, file: !70, line: 376, baseType: !1005, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{null, !999, !605}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1000, file: !70, line: 377, baseType: !307, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1000, file: !70, line: 378, baseType: !113, size: 32, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1000, file: !70, line: 379, baseType: !264, size: 16, offset: 288)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !70, line: 380, baseType: !1012, size: 64, offset: 320)
!1012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !70, line: 380, size: 64, elements: !1013)
!1013 = !{!1014, !1100}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1012, file: !70, line: 386, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1017, line: 998, size: 448, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1018 = !{!1019, !1086, !1087}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1016, file: !1017, line: 999, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !36, line: 293, size: 1536, elements: !1022)
!1022 = !{!1023, !1053, !1067}
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !36, line: 295, baseType: !1024, size: 512)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !36, line: 295, size: 512, elements: !1025)
!1025 = !{!1026, !1052}
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !36, line: 296, baseType: !1027, size: 448)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !36, line: 296, size: 448, elements: !1028)
!1028 = !{!1029, !1030, !1039, !1040, !1041, !1050, !1051}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1027, file: !36, line: 298, baseType: !214, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !36, line: 299, baseType: !1031, size: 128, offset: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !36, line: 299, size: 128, elements: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1031, file: !36, line: 300, baseType: !274, size: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !1031, file: !36, line: 302, baseType: !1035, size: 128)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1031, file: !36, line: 302, size: 128, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1035, file: !36, line: 303, baseType: !307, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1035, file: !36, line: 305, baseType: !13, size: 32, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1027, file: !36, line: 310, baseType: !312, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1027, file: !36, line: 311, baseType: !214, size: 64, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !36, line: 312, baseType: !1042, size: 64, offset: 320)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !36, line: 312, size: 64, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1042, file: !36, line: 313, baseType: !307, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1042, file: !36, line: 314, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !36, line: 257, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 255, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1047, file: !36, line: 256, baseType: !214, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1027, file: !36, line: 316, baseType: !248, size: 32, offset: 384)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1027, file: !36, line: 317, baseType: !248, size: 32, offset: 416)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1024, file: !36, line: 323, baseType: !290, size: 512, align: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !36, line: 325, baseType: !1054, size: 512, offset: 512)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !36, line: 325, size: 512, elements: !1055)
!1055 = !{!1056, !1066}
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !36, line: 326, baseType: !1057, size: 320)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !36, line: 326, size: 320, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064, !1065}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1057, file: !36, line: 327, baseType: !214, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1057, file: !36, line: 328, baseType: !214, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1057, file: !36, line: 329, baseType: !214, size: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1057, file: !36, line: 331, baseType: !248, size: 32, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1057, file: !36, line: 332, baseType: !248, size: 32, offset: 224)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1057, file: !36, line: 333, baseType: !248, size: 32, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1057, file: !36, line: 335, baseType: !13, size: 32, offset: 288)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1054, file: !36, line: 339, baseType: !290, size: 512, align: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !36, line: 341, baseType: !1068, size: 512, offset: 1024)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !36, line: 341, size: 512, elements: !1069)
!1069 = !{!1070, !1079, !1085}
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !36, line: 342, baseType: !1071, size: 384)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !36, line: 342, size: 384, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1071, file: !36, line: 343, baseType: !214, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1071, file: !36, line: 344, baseType: !214, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1071, file: !36, line: 346, baseType: !307, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1071, file: !36, line: 347, baseType: !307, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1071, file: !36, line: 348, baseType: !307, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1071, file: !36, line: 349, baseType: !307, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !36, line: 352, baseType: !1080, size: 256)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !36, line: 352, size: 256, elements: !1081)
!1081 = !{!1082, !1083, !1084}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1080, file: !36, line: 353, baseType: !214, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1080, file: !36, line: 354, baseType: !214, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1080, file: !36, line: 356, baseType: !274, size: 128, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1068, file: !36, line: 359, baseType: !290, size: 512, align: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1016, file: !1017, line: 1000, baseType: !113, size: 32, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1016, file: !1017, line: 1001, baseType: !1088, size: 320, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !728, line: 14, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !728, line: 30, size: 320, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1099}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1089, file: !728, line: 31, baseType: !13, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1089, file: !728, line: 32, baseType: !307, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1089, file: !728, line: 33, baseType: !1094, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !728, line: 16, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!113, !1098, !13, !113, !307}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1089, file: !728, line: 34, baseType: !274, size: 128, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1012, file: !70, line: 395, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!602, !307}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1106, line: 41, size: 320, elements: !1107)
!1106 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1107 = !{!1108, !1109, !1110, !1111, !1112, !1113, !1118, !1163}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1105, file: !1106, line: 42, baseType: !256, size: 8)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1105, file: !1106, line: 43, baseType: !858, size: 8, offset: 8)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1105, file: !1106, line: 44, baseType: !858, size: 8, offset: 16)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1105, file: !1106, line: 45, baseType: !858, size: 8, offset: 24)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1105, file: !1106, line: 46, baseType: !858, size: 8, offset: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !1106, line: 47, baseType: !1114, size: 64, offset: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !1106, line: 47, size: 64, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1114, file: !1106, line: 48, baseType: !615, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1114, file: !1106, line: 49, baseType: !113, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !1106, line: 61, baseType: !1119, size: 128, offset: 128)
!1119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !1106, line: 61, size: 128, elements: !1120)
!1120 = !{!1121, !1127}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1119, file: !1106, line: 67, baseType: !1122, size: 128)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1123, line: 17, size: 128, elements: !1124)
!1123 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1122, file: !1123, line: 19, baseType: !307, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1122, file: !1123, line: 20, baseType: !616, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !1106, line: 68, baseType: !1128, size: 128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1119, file: !1106, line: 68, size: 128, elements: !1129)
!1129 = !{!1130, !1162}
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !1106, line: 69, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1128, file: !1106, line: 69, size: 64, elements: !1132)
!1132 = !{!1133, !1136, !1143, !1152, !1161}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1131, file: !1106, line: 71, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1122)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1131, file: !1106, line: 72, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1106, line: 17, size: 128, elements: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1139, file: !1106, line: 18, baseType: !307, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1139, file: !1106, line: 19, baseType: !615, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1131, file: !1106, line: 73, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1147, line: 31, size: 128, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1146, file: !1147, line: 32, baseType: !289, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1146, file: !1147, line: 33, baseType: !13, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1146, file: !1147, line: 34, baseType: !13, size: 32, offset: 96)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1131, file: !1106, line: 74, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1155, line: 296, size: 128, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1156 = !{!1157, !1158, !1160}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1154, file: !1155, line: 297, baseType: !414, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1154, file: !1155, line: 299, baseType: !1159, size: 32, offset: 32)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !225, line: 154, baseType: !13)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1154, file: !1155, line: 300, baseType: !307, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1131, file: !1106, line: 75, baseType: !307, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1128, file: !1106, line: 77, baseType: !615, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !1106, line: 80, baseType: !1164, size: 64, offset: 256)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !1106, line: 80, size: 64, elements: !1165)
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1164, file: !1106, line: 81, baseType: !214, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1164, file: !1106, line: 82, baseType: !490, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !979, file: !70, line: 1920, baseType: !996, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !979, file: !70, line: 1921, baseType: !1170, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!113, !999, !1173, !13}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !81, line: 1559, size: 192, elements: !1175)
!1175 = !{!1176, !1179, !1180}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !1174, file: !81, line: 1560, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !81, line: 32, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !1174, file: !81, line: 1561, baseType: !858, size: 8, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1174, file: !81, line: 1562, baseType: !1181, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !1173}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !979, file: !70, line: 1923, baseType: !1185, size: 64, offset: 448)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!113, !647, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !70, line: 1858, size: 128, elements: !1190)
!1190 = !{!1191, !1196}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1189, file: !70, line: 1859, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !70, line: 1855, baseType: !1193)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!858, !1188, !444, !113, !490, !391, !13}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1189, file: !70, line: 1860, baseType: !490, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !979, file: !70, line: 1924, baseType: !1198, size: 64, offset: 512)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!1201, !647, !1203}
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1202, line: 59, baseType: !13)
!1202 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !70, line: 61, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !979, file: !70, line: 1925, baseType: !1206, size: 64, offset: 576)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!605, !647, !13, !214}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !979, file: !70, line: 1926, baseType: !1206, size: 64, offset: 640)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !979, file: !70, line: 1927, baseType: !1211, size: 64, offset: 704)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!113, !647, !1214}
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !36, line: 625, size: 1344, elements: !1216)
!1216 = !{!1217, !1226, !1395, !1401, !1408, !1409, !1414, !1415, !1420, !1421, !1424, !1532, !1533, !1534, !1535, !1536, !1537}
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !36, line: 628, baseType: !1218, size: 128)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1215, file: !36, line: 628, size: 128, elements: !1219)
!1219 = !{!1220, !1225}
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !36, line: 629, baseType: !1221, size: 128)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !36, line: 629, size: 128, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1221, file: !36, line: 631, baseType: !214, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1221, file: !36, line: 632, baseType: !214, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1218, file: !36, line: 635, baseType: !660, size: 128, align: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1215, file: !36, line: 639, baseType: !1227, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !36, line: 733, size: 10240, elements: !1229)
!1229 = !{!1230, !1393}
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1228, file: !36, line: 734, baseType: !1231, size: 10240)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1228, file: !36, line: 734, size: 10240, elements: !1232)
!1232 = !{!1233, !1237, !1251, !1255, !1256, !1257, !1258, !1259, !1260, !1269, !1270, !1271, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1310, !1312, !1315, !1362, !1363, !1364, !1367, !1368, !1369, !1372, !1373, !1374, !1380, !1381}
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1231, file: !36, line: 739, baseType: !1234, size: 512, align: 512)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1231, file: !36, line: 739, size: 512, align: 512, elements: !1235)
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1234, file: !36, line: 747, baseType: !248, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1231, file: !36, line: 750, baseType: !1238, size: 128, offset: 512)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1239, line: 218, size: 128, elements: !1240)
!1239 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1240 = !{!1241, !1249, !1250}
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !1239, line: 219, baseType: !1242, size: 32)
!1242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !1239, line: 219, size: 32, elements: !1243)
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1242, file: !1239, line: 220, baseType: !414, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1242, file: !1239, line: 221, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1239, line: 197, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1239, line: 197, elements: !1248)
!1248 = !{}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1238, file: !1239, line: 223, baseType: !13, size: 32, offset: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1238, file: !1239, line: 224, baseType: !307, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1231, file: !36, line: 752, baseType: !1252, size: 64, offset: 640)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!214, !647, !214, !214, !214, !214}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1231, file: !36, line: 756, baseType: !214, size: 64, offset: 704)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1231, file: !36, line: 757, baseType: !214, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1231, file: !36, line: 760, baseType: !214, size: 64, offset: 832)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1231, file: !36, line: 761, baseType: !214, size: 64, offset: 896)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1231, file: !36, line: 763, baseType: !214, size: 64, offset: 960)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1231, file: !36, line: 764, baseType: !1261, size: 64, offset: 1024)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1263, line: 299, baseType: !1264)
!1263 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1263, line: 299, size: 64, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1264, file: !1263, line: 299, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1268, line: 18, baseType: !214)
!1268 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1231, file: !36, line: 773, baseType: !248, size: 32, offset: 1088)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1231, file: !36, line: 785, baseType: !248, size: 32, offset: 1120)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1231, file: !36, line: 795, baseType: !1272, size: 64, offset: 1152)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !36, line: 726, size: 128, elements: !1274)
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1273, file: !36, line: 727, baseType: !391, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1273, file: !36, line: 728, baseType: !113, size: 32, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1231, file: !36, line: 801, baseType: !214, size: 64, offset: 1216)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1231, file: !36, line: 804, baseType: !222, size: 64, offset: 1280)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1231, file: !36, line: 806, baseType: !113, size: 32, offset: 1344)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1231, file: !36, line: 808, baseType: !414, size: 32, offset: 1376)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1231, file: !36, line: 823, baseType: !799, size: 320, offset: 1408)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1231, file: !36, line: 825, baseType: !274, size: 128, offset: 1728)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1231, file: !36, line: 845, baseType: !113, size: 32, offset: 1856)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1231, file: !36, line: 849, baseType: !214, size: 64, offset: 1920)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1231, file: !36, line: 850, baseType: !214, size: 64, offset: 1984)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1231, file: !36, line: 852, baseType: !214, size: 64, offset: 2048)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1231, file: !36, line: 853, baseType: !214, size: 64, offset: 2112)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1231, file: !36, line: 854, baseType: !224, size: 64, offset: 2176)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1231, file: !36, line: 855, baseType: !214, size: 64, offset: 2240)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1231, file: !36, line: 856, baseType: !214, size: 64, offset: 2304)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1231, file: !36, line: 857, baseType: !214, size: 64, offset: 2368)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1231, file: !36, line: 858, baseType: !214, size: 64, offset: 2432)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1231, file: !36, line: 865, baseType: !364, size: 32, offset: 2496)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1231, file: !36, line: 867, baseType: !414, size: 32, offset: 2528)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1231, file: !36, line: 869, baseType: !214, size: 64, offset: 2560)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1231, file: !36, line: 869, baseType: !214, size: 64, offset: 2624)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1231, file: !36, line: 869, baseType: !214, size: 64, offset: 2688)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1231, file: !36, line: 869, baseType: !214, size: 64, offset: 2752)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1231, file: !36, line: 870, baseType: !214, size: 64, offset: 2816)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1231, file: !36, line: 870, baseType: !214, size: 64, offset: 2880)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1231, file: !36, line: 870, baseType: !214, size: 64, offset: 2944)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1231, file: !36, line: 871, baseType: !214, size: 64, offset: 3008)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1231, file: !36, line: 871, baseType: !214, size: 64, offset: 3072)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1231, file: !36, line: 871, baseType: !214, size: 64, offset: 3136)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1231, file: !36, line: 871, baseType: !214, size: 64, offset: 3200)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1231, file: !36, line: 873, baseType: !1307, size: 3328, offset: 3264)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 3328, elements: !1308)
!1308 = !{!1309}
!1309 = !DISubrange(count: 52)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1231, file: !36, line: 875, baseType: !1311, size: 1280, offset: 6592)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 1280, elements: !723)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1231, file: !36, line: 877, baseType: !1313, size: 64, offset: 7872)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !36, line: 877, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1231, file: !36, line: 880, baseType: !1316, size: 1088, offset: 7936)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1317, line: 72, baseType: !1318)
!1317 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1317, line: 23, size: 1088, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1327, !1328, !1329, !1330, !1357, !1358, !1359}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1318, file: !1317, line: 28, baseType: !391, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1318, file: !1317, line: 38, baseType: !224, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1318, file: !1317, line: 40, baseType: !214, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1318, file: !1317, line: 43, baseType: !799, size: 320, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1318, file: !1317, line: 44, baseType: !1325, size: 64, offset: 512)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1317, line: 44, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1318, file: !1317, line: 48, baseType: !214, size: 64, offset: 576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1318, file: !1317, line: 59, baseType: !218, size: 256, offset: 640)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1318, file: !1317, line: 60, baseType: !307, size: 64, offset: 896)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1318, file: !1317, line: 61, baseType: !1331, size: 64, offset: 960)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1334, line: 13, size: 1216, elements: !1335)
!1334 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1333, file: !1334, line: 14, baseType: !307, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1333, file: !1334, line: 15, baseType: !214, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1333, file: !1334, line: 17, baseType: !214, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1333, file: !1334, line: 17, baseType: !214, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1333, file: !1334, line: 18, baseType: !214, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1333, file: !1334, line: 18, baseType: !214, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1333, file: !1334, line: 19, baseType: !1343, size: 64, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1333, file: !1334, line: 21, baseType: !605, size: 64, offset: 448)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1333, file: !1334, line: 23, baseType: !605, size: 64, offset: 512)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1333, file: !1334, line: 24, baseType: !605, size: 64, offset: 576)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1333, file: !1334, line: 25, baseType: !605, size: 64, offset: 640)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1333, file: !1334, line: 26, baseType: !605, size: 64, offset: 704)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1333, file: !1334, line: 27, baseType: !605, size: 64, offset: 768)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1333, file: !1334, line: 28, baseType: !605, size: 64, offset: 832)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1333, file: !1334, line: 29, baseType: !605, size: 64, offset: 896)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1333, file: !1334, line: 30, baseType: !605, size: 64, offset: 960)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1333, file: !1334, line: 31, baseType: !605, size: 64, offset: 1024)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1333, file: !1334, line: 32, baseType: !605, size: 64, offset: 1088)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1333, file: !1334, line: 33, baseType: !605, size: 64, offset: 1152)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1318, file: !1317, line: 63, baseType: !248, size: 32, offset: 1024)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1318, file: !1317, line: 69, baseType: !264, size: 16, offset: 1056)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1318, file: !1317, line: 70, baseType: !1360, size: 16, offset: 1072)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !230, line: 18, baseType: !1361)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !232, line: 23, baseType: !827)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1231, file: !36, line: 882, baseType: !214, size: 64, offset: 9024)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1231, file: !36, line: 885, baseType: !414, size: 32, offset: 9088)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1231, file: !36, line: 886, baseType: !1365, size: 64, offset: 9152)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !36, line: 732, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1231, file: !36, line: 901, baseType: !941, size: 64, offset: 9216)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1231, file: !36, line: 904, baseType: !647, size: 64, offset: 9280)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1231, file: !36, line: 906, baseType: !1370, size: 64, offset: 9344)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !36, line: 906, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1231, file: !36, line: 930, baseType: !248, size: 32, offset: 9408)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1231, file: !36, line: 933, baseType: !248, size: 32, offset: 9440)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1231, file: !36, line: 935, baseType: !1375, size: 64, offset: 9472)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !173, line: 103, size: 64, elements: !1376)
!1376 = !{!1377}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1375, file: !173, line: 104, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !173, line: 101, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1231, file: !36, line: 940, baseType: !222, size: 64, offset: 9536)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1231, file: !36, line: 942, baseType: !1382, size: 256, offset: 9600)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1383, line: 98, size: 256, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1384 = !{!1385, !1386, !1387}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1382, file: !1383, line: 99, baseType: !222, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1382, file: !1383, line: 100, baseType: !274, size: 128, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1382, file: !1383, line: 101, baseType: !1388, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1383, line: 21, baseType: !1389)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{null, !1392}
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1228, file: !36, line: 986, baseType: !1394, offset: 10240)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, elements: !742)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1215, file: !36, line: 640, baseType: !1396, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1263, line: 297, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1263, line: 297, size: 64, elements: !1398)
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1397, file: !1263, line: 297, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1268, line: 19, baseType: !214)
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !36, line: 646, baseType: !1402, size: 64, offset: 256)
!1402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1215, file: !36, line: 646, size: 64, elements: !1403)
!1403 = !{!1404, !1407}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1402, file: !36, line: 647, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1406)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !36, line: 542, baseType: !214)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1402, file: !36, line: 648, baseType: !1406, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1215, file: !36, line: 666, baseType: !113, size: 32, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1215, file: !36, line: 667, baseType: !1410, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !36, line: 579, size: 320, elements: !1412)
!1412 = !{!1413}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1411, file: !36, line: 580, baseType: !799, size: 320)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1215, file: !36, line: 670, baseType: !858, size: 8, offset: 448)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1215, file: !36, line: 681, baseType: !1416, size: 256, offset: 512)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1215, file: !36, line: 678, size: 256, elements: !1417)
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1416, file: !36, line: 679, baseType: !791, size: 192, align: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1416, file: !36, line: 680, baseType: !214, size: 64, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1215, file: !36, line: 689, baseType: !274, size: 128, offset: 768)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1215, file: !36, line: 691, baseType: !1422, size: 64, offset: 896)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !36, line: 691, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1215, file: !36, line: 694, baseType: !1425, size: 64, offset: 960)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1427)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1428, line: 563, size: 1024, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1429 = !{!1430, !1434, !1435, !1439, !1443, !1447, !1496, !1500, !1504, !1508, !1509, !1510, !1514, !1518, !1524, !1528}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1427, file: !1428, line: 564, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !1214}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1427, file: !1428, line: 569, baseType: !1431, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1427, file: !1428, line: 571, baseType: !1436, size: 64, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!113, !1214, !214}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1427, file: !1428, line: 572, baseType: !1440, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!113, !1214}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1427, file: !1428, line: 578, baseType: !1444, size: 64, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!113, !1214, !214, !214, !214}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1427, file: !1428, line: 580, baseType: !1448, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !36, line: 1184, baseType: !13)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1428, line: 512, size: 896, elements: !1454)
!1454 = !{!1455, !1463, !1464, !1471, !1478, !1488, !1489, !1490, !1492, !1494}
!1455 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1428, line: 513, baseType: !1456, size: 320)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1453, file: !1428, line: 513, size: 320, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461, !1462}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1456, file: !1428, line: 514, baseType: !1214, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1456, file: !1428, line: 515, baseType: !1159, size: 32, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1456, file: !1428, line: 516, baseType: !214, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1456, file: !1428, line: 517, baseType: !214, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1456, file: !1428, line: 518, baseType: !214, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1453, file: !1428, line: 520, baseType: !35, size: 32, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1453, file: !1428, line: 522, baseType: !1465, size: 64, offset: 384)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1268, line: 22, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1268, line: 22, size: 64, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1467, file: !1268, line: 22, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1268, line: 15, baseType: !214)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1453, file: !1428, line: 524, baseType: !1472, size: 64, offset: 448)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1263, line: 372, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1263, line: 372, size: 64, elements: !1475)
!1475 = !{!1476}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1474, file: !1263, line: 372, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1268, line: 16, baseType: !214)
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1428, line: 527, baseType: !1479, size: 64, offset: 512)
!1479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !1428, line: 527, size: 64, elements: !1480)
!1480 = !{!1481, !1487}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1479, file: !1428, line: 528, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1268, line: 21, baseType: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1268, line: 21, size: 64, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1483, file: !1268, line: 21, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1268, line: 14, baseType: !214)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1479, file: !1428, line: 529, baseType: !1466, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1453, file: !1428, line: 534, baseType: !289, size: 64, offset: 576)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1453, file: !1428, line: 535, baseType: !289, size: 64, offset: 640)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1453, file: !1428, line: 541, baseType: !1491, size: 64, offset: 704)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1453, file: !1428, line: 545, baseType: !1493, size: 64, offset: 768)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1453, file: !1428, line: 549, baseType: !1495, size: 64, offset: 832)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1263, line: 520, baseType: !289)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1427, file: !1428, line: 581, baseType: !1497, size: 64, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!1451, !1452, !13}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1427, file: !1428, line: 582, baseType: !1501, size: 64, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1451, !1452, !214, !214}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1427, file: !1428, line: 584, baseType: !1505, size: 64, offset: 512)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!214, !1214}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1427, file: !1428, line: 588, baseType: !1448, size: 64, offset: 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1427, file: !1428, line: 591, baseType: !1448, size: 64, offset: 640)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1427, file: !1428, line: 597, baseType: !1511, size: 64, offset: 704)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!113, !1214, !214, !307, !113, !113}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1427, file: !1428, line: 603, baseType: !1515, size: 64, offset: 768)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!444, !1214}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1427, file: !1428, line: 613, baseType: !1519, size: 64, offset: 832)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!113, !1214, !1522}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !36, line: 717, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1427, file: !1428, line: 625, baseType: !1525, size: 64, offset: 896)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!1522, !1214, !214}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1427, file: !1428, line: 633, baseType: !1529, size: 64, offset: 960)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!289, !1214, !214}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1215, file: !36, line: 697, baseType: !214, size: 64, offset: 1024)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1215, file: !36, line: 699, baseType: !647, size: 64, offset: 1088)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1215, file: !36, line: 700, baseType: !307, size: 64, offset: 1152)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1215, file: !36, line: 711, baseType: !222, size: 64, offset: 1216)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1215, file: !36, line: 717, baseType: !1522, size: 64, offset: 1280)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1215, file: !36, line: 722, baseType: !1538, offset: 1344)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !36, line: 570, elements: !1248)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !979, file: !70, line: 1928, baseType: !214, size: 64, offset: 768)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !979, file: !70, line: 1929, baseType: !1541, size: 64, offset: 832)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!113, !316, !647}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !979, file: !70, line: 1930, baseType: !1545, size: 64, offset: 896)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!113, !647, !1548}
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !70, line: 1061, baseType: !307)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !979, file: !70, line: 1931, baseType: !1541, size: 64, offset: 960)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !979, file: !70, line: 1932, baseType: !1551, size: 64, offset: 1024)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!113, !647, !490, !490, !113}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !979, file: !70, line: 1933, baseType: !1555, size: 64, offset: 1088)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!113, !113, !647, !113}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !979, file: !70, line: 1934, baseType: !1559, size: 64, offset: 1152)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!113, !647, !113, !1562}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !70, line: 1063, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !979, file: !70, line: 1935, baseType: !1252, size: 64, offset: 1216)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !979, file: !70, line: 1936, baseType: !1566, size: 64, offset: 1280)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!113, !113}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !979, file: !70, line: 1937, baseType: !1559, size: 64, offset: 1344)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !979, file: !70, line: 1938, baseType: !1571, size: 64, offset: 1408)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!602, !1574, !647, !990, !615, !13}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1576, line: 59, flags: DIFlagFwdDecl)
!1576 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !979, file: !70, line: 1939, baseType: !1578, size: 64, offset: 1472)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!602, !647, !990, !1574, !615, !13}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !979, file: !70, line: 1940, baseType: !1582, size: 64, offset: 1536)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !647}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !979, file: !70, line: 1941, baseType: !1586, size: 64, offset: 1600)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!113, !647, !113, !1589, !1590}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !979, file: !70, line: 1942, baseType: !1592, size: 64, offset: 1664)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!605, !647, !113, !490, !490}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !979, file: !70, line: 1944, baseType: !1596, size: 64, offset: 1728)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{null, !1599, !647}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1576, line: 66, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !979, file: !70, line: 1948, baseType: !1602, size: 64, offset: 1792)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!602, !647, !490, !647, !490, !615, !13}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !979, file: !70, line: 1950, baseType: !1606, size: 64, offset: 1856)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!490, !647, !490, !647, !490, !490, !13}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !979, file: !70, line: 1953, baseType: !1551, size: 64, offset: 1920)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !979, file: !70, line: 1954, baseType: !1611, size: 64, offset: 1984)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!113, !1614, !13}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !70, line: 1911, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !979, file: !70, line: 1955, baseType: !1617, size: 64, offset: 2048)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!113, !1614, !1173, !13}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !648, file: !70, line: 1018, baseType: !391, size: 64, offset: 1472)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !648, file: !70, line: 1020, baseType: !307, size: 64, offset: 1536)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !648, file: !70, line: 1023, baseType: !307, size: 64, offset: 1600)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !648, file: !70, line: 1027, baseType: !1624, size: 64, offset: 1664)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !648, file: !70, line: 1029, baseType: !312, size: 64, offset: 1728)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !648, file: !70, line: 1030, baseType: !1627, size: 32, offset: 1792)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1628, line: 8, baseType: !387)
!1628 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !648, file: !70, line: 1031, baseType: !1627, size: 32, offset: 1824)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !634, file: !596, line: 182, baseType: !644, size: 64, offset: 384)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !634, file: !596, line: 184, baseType: !1632, size: 64, offset: 448)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!113, !647, !536, !633, !1214}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !622, file: !596, line: 90, baseType: !1636, size: 64, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !622, file: !596, line: 91, baseType: !1638, size: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !586, file: !531, line: 120, baseType: !1640, size: 64, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1643, !554}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1645)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !64, line: 39, size: 384, elements: !1646)
!1646 = !{!1647, !1648, !1652, !1656, !1662, !1666}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1645, file: !64, line: 40, baseType: !63, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1645, file: !64, line: 41, baseType: !1649, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!858}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1645, file: !64, line: 42, baseType: !1653, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!307}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1645, file: !64, line: 43, baseType: !1657, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!1343, !1660}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !64, line: 19, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1645, file: !64, line: 44, baseType: !1663, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!1343}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1645, file: !64, line: 45, baseType: !1667, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null, !307}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !586, file: !531, line: 121, baseType: !1671, size: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!1343, !554}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !586, file: !531, line: 122, baseType: !1675, size: 64, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !554, !1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !530, file: !531, line: 70, baseType: !1681, size: 64, offset: 384)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1683, line: 190, size: 1152, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1779, !1780, !1781, !1782, !1783, !1786}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1682, file: !1683, line: 191, baseType: !248, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1682, file: !1683, line: 192, baseType: !248, size: 32, offset: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1682, file: !1683, line: 202, baseType: !1681, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1682, file: !1683, line: 203, baseType: !444, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1682, file: !1683, line: 205, baseType: !791, size: 192, align: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1682, file: !1683, line: 207, baseType: !1343, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1682, file: !1683, line: 208, baseType: !13, size: 32, offset: 448)
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !1683, line: 209, baseType: !1693, size: 256, offset: 512)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !1683, line: 209, size: 256, elements: !1694)
!1694 = !{!1695, !1707, !1711}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1693, file: !1683, line: 210, baseType: !1696, size: 256)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1683, line: 153, size: 256, elements: !1697)
!1697 = !{!1698, !1699, !1703, !1706}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1696, file: !1683, line: 154, baseType: !214, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1696, file: !1683, line: 156, baseType: !1700, size: 64, offset: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !792, line: 12, size: 64, elements: !1701)
!1701 = !{!1702}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1700, file: !792, line: 13, baseType: !796, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1696, file: !1683, line: 162, baseType: !1704, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1683, line: 162, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1696, file: !1683, line: 167, baseType: !214, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1693, file: !1683, line: 211, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1683, line: 170, size: 64, elements: !1709)
!1709 = !{!1710}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1708, file: !1683, line: 171, baseType: !1681, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1693, file: !1683, line: 212, baseType: !1712, size: 256)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1683, line: 174, size: 256, elements: !1713)
!1713 = !{!1714, !1774, !1777, !1778}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1712, file: !1683, line: 175, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1683, line: 271, size: 768, elements: !1718)
!1718 = !{!1719, !1739, !1743, !1747, !1751, !1755, !1759, !1763, !1764, !1765, !1766, !1770}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1717, file: !1683, line: 276, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!113, !1723}
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1683, line: 251, size: 1216, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1724, file: !1683, line: 253, baseType: !1681, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1724, file: !1683, line: 254, baseType: !647, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1724, file: !1683, line: 255, baseType: !1599, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1724, file: !1683, line: 256, baseType: !307, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1724, file: !1683, line: 259, baseType: !218, size: 256, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1724, file: !1683, line: 260, baseType: !218, size: 256, offset: 512)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1724, file: !1683, line: 261, baseType: !113, size: 32, offset: 768)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1724, file: !1683, line: 262, baseType: !274, size: 128, offset: 832)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1724, file: !1683, line: 263, baseType: !469, size: 64, offset: 960)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1724, file: !1683, line: 265, baseType: !615, size: 64, offset: 1024)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1724, file: !1683, line: 266, baseType: !858, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1724, file: !1683, line: 267, baseType: !858, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1724, file: !1683, line: 268, baseType: !1425, size: 64, offset: 1152)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1717, file: !1683, line: 277, baseType: !1740, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !1723}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1717, file: !1683, line: 290, baseType: !1744, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!113, !1599, !307}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1717, file: !1683, line: 292, baseType: !1748, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!307, !1599, !990}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1717, file: !1683, line: 293, baseType: !1752, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!307, !1599, !307, !990}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1717, file: !1683, line: 294, baseType: !1756, size: 64, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !1599, !307}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1717, file: !1683, line: 296, baseType: !1760, size: 64, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!602, !1723, !469, !615, !490}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1717, file: !1683, line: 306, baseType: !615, size: 64, offset: 448)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1717, file: !1683, line: 313, baseType: !858, size: 8, offset: 512)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1717, file: !1683, line: 314, baseType: !1760, size: 64, offset: 576)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1717, file: !1683, line: 317, baseType: !1767, size: 64, offset: 640)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!1201, !1723, !1203}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1717, file: !1683, line: 320, baseType: !1771, size: 64, offset: 704)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!113, !1723, !1214}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1712, file: !1683, line: 176, baseType: !1775, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1683, line: 35, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1712, file: !1683, line: 177, baseType: !490, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1712, file: !1683, line: 178, baseType: !1681, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1682, file: !1683, line: 215, baseType: !307, size: 64, offset: 768)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1682, file: !1683, line: 221, baseType: !391, size: 64, offset: 832)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1682, file: !1683, line: 223, baseType: !266, size: 16, offset: 896)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1682, file: !1683, line: 224, baseType: !320, size: 16, offset: 912)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1682, file: !1683, line: 225, baseType: !1784, size: 64, offset: 960)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1683, line: 36, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1682, file: !1683, line: 227, baseType: !660, size: 128, align: 64, offset: 1024)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !530, file: !531, line: 71, baseType: !1788, size: 32, offset: 448)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1789, line: 19, size: 32, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1788, file: !1789, line: 20, baseType: !705, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !530, file: !531, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !530, file: !531, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !530, file: !531, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !530, file: !531, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !530, file: !531, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !527, file: !12, line: 47, baseType: !517, size: 64, offset: 512)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !527, file: !12, line: 48, baseType: !536, size: 64, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !527, file: !12, line: 49, baseType: !1800, size: 64, offset: 640)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !527, file: !12, line: 50, baseType: !1803, size: 64, offset: 704)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1805, line: 26, size: 256, elements: !1806)
!1805 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1804, file: !1805, line: 27, baseType: !13, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1804, file: !1805, line: 28, baseType: !1809, size: 192, offset: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1810, line: 43, size: 192, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1809, file: !1810, line: 44, baseType: !235, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1809, file: !1810, line: 45, baseType: !274, size: 128, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !518, file: !12, line: 418, baseType: !1815, size: 64, offset: 1408)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !1817)
!1817 = !{!1818, !1819, !1824, !1828, !1832, !1836}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1816, file: !12, line: 54, baseType: !607, size: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1816, file: !12, line: 55, baseType: !1820, size: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!602, !1815, !1823, !469}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1816, file: !12, line: 57, baseType: !1825, size: 64, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!602, !1815, !1823, !444, !615}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1816, file: !12, line: 59, baseType: !1829, size: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{null, !517, !444}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1816, file: !12, line: 60, baseType: !1833, size: 64, offset: 320)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!113, !517}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1816, file: !12, line: 61, baseType: !1837, size: 64, offset: 384)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{null, !517}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !518, file: !12, line: 419, baseType: !444, size: 64, offset: 1472)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !518, file: !12, line: 420, baseType: !444, size: 64, offset: 1536)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !518, file: !12, line: 421, baseType: !536, size: 64, offset: 1600)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !518, file: !12, line: 424, baseType: !1844, size: 64, offset: 1664)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1846)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !518, file: !12, line: 425, baseType: !1848, size: 64, offset: 1728)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !518, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !518, file: !12, line: 435, baseType: !218, size: 256, offset: 1856)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !518, file: !12, line: 437, baseType: !1853, size: 64, offset: 2112)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1855, line: 69, size: 320, elements: !1856)
!1855 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1856 = !{!1857, !1858, !1859, !1876, !1878, !1882, !1883}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1854, file: !1855, line: 70, baseType: !444, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1854, file: !1855, line: 71, baseType: !517, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1854, file: !1855, line: 72, baseType: !1860, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1862)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1855, line: 47, size: 256, elements: !1863)
!1863 = !{!1864, !1865, !1871, !1875}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1862, file: !1855, line: 49, baseType: !13, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1862, file: !1855, line: 51, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!113, !444, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1854)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1862, file: !1855, line: 53, baseType: !1872, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!113, !469, !1869}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1862, file: !1855, line: 55, baseType: !1667, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1854, file: !1855, line: 73, baseType: !1877, size: 16, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1854, file: !1855, line: 74, baseType: !1879, size: 8, offset: 208)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !230, line: 16, baseType: !1880)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !232, line: 20, baseType: !1881)
!1881 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1854, file: !1855, line: 75, baseType: !256, size: 8, offset: 216)
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !1855, line: 76, baseType: !1884, size: 64, offset: 256)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !1855, line: 76, size: 64, elements: !1885)
!1885 = !{!1886, !1887, !1894}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1884, file: !1855, line: 77, baseType: !307, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1884, file: !1855, line: 78, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1890)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1855, line: 86, size: 128, elements: !1891)
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1890, file: !1855, line: 87, baseType: !13, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1890, file: !1855, line: 88, baseType: !469, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1884, file: !1855, line: 79, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1897)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1855, line: 92, size: 256, elements: !1898)
!1898 = !{!1899, !1900, !1901, !1903, !1904}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1897, file: !1855, line: 94, baseType: !13, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1897, file: !1855, line: 95, baseType: !13, size: 32, offset: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1897, file: !1855, line: 96, baseType: !1902, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1897, file: !1855, line: 97, baseType: !1860, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1897, file: !1855, line: 98, baseType: !307, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !518, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !518, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !518, file: !12, line: 442, baseType: !1844, size: 64, offset: 2240)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !518, file: !12, line: 443, baseType: !1848, size: 64, offset: 2304)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !518, file: !12, line: 444, baseType: !858, size: 8, offset: 2368)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !518, file: !12, line: 451, baseType: !858, size: 8, offset: 2376)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !518, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !518, file: !12, line: 455, baseType: !1913, size: 64, offset: 2432)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1915, line: 23, size: 96, elements: !1916)
!1915 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1916 = !{!1917, !1918, !1919}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1914, file: !1915, line: 24, baseType: !113, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1914, file: !1915, line: 24, baseType: !113, size: 32, offset: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1914, file: !1915, line: 24, baseType: !113, size: 32, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !518, file: !12, line: 458, baseType: !1921, size: 64, offset: 2496)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!113}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !518, file: !12, line: 460, baseType: !1925, size: 4032, align: 512, offset: 2560)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1926, size: 4032, elements: !1942)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !1927)
!1927 = !{!1928, !1929, !1930}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1926, file: !12, line: 363, baseType: !307, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1926, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1926, file: !12, line: 367, baseType: !1931, size: 448, offset: 128)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1931, file: !12, line: 320, baseType: !517, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1931, file: !12, line: 321, baseType: !1935, size: 384, offset: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1936, line: 40, size: 384, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1937 = !{!1938}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1935, file: !1936, line: 41, baseType: !1939, size: 384, align: 64)
!1939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 384, align: 64, elements: !1940)
!1940 = !{!1941}
!1941 = !DISubrange(count: 2)
!1942 = !{!1943}
!1943 = !DISubrange(count: 7)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !518, file: !12, line: 463, baseType: !1945, size: 192, offset: 6592)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1946, line: 8, size: 192, elements: !1947)
!1946 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1947 = !{!1948, !1949, !1951}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1945, file: !1946, line: 10, baseType: !13, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1945, file: !1946, line: 11, baseType: !1950, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1945, file: !1946, line: 12, baseType: !1952, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1954, line: 59, size: 48, elements: !1955)
!1954 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1955 = !{!1956, !1957, !1958, !1959, !1960, !1961}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1953, file: !1954, line: 60, baseType: !1360, size: 16)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1953, file: !1954, line: 61, baseType: !1360, size: 16, offset: 16)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1953, file: !1954, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1953, file: !1954, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1953, file: !1954, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1953, file: !1954, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !518, file: !12, line: 465, baseType: !214, size: 64, offset: 6784)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !518, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !518, file: !12, line: 470, baseType: !274, size: 128, offset: 6912)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !518, file: !12, line: 471, baseType: !1966, size: 64, offset: 7040)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1968, line: 33, size: 96, elements: !1969)
!1968 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1969 = !{!1970, !1971, !1972, !1973}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1967, file: !1968, line: 37, baseType: !113, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1967, file: !1968, line: 43, baseType: !113, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1967, file: !1968, line: 45, baseType: !266, size: 16, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1967, file: !1968, line: 47, baseType: !266, size: 16, offset: 80)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !518, file: !12, line: 476, baseType: !1975, size: 64, offset: 7104)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !1977)
!1977 = !{!1978, !1994, !1995, !1996}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1976, file: !12, line: 379, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1981, line: 204, baseType: !1982)
!1981 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1981, line: 197, size: 192, elements: !1983)
!1983 = !{!1984, !1986, !1987, !1988, !1990, !1992}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1982, file: !1981, line: 198, baseType: !1985, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1981, line: 21, baseType: !388)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1982, file: !1981, line: 199, baseType: !258, size: 8, offset: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1982, file: !1981, line: 200, baseType: !258, size: 8, offset: 40)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1982, file: !1981, line: 201, baseType: !1989, size: 16, offset: 48)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1981, line: 17, baseType: !265)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1982, file: !1981, line: 202, baseType: !1991, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1981, line: 16, baseType: !392)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1982, file: !1981, line: 203, baseType: !1993, size: 64, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1981, line: 22, baseType: !392)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1976, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1976, file: !12, line: 381, baseType: !469, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1976, file: !12, line: 382, baseType: !469, size: 64, offset: 192)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !518, file: !12, line: 477, baseType: !1976, size: 256, offset: 7168)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !518, file: !12, line: 480, baseType: !1999, size: 64, offset: 7424)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !518, file: !12, line: 483, baseType: !2002, size: 64, offset: 7488)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !518, file: !12, line: 488, baseType: !469, size: 64, offset: 7552)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !518, file: !12, line: 492, baseType: !307, size: 64, offset: 7616)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !518, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !518, file: !12, line: 495, baseType: !307, size: 64, offset: 7744)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !518, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !518, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !518, file: !12, line: 500, baseType: !2011, size: 64, offset: 7872)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2013, line: 45, baseType: !2014)
!2013 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !518, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !518, file: !12, line: 504, baseType: !2017, size: 64, offset: 8000)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2020, line: 96, size: 192, elements: !2021)
!2020 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2021 = !{!2022, !2023, !2077, !2080}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2019, file: !2020, line: 97, baseType: !13, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2019, file: !2020, line: 98, baseType: !2024, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2020, line: 24, size: 3072, elements: !2026)
!2026 = !{!2027, !2029, !2030, !2031, !2032, !2046, !2047, !2048, !2049, !2061, !2062, !2063, !2074, !2075, !2076}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2025, file: !2020, line: 26, baseType: !2028, size: 128)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, elements: !1940)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2025, file: !2020, line: 27, baseType: !2028, size: 128, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2025, file: !2020, line: 28, baseType: !113, size: 32, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2025, file: !2020, line: 31, baseType: !414, size: 32, align: 512, offset: 512)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2025, file: !2020, line: 32, baseType: !2033, size: 960, offset: 576)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2034, line: 206, size: 960, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2035 = !{!2036, !2037, !2040, !2042, !2043, !2045}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2033, file: !2034, line: 207, baseType: !663, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2033, file: !2034, line: 208, baseType: !2038, size: 256, offset: 64)
!2038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2039, size: 256, elements: !723)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2033, file: !2034, line: 209, baseType: !2041, size: 256, offset: 320)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 256, elements: !723)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2033, file: !2034, line: 213, baseType: !605, size: 64, offset: 576)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2033, file: !2034, line: 215, baseType: !2044, size: 256, offset: 640)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 256, elements: !723)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2033, file: !2034, line: 216, baseType: !256, size: 8, offset: 896)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2025, file: !2020, line: 33, baseType: !214, size: 64, offset: 1536)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2025, file: !2020, line: 34, baseType: !214, size: 64, offset: 1600)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2025, file: !2020, line: 35, baseType: !858, size: 8, offset: 1664)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2025, file: !2020, line: 36, baseType: !2050, size: 320, offset: 1728)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2051, line: 11, size: 320, elements: !2052)
!2051 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2052 = !{!2053, !2054, !2055, !2060}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2050, file: !2051, line: 16, baseType: !718, size: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2050, file: !2051, line: 17, baseType: !214, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2050, file: !2051, line: 18, baseType: !2056, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !2059}
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2050, file: !2051, line: 19, baseType: !387, size: 32, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2025, file: !2020, line: 37, baseType: !1382, size: 256, offset: 2048)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2025, file: !2020, line: 38, baseType: !660, size: 128, align: 64, offset: 2304)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2025, file: !2020, line: 39, baseType: !2064, size: 64, offset: 2432)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2020, line: 49, size: 768, elements: !2066)
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072, !2073}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2065, file: !2020, line: 50, baseType: !414, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2065, file: !2020, line: 51, baseType: !2041, size: 256, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2065, file: !2020, line: 53, baseType: !2041, size: 256, offset: 320)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2065, file: !2020, line: 54, baseType: !214, size: 64, offset: 576)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2065, file: !2020, line: 55, baseType: !2064, size: 64, offset: 640)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2065, file: !2020, line: 56, baseType: !113, size: 32, offset: 704)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2065, file: !2020, line: 57, baseType: !113, size: 32, offset: 736)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2025, file: !2020, line: 40, baseType: !214, size: 64, offset: 2496)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2025, file: !2020, line: 42, baseType: !113, size: 32, offset: 2560)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2025, file: !2020, line: 43, baseType: !2018, size: 64, offset: 2624)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2019, file: !2020, line: 99, baseType: !2078, offset: 128)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2079, line: 211, elements: !1248)
!2079 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2019, file: !2020, line: 100, baseType: !2081, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2020, line: 63, size: 3008, elements: !2083)
!2083 = !{!2084, !2085, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2115}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2082, file: !2020, line: 64, baseType: !2064, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2082, file: !2020, line: 65, baseType: !2086, size: 192, offset: 64)
!2086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2064, size: 192, elements: !571)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2082, file: !2020, line: 67, baseType: !113, size: 32, offset: 256)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2082, file: !2020, line: 68, baseType: !218, size: 256, offset: 320)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2082, file: !2020, line: 69, baseType: !414, size: 32, offset: 576)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2082, file: !2020, line: 70, baseType: !218, size: 256, offset: 640)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2082, file: !2020, line: 71, baseType: !214, size: 64, offset: 896)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2082, file: !2020, line: 72, baseType: !214, size: 64, offset: 960)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2082, file: !2020, line: 73, baseType: !214, size: 64, offset: 1024)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2082, file: !2020, line: 74, baseType: !214, size: 64, offset: 1088)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2082, file: !2020, line: 75, baseType: !214, size: 64, offset: 1152)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2082, file: !2020, line: 76, baseType: !214, size: 64, offset: 1216)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2082, file: !2020, line: 77, baseType: !214, size: 64, offset: 1280)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2082, file: !2020, line: 78, baseType: !214, size: 64, offset: 1344)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2082, file: !2020, line: 79, baseType: !858, size: 8, offset: 1408)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2082, file: !2020, line: 80, baseType: !214, size: 64, offset: 1472)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2082, file: !2020, line: 81, baseType: !218, size: 256, offset: 1536)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2082, file: !2020, line: 82, baseType: !1804, size: 256, offset: 1792)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2082, file: !2020, line: 84, baseType: !248, size: 32, offset: 2048)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2082, file: !2020, line: 87, baseType: !214, size: 64, offset: 2112)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2082, file: !2020, line: 88, baseType: !214, size: 64, offset: 2176)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2082, file: !2020, line: 89, baseType: !2107, size: 704, offset: 2240)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1383, line: 111, size: 704, elements: !2108)
!2108 = !{!2109, !2110, !2111, !2114}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2107, file: !1383, line: 112, baseType: !1382, size: 256)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2107, file: !1383, line: 113, baseType: !2050, size: 320, offset: 256)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2107, file: !1383, line: 116, baseType: !2112, size: 64, offset: 576)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1383, line: 18, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2107, file: !1383, line: 117, baseType: !113, size: 32, offset: 640)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2082, file: !2020, line: 90, baseType: !2018, size: 64, offset: 2944)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !518, file: !12, line: 515, baseType: !2117, size: 64, offset: 8064)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2119, line: 117, size: 128, elements: !2120)
!2119 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2120 = !{!2121, !2122, !2123}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2118, file: !2119, line: 118, baseType: !784, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2118, file: !2119, line: 119, baseType: !784, size: 32, offset: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2118, file: !2119, line: 120, baseType: !605, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !518, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !518, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !518, file: !12, line: 520, baseType: !2127, size: 64, offset: 8192)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !518, file: !12, line: 523, baseType: !2129, size: 64, offset: 8256)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !518, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !518, file: !12, line: 525, baseType: !2134, size: 64, offset: 8384)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !518, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !518, file: !12, line: 533, baseType: !307, size: 64, offset: 8512)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !518, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !518, file: !12, line: 535, baseType: !2141, size: 64, offset: 8640)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !518, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !518, file: !12, line: 539, baseType: !113, size: 32, offset: 8736)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !518, file: !12, line: 540, baseType: !2145, size: 64, offset: 8768)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2147, line: 32, size: 64, elements: !2148)
!2147 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2148 = !{!2149, !2150}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2146, file: !2147, line: 33, baseType: !784, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2146, file: !2147, line: 34, baseType: !784, size: 32, offset: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !518, file: !12, line: 563, baseType: !274, size: 128, offset: 8832)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !518, file: !12, line: 565, baseType: !274, size: 128, offset: 8960)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !518, file: !12, line: 568, baseType: !2154, size: 64, offset: 9088)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{null}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !518, file: !12, line: 570, baseType: !248, size: 32, offset: 9152)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !70, line: 2382, baseType: !493, size: 64, offset: 448)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !494, file: !70, line: 2383, baseType: !714, size: 64, offset: 512)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !494, file: !70, line: 2385, baseType: !2161, offset: 576)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2079, line: 206, elements: !1248)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !494, file: !70, line: 2386, baseType: !2161, offset: 576)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !494, file: !70, line: 2387, baseType: !2161, offset: 576)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !494, file: !70, line: 2388, baseType: !2165, offset: 576)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2161, elements: !571)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !494, file: !70, line: 2390, baseType: !2161, offset: 576)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !494, file: !70, line: 2391, baseType: !2161, offset: 576)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !494, file: !70, line: 2392, baseType: !2161, offset: 576)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !494, file: !70, line: 2393, baseType: !2161, offset: 576)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !481, file: !70, line: 1197, baseType: !2171, size: 64, offset: 384)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2173)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !70, line: 2057, size: 1664, elements: !2174)
!2174 = !{!2175, !2179, !2183, !2184, !2188, !2212, !2216, !2217, !2218, !2222, !2226, !2230, !2231, !2232, !2238, !2242, !2243, !2247, !2248, !2249, !2250, !2254, !2258, !2305, !2320, !2321}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2173, file: !70, line: 2058, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!316, !480}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2173, file: !70, line: 2059, baseType: !2180, size: 64, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{null, !316}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2173, file: !70, line: 2060, baseType: !2180, size: 64, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2173, file: !70, line: 2062, baseType: !2185, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{null, !316, !113}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2173, file: !70, line: 2063, baseType: !2189, size: 64, offset: 256)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!113, !316, !2192}
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !52, line: 42, size: 384, elements: !2194)
!2194 = !{!2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !2193, file: !52, line: 43, baseType: !605, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !2193, file: !52, line: 45, baseType: !605, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !2193, file: !52, line: 52, baseType: !490, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !2193, file: !52, line: 53, baseType: !490, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !2193, file: !52, line: 55, baseType: !51, size: 32, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !2193, file: !52, line: 57, baseType: !13, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !2193, file: !52, line: 58, baseType: !13, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !2193, file: !52, line: 59, baseType: !13, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !2193, file: !52, line: 60, baseType: !13, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !2193, file: !52, line: 61, baseType: !13, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !2193, file: !52, line: 62, baseType: !13, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !2193, file: !52, line: 63, baseType: !13, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !2193, file: !52, line: 71, baseType: !13, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !2193, file: !52, line: 78, baseType: !2209, size: 64, offset: 320)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !52, line: 78, flags: DIFlagFwdDecl)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2173, file: !70, line: 2064, baseType: !2213, size: 64, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!113, !316}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2173, file: !70, line: 2065, baseType: !2180, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2173, file: !70, line: 2066, baseType: !513, size: 64, offset: 448)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2173, file: !70, line: 2067, baseType: !2219, size: 64, offset: 512)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!113, !480, !113}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2173, file: !70, line: 2068, baseType: !2223, size: 64, offset: 576)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!113, !480, !69}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2173, file: !70, line: 2069, baseType: !2227, size: 64, offset: 640)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!113, !480}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2173, file: !70, line: 2070, baseType: !2223, size: 64, offset: 704)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2173, file: !70, line: 2071, baseType: !2227, size: 64, offset: 768)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2173, file: !70, line: 2072, baseType: !2233, size: 64, offset: 832)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!113, !353, !2236}
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !70, line: 62, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2173, file: !70, line: 2073, baseType: !2239, size: 64, offset: 896)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!113, !480, !1950, !469}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2173, file: !70, line: 2074, baseType: !513, size: 64, offset: 960)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2173, file: !70, line: 2076, baseType: !2244, size: 64, offset: 1024)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!113, !1599, !353}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2173, file: !70, line: 2077, baseType: !2244, size: 64, offset: 1088)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2173, file: !70, line: 2078, baseType: !2244, size: 64, offset: 1152)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2173, file: !70, line: 2079, baseType: !2244, size: 64, offset: 1216)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2173, file: !70, line: 2081, baseType: !2251, size: 64, offset: 1280)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!602, !480, !113, !469, !615, !490}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2173, file: !70, line: 2082, baseType: !2255, size: 64, offset: 1344)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!602, !480, !113, !444, !615, !490}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2173, file: !70, line: 2083, baseType: !2259, size: 64, offset: 1408)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!2262, !316}
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !75, line: 296, size: 1664, elements: !2265)
!2265 = !{!2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2290, !2291, !2292}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2264, file: !75, line: 297, baseType: !718, size: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2264, file: !75, line: 298, baseType: !274, size: 128, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2264, file: !75, line: 299, baseType: !274, size: 128, offset: 256)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2264, file: !75, line: 300, baseType: !274, size: 128, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2264, file: !75, line: 301, baseType: !218, size: 256, offset: 512)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2264, file: !75, line: 302, baseType: !414, size: 32, offset: 768)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2264, file: !75, line: 303, baseType: !248, size: 32, offset: 800)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2264, file: !75, line: 304, baseType: !480, size: 64, offset: 832)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2264, file: !75, line: 305, baseType: !2275, size: 64, offset: 896)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !75, line: 68, size: 64, elements: !2276)
!2276 = !{!2277, !2289}
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !75, line: 69, baseType: !2278, size: 32)
!2278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2275, file: !75, line: 69, size: 32, elements: !2279)
!2279 = !{!2280, !2281, !2282}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2278, file: !75, line: 70, baseType: !323, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2278, file: !75, line: 71, baseType: !333, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2278, file: !75, line: 72, baseType: !2283, size: 32)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2284, line: 24, baseType: !2285)
!2284 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2284, line: 22, size: 32, elements: !2286)
!2286 = !{!2287}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2285, file: !2284, line: 23, baseType: !2288, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2284, line: 20, baseType: !329)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2275, file: !75, line: 74, baseType: !74, size: 32, offset: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2264, file: !75, line: 306, baseType: !490, size: 64, offset: 960)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2264, file: !75, line: 307, baseType: !214, size: 64, offset: 1024)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2264, file: !75, line: 308, baseType: !2293, size: 576, offset: 1088)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !75, line: 205, size: 576, elements: !2294)
!2294 = !{!2295, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2293, file: !75, line: 206, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !75, line: 66, baseType: !233)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2293, file: !75, line: 207, baseType: !2296, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2293, file: !75, line: 208, baseType: !2296, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2293, file: !75, line: 209, baseType: !2296, size: 64, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2293, file: !75, line: 210, baseType: !2296, size: 64, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2293, file: !75, line: 211, baseType: !2296, size: 64, offset: 320)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2293, file: !75, line: 212, baseType: !2296, size: 64, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2293, file: !75, line: 213, baseType: !815, size: 64, offset: 448)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2293, file: !75, line: 214, baseType: !815, size: 64, offset: 512)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2173, file: !70, line: 2085, baseType: !2306, size: 64, offset: 1472)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!605, !480, !2309}
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2311, line: 15, size: 256, elements: !2312)
!2311 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2312 = !{!2313, !2314, !2315, !2316, !2317}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2310, file: !2311, line: 16, baseType: !1159, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2310, file: !2311, line: 19, baseType: !113, size: 32, offset: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2310, file: !2311, line: 26, baseType: !214, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2310, file: !2311, line: 33, baseType: !214, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2310, file: !2311, line: 36, baseType: !2318, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !36, line: 33, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2173, file: !70, line: 2087, baseType: !2306, size: 64, offset: 1536)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2173, file: !70, line: 2089, baseType: !513, size: 64, offset: 1600)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !481, file: !70, line: 1198, baseType: !2323, size: 64, offset: 448)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2325)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !75, line: 324, size: 704, elements: !2326)
!2326 = !{!2327, !2331, !2335, !2339, !2340, !2341, !2342, !2343, !2348, !2353, !2357}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2325, file: !75, line: 325, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!113, !2263}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2325, file: !75, line: 326, baseType: !2332, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!2263, !480, !113}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2325, file: !75, line: 327, baseType: !2336, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !2263}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2325, file: !75, line: 328, baseType: !2328, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2325, file: !75, line: 329, baseType: !2328, size: 64, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2325, file: !75, line: 330, baseType: !2328, size: 64, offset: 320)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2325, file: !75, line: 331, baseType: !2219, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2325, file: !75, line: 334, baseType: !2344, size: 64, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!2347, !316}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2325, file: !75, line: 335, baseType: !2349, size: 64, offset: 512)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!113, !316, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2325, file: !75, line: 337, baseType: !2354, size: 64, offset: 576)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!113, !316, !2347}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2325, file: !75, line: 339, baseType: !2358, size: 64, offset: 640)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!113, !480, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !481, file: !70, line: 1199, baseType: !2363, size: 64, offset: 512)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2365)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !75, line: 430, size: 704, elements: !2366)
!2366 = !{!2367, !2373, !2374, !2378, !2379, !2380, !2395, !2418, !2422, !2423, !2446}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2365, file: !75, line: 431, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!113, !480, !113, !113, !2371}
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !970)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2365, file: !75, line: 432, baseType: !2219, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2365, file: !75, line: 433, baseType: !2375, size: 64, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!113, !480, !13}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2365, file: !75, line: 434, baseType: !2375, size: 64, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2365, file: !75, line: 435, baseType: !2219, size: 64, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2365, file: !75, line: 436, baseType: !2381, size: 64, offset: 320)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!113, !480, !113, !2384}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !75, line: 417, size: 256, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2385, file: !75, line: 418, baseType: !113, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2385, file: !75, line: 419, baseType: !13, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2385, file: !75, line: 420, baseType: !13, size: 32, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2385, file: !75, line: 422, baseType: !13, size: 32, offset: 96)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2385, file: !75, line: 423, baseType: !13, size: 32, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2385, file: !75, line: 424, baseType: !13, size: 32, offset: 160)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2385, file: !75, line: 425, baseType: !13, size: 32, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2385, file: !75, line: 426, baseType: !13, size: 32, offset: 224)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2365, file: !75, line: 437, baseType: !2396, size: 64, offset: 384)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!113, !480, !2275, !2399}
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !75, line: 345, size: 960, elements: !2401)
!2401 = !{!2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2400, file: !75, line: 346, baseType: !113, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2400, file: !75, line: 347, baseType: !391, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2400, file: !75, line: 348, baseType: !391, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2400, file: !75, line: 349, baseType: !391, size: 64, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2400, file: !75, line: 350, baseType: !391, size: 64, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2400, file: !75, line: 351, baseType: !391, size: 64, offset: 320)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2400, file: !75, line: 352, baseType: !391, size: 64, offset: 384)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2400, file: !75, line: 353, baseType: !229, size: 64, offset: 448)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2400, file: !75, line: 355, baseType: !229, size: 64, offset: 512)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2400, file: !75, line: 356, baseType: !113, size: 32, offset: 576)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2400, file: !75, line: 357, baseType: !113, size: 32, offset: 608)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2400, file: !75, line: 358, baseType: !391, size: 64, offset: 640)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2400, file: !75, line: 359, baseType: !391, size: 64, offset: 704)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2400, file: !75, line: 360, baseType: !391, size: 64, offset: 768)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2400, file: !75, line: 361, baseType: !229, size: 64, offset: 832)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2400, file: !75, line: 362, baseType: !113, size: 32, offset: 896)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2365, file: !75, line: 438, baseType: !2419, size: 64, offset: 448)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!113, !480, !2361, !2399}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2365, file: !75, line: 440, baseType: !2396, size: 64, offset: 512)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2365, file: !75, line: 441, baseType: !2424, size: 64, offset: 576)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!113, !480, !2427}
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !75, line: 411, size: 1408, elements: !2429)
!2429 = !{!2430, !2431}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2428, file: !75, line: 412, baseType: !13, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2428, file: !75, line: 413, baseType: !2432, size: 1344, offset: 64)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2433, size: 1344, elements: !571)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !75, line: 397, size: 448, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2445}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2433, file: !75, line: 398, baseType: !13, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2433, file: !75, line: 399, baseType: !13, size: 32, offset: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2433, file: !75, line: 401, baseType: !13, size: 32, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2433, file: !75, line: 402, baseType: !13, size: 32, offset: 96)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2433, file: !75, line: 403, baseType: !13, size: 32, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2433, file: !75, line: 404, baseType: !13, size: 32, offset: 160)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2433, file: !75, line: 405, baseType: !13, size: 32, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2433, file: !75, line: 406, baseType: !393, size: 64, offset: 256)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2433, file: !75, line: 407, baseType: !2444, size: 64, offset: 320)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !225, line: 132, baseType: !391)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2433, file: !75, line: 408, baseType: !2444, size: 64, offset: 384)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2365, file: !75, line: 442, baseType: !2375, size: 64, offset: 640)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !481, file: !70, line: 1200, baseType: !2448, size: 64, offset: 576)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2450)
!2450 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !70, line: 54, flags: DIFlagFwdDecl)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !481, file: !70, line: 1201, baseType: !214, size: 64, offset: 640)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !481, file: !70, line: 1202, baseType: !214, size: 64, offset: 704)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !481, file: !70, line: 1203, baseType: !214, size: 64, offset: 768)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !481, file: !70, line: 1204, baseType: !353, size: 64, offset: 832)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !481, file: !70, line: 1205, baseType: !799, size: 320, offset: 896)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !481, file: !70, line: 1206, baseType: !113, size: 32, offset: 1216)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !481, file: !70, line: 1207, baseType: !248, size: 32, offset: 1248)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !481, file: !70, line: 1209, baseType: !307, size: 64, offset: 1280)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !481, file: !70, line: 1211, baseType: !2460, size: 64, offset: 1344)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2463)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !70, line: 1211, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !481, file: !70, line: 1223, baseType: !2465, size: 64, offset: 1408)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !370, line: 34, size: 64, elements: !2466)
!2466 = !{!2467}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2465, file: !370, line: 35, baseType: !373, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !481, file: !70, line: 1224, baseType: !274, size: 128, offset: 1472)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !481, file: !70, line: 1225, baseType: !2470, size: 64, offset: 1600)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2472, line: 40, size: 7424, elements: !2473)
!2472 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2473 = !{!2474, !2476, !2477, !3324, !3325, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3368, !3369}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2471, file: !2472, line: 41, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !225, line: 131, baseType: !391)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2471, file: !2472, line: 42, baseType: !2475, size: 64, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2471, file: !2472, line: 43, baseType: !2478, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !81, line: 128, size: 4544, elements: !2480)
!2480 = !{!2481, !2482, !2483, !2484, !2486, !2487, !2488, !2489, !2490, !2670, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3290, !3291, !3292, !3293, !3296, !3297, !3300, !3303, !3304, !3307, !3308, !3309, !3310}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2479, file: !81, line: 133, baseType: !113, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2479, file: !81, line: 134, baseType: !113, size: 32, offset: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2479, file: !81, line: 135, baseType: !113, size: 32, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2479, file: !81, line: 137, baseType: !2485, size: 256, offset: 96)
!2485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !400)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2479, file: !81, line: 139, baseType: !266, size: 16, offset: 352)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2479, file: !81, line: 140, baseType: !266, size: 16, offset: 368)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2479, file: !81, line: 142, baseType: !1154, size: 128, offset: 384)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2479, file: !81, line: 143, baseType: !2470, size: 64, offset: 512)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2479, file: !81, line: 145, baseType: !2491, size: 64, offset: 576)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2493)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !81, line: 1388, size: 1152, elements: !2494)
!2494 = !{!2495, !2586, !2590, !2595, !2599, !2603, !2604, !2608, !2609, !2615, !2619, !2620, !2624, !2650, !2655, !2660, !2661, !2665}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2493, file: !81, line: 1389, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !2499}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2472, line: 265, size: 960, elements: !2501)
!2501 = !{!2502, !2503, !2504, !2506, !2507, !2508, !2510, !2511, !2518, !2520, !2523, !2524, !2527, !2531, !2532, !2534, !2535, !2536, !2537, !2539, !2584}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2500, file: !2472, line: 266, baseType: !2499, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2500, file: !2472, line: 267, baseType: !2470, size: 64, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2500, file: !2472, line: 268, baseType: !2505, size: 32, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2472, line: 256, baseType: !388)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2500, file: !2472, line: 271, baseType: !266, size: 16, offset: 160)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2500, file: !2472, line: 272, baseType: !266, size: 16, offset: 176)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2500, file: !2472, line: 273, baseType: !2509, size: 8, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2472, line: 97, baseType: !256)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2500, file: !2472, line: 274, baseType: !248, size: 32, offset: 224)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2500, file: !2472, line: 276, baseType: !2512, size: 160, align: 32, offset: 256)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1147, line: 77, size: 160, align: 32, elements: !2513)
!2513 = !{!2514, !2515, !2516, !2517}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2512, file: !1147, line: 78, baseType: !2475, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2512, file: !1147, line: 80, baseType: !13, size: 32, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2512, file: !1147, line: 82, baseType: !13, size: 32, offset: 96)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2512, file: !1147, line: 84, baseType: !13, size: 32, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2500, file: !2472, line: 278, baseType: !2519, size: 32, offset: 416)
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2472, line: 258, baseType: !13)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2500, file: !2472, line: 279, baseType: !2521, size: 64, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2472, line: 20, baseType: !2497)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2500, file: !2472, line: 280, baseType: !307, size: 64, offset: 512)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2500, file: !2472, line: 288, baseType: !2525, size: 64, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2472, line: 288, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2500, file: !2472, line: 289, baseType: !2528, size: 64, offset: 640)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2472, line: 228, size: 64, elements: !2529)
!2529 = !{!2530}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2528, file: !2472, line: 229, baseType: !391, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2500, file: !2472, line: 291, baseType: !391, size: 64, offset: 704)
!2532 = !DIDerivedType(tag: DW_TAG_member, scope: !2500, file: !2472, line: 299, baseType: !2533, offset: 768)
!2533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2500, file: !2472, line: 299, elements: !1248)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2500, file: !2472, line: 305, baseType: !266, size: 16, offset: 768)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2500, file: !2472, line: 311, baseType: !266, size: 16, offset: 784)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2500, file: !2472, line: 313, baseType: !248, size: 32, offset: 800)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2500, file: !2472, line: 315, baseType: !2538, size: 64, offset: 832)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2500, file: !2472, line: 317, baseType: !2540, size: 64, offset: 896)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2542, line: 678, size: 1984, elements: !2543)
!2542 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2543 = !{!2544, !2548, !2549, !2552, !2573, !2574, !2575, !2576, !2581, !2582, !2583}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2541, file: !2542, line: 679, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2547, line: 11, flags: DIFlagFwdDecl)
!2547 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2541, file: !2542, line: 680, baseType: !13, size: 32, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2541, file: !2542, line: 685, baseType: !2550, size: 64, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2542, line: 685, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2541, file: !2542, line: 687, baseType: !2553, size: 576, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2554, line: 26, baseType: !2555)
!2554 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2554, line: 16, size: 576, elements: !2556)
!2556 = !{!2557, !2558, !2559, !2560, !2561, !2562, !2567, !2572}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2555, file: !2554, line: 17, baseType: !414, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2555, file: !2554, line: 18, baseType: !113, size: 32, offset: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2555, file: !2554, line: 19, baseType: !113, size: 32, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2555, file: !2554, line: 20, baseType: !1590, size: 64, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2555, file: !2554, line: 22, baseType: !307, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2555, file: !2554, line: 23, baseType: !2563, size: 64, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2554, line: 13, baseType: !2565)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!307, !1159, !307}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2555, file: !2554, line: 24, baseType: !2568, size: 64, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2554, line: 14, baseType: !2570)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{null, !307, !307}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2555, file: !2554, line: 25, baseType: !727, size: 192, offset: 384)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2541, file: !2542, line: 688, baseType: !2553, size: 576, offset: 768)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2541, file: !2542, line: 694, baseType: !13, size: 32, offset: 1344)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2541, file: !2542, line: 699, baseType: !414, size: 32, offset: 1376)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2541, file: !2542, line: 700, baseType: !2577, size: 128, offset: 1408)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2542, line: 550, size: 128, elements: !2578)
!2578 = !{!2579, !2580}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2577, file: !2542, line: 551, baseType: !2499, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2577, file: !2542, line: 552, baseType: !2499, size: 64, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2541, file: !2542, line: 701, baseType: !1382, size: 256, offset: 1536)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2541, file: !2542, line: 702, baseType: !2112, size: 64, offset: 1792)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2541, file: !2542, line: 707, baseType: !718, size: 128, offset: 1856)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2500, file: !2472, line: 324, baseType: !2585, offset: 960)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1146, elements: !742)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2493, file: !81, line: 1390, baseType: !2587, size: 64, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!113, !2499, !1173, !13}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2493, file: !81, line: 1392, baseType: !2591, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!113, !2478, !2594}
!2594 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !81, line: 115, baseType: !13)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2493, file: !81, line: 1393, baseType: !2596, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{null, !2478}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2493, file: !81, line: 1394, baseType: !2600, size: 64, offset: 256)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!113, !2470, !2594, !13, !214}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2493, file: !81, line: 1396, baseType: !2600, size: 64, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2493, file: !81, line: 1398, baseType: !2605, size: 64, offset: 384)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!13, !2478, !13}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2493, file: !81, line: 1400, baseType: !2596, size: 64, offset: 448)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2493, file: !81, line: 1401, baseType: !2610, size: 64, offset: 512)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!113, !2470, !2613}
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !70, line: 56, flags: DIFlagFwdDecl)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2493, file: !81, line: 1402, baseType: !2616, size: 64, offset: 576)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!113, !2470, !858}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2493, file: !81, line: 1403, baseType: !2596, size: 64, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2493, file: !81, line: 1405, baseType: !2621, size: 64, offset: 704)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{null, !2470, !214}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2493, file: !81, line: 1406, baseType: !2625, size: 64, offset: 768)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!113, !2478, !2475, !13, !2628, !307}
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !81, line: 342, baseType: !2629)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!113, !2632, !13, !307}
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2634, line: 106, size: 512, elements: !2635)
!2634 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2635 = !{!2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2645, !2646}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2633, file: !2634, line: 107, baseType: !392, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2633, file: !2634, line: 108, baseType: !392, size: 64, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2633, file: !2634, line: 109, baseType: !392, size: 64, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2633, file: !2634, line: 110, baseType: !257, size: 8, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2633, file: !2634, line: 111, baseType: !257, size: 8, offset: 200)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2633, file: !2634, line: 112, baseType: !257, size: 8, offset: 208)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2633, file: !2634, line: 113, baseType: !257, size: 8, offset: 216)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2633, file: !2634, line: 114, baseType: !2644, size: 32, offset: 224)
!2644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 32, elements: !723)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2633, file: !2634, line: 115, baseType: !392, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2633, file: !2634, line: 116, baseType: !2647, size: 192, offset: 320)
!2647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 192, elements: !2648)
!2648 = !{!2649}
!2649 = !DISubrange(count: 24)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2493, file: !81, line: 1408, baseType: !2651, size: 64, offset: 832)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!469, !2478, !2654}
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2493, file: !81, line: 1410, baseType: !2656, size: 64, offset: 896)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!113, !2478, !2659, !80}
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2493, file: !81, line: 1412, baseType: !517, size: 64, offset: 960)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2493, file: !81, line: 1413, baseType: !2662, size: 64, offset: 1024)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2664)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !81, line: 37, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2493, file: !81, line: 1420, baseType: !2666, size: 64, offset: 1088)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!113, !2478, !2669}
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2479, file: !81, line: 146, baseType: !2671, size: 64, offset: 640)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !81, line: 391, size: 7296, elements: !2673)
!2673 = !{!2674, !2675, !2678, !2699, !2702, !2705, !2706, !2710, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3155, !3156, !3160, !3161, !3162, !3163, !3196, !3197, !3198, !3201, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3220, !3221, !3222, !3223, !3224, !3225}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2672, file: !81, line: 392, baseType: !1177, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2672, file: !81, line: 393, baseType: !2676, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !81, line: 30, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2672, file: !81, line: 395, baseType: !2679, size: 128, offset: 128)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2680, line: 105, size: 128, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2681 = !{!2682, !2683}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2679, file: !2680, line: 110, baseType: !214, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2679, file: !2680, line: 118, baseType: !2684, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2680, line: 95, size: 448, elements: !2686)
!2686 = !{!2687, !2688, !2694, !2695, !2696, !2697, !2698}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2685, file: !2680, line: 96, baseType: !222, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2685, file: !2680, line: 97, baseType: !2689, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2680, line: 60, baseType: !2691)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{null, !2693}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2685, file: !2680, line: 98, baseType: !2689, size: 64, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2685, file: !2680, line: 99, baseType: !858, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2685, file: !2680, line: 100, baseType: !858, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2685, file: !2680, line: 101, baseType: !660, size: 128, align: 64, offset: 256)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2685, file: !2680, line: 102, baseType: !2693, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2672, file: !81, line: 397, baseType: !2700, size: 64, offset: 256)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !81, line: 39, flags: DIFlagFwdDecl)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2672, file: !81, line: 398, baseType: !2703, size: 64, offset: 320)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !81, line: 38, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !2672, file: !81, line: 399, baseType: !218, size: 256, offset: 384)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2672, file: !81, line: 401, baseType: !2707, size: 64, offset: 640)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2709)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !81, line: 401, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2672, file: !81, line: 404, baseType: !2711, size: 64, offset: 704)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !81, line: 404, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2672, file: !81, line: 406, baseType: !13, size: 32, offset: 768)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !2672, file: !81, line: 409, baseType: !1154, size: 128, offset: 832)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2672, file: !81, line: 410, baseType: !13, size: 32, offset: 960)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2672, file: !81, line: 416, baseType: !307, size: 64, offset: 1024)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2672, file: !81, line: 421, baseType: !214, size: 64, offset: 1088)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2672, file: !81, line: 426, baseType: !248, size: 32, offset: 1152)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2672, file: !81, line: 432, baseType: !113, size: 32, offset: 1184)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2672, file: !81, line: 434, baseType: !414, size: 32, offset: 1216)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2672, file: !81, line: 436, baseType: !2478, size: 64, offset: 1280)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2672, file: !81, line: 438, baseType: !705, size: 32, offset: 1344)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2672, file: !81, line: 443, baseType: !536, size: 64, offset: 1408)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2672, file: !81, line: 450, baseType: !2725, size: 64, offset: 1472)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !93, line: 705, size: 5824, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2733, !2734, !2786, !2856, !2857, !2858, !2859, !2860, !2867, !3031, !3044, !3054, !3058, !3060, !3061, !3062, !3066, !3073, !3074, !3077, !3080, !3084, !3087, !3088, !3089, !3090, !3091, !3092, !3122, !3123, !3124, !3127, !3130, !3139, !3140, !3141, !3142, !3143, !3144}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2726, file: !93, line: 706, baseType: !530, size: 512)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2726, file: !93, line: 707, baseType: !2725, size: 64, offset: 512)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2726, file: !93, line: 709, baseType: !2731, size: 64, offset: 576)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !93, line: 37, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2726, file: !93, line: 711, baseType: !444, size: 64, offset: 640)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2726, file: !93, line: 712, baseType: !2735, size: 64, offset: 704)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2737)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !93, line: 89, size: 384, elements: !2738)
!2738 = !{!2739, !2740, !2741, !2747, !2751, !2755}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2737, file: !93, line: 90, baseType: !444, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2737, file: !93, line: 91, baseType: !619, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2737, file: !93, line: 92, baseType: !2742, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!113, !2745, !566}
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2726)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2737, file: !93, line: 93, baseType: !2748, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!469, !2745, !2654, !1678, !1679}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2737, file: !93, line: 95, baseType: !2752, size: 64, offset: 256)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !2725}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2737, file: !93, line: 97, baseType: !2756, size: 64, offset: 320)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2758)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !105, line: 286, size: 1472, elements: !2759)
!2759 = !{!2760, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2758, file: !105, line: 287, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!113, !2725}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2758, file: !105, line: 288, baseType: !2752, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2758, file: !105, line: 289, baseType: !2761, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2758, file: !105, line: 290, baseType: !2761, size: 64, offset: 192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2758, file: !105, line: 291, baseType: !2761, size: 64, offset: 256)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2758, file: !105, line: 292, baseType: !2761, size: 64, offset: 320)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2758, file: !105, line: 293, baseType: !2761, size: 64, offset: 384)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2758, file: !105, line: 294, baseType: !2761, size: 64, offset: 448)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2758, file: !105, line: 295, baseType: !2761, size: 64, offset: 512)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2758, file: !105, line: 296, baseType: !2761, size: 64, offset: 576)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2758, file: !105, line: 297, baseType: !2761, size: 64, offset: 640)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2758, file: !105, line: 298, baseType: !2761, size: 64, offset: 704)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2758, file: !105, line: 299, baseType: !2761, size: 64, offset: 768)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2758, file: !105, line: 300, baseType: !2761, size: 64, offset: 832)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2758, file: !105, line: 301, baseType: !2761, size: 64, offset: 896)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2758, file: !105, line: 302, baseType: !2761, size: 64, offset: 960)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2758, file: !105, line: 303, baseType: !2761, size: 64, offset: 1024)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2758, file: !105, line: 304, baseType: !2761, size: 64, offset: 1088)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2758, file: !105, line: 305, baseType: !2761, size: 64, offset: 1152)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2758, file: !105, line: 306, baseType: !2761, size: 64, offset: 1216)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2758, file: !105, line: 307, baseType: !2761, size: 64, offset: 1280)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2758, file: !105, line: 308, baseType: !2761, size: 64, offset: 1344)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2758, file: !105, line: 309, baseType: !2761, size: 64, offset: 1408)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2726, file: !93, line: 714, baseType: !2787, size: 64, offset: 768)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2789)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2790, line: 80, size: 1344, elements: !2791)
!2790 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2791 = !{!2792, !2793, !2794, !2795, !2796, !2797, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2855}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2789, file: !2790, line: 81, baseType: !444, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2789, file: !2790, line: 82, baseType: !444, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2789, file: !2790, line: 83, baseType: !619, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2789, file: !2790, line: 84, baseType: !619, size: 64, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2789, file: !2790, line: 85, baseType: !619, size: 64, offset: 256)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2789, file: !2790, line: 87, baseType: !2798, size: 64, offset: 320)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!113, !2725, !2801}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !87, line: 96, size: 1152, elements: !2803)
!2803 = !{!2804, !2805, !2806, !2807, !2808, !2809, !2810, !2814, !2818, !2819, !2820, !2821, !2822, !2830, !2831, !2832, !2833, !2834, !2835}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2802, file: !87, line: 97, baseType: !444, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2802, file: !87, line: 98, baseType: !2787, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2802, file: !87, line: 100, baseType: !517, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2802, file: !87, line: 101, baseType: !444, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2802, file: !87, line: 103, baseType: !858, size: 8, offset: 256)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2802, file: !87, line: 104, baseType: !86, size: 32, offset: 288)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2802, file: !87, line: 106, baseType: !2811, size: 64, offset: 320)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2813)
!2813 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !87, line: 106, flags: DIFlagFwdDecl)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2802, file: !87, line: 107, baseType: !2815, size: 64, offset: 384)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2817)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !87, line: 107, flags: DIFlagFwdDecl)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2802, file: !87, line: 109, baseType: !2761, size: 64, offset: 448)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2802, file: !87, line: 110, baseType: !2752, size: 64, offset: 512)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2802, file: !87, line: 111, baseType: !2761, size: 64, offset: 576)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2802, file: !87, line: 112, baseType: !2752, size: 64, offset: 640)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2802, file: !87, line: 113, baseType: !2823, size: 64, offset: 704)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!113, !2725, !2826}
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !105, line: 60, baseType: !2827)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !105, line: 58, size: 32, elements: !2828)
!2828 = !{!2829}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2827, file: !105, line: 59, baseType: !113, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2802, file: !87, line: 114, baseType: !2761, size: 64, offset: 768)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2802, file: !87, line: 115, baseType: !619, size: 64, offset: 832)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2802, file: !87, line: 116, baseType: !619, size: 64, offset: 896)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2802, file: !87, line: 118, baseType: !2756, size: 64, offset: 960)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2802, file: !87, line: 119, baseType: !2752, size: 64, offset: 1024)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2802, file: !87, line: 121, baseType: !2836, size: 64, offset: 1088)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !87, line: 121, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2789, file: !2790, line: 88, baseType: !2742, size: 64, offset: 384)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2789, file: !2790, line: 89, baseType: !2761, size: 64, offset: 448)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2789, file: !2790, line: 90, baseType: !2752, size: 64, offset: 512)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2789, file: !2790, line: 91, baseType: !2752, size: 64, offset: 576)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2789, file: !2790, line: 92, baseType: !2752, size: 64, offset: 640)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2789, file: !2790, line: 94, baseType: !2761, size: 64, offset: 704)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2789, file: !2790, line: 95, baseType: !2761, size: 64, offset: 768)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2789, file: !2790, line: 97, baseType: !2823, size: 64, offset: 832)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2789, file: !2790, line: 98, baseType: !2761, size: 64, offset: 896)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2789, file: !2790, line: 100, baseType: !2761, size: 64, offset: 960)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2789, file: !2790, line: 102, baseType: !2761, size: 64, offset: 1024)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2789, file: !2790, line: 103, baseType: !2752, size: 64, offset: 1088)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2789, file: !2790, line: 105, baseType: !2756, size: 64, offset: 1152)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2789, file: !2790, line: 107, baseType: !2852, size: 64, offset: 1216)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2854)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2790, line: 107, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2789, file: !2790, line: 109, baseType: !858, size: 8, offset: 1280)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2726, file: !93, line: 715, baseType: !2801, size: 64, offset: 832)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2726, file: !93, line: 717, baseType: !307, size: 64, offset: 896)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2726, file: !93, line: 719, baseType: !307, size: 64, offset: 960)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2726, file: !93, line: 721, baseType: !218, size: 256, offset: 1024)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2726, file: !93, line: 725, baseType: !2861, size: 448, offset: 1280)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !93, line: 517, size: 448, elements: !2862)
!2862 = !{!2863, !2864, !2865, !2866}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2861, file: !93, line: 518, baseType: !274, size: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2861, file: !93, line: 519, baseType: !274, size: 128, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2861, file: !93, line: 520, baseType: !274, size: 128, offset: 256)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2861, file: !93, line: 521, baseType: !92, size: 32, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2726, file: !93, line: 726, baseType: !2868, size: 2496, offset: 1728)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !105, line: 663, size: 2496, elements: !2869)
!2869 = !{!2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2914, !2915, !2916, !2917, !2918, !2919, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3024, !3028}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2868, file: !105, line: 664, baseType: !2826, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2868, file: !105, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2868, file: !105, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2868, file: !105, line: 667, baseType: !858, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2868, file: !105, line: 668, baseType: !858, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2868, file: !105, line: 669, baseType: !858, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2868, file: !105, line: 670, baseType: !858, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2868, file: !105, line: 671, baseType: !858, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2868, file: !105, line: 672, baseType: !858, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2868, file: !105, line: 673, baseType: !858, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2868, file: !105, line: 674, baseType: !858, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2868, file: !105, line: 675, baseType: !387, size: 32, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2868, file: !105, line: 676, baseType: !414, size: 32, offset: 96)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2868, file: !105, line: 678, baseType: !274, size: 128, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2868, file: !105, line: 679, baseType: !1804, size: 256, offset: 256)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2868, file: !105, line: 680, baseType: !2886, size: 64, offset: 512)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2888, line: 43, size: 1536, elements: !2889)
!2888 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2889 = !{!2890, !2891, !2892, !2893, !2894, !2897, !2898, !2899, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2887, file: !2888, line: 44, baseType: !444, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2887, file: !2888, line: 45, baseType: !113, size: 32, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2887, file: !2888, line: 46, baseType: !274, size: 128, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2887, file: !2888, line: 47, baseType: !414, size: 32, offset: 256)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2887, file: !2888, line: 48, baseType: !2895, size: 64, offset: 320)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !105, line: 629, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2887, file: !2888, line: 49, baseType: !2050, size: 320, offset: 384)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2887, file: !2888, line: 50, baseType: !214, size: 64, offset: 704)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2887, file: !2888, line: 51, baseType: !2900, size: 64, offset: 768)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2901, line: 29, baseType: !229)
!2901 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2887, file: !2888, line: 52, baseType: !2900, size: 64, offset: 832)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2887, file: !2888, line: 53, baseType: !2900, size: 64, offset: 896)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2887, file: !2888, line: 54, baseType: !2900, size: 64, offset: 960)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2887, file: !2888, line: 55, baseType: !2900, size: 64, offset: 1024)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2887, file: !2888, line: 56, baseType: !214, size: 64, offset: 1088)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2887, file: !2888, line: 57, baseType: !214, size: 64, offset: 1152)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2887, file: !2888, line: 58, baseType: !214, size: 64, offset: 1216)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2887, file: !2888, line: 59, baseType: !214, size: 64, offset: 1280)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2887, file: !2888, line: 60, baseType: !214, size: 64, offset: 1344)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2887, file: !2888, line: 61, baseType: !2725, size: 64, offset: 1408)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2887, file: !2888, line: 62, baseType: !858, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2887, file: !2888, line: 63, baseType: !858, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2868, file: !105, line: 681, baseType: !858, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2868, file: !105, line: 682, baseType: !858, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2868, file: !105, line: 683, baseType: !858, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2868, file: !105, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2868, file: !105, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2868, file: !105, line: 690, baseType: !2920, size: 512, offset: 640)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !100, line: 118, size: 512, elements: !2921)
!2921 = !{!2922, !2928, !2929, !2934, !2986, !2987, !2988, !2989}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2920, file: !100, line: 119, baseType: !2923, size: 256)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2924, line: 9, size: 256, elements: !2925)
!2924 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2925 = !{!2926, !2927}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2923, file: !2924, line: 10, baseType: !791, size: 192, align: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2923, file: !2924, line: 11, baseType: !2900, size: 64, offset: 192)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2920, file: !100, line: 120, baseType: !2900, size: 64, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2920, file: !100, line: 121, baseType: !2930, size: 64, offset: 320)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!99, !2933}
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2920, file: !100, line: 122, baseType: !2935, size: 64, offset: 384)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !100, line: 159, size: 512, align: 512, elements: !2937)
!2937 = !{!2938, !2963, !2964, !2967, !2972, !2973, !2981, !2985}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2936, file: !100, line: 160, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !100, line: 215, size: 4608, align: 512, elements: !2941)
!2941 = !{!2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2940, file: !100, line: 216, baseType: !235, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2940, file: !100, line: 217, baseType: !13, size: 32, offset: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2940, file: !100, line: 218, baseType: !13, size: 32, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2940, file: !100, line: 219, baseType: !13, size: 32, offset: 96)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2940, file: !100, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2940, file: !100, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2940, file: !100, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2940, file: !100, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2940, file: !100, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2940, file: !100, line: 226, baseType: !13, size: 32, offset: 160)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2940, file: !100, line: 227, baseType: !266, size: 16, offset: 192)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2940, file: !100, line: 228, baseType: !266, size: 16, offset: 208)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2940, file: !100, line: 229, baseType: !13, size: 32, offset: 224)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2940, file: !100, line: 235, baseType: !2900, size: 64, offset: 256)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2940, file: !100, line: 236, baseType: !2933, size: 64, offset: 320)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2940, file: !100, line: 237, baseType: !2900, size: 64, offset: 384)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2940, file: !100, line: 238, baseType: !2933, size: 64, offset: 448)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2940, file: !100, line: 239, baseType: !2960, size: 4096, align: 512, offset: 512)
!2960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2936, size: 4096, align: 512, elements: !2961)
!2961 = !{!2962}
!2962 = !DISubrange(count: 8)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2936, file: !100, line: 161, baseType: !13, size: 32, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2936, file: !100, line: 162, baseType: !2965, size: 32, offset: 96)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !225, line: 32, baseType: !2966)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !330, line: 96, baseType: !113)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2936, file: !100, line: 163, baseType: !2968, size: 32, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !360, line: 274, baseType: !2969)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !360, line: 274, size: 32, elements: !2970)
!2970 = !{!2971}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2969, file: !360, line: 274, baseType: !364, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2936, file: !100, line: 164, baseType: !2933, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2936, file: !100, line: 165, baseType: !2974, size: 128, offset: 256)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2924, line: 14, size: 128, elements: !2975)
!2975 = !{!2976}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2974, file: !2924, line: 15, baseType: !2977, size: 128)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !792, line: 26, size: 128, elements: !2978)
!2978 = !{!2979, !2980}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2977, file: !792, line: 27, baseType: !1700, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2977, file: !792, line: 28, baseType: !796, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2936, file: !100, line: 166, baseType: !2982, size: 64, offset: 384)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!2900}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2936, file: !100, line: 167, baseType: !2900, size: 64, offset: 448)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2920, file: !100, line: 123, baseType: !256, size: 8, offset: 448)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2920, file: !100, line: 124, baseType: !256, size: 8, offset: 456)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2920, file: !100, line: 125, baseType: !256, size: 8, offset: 464)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2920, file: !100, line: 126, baseType: !256, size: 8, offset: 472)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2868, file: !105, line: 691, baseType: !391, size: 64, offset: 1152)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2868, file: !105, line: 692, baseType: !1382, size: 256, offset: 1216)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2868, file: !105, line: 693, baseType: !727, size: 192, offset: 1472)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2868, file: !105, line: 694, baseType: !2895, size: 64, offset: 1664)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2868, file: !105, line: 695, baseType: !248, size: 32, offset: 1728)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2868, file: !105, line: 696, baseType: !248, size: 32, offset: 1760)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2868, file: !105, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2868, file: !105, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2868, file: !105, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2868, file: !105, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2868, file: !105, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2868, file: !105, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2868, file: !105, line: 703, baseType: !858, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2868, file: !105, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2868, file: !105, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2868, file: !105, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2868, file: !105, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2868, file: !105, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2868, file: !105, line: 709, baseType: !13, size: 32, offset: 1824)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2868, file: !105, line: 710, baseType: !104, size: 32, offset: 1856)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2868, file: !105, line: 711, baseType: !112, size: 32, offset: 1888)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2868, file: !105, line: 712, baseType: !112, size: 32, offset: 1920)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2868, file: !105, line: 713, baseType: !113, size: 32, offset: 1952)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2868, file: !105, line: 714, baseType: !113, size: 32, offset: 1984)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2868, file: !105, line: 715, baseType: !391, size: 64, offset: 2048)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2868, file: !105, line: 716, baseType: !391, size: 64, offset: 2112)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2868, file: !105, line: 717, baseType: !391, size: 64, offset: 2176)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2868, file: !105, line: 718, baseType: !391, size: 64, offset: 2240)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2868, file: !105, line: 720, baseType: !3019, size: 64, offset: 2304)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !105, line: 632, size: 64, elements: !3021)
!3021 = !{!3022, !3023}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3020, file: !105, line: 633, baseType: !414, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3020, file: !105, line: 634, baseType: !13, size: 32, offset: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2868, file: !105, line: 721, baseType: !3025, size: 64, offset: 2368)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{null, !2725, !784}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2868, file: !105, line: 722, baseType: !3029, size: 64, offset: 2432)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !105, line: 722, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2726, file: !93, line: 727, baseType: !3032, size: 64, offset: 4224)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !105, line: 742, size: 1792, elements: !3034)
!3034 = !{!3035, !3036, !3037, !3041, !3042, !3043}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3033, file: !105, line: 743, baseType: !2758, size: 1472)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3033, file: !105, line: 744, baseType: !2761, size: 64, offset: 1472)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3033, file: !105, line: 745, baseType: !3038, size: 64, offset: 1536)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !2725, !858}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3033, file: !105, line: 746, baseType: !2761, size: 64, offset: 1600)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3033, file: !105, line: 747, baseType: !2752, size: 64, offset: 1664)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3033, file: !105, line: 748, baseType: !2752, size: 64, offset: 1728)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2726, file: !93, line: 736, baseType: !3045, size: 128, offset: 4288)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !93, line: 529, size: 128, elements: !3046)
!3046 = !{!3047, !3051}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3045, file: !93, line: 531, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3050, line: 13, flags: DIFlagFwdDecl)
!3050 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3045, file: !93, line: 532, baseType: !3052, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !93, line: 49, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2726, file: !93, line: 738, baseType: !3055, size: 64, offset: 4416)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3057)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !93, line: 738, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2726, file: !93, line: 740, baseType: !3059, size: 64, offset: 4480)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2726, file: !93, line: 741, baseType: !391, size: 64, offset: 4544)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2726, file: !93, line: 746, baseType: !391, size: 64, offset: 4608)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2726, file: !93, line: 747, baseType: !3063, size: 64, offset: 4672)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3065)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !93, line: 747, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2726, file: !93, line: 749, baseType: !3067, size: 64, offset: 4736)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !93, line: 428, size: 128, elements: !3069)
!3069 = !{!3070, !3071, !3072}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3068, file: !93, line: 433, baseType: !13, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3068, file: !93, line: 434, baseType: !13, size: 32, offset: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3068, file: !93, line: 435, baseType: !214, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2726, file: !93, line: 751, baseType: !274, size: 128, offset: 4800)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2726, file: !93, line: 762, baseType: !3075, size: 64, offset: 4928)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !93, line: 762, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2726, file: !93, line: 770, baseType: !3078, offset: 4992)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3079, line: 5, elements: !1248)
!3079 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2726, file: !93, line: 772, baseType: !3081, size: 64, offset: 4992)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3083, line: 18, flags: DIFlagFwdDecl)
!3083 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2726, file: !93, line: 773, baseType: !3085, size: 64, offset: 5056)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2790, line: 22, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2726, file: !93, line: 776, baseType: !113, size: 32, offset: 5120)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2726, file: !93, line: 778, baseType: !485, size: 32, offset: 5152)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2726, file: !93, line: 779, baseType: !387, size: 32, offset: 5184)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2726, file: !93, line: 781, baseType: !414, size: 32, offset: 5216)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2726, file: !93, line: 782, baseType: !274, size: 128, offset: 5248)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2726, file: !93, line: 784, baseType: !3093, size: 64, offset: 5376)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3095)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3096, line: 52, size: 768, elements: !3097)
!3096 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3097 = !{!3098, !3099, !3100, !3101, !3102, !3106, !3110, !3111, !3112, !3113, !3117, !3121}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3095, file: !3096, line: 53, baseType: !444, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3095, file: !3096, line: 55, baseType: !619, size: 64, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3095, file: !3096, line: 56, baseType: !619, size: 64, offset: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3095, file: !3096, line: 58, baseType: !2742, size: 64, offset: 192)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3095, file: !3096, line: 59, baseType: !3103, size: 64, offset: 256)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!469, !2745, !2654}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3095, file: !3096, line: 61, baseType: !3107, size: 64, offset: 320)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{null, !3093}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3095, file: !3096, line: 62, baseType: !2752, size: 64, offset: 384)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3095, file: !3096, line: 64, baseType: !2761, size: 64, offset: 448)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3095, file: !3096, line: 66, baseType: !1643, size: 64, offset: 512)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3095, file: !3096, line: 67, baseType: !3114, size: 64, offset: 576)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!1343, !2745}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3095, file: !3096, line: 69, baseType: !3118, size: 64, offset: 640)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{null, !2745, !1678, !1679}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3095, file: !3096, line: 71, baseType: !2756, size: 64, offset: 704)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2726, file: !93, line: 785, baseType: !619, size: 64, offset: 5440)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2726, file: !93, line: 787, baseType: !2752, size: 64, offset: 5504)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2726, file: !93, line: 788, baseType: !3125, size: 64, offset: 5568)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !93, line: 46, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2726, file: !93, line: 789, baseType: !3128, size: 64, offset: 5632)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !93, line: 48, flags: DIFlagFwdDecl)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2726, file: !93, line: 791, baseType: !3131, size: 64, offset: 5696)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !93, line: 597, size: 128, elements: !3133)
!3133 = !{!3134, !3135, !3136, !3137, !3138}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3132, file: !93, line: 598, baseType: !120, size: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3132, file: !93, line: 599, baseType: !129, size: 32, offset: 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3132, file: !93, line: 600, baseType: !134, size: 32, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3132, file: !93, line: 601, baseType: !858, size: 8, offset: 96)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3132, file: !93, line: 602, baseType: !858, size: 8, offset: 104)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2726, file: !93, line: 793, baseType: !139, size: 32, offset: 5760)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2726, file: !93, line: 795, baseType: !858, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2726, file: !93, line: 796, baseType: !858, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2726, file: !93, line: 797, baseType: !858, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2726, file: !93, line: 798, baseType: !858, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2726, file: !93, line: 799, baseType: !858, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2672, file: !81, line: 451, baseType: !112, size: 32, offset: 1536)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2672, file: !81, line: 457, baseType: !214, size: 64, offset: 1600)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2672, file: !81, line: 459, baseType: !13, size: 32, offset: 1664)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2672, file: !81, line: 466, baseType: !13, size: 32, offset: 1696)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2672, file: !81, line: 468, baseType: !2050, size: 320, offset: 1728)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2672, file: !81, line: 469, baseType: !1382, size: 256, offset: 2048)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !2672, file: !81, line: 471, baseType: !248, size: 32, offset: 2304)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !2672, file: !81, line: 473, baseType: !3153, size: 64, offset: 2368)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !81, line: 473, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2672, file: !81, line: 475, baseType: !274, size: 128, offset: 2432)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !2672, file: !81, line: 477, baseType: !3157, size: 64, offset: 2560)
!3157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 64, elements: !3158)
!3158 = !{!3159}
!3159 = !DISubrange(count: 1)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !2672, file: !81, line: 478, baseType: !2525, size: 64, offset: 2624)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !2672, file: !81, line: 479, baseType: !274, size: 128, offset: 2688)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !2672, file: !81, line: 480, baseType: !218, size: 256, offset: 2816)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2672, file: !81, line: 483, baseType: !3164, size: 960, offset: 3072)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !81, line: 300, size: 960, elements: !3165)
!3165 = !{!3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !3164, file: !81, line: 301, baseType: !145, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3164, file: !81, line: 302, baseType: !214, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3164, file: !81, line: 303, baseType: !214, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3164, file: !81, line: 305, baseType: !13, size: 32, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3164, file: !81, line: 306, baseType: !13, size: 32, offset: 224)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3164, file: !81, line: 307, baseType: !13, size: 32, offset: 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3164, file: !81, line: 308, baseType: !13, size: 32, offset: 288)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !3164, file: !81, line: 309, baseType: !13, size: 32, offset: 320)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3164, file: !81, line: 310, baseType: !13, size: 32, offset: 352)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3164, file: !81, line: 311, baseType: !13, size: 32, offset: 384)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3164, file: !81, line: 312, baseType: !13, size: 32, offset: 416)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3164, file: !81, line: 313, baseType: !13, size: 32, offset: 448)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3164, file: !81, line: 314, baseType: !13, size: 32, offset: 480)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3164, file: !81, line: 315, baseType: !13, size: 32, offset: 512)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3164, file: !81, line: 316, baseType: !13, size: 32, offset: 544)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3164, file: !81, line: 317, baseType: !13, size: 32, offset: 576)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !3164, file: !81, line: 318, baseType: !13, size: 32, offset: 608)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3164, file: !81, line: 319, baseType: !13, size: 32, offset: 640)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3164, file: !81, line: 320, baseType: !13, size: 32, offset: 672)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3164, file: !81, line: 321, baseType: !13, size: 32, offset: 704)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3164, file: !81, line: 322, baseType: !13, size: 32, offset: 736)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !3164, file: !81, line: 323, baseType: !13, size: 32, offset: 768)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3164, file: !81, line: 325, baseType: !266, size: 16, offset: 800)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3164, file: !81, line: 326, baseType: !266, size: 16, offset: 816)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3164, file: !81, line: 327, baseType: !266, size: 16, offset: 832)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3164, file: !81, line: 329, baseType: !258, size: 8, offset: 848)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3164, file: !81, line: 330, baseType: !258, size: 8, offset: 856)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3164, file: !81, line: 331, baseType: !258, size: 8, offset: 864)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3164, file: !81, line: 332, baseType: !149, size: 32, offset: 896)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3164, file: !81, line: 339, baseType: !13, size: 32, offset: 928)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2672, file: !81, line: 485, baseType: !13, size: 32, offset: 4032)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2672, file: !81, line: 487, baseType: !113, size: 32, offset: 4064)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !2672, file: !81, line: 489, baseType: !3199, size: 64, offset: 4096)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !81, line: 31, flags: DIFlagFwdDecl)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2672, file: !81, line: 494, baseType: !3202, size: 64, offset: 4160)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !81, line: 35, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !2672, file: !81, line: 495, baseType: !274, size: 128, offset: 4224)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2672, file: !81, line: 497, baseType: !274, size: 128, offset: 4352)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2672, file: !81, line: 498, baseType: !414, size: 32, offset: 4480)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2672, file: !81, line: 499, baseType: !2107, size: 704, offset: 4544)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2672, file: !81, line: 501, baseType: !218, size: 256, offset: 5248)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2672, file: !81, line: 502, baseType: !218, size: 256, offset: 5504)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2672, file: !81, line: 508, baseType: !274, size: 128, offset: 5760)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2672, file: !81, line: 509, baseType: !414, size: 32, offset: 5888)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2672, file: !81, line: 511, baseType: !113, size: 32, offset: 5920)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2672, file: !81, line: 517, baseType: !660, size: 128, align: 64, offset: 5952)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2672, file: !81, line: 518, baseType: !727, size: 192, offset: 6080)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2672, file: !81, line: 523, baseType: !218, size: 256, offset: 6272)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !2672, file: !81, line: 525, baseType: !113, size: 32, offset: 6528)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2672, file: !81, line: 527, baseType: !3218, size: 64, offset: 6592)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !81, line: 527, flags: DIFlagFwdDecl)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2672, file: !81, line: 528, baseType: !274, size: 128, offset: 6656)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2672, file: !81, line: 530, baseType: !353, size: 64, offset: 6784)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2672, file: !81, line: 531, baseType: !353, size: 64, offset: 6848)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !2672, file: !81, line: 532, baseType: !353, size: 64, offset: 6912)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2672, file: !81, line: 536, baseType: !218, size: 256, offset: 6976)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2672, file: !81, line: 538, baseType: !858, size: 8, offset: 7232)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2479, file: !81, line: 147, baseType: !307, size: 64, offset: 704)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2479, file: !81, line: 149, baseType: !2541, size: 1984, offset: 768)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2479, file: !81, line: 151, baseType: !113, size: 32, offset: 2752)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2479, file: !81, line: 152, baseType: !214, size: 64, offset: 2816)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2479, file: !81, line: 161, baseType: !218, size: 256, offset: 2880)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2479, file: !81, line: 162, baseType: !13, size: 32, offset: 3136)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2479, file: !81, line: 164, baseType: !3233, size: 64, offset: 3200)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !155, line: 163, size: 6848, elements: !3235)
!3235 = !{!3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3282, !3283, !3284, !3285, !3287, !3288, !3289}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3234, file: !155, line: 164, baseType: !391, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3234, file: !155, line: 165, baseType: !791, size: 192, align: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3234, file: !155, line: 166, baseType: !274, size: 128, offset: 256)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3234, file: !155, line: 167, baseType: !214, size: 64, offset: 384)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3234, file: !155, line: 168, baseType: !214, size: 64, offset: 448)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3234, file: !155, line: 170, baseType: !1788, size: 32, offset: 512)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3234, file: !155, line: 171, baseType: !13, size: 32, offset: 544)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3234, file: !155, line: 172, baseType: !13, size: 32, offset: 576)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3234, file: !155, line: 173, baseType: !13, size: 32, offset: 608)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3234, file: !155, line: 173, baseType: !13, size: 32, offset: 640)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3234, file: !155, line: 179, baseType: !222, size: 64, offset: 704)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3234, file: !155, line: 184, baseType: !214, size: 64, offset: 768)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3234, file: !155, line: 186, baseType: !3249, size: 4672, offset: 832)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !155, line: 105, size: 4672, elements: !3250)
!3250 = !{!3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3275, !3276, !3277, !3278, !3279, !3280, !3281}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3249, file: !155, line: 106, baseType: !3233, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3249, file: !155, line: 108, baseType: !214, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3249, file: !155, line: 109, baseType: !214, size: 64, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3249, file: !155, line: 111, baseType: !274, size: 128, offset: 192)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3249, file: !155, line: 112, baseType: !274, size: 128, offset: 320)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3249, file: !155, line: 113, baseType: !274, size: 128, offset: 448)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3249, file: !155, line: 114, baseType: !274, size: 128, offset: 576)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3249, file: !155, line: 115, baseType: !414, size: 32, offset: 704)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3249, file: !155, line: 117, baseType: !248, size: 32, offset: 736)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3249, file: !155, line: 118, baseType: !1311, size: 1280, offset: 768)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3249, file: !155, line: 120, baseType: !214, size: 64, offset: 2048)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3249, file: !155, line: 121, baseType: !214, size: 64, offset: 2112)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3249, file: !155, line: 122, baseType: !214, size: 64, offset: 2176)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3249, file: !155, line: 123, baseType: !214, size: 64, offset: 2240)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3249, file: !155, line: 124, baseType: !214, size: 64, offset: 2304)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3249, file: !155, line: 132, baseType: !214, size: 64, offset: 2368)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3249, file: !155, line: 133, baseType: !214, size: 64, offset: 2432)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3249, file: !155, line: 135, baseType: !3269, size: 384, offset: 2496)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3270, line: 76, size: 384, elements: !3271)
!3270 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3271 = !{!3272, !3273, !3274}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3269, file: !3270, line: 78, baseType: !916, size: 320)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3269, file: !3270, line: 80, baseType: !13, size: 32, offset: 320)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3269, file: !3270, line: 81, baseType: !235, size: 32, offset: 352)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3249, file: !155, line: 136, baseType: !113, size: 32, offset: 2880)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3249, file: !155, line: 137, baseType: !154, size: 32, offset: 2912)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3249, file: !155, line: 139, baseType: !414, size: 32, offset: 2944)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3249, file: !155, line: 140, baseType: !274, size: 128, offset: 3008)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3249, file: !155, line: 141, baseType: !2107, size: 704, offset: 3136)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3249, file: !155, line: 142, baseType: !2107, size: 704, offset: 3840)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3249, file: !155, line: 144, baseType: !274, size: 128, offset: 4544)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3234, file: !155, line: 187, baseType: !274, size: 128, offset: 5504)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3234, file: !155, line: 193, baseType: !727, size: 192, offset: 5632)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3234, file: !155, line: 195, baseType: !2725, size: 64, offset: 5824)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3234, file: !155, line: 196, baseType: !3286, size: 512, offset: 5888)
!3286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !575)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3234, file: !155, line: 197, baseType: !2725, size: 64, offset: 6400)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3234, file: !155, line: 199, baseType: !2050, size: 320, offset: 6464)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3234, file: !155, line: 202, baseType: !353, size: 64, offset: 6784)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2479, file: !81, line: 165, baseType: !530, size: 512, offset: 3264)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2479, file: !81, line: 166, baseType: !536, size: 64, offset: 3776)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2479, file: !81, line: 168, baseType: !274, size: 128, offset: 3840)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2479, file: !81, line: 170, baseType: !3294, size: 64, offset: 3968)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !81, line: 170, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2479, file: !81, line: 171, baseType: !248, size: 32, offset: 4032)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2479, file: !81, line: 172, baseType: !3298, size: 64, offset: 4096)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !81, line: 104, flags: DIFlagFwdDecl)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2479, file: !81, line: 197, baseType: !3301, size: 64, offset: 4160)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !81, line: 197, flags: DIFlagFwdDecl)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2479, file: !81, line: 199, baseType: !113, size: 32, offset: 4224)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2479, file: !81, line: 200, baseType: !3305, size: 64, offset: 4288)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !81, line: 105, flags: DIFlagFwdDecl)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2479, file: !81, line: 201, baseType: !2078, offset: 4352)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2479, file: !81, line: 202, baseType: !391, size: 64, offset: 4352)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2479, file: !81, line: 203, baseType: !2594, size: 32, offset: 4416)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2479, file: !81, line: 209, baseType: !3311, size: 64, offset: 4480)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !81, line: 384, size: 576, elements: !3313)
!3313 = !{!3314, !3315, !3316, !3317}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3312, file: !81, line: 385, baseType: !530, size: 512)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3312, file: !81, line: 386, baseType: !858, size: 8, offset: 512)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3312, file: !81, line: 387, baseType: !13, size: 32, offset: 544)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3312, file: !81, line: 388, baseType: !3318, offset: 576)
!3318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3319, elements: !742)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !81, line: 378, size: 640, elements: !3320)
!3320 = !{!3321, !3322, !3323}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3319, file: !81, line: 379, baseType: !530, size: 512)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3319, file: !81, line: 380, baseType: !2475, size: 64, offset: 512)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3319, file: !81, line: 381, baseType: !2475, size: 64, offset: 576)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2471, file: !2472, line: 44, baseType: !2671, size: 64, offset: 192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2471, file: !2472, line: 45, baseType: !3326, size: 64, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2472, line: 45, flags: DIFlagFwdDecl)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2471, file: !2472, line: 46, baseType: !214, size: 64, offset: 320)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2471, file: !2472, line: 47, baseType: !858, size: 8, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2471, file: !2472, line: 48, baseType: !256, size: 8, offset: 392)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2471, file: !2472, line: 49, baseType: !858, size: 8, offset: 400)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2471, file: !2472, line: 50, baseType: !858, size: 8, offset: 408)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2471, file: !2472, line: 51, baseType: !485, size: 32, offset: 416)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2471, file: !2472, line: 52, baseType: !248, size: 32, offset: 448)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2471, file: !2472, line: 53, baseType: !414, size: 32, offset: 480)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2471, file: !2472, line: 54, baseType: !316, size: 64, offset: 512)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2471, file: !2472, line: 55, baseType: !307, size: 64, offset: 576)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2471, file: !2472, line: 56, baseType: !307, size: 64, offset: 640)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2471, file: !2472, line: 57, baseType: !3340, size: 64, offset: 704)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3342)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !81, line: 1477, size: 128, elements: !3343)
!3343 = !{!3344, !3348}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3342, file: !81, line: 1478, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{null, !2470, !858}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3342, file: !81, line: 1483, baseType: !3349, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{null, !2470}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2471, file: !2472, line: 58, baseType: !218, size: 256, offset: 768)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2471, file: !2472, line: 60, baseType: !113, size: 32, offset: 1024)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2471, file: !2472, line: 61, baseType: !113, size: 32, offset: 1056)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2471, file: !2472, line: 62, baseType: !536, size: 64, offset: 1088)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2471, file: !2472, line: 65, baseType: !218, size: 256, offset: 1152)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2471, file: !2472, line: 66, baseType: !480, size: 64, offset: 1408)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2471, file: !2472, line: 68, baseType: !3359, size: 64, offset: 1472)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !81, line: 63, size: 808, elements: !3361)
!3361 = !{!3362, !3366}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3360, file: !81, line: 64, baseType: !3363, size: 296)
!3363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !3364)
!3364 = !{!3365}
!3365 = !DISubrange(count: 37)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3360, file: !81, line: 65, baseType: !3367, size: 512, offset: 296)
!3367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 512, elements: !575)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2471, file: !2472, line: 72, baseType: !858, size: 8, offset: 1536)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2471, file: !2472, line: 77, baseType: !2726, size: 5824, offset: 1600)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !481, file: !70, line: 1226, baseType: !3371, size: 64, offset: 1664)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !81, line: 1495, size: 128, elements: !3373)
!3373 = !{!3374, !3375}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3372, file: !81, line: 1496, baseType: !2470, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3372, file: !81, line: 1497, baseType: !307, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !481, file: !70, line: 1227, baseType: !3233, size: 64, offset: 1728)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !481, file: !70, line: 1228, baseType: !3378, size: 64, offset: 1792)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !70, line: 1228, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !481, file: !70, line: 1229, baseType: !718, size: 128, offset: 1856)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !481, file: !70, line: 1230, baseType: !13, size: 32, offset: 1984)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !481, file: !70, line: 1231, baseType: !3383, size: 2496, offset: 2048)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !75, line: 521, size: 2496, elements: !3384)
!3384 = !{!3385, !3386, !3387, !3389, !3421}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3383, file: !75, line: 522, baseType: !13, size: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3383, file: !75, line: 523, baseType: !799, size: 320, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3383, file: !75, line: 524, baseType: !3388, size: 192, offset: 384)
!3388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 192, elements: !571)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3383, file: !75, line: 525, baseType: !3390, size: 1728, offset: 576)
!3390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3391, size: 1728, elements: !571)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !75, line: 222, size: 576, elements: !3392)
!3392 = !{!3393, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3391, file: !75, line: 223, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !75, line: 445, size: 256, elements: !3396)
!3396 = !{!3397, !3398, !3411, !3412}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3395, file: !75, line: 446, baseType: !113, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3395, file: !75, line: 447, baseType: !3399, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3401)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !75, line: 312, size: 512, elements: !3402)
!3402 = !{!3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3401, file: !75, line: 313, baseType: !2219, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3401, file: !75, line: 314, baseType: !2219, size: 64, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3401, file: !75, line: 315, baseType: !2219, size: 64, offset: 128)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3401, file: !75, line: 316, baseType: !2219, size: 64, offset: 192)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3401, file: !75, line: 317, baseType: !2328, size: 64, offset: 256)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3401, file: !75, line: 318, baseType: !2328, size: 64, offset: 320)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3401, file: !75, line: 319, baseType: !2328, size: 64, offset: 384)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3401, file: !75, line: 320, baseType: !2358, size: 64, offset: 448)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3395, file: !75, line: 448, baseType: !517, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3395, file: !75, line: 449, baseType: !3394, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3391, file: !75, line: 224, baseType: !113, size: 32, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3391, file: !75, line: 226, baseType: !274, size: 128, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3391, file: !75, line: 227, baseType: !214, size: 64, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3391, file: !75, line: 228, baseType: !13, size: 32, offset: 320)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3391, file: !75, line: 229, baseType: !13, size: 32, offset: 352)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3391, file: !75, line: 230, baseType: !2296, size: 64, offset: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3391, file: !75, line: 231, baseType: !2296, size: 64, offset: 448)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3391, file: !75, line: 232, baseType: !307, size: 64, offset: 512)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3383, file: !75, line: 526, baseType: !3422, size: 192, offset: 2304)
!3422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3399, size: 192, elements: !571)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !481, file: !70, line: 1233, baseType: !3424, size: 2368, offset: 4544)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !70, line: 1184, size: 2368, elements: !3425)
!3425 = !{!3426, !3427, !3428}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3424, file: !70, line: 1185, baseType: !266, size: 16)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3424, file: !70, line: 1186, baseType: !266, size: 16, offset: 16)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3424, file: !70, line: 1187, baseType: !3429, size: 2304, offset: 64)
!3429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3430, size: 2304, elements: !571)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3431, line: 12, size: 768, elements: !3432)
!3431 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3432 = !{!3433, !3441, !3442, !4564, !4565}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3430, file: !3431, line: 13, baseType: !3434, size: 384)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3435, line: 17, size: 384, elements: !3436)
!3435 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3436 = !{!3437, !3438, !3439, !3440}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3434, file: !3435, line: 18, baseType: !113, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3434, file: !3435, line: 19, baseType: !113, size: 32, offset: 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3434, file: !3435, line: 20, baseType: !727, size: 192, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3434, file: !3435, line: 22, baseType: !660, size: 128, align: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3430, file: !3431, line: 14, baseType: !1902, size: 64, offset: 384)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3430, file: !3431, line: 15, baseType: !3443, size: 64, offset: 448)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3444, line: 16, size: 64, elements: !3445)
!3444 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3445 = !{!3446}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3443, file: !3444, line: 17, baseType: !3447, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1576, line: 746, size: 58368, elements: !3449)
!3449 = !{!3450, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3530, !3541, !3561, !3565, !3568, !3599, !3600, !3601, !3602, !3610, !3612, !3613, !3614, !3615, !3616, !3617, !3628, !3629, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3646, !3647, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3735, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3783, !3789, !3790, !3791, !3792, !3793, !3797, !3800, !3807, !3812, !3815, !3818, !3821, !3824, !3962, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !4000, !4001, !4002, !4011, !4019, !4020, !4021, !4022, !4023, !4028, !4029, !4030, !4033, !4034, !4036, !4047, !4050, !4058, !4061, !4062, !4148, !4149, !4150, !4151, !4152, !4158, !4159, !4160, !4161, !4164, !4165, !4168, !4182, !4183, !4186, !4187, !4188, !4191, !4192, !4193, !4194, !4195, !4196, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4228, !4229, !4235, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4317, !4319, !4320, !4321, !4322, !4323, !4324, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4341, !4342, !4343}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3448, file: !1576, line: 752, baseType: !3451, size: 192)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3452, line: 56, size: 192, elements: !3453)
!3452 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3453 = !{!3454, !3455, !3456, !3457}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3451, file: !3452, line: 57, baseType: !214, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3451, file: !3452, line: 58, baseType: !214, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3451, file: !3452, line: 59, baseType: !387, size: 32, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3451, file: !3452, line: 61, baseType: !387, size: 32, offset: 160)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3448, file: !1576, line: 754, baseType: !13, size: 32, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3448, file: !1576, line: 767, baseType: !307, size: 64, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3448, file: !1576, line: 768, baseType: !705, size: 32, offset: 320)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3448, file: !1576, line: 770, baseType: !13, size: 32, offset: 352)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3448, file: !1576, line: 771, baseType: !13, size: 32, offset: 384)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3448, file: !1576, line: 774, baseType: !113, size: 32, offset: 416)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3448, file: !1576, line: 775, baseType: !3465, size: 128, offset: 448)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3466, line: 58, size: 128, elements: !3467)
!3466 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3467 = !{!3468, !3469, !3474, !3475}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3465, file: !3466, line: 59, baseType: !654, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, scope: !3465, file: !3466, line: 60, baseType: !3470, size: 32, offset: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3465, file: !3466, line: 60, size: 32, elements: !3471)
!3471 = !{!3472, !3473}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3470, file: !3466, line: 61, baseType: !13, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3470, file: !3466, line: 62, baseType: !248, size: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3465, file: !3466, line: 65, baseType: !264, size: 16, offset: 96)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3465, file: !3466, line: 65, baseType: !264, size: 16, offset: 112)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3448, file: !1576, line: 776, baseType: !13, size: 32, offset: 576)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3448, file: !1576, line: 777, baseType: !214, size: 64, offset: 640)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3448, file: !1576, line: 778, baseType: !3447, size: 64, offset: 704)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3448, file: !1576, line: 787, baseType: !113, size: 32, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3448, file: !1576, line: 788, baseType: !113, size: 32, offset: 800)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3448, file: !1576, line: 790, baseType: !113, size: 32, offset: 832)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3448, file: !1576, line: 792, baseType: !113, size: 32, offset: 864)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3448, file: !1576, line: 793, baseType: !113, size: 32, offset: 896)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3448, file: !1576, line: 794, baseType: !113, size: 32, offset: 928)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3448, file: !1576, line: 795, baseType: !13, size: 32, offset: 960)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3448, file: !1576, line: 797, baseType: !3487, size: 2048, offset: 1024)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1576, line: 551, size: 2048, elements: !3488)
!3488 = !{!3489, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3509, !3512, !3513, !3514}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3487, file: !1576, line: 553, baseType: !3490, size: 128)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1576, line: 411, size: 128, elements: !3491)
!3491 = !{!3492, !3493}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3490, file: !1576, line: 412, baseType: !214, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3490, file: !1576, line: 413, baseType: !387, size: 32, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3487, file: !1576, line: 554, baseType: !791, size: 192, align: 64, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3487, file: !1576, line: 555, baseType: !391, size: 64, offset: 320)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3487, file: !1576, line: 556, baseType: !391, size: 64, offset: 384)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3487, file: !1576, line: 558, baseType: !274, size: 128, offset: 448)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3487, file: !1576, line: 559, baseType: !13, size: 32, offset: 576)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3487, file: !1576, line: 561, baseType: !391, size: 64, offset: 640)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3487, file: !1576, line: 562, baseType: !391, size: 64, offset: 704)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3487, file: !1576, line: 563, baseType: !391, size: 64, offset: 768)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3487, file: !1576, line: 564, baseType: !391, size: 64, offset: 832)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3487, file: !1576, line: 565, baseType: !229, size: 64, offset: 896)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3487, file: !1576, line: 566, baseType: !391, size: 64, offset: 960)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3487, file: !1576, line: 568, baseType: !391, size: 64, offset: 1024)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3487, file: !1576, line: 571, baseType: !113, size: 32, offset: 1088)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3487, file: !1576, line: 572, baseType: !3508, size: 64, offset: 1152)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3487, file: !1576, line: 574, baseType: !3510, size: 64, offset: 1216)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1576, line: 49, flags: DIFlagFwdDecl)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3487, file: !1576, line: 576, baseType: !3510, size: 64, offset: 1280)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3487, file: !1576, line: 578, baseType: !214, size: 64, offset: 1344)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3487, file: !1576, line: 588, baseType: !3515, size: 512, align: 512, offset: 1536)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1576, line: 497, size: 512, align: 512, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3515, file: !1576, line: 498, baseType: !391, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3515, file: !1576, line: 499, baseType: !391, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3515, file: !1576, line: 500, baseType: !391, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3515, file: !1576, line: 501, baseType: !387, size: 32, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3515, file: !1576, line: 502, baseType: !387, size: 32, offset: 224)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3515, file: !1576, line: 503, baseType: !214, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3515, file: !1576, line: 504, baseType: !214, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3515, file: !1576, line: 505, baseType: !214, size: 64, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3515, file: !1576, line: 506, baseType: !3526, size: 64, align: 64, offset: 448)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1576, line: 445, size: 64, align: 64, elements: !3527)
!3527 = !{!3528, !3529}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3526, file: !1576, line: 446, baseType: !13, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3526, file: !1576, line: 447, baseType: !13, size: 32, offset: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3448, file: !1576, line: 798, baseType: !3531, size: 384, offset: 3072)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1576, line: 592, size: 384, elements: !3532)
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538, !3539}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3531, file: !1576, line: 593, baseType: !274, size: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3531, file: !1576, line: 594, baseType: !214, size: 64, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3531, file: !1576, line: 595, baseType: !214, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3531, file: !1576, line: 596, baseType: !13, size: 32, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3531, file: !1576, line: 597, baseType: !266, size: 16, offset: 288)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3531, file: !1576, line: 598, baseType: !266, size: 16, offset: 304)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3531, file: !1576, line: 600, baseType: !3540, size: 64, offset: 320)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3448, file: !1576, line: 799, baseType: !3542, size: 1792, offset: 3456)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1576, line: 610, size: 1792, elements: !3543)
!3543 = !{!3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3542, file: !1576, line: 611, baseType: !791, size: 192, align: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3542, file: !1576, line: 618, baseType: !391, size: 64, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3542, file: !1576, line: 619, baseType: !391, size: 64, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3542, file: !1576, line: 620, baseType: !391, size: 64, offset: 320)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3542, file: !1576, line: 621, baseType: !391, size: 64, offset: 384)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3542, file: !1576, line: 622, baseType: !391, size: 64, offset: 448)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3542, file: !1576, line: 629, baseType: !229, size: 64, offset: 512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3542, file: !1576, line: 630, baseType: !391, size: 64, offset: 576)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3542, file: !1576, line: 631, baseType: !13, size: 32, offset: 640)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3542, file: !1576, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3542, file: !1576, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3542, file: !1576, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3542, file: !1576, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3542, file: !1576, line: 662, baseType: !2920, size: 512, offset: 704)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3542, file: !1576, line: 671, baseType: !2920, size: 512, offset: 1216)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3542, file: !1576, line: 679, baseType: !3560, size: 64, offset: 1728)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3448, file: !1576, line: 800, baseType: !3562, size: 64, offset: 5248)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3564)
!3564 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1576, line: 800, flags: DIFlagFwdDecl)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3448, file: !1576, line: 809, baseType: !3566, size: 64, offset: 5312)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1576, line: 70, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3448, file: !1576, line: 825, baseType: !3569, size: 2048, align: 512, offset: 5632)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1576, line: 509, size: 2048, align: 512, elements: !3570)
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3569, file: !1576, line: 511, baseType: !391, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3569, file: !1576, line: 512, baseType: !391, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3569, file: !1576, line: 513, baseType: !391, size: 64, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3569, file: !1576, line: 514, baseType: !391, size: 64, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3569, file: !1576, line: 515, baseType: !391, size: 64, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3569, file: !1576, line: 516, baseType: !391, size: 64, offset: 320)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3569, file: !1576, line: 518, baseType: !391, size: 64, offset: 384)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3569, file: !1576, line: 519, baseType: !391, size: 64, offset: 448)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3569, file: !1576, line: 520, baseType: !229, size: 64, offset: 512)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3569, file: !1576, line: 522, baseType: !391, size: 64, offset: 576)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3569, file: !1576, line: 523, baseType: !391, size: 64, offset: 640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3569, file: !1576, line: 524, baseType: !229, size: 64, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3569, file: !1576, line: 526, baseType: !229, size: 64, offset: 768)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3569, file: !1576, line: 527, baseType: !391, size: 64, offset: 832)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3569, file: !1576, line: 529, baseType: !391, size: 64, offset: 896)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3569, file: !1576, line: 530, baseType: !391, size: 64, offset: 960)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3569, file: !1576, line: 531, baseType: !391, size: 64, offset: 1024)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3569, file: !1576, line: 532, baseType: !391, size: 64, offset: 1088)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3569, file: !1576, line: 533, baseType: !391, size: 64, offset: 1152)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3569, file: !1576, line: 535, baseType: !391, size: 64, offset: 1216)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3569, file: !1576, line: 536, baseType: !391, size: 64, offset: 1280)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3569, file: !1576, line: 537, baseType: !391, size: 64, offset: 1344)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3569, file: !1576, line: 538, baseType: !391, size: 64, offset: 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3569, file: !1576, line: 539, baseType: !391, size: 64, offset: 1472)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3569, file: !1576, line: 540, baseType: !391, size: 64, offset: 1536)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3569, file: !1576, line: 541, baseType: !391, size: 64, offset: 1600)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3569, file: !1576, line: 542, baseType: !391, size: 64, offset: 1664)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3569, file: !1576, line: 543, baseType: !391, size: 64, offset: 1728)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3448, file: !1576, line: 833, baseType: !13, size: 32, offset: 7680)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3448, file: !1576, line: 836, baseType: !13, size: 32, offset: 7712)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3448, file: !1576, line: 837, baseType: !113, size: 32, offset: 7744)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3448, file: !1576, line: 838, baseType: !3603, size: 64, offset: 7808)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3605)
!3605 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3606, line: 19, baseType: !3607)
!3606 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3606, line: 19, size: 64, elements: !3608)
!3608 = !{!3609}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3607, file: !3606, line: 19, baseType: !3157, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3448, file: !1576, line: 839, baseType: !3611, size: 64, offset: 7872)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3448, file: !1576, line: 840, baseType: !3605, size: 64, offset: 7936)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3448, file: !1576, line: 841, baseType: !307, size: 64, offset: 8000)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3448, file: !1576, line: 843, baseType: !266, size: 16, offset: 8064)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3448, file: !1576, line: 845, baseType: !266, size: 16, offset: 8080)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3448, file: !1576, line: 848, baseType: !113, size: 32, offset: 8096)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3448, file: !1576, line: 849, baseType: !3618, size: 32, offset: 8128)
!3618 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1576, line: 718, size: 32, elements: !3619)
!3619 = !{!3620, !3627}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3618, file: !1576, line: 724, baseType: !3621, size: 32)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3618, file: !1576, line: 719, size: 32, elements: !3622)
!3622 = !{!3623, !3624, !3625, !3626}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3621, file: !1576, line: 720, baseType: !256, size: 8)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3621, file: !1576, line: 721, baseType: !256, size: 8, offset: 8)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3621, file: !1576, line: 722, baseType: !256, size: 8, offset: 16)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3621, file: !1576, line: 723, baseType: !256, size: 8, offset: 24)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3618, file: !1576, line: 725, baseType: !387, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3448, file: !1576, line: 850, baseType: !274, size: 128, offset: 8192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3448, file: !1576, line: 851, baseType: !3630, size: 64, offset: 8320)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1576, line: 60, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3448, file: !1576, line: 855, baseType: !214, size: 64, offset: 8384)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3448, file: !1576, line: 856, baseType: !256, size: 8, offset: 8448)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3448, file: !1576, line: 857, baseType: !256, size: 8, offset: 8456)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3448, file: !1576, line: 858, baseType: !113, size: 32, offset: 8480)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3448, file: !1576, line: 859, baseType: !274, size: 128, offset: 8512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3448, file: !1576, line: 860, baseType: !113, size: 32, offset: 8640)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3448, file: !1576, line: 861, baseType: !274, size: 128, offset: 8704)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3448, file: !1576, line: 873, baseType: !3640, size: 256, offset: 8832)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1576, line: 376, size: 256, elements: !3641)
!3641 = !{!3642, !3643, !3644, !3645}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3640, file: !1576, line: 381, baseType: !214, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3640, file: !1576, line: 384, baseType: !393, size: 64, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3640, file: !1576, line: 389, baseType: !393, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3640, file: !1576, line: 392, baseType: !393, size: 64, offset: 192)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3448, file: !1576, line: 875, baseType: !274, size: 128, offset: 9088)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3448, file: !1576, line: 877, baseType: !3648, size: 320, offset: 9216)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3649, line: 86, size: 320, elements: !3650)
!3649 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3650 = !{!3651, !3652, !3653}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3648, file: !3649, line: 87, baseType: !113, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3648, file: !3649, line: 88, baseType: !274, size: 128, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3648, file: !3649, line: 89, baseType: !274, size: 128, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3448, file: !1576, line: 878, baseType: !791, size: 192, align: 64, offset: 9536)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3448, file: !1576, line: 881, baseType: !1227, size: 64, offset: 9728)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3448, file: !1576, line: 882, baseType: !1227, size: 64, offset: 9792)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3448, file: !1576, line: 884, baseType: !113, size: 32, offset: 9856)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3448, file: !1576, line: 885, baseType: !113, size: 32, offset: 9888)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3448, file: !1576, line: 886, baseType: !113, size: 32, offset: 9920)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3448, file: !1576, line: 888, baseType: !113, size: 32, offset: 9952)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3448, file: !1576, line: 890, baseType: !214, size: 64, offset: 9984)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3448, file: !1576, line: 893, baseType: !13, size: 32, offset: 10048)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3448, file: !1576, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3448, file: !1576, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3448, file: !1576, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3448, file: !1576, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3448, file: !1576, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3448, file: !1576, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3448, file: !1576, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3448, file: !1576, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3448, file: !1576, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3448, file: !1576, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3448, file: !1576, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3448, file: !1576, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3448, file: !1576, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3448, file: !1576, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3448, file: !1576, line: 969, baseType: !214, size: 64, offset: 10176)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3448, file: !1576, line: 971, baseType: !3679, size: 448, offset: 10240)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !167, line: 25, size: 448, elements: !3680)
!3680 = !{!3681, !3682, !3687}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3679, file: !167, line: 26, baseType: !214, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3679, file: !167, line: 27, baseType: !3683, size: 64, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!605, !3686}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, scope: !3679, file: !167, line: 28, baseType: !3688, size: 320, offset: 128)
!3688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3679, file: !167, line: 28, size: 320, elements: !3689)
!3689 = !{!3690, !3700, !3725}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3688, file: !167, line: 37, baseType: !3691, size: 320)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3688, file: !167, line: 30, size: 320, elements: !3692)
!3692 = !{!3693, !3695, !3696, !3697, !3698, !3699}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3691, file: !167, line: 31, baseType: !3694, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3691, file: !167, line: 32, baseType: !387, size: 32, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3691, file: !167, line: 33, baseType: !387, size: 32, offset: 96)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3691, file: !167, line: 34, baseType: !387, size: 32, offset: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3691, file: !167, line: 35, baseType: !391, size: 64, offset: 192)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3691, file: !167, line: 36, baseType: !3694, size: 64, offset: 256)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3688, file: !167, line: 47, baseType: !3701, size: 192)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3688, file: !167, line: 39, size: 192, elements: !3702)
!3702 = !{!3703, !3704, !3705, !3724}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3701, file: !167, line: 40, baseType: !2965, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3701, file: !167, line: 41, baseType: !166, size: 32, offset: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, scope: !3701, file: !167, line: 42, baseType: !3706, size: 64, offset: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3701, file: !167, line: 42, size: 64, elements: !3707)
!3707 = !{!3708, !3716}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3706, file: !167, line: 43, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3711, line: 7, size: 128, elements: !3712)
!3711 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3712 = !{!3713, !3715}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3710, file: !3711, line: 8, baseType: !3714, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !330, line: 93, baseType: !233)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3710, file: !3711, line: 9, baseType: !233, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3706, file: !167, line: 44, baseType: !3717, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3719, line: 7, size: 64, elements: !3720)
!3719 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3720 = !{!3721, !3723}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3718, file: !3719, line: 8, baseType: !3722, size: 32)
!3722 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3719, line: 5, baseType: !784)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3718, file: !3719, line: 9, baseType: !784, size: 32, offset: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3701, file: !167, line: 46, baseType: !391, size: 64, offset: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3688, file: !167, line: 55, baseType: !3726, size: 256)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3688, file: !167, line: 49, size: 256, elements: !3727)
!3727 = !{!3728, !3731, !3732, !3733, !3734}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3726, file: !167, line: 50, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !167, line: 14, flags: DIFlagFwdDecl)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3726, file: !167, line: 51, baseType: !113, size: 32, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3726, file: !167, line: 52, baseType: !113, size: 32, offset: 96)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3726, file: !167, line: 53, baseType: !214, size: 64, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3726, file: !167, line: 54, baseType: !214, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3448, file: !1576, line: 973, baseType: !3736, size: 32, offset: 10688)
!3736 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !225, line: 27, baseType: !3737)
!3737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !330, line: 28, baseType: !113)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3448, file: !1576, line: 974, baseType: !3736, size: 32, offset: 10720)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3448, file: !1576, line: 978, baseType: !214, size: 64, offset: 10752)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3448, file: !1576, line: 987, baseType: !3447, size: 64, offset: 10816)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3448, file: !1576, line: 990, baseType: !3447, size: 64, offset: 10880)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3448, file: !1576, line: 995, baseType: !274, size: 128, offset: 10944)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3448, file: !1576, line: 996, baseType: !274, size: 128, offset: 11072)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3448, file: !1576, line: 997, baseType: !3447, size: 64, offset: 11200)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3448, file: !1576, line: 1005, baseType: !274, size: 128, offset: 11264)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3448, file: !1576, line: 1006, baseType: !274, size: 128, offset: 11392)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3448, file: !1576, line: 1009, baseType: !701, size: 64, offset: 11520)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3448, file: !1576, line: 1010, baseType: !3749, size: 512, offset: 11584)
!3749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 512, elements: !723)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3448, file: !1576, line: 1011, baseType: !274, size: 128, offset: 12096)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3448, file: !1576, line: 1012, baseType: !274, size: 128, offset: 12224)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3448, file: !1576, line: 1014, baseType: !1803, size: 64, offset: 12352)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3448, file: !1576, line: 1017, baseType: !1950, size: 64, offset: 12416)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3448, file: !1576, line: 1020, baseType: !1950, size: 64, offset: 12480)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3448, file: !1576, line: 1023, baseType: !307, size: 64, offset: 12544)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3448, file: !1576, line: 1025, baseType: !391, size: 64, offset: 12608)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3448, file: !1576, line: 1026, baseType: !391, size: 64, offset: 12672)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3448, file: !1576, line: 1031, baseType: !391, size: 64, offset: 12736)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3448, file: !1576, line: 1032, baseType: !3760, size: 192, offset: 12800)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1576, line: 324, size: 192, elements: !3761)
!3761 = !{!3762, !3763, !3764}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3760, file: !1576, line: 326, baseType: !391, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3760, file: !1576, line: 327, baseType: !391, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3760, file: !1576, line: 328, baseType: !235, size: 32, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3448, file: !1576, line: 1041, baseType: !214, size: 64, offset: 12992)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3448, file: !1576, line: 1042, baseType: !214, size: 64, offset: 13056)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3448, file: !1576, line: 1045, baseType: !391, size: 64, offset: 13120)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3448, file: !1576, line: 1048, baseType: !391, size: 64, offset: 13184)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3448, file: !1576, line: 1051, baseType: !214, size: 64, offset: 13248)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3448, file: !1576, line: 1052, baseType: !214, size: 64, offset: 13312)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3448, file: !1576, line: 1055, baseType: !3772, size: 640, offset: 13376)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3773, line: 132, size: 640, elements: !3774)
!3773 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3774 = !{!3775, !3781, !3782}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3772, file: !3773, line: 133, baseType: !3776, size: 576)
!3776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3777, size: 576, elements: !571)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3773, line: 117, size: 192, elements: !3778)
!3778 = !{!3779, !3780}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3777, file: !3773, line: 118, baseType: !391, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3777, file: !3773, line: 119, baseType: !2974, size: 128, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3772, file: !3773, line: 134, baseType: !13, size: 32, offset: 576)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3772, file: !3773, line: 135, baseType: !13, size: 32, offset: 608)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3448, file: !1576, line: 1058, baseType: !3784, size: 448, offset: 14016)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3773, line: 144, size: 448, elements: !3785)
!3785 = !{!3786, !3787, !3788}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3784, file: !3773, line: 145, baseType: !660, size: 128, align: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3784, file: !3773, line: 146, baseType: !218, size: 256, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3784, file: !3773, line: 147, baseType: !13, size: 32, offset: 384)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3448, file: !1576, line: 1064, baseType: !749, size: 64, offset: 14464)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3448, file: !1576, line: 1067, baseType: !749, size: 64, offset: 14528)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3448, file: !1576, line: 1070, baseType: !749, size: 64, offset: 14592)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3448, file: !1576, line: 1074, baseType: !776, size: 64, offset: 14656)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3448, file: !1576, line: 1084, baseType: !3794, size: 128, offset: 14720)
!3794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3795)
!3795 = !{!3796}
!3796 = !DISubrange(count: 16)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3448, file: !1576, line: 1086, baseType: !3798, size: 64, offset: 14848)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1576, line: 55, flags: DIFlagFwdDecl)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3448, file: !1576, line: 1089, baseType: !3801, size: 64, offset: 14912)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3802, line: 12, size: 64, elements: !3803)
!3802 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3803 = !{!3804}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3801, file: !3802, line: 13, baseType: !3805, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3802, line: 8, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3448, file: !1576, line: 1090, baseType: !3808, size: 128, offset: 14976)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3809, line: 13, size: 128, elements: !3810)
!3809 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3810 = !{!3811}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3808, file: !3809, line: 14, baseType: !274, size: 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3448, file: !1576, line: 1097, baseType: !3813, size: 64, offset: 15104)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1576, line: 50, flags: DIFlagFwdDecl)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3448, file: !1576, line: 1100, baseType: !3816, size: 64, offset: 15168)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1576, line: 1100, flags: DIFlagFwdDecl)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3448, file: !1576, line: 1103, baseType: !3819, size: 64, offset: 15232)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1576, line: 53, flags: DIFlagFwdDecl)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3448, file: !1576, line: 1107, baseType: !3822, size: 64, offset: 15296)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1576, line: 56, flags: DIFlagFwdDecl)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3448, file: !1576, line: 1110, baseType: !3825, size: 64, offset: 15360)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3827, line: 93, size: 8768, elements: !3828)
!3827 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3876, !3885, !3886, !3888, !3889, !3890, !3893, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3931, !3932, !3939, !3949, !3952, !3953, !3956, !3957, !3958, !3959, !3960, !3961}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3826, file: !3827, line: 94, baseType: !705, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3826, file: !3827, line: 95, baseType: !248, size: 32, offset: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3826, file: !3827, line: 96, baseType: !113, size: 32, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3826, file: !3827, line: 97, baseType: !113, size: 32, offset: 96)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3826, file: !3827, line: 98, baseType: !274, size: 128, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3826, file: !3827, line: 100, baseType: !727, size: 192, offset: 256)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3826, file: !3827, line: 103, baseType: !3447, size: 64, offset: 448)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3826, file: !3827, line: 106, baseType: !3837, size: 192, offset: 512)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !946, line: 32, size: 192, elements: !3838)
!3838 = !{!3839, !3840}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3837, file: !946, line: 33, baseType: !274, size: 128)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3837, file: !946, line: 34, baseType: !3841, size: 64, offset: 128)
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3842, line: 25, baseType: !3843)
!3842 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3842, line: 23, size: 64, elements: !3844)
!3844 = !{!3845}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3843, file: !3842, line: 24, baseType: !3157, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3826, file: !3827, line: 109, baseType: !714, size: 64, offset: 704)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3826, file: !3827, line: 112, baseType: !113, size: 32, offset: 768)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3826, file: !3827, line: 114, baseType: !113, size: 32, offset: 800)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3826, file: !3827, line: 115, baseType: !3447, size: 64, offset: 832)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3826, file: !3827, line: 118, baseType: !113, size: 32, offset: 896)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3826, file: !3827, line: 119, baseType: !13, size: 32, offset: 928)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3826, file: !3827, line: 121, baseType: !3853, size: 64, offset: 960)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3827, line: 80, size: 448, elements: !3855)
!3855 = !{!3856, !3857, !3863}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3854, file: !3827, line: 81, baseType: !248, size: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3854, file: !3827, line: 82, baseType: !3858, size: 128, offset: 64)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3827, line: 75, size: 128, elements: !3859)
!3859 = !{!3860, !3861}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3858, file: !3827, line: 76, baseType: !3447, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3858, file: !3827, line: 77, baseType: !3862, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3854, file: !3827, line: 83, baseType: !1804, size: 256, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3826, file: !3827, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3826, file: !3827, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3826, file: !3827, line: 138, baseType: !13, size: 32, offset: 1056)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3826, file: !3827, line: 139, baseType: !274, size: 128, offset: 1088)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3826, file: !3827, line: 142, baseType: !2920, size: 512, offset: 1216)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3826, file: !3827, line: 143, baseType: !2900, size: 64, offset: 1728)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3826, file: !3827, line: 150, baseType: !3871, size: 256, offset: 1792)
!3871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3872, size: 256, elements: !1940)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3827, line: 38, size: 128, elements: !3873)
!3873 = !{!3874, !3875}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3872, file: !3827, line: 39, baseType: !391, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3872, file: !3827, line: 40, baseType: !391, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3826, file: !3827, line: 156, baseType: !3877, size: 192, offset: 2048)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3827, line: 66, size: 192, elements: !3878)
!3878 = !{!3879}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3877, file: !3827, line: 67, baseType: !3880, size: 192)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3827, line: 47, size: 192, elements: !3881)
!3881 = !{!3882, !3883, !3884}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3880, file: !3827, line: 48, baseType: !224, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3880, file: !3827, line: 49, baseType: !224, size: 64, offset: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3880, file: !3827, line: 50, baseType: !224, size: 64, offset: 128)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3826, file: !3827, line: 160, baseType: !3772, size: 640, offset: 2240)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3826, file: !3827, line: 163, baseType: !3887, size: 256, offset: 2880)
!3887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 256, elements: !723)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3826, file: !3827, line: 169, baseType: !701, size: 64, offset: 3136)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3826, file: !3827, line: 172, baseType: !113, size: 32, offset: 3200)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3826, file: !3827, line: 174, baseType: !3891, size: 64, offset: 3264)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3827, line: 174, flags: DIFlagFwdDecl)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3826, file: !3827, line: 185, baseType: !3894, size: 64, offset: 3328)
!3894 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !360, line: 860, baseType: !3895)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 853, size: 64, elements: !3896)
!3896 = !{!3897, !3898}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3895, file: !360, line: 858, baseType: !359, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3895, file: !360, line: 859, baseType: !414, size: 32, offset: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3826, file: !3827, line: 186, baseType: !391, size: 64, offset: 3392)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3826, file: !3827, line: 186, baseType: !391, size: 64, offset: 3456)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3826, file: !3827, line: 186, baseType: !391, size: 64, offset: 3520)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3826, file: !3827, line: 186, baseType: !391, size: 64, offset: 3584)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3826, file: !3827, line: 187, baseType: !391, size: 64, offset: 3648)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3826, file: !3827, line: 188, baseType: !391, size: 64, offset: 3712)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3826, file: !3827, line: 189, baseType: !3760, size: 192, offset: 3776)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3826, file: !3827, line: 190, baseType: !214, size: 64, offset: 3968)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3826, file: !3827, line: 190, baseType: !214, size: 64, offset: 4032)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3826, file: !3827, line: 190, baseType: !214, size: 64, offset: 4096)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3826, file: !3827, line: 190, baseType: !214, size: 64, offset: 4160)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3826, file: !3827, line: 191, baseType: !214, size: 64, offset: 4224)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3826, file: !3827, line: 191, baseType: !214, size: 64, offset: 4288)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3826, file: !3827, line: 191, baseType: !214, size: 64, offset: 4352)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3826, file: !3827, line: 191, baseType: !214, size: 64, offset: 4416)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3826, file: !3827, line: 192, baseType: !214, size: 64, offset: 4480)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3826, file: !3827, line: 192, baseType: !214, size: 64, offset: 4544)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3826, file: !3827, line: 192, baseType: !214, size: 64, offset: 4608)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3826, file: !3827, line: 192, baseType: !214, size: 64, offset: 4672)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3826, file: !3827, line: 193, baseType: !214, size: 64, offset: 4736)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3826, file: !3827, line: 193, baseType: !214, size: 64, offset: 4800)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3826, file: !3827, line: 194, baseType: !3921, size: 448, offset: 4864)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3922, line: 12, size: 448, elements: !3923)
!3922 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3923 = !{!3924, !3925, !3926, !3927, !3928, !3929, !3930}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3921, file: !3922, line: 15, baseType: !391, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3921, file: !3922, line: 17, baseType: !391, size: 64, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3921, file: !3922, line: 19, baseType: !391, size: 64, offset: 128)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3921, file: !3922, line: 21, baseType: !391, size: 64, offset: 192)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3921, file: !3922, line: 29, baseType: !391, size: 64, offset: 256)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3921, file: !3922, line: 35, baseType: !391, size: 64, offset: 320)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3921, file: !3922, line: 44, baseType: !391, size: 64, offset: 384)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3826, file: !3827, line: 202, baseType: !393, size: 64, offset: 5312)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3826, file: !3827, line: 213, baseType: !3933, size: 2048, offset: 5376)
!3933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3934, size: 2048, elements: !3795)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3935, line: 43, size: 128, elements: !3936)
!3935 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3936 = !{!3937, !3938}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3934, file: !3935, line: 44, baseType: !617, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3934, file: !3935, line: 45, baseType: !617, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3826, file: !3827, line: 216, baseType: !3940, size: 448, offset: 7424)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3827, line: 30, size: 448, elements: !3941)
!3941 = !{!3942, !3943, !3944, !3945, !3946, !3947, !3948}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3940, file: !3827, line: 31, baseType: !113, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3940, file: !3827, line: 32, baseType: !605, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3940, file: !3827, line: 33, baseType: !214, size: 64, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3940, file: !3827, line: 34, baseType: !391, size: 64, offset: 192)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3940, file: !3827, line: 34, baseType: !391, size: 64, offset: 256)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3940, file: !3827, line: 35, baseType: !214, size: 64, offset: 320)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3940, file: !3827, line: 35, baseType: !214, size: 64, offset: 384)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3826, file: !3827, line: 219, baseType: !3950, size: 64, offset: 7872)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3827, line: 219, flags: DIFlagFwdDecl)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3826, file: !3827, line: 222, baseType: !13, size: 32, offset: 7936)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3826, file: !3827, line: 223, baseType: !3954, size: 64, offset: 8000)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3827, line: 223, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3826, file: !3827, line: 230, baseType: !858, size: 8, offset: 8064)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3826, file: !3827, line: 231, baseType: !827, size: 16, offset: 8080)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3826, file: !3827, line: 232, baseType: !827, size: 16, offset: 8096)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3826, file: !3827, line: 234, baseType: !1227, size: 64, offset: 8128)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3826, file: !3827, line: 237, baseType: !218, size: 256, offset: 8192)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3826, file: !3827, line: 243, baseType: !799, size: 320, offset: 8448)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3448, file: !1576, line: 1111, baseType: !3963, size: 64, offset: 15424)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3827, line: 20, size: 16640, elements: !3965)
!3965 = !{!3966, !3967, !3968, !3969}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3964, file: !3827, line: 21, baseType: !414, size: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3964, file: !3827, line: 22, baseType: !705, size: 32, offset: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3964, file: !3827, line: 23, baseType: !727, size: 192, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3964, file: !3827, line: 24, baseType: !3970, size: 16384, offset: 256)
!3970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3971, size: 16384, elements: !575)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !946, line: 51, size: 256, elements: !3972)
!3972 = !{!3973}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3971, file: !946, line: 52, baseType: !3974, size: 256)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !946, line: 37, size: 256, elements: !3975)
!3975 = !{!3976, !3983, !3984, !3988}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3974, file: !946, line: 39, baseType: !3977, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3978, line: 83, baseType: !3979)
!3978 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3978, line: 82, baseType: !3981)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{null, !113}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3974, file: !946, line: 40, baseType: !214, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3974, file: !946, line: 46, baseType: !3985, size: 64, offset: 128)
!3985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3978, line: 86, baseType: !3986)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3978, line: 85, baseType: !2155)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3974, file: !946, line: 48, baseType: !3841, size: 64, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3448, file: !1576, line: 1112, baseType: !3841, size: 64, offset: 15488)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3448, file: !1576, line: 1113, baseType: !3841, size: 64, offset: 15552)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3448, file: !1576, line: 1115, baseType: !3841, size: 64, offset: 15616)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3448, file: !1576, line: 1116, baseType: !3837, size: 192, offset: 15680)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3448, file: !1576, line: 1117, baseType: !214, size: 64, offset: 15872)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3448, file: !1576, line: 1118, baseType: !615, size: 64, offset: 15936)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3448, file: !1576, line: 1119, baseType: !13, size: 32, offset: 16000)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3448, file: !1576, line: 1121, baseType: !663, size: 64, offset: 16064)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3448, file: !1576, line: 1125, baseType: !3998, size: 64, offset: 16128)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1576, line: 43, flags: DIFlagFwdDecl)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3448, file: !1576, line: 1127, baseType: !323, size: 32, offset: 16192)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3448, file: !1576, line: 1128, baseType: !13, size: 32, offset: 16224)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3448, file: !1576, line: 1130, baseType: !4003, size: 128, offset: 16256)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4004, line: 37, size: 128, elements: !4005)
!4004 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4005 = !{!4006, !4007, !4008}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4003, file: !4004, line: 38, baseType: !113, size: 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4003, file: !4004, line: 39, baseType: !248, size: 32, offset: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4003, file: !4004, line: 40, baseType: !4009, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4004, line: 24, flags: DIFlagFwdDecl)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3448, file: !1576, line: 1131, baseType: !4012, size: 256, offset: 16384)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4013, line: 12, size: 256, elements: !4014)
!4013 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4014 = !{!4015, !4016, !4017, !4018}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4012, file: !4013, line: 13, baseType: !469, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4012, file: !4013, line: 14, baseType: !214, size: 64, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4012, file: !4013, line: 15, baseType: !214, size: 64, offset: 128)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4012, file: !4013, line: 16, baseType: !858, size: 8, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3448, file: !1576, line: 1134, baseType: !391, size: 64, offset: 16640)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3448, file: !1576, line: 1135, baseType: !391, size: 64, offset: 16704)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3448, file: !1576, line: 1138, baseType: !414, size: 32, offset: 16768)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3448, file: !1576, line: 1141, baseType: !235, size: 32, offset: 16800)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3448, file: !1576, line: 1143, baseType: !4024, size: 64, offset: 16832)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1576, line: 735, size: 64, elements: !4025)
!4025 = !{!4026}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4024, file: !1576, line: 736, baseType: !4027, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3448, file: !1576, line: 1147, baseType: !2977, size: 128, offset: 16896)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3448, file: !1576, line: 1149, baseType: !3447, size: 64, offset: 17024)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3448, file: !1576, line: 1151, baseType: !4031, size: 64, offset: 17088)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1576, line: 1151, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3448, file: !1576, line: 1188, baseType: !307, size: 64, offset: 17152)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3448, file: !1576, line: 1191, baseType: !4035, size: 64, offset: 17216)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3448, file: !1576, line: 1194, baseType: !4037, size: 64, offset: 17280)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !81, line: 976, size: 320, elements: !4039)
!4039 = !{!4040, !4041, !4042, !4043, !4044, !4045, !4046}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4038, file: !81, line: 977, baseType: !1177, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !4038, file: !81, line: 980, baseType: !1177, size: 64, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !4038, file: !81, line: 981, baseType: !266, size: 16, offset: 128)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4038, file: !81, line: 983, baseType: !266, size: 16, offset: 144)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4038, file: !81, line: 985, baseType: !858, size: 8, offset: 160)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !4038, file: !81, line: 986, baseType: !858, size: 8, offset: 168)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4038, file: !81, line: 988, baseType: !274, size: 128, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3448, file: !1576, line: 1197, baseType: !4048, size: 64, offset: 17344)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1576, line: 61, flags: DIFlagFwdDecl)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3448, file: !1576, line: 1199, baseType: !4051, size: 64, offset: 17408)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4053, line: 99, size: 128, elements: !4054)
!4053 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4054 = !{!4055, !4056, !4057}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4052, file: !4053, line: 100, baseType: !222, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4052, file: !4053, line: 101, baseType: !248, size: 32, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4052, file: !4053, line: 103, baseType: !266, size: 16, offset: 96)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3448, file: !1576, line: 1202, baseType: !4059, size: 64, offset: 17472)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1576, line: 48, flags: DIFlagFwdDecl)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3448, file: !1576, line: 1205, baseType: !214, size: 64, offset: 17536)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3448, file: !1576, line: 1206, baseType: !4063, size: 64, offset: 17600)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !946, line: 14, baseType: !4065)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !946, line: 12, size: 384, elements: !4066)
!4066 = !{!4067}
!4067 = !DIDerivedType(tag: DW_TAG_member, scope: !4065, file: !946, line: 13, baseType: !4068, size: 384)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4065, file: !946, line: 13, size: 384, elements: !4069)
!4069 = !{!4070, !4071, !4072, !4073}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4068, file: !946, line: 13, baseType: !113, size: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4068, file: !946, line: 13, baseType: !113, size: 32, offset: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4068, file: !946, line: 13, baseType: !113, size: 32, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4068, file: !946, line: 13, baseType: !4074, size: 256, offset: 128)
!4074 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4075, line: 37, size: 256, elements: !4076)
!4075 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4076 = !{!4077, !4082, !4095, !4101, !4110, !4137, !4142}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4074, file: !4075, line: 42, baseType: !4078, size: 64)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4074, file: !4075, line: 39, size: 64, elements: !4079)
!4079 = !{!4080, !4081}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4078, file: !4075, line: 40, baseType: !3737, size: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4078, file: !4075, line: 41, baseType: !329, size: 32, offset: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4074, file: !4075, line: 50, baseType: !4083, size: 192)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4074, file: !4075, line: 45, size: 192, elements: !4084)
!4084 = !{!4085, !4087, !4088, !4094}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4083, file: !4075, line: 46, baseType: !4086, size: 32)
!4086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !330, line: 95, baseType: !113)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4083, file: !4075, line: 47, baseType: !113, size: 32, offset: 32)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4083, file: !4075, line: 48, baseType: !4089, size: 64, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4075, line: 11, baseType: !4090)
!4090 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4075, line: 8, size: 64, elements: !4091)
!4091 = !{!4092, !4093}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4090, file: !4075, line: 9, baseType: !113, size: 32)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4090, file: !4075, line: 10, baseType: !307, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4083, file: !4075, line: 49, baseType: !113, size: 32, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4074, file: !4075, line: 57, baseType: !4096, size: 128)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4074, file: !4075, line: 53, size: 128, elements: !4097)
!4097 = !{!4098, !4099, !4100}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4096, file: !4075, line: 54, baseType: !3737, size: 32)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4096, file: !4075, line: 55, baseType: !329, size: 32, offset: 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4096, file: !4075, line: 56, baseType: !4089, size: 64, offset: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4074, file: !4075, line: 66, baseType: !4102, size: 256)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4074, file: !4075, line: 60, size: 256, elements: !4103)
!4103 = !{!4104, !4105, !4106, !4107, !4109}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4102, file: !4075, line: 61, baseType: !3737, size: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4102, file: !4075, line: 62, baseType: !329, size: 32, offset: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4102, file: !4075, line: 63, baseType: !113, size: 32, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4102, file: !4075, line: 64, baseType: !4108, size: 64, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !330, line: 94, baseType: !604)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4102, file: !4075, line: 65, baseType: !4108, size: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4074, file: !4075, line: 105, baseType: !4111, size: 256)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4074, file: !4075, line: 69, size: 256, elements: !4112)
!4112 = !{!4113, !4114}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4111, file: !4075, line: 70, baseType: !307, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, scope: !4111, file: !4075, line: 79, baseType: !4115, size: 192, offset: 64)
!4115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4111, file: !4075, line: 79, size: 192, elements: !4116)
!4116 = !{!4117, !4118, !4119, !4126, !4131}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4115, file: !4075, line: 81, baseType: !113, size: 32)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4115, file: !4075, line: 86, baseType: !827, size: 16)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4115, file: !4075, line: 92, baseType: !4120, size: 192)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4115, file: !4075, line: 88, size: 192, elements: !4121)
!4121 = !{!4122, !4124, !4125}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4120, file: !4075, line: 89, baseType: !4123, size: 64)
!4123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2961)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4120, file: !4075, line: 90, baseType: !307, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4120, file: !4075, line: 91, baseType: !307, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4115, file: !4075, line: 97, baseType: !4127, size: 96)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4115, file: !4075, line: 94, size: 96, elements: !4128)
!4128 = !{!4129, !4130}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4127, file: !4075, line: 95, baseType: !4123, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4127, file: !4075, line: 96, baseType: !388, size: 32, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4115, file: !4075, line: 103, baseType: !4132, size: 128)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4115, file: !4075, line: 99, size: 128, elements: !4133)
!4133 = !{!4134, !4135, !4136}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4132, file: !4075, line: 100, baseType: !214, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4132, file: !4075, line: 101, baseType: !388, size: 32, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4132, file: !4075, line: 102, baseType: !388, size: 32, offset: 96)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4074, file: !4075, line: 111, baseType: !4138, size: 128)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4074, file: !4075, line: 108, size: 128, elements: !4139)
!4139 = !{!4140, !4141}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4138, file: !4075, line: 109, baseType: !605, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4138, file: !4075, line: 110, baseType: !113, size: 32, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4074, file: !4075, line: 118, baseType: !4143, size: 128)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4074, file: !4075, line: 114, size: 128, elements: !4144)
!4144 = !{!4145, !4146, !4147}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4143, file: !4075, line: 115, baseType: !307, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4143, file: !4075, line: 116, baseType: !113, size: 32, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4143, file: !4075, line: 117, baseType: !13, size: 32, offset: 96)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3448, file: !1576, line: 1208, baseType: !3921, size: 448, offset: 17664)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3448, file: !1576, line: 1215, baseType: !391, size: 64, offset: 18112)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3448, file: !1576, line: 1217, baseType: !391, size: 64, offset: 18176)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3448, file: !1576, line: 1219, baseType: !391, size: 64, offset: 18240)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3448, file: !1576, line: 1223, baseType: !4153, size: 64, offset: 18304)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4154, line: 99, baseType: !4155)
!4154 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4154, line: 99, size: 64, elements: !4156)
!4156 = !{!4157}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4155, file: !4154, line: 99, baseType: !3157, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3448, file: !1576, line: 1225, baseType: !359, size: 32, offset: 18368)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3448, file: !1576, line: 1226, baseType: !113, size: 32, offset: 18400)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3448, file: !1576, line: 1227, baseType: !113, size: 32, offset: 18432)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3448, file: !1576, line: 1231, baseType: !4162, size: 64, offset: 18496)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1576, line: 1231, flags: DIFlagFwdDecl)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3448, file: !1576, line: 1233, baseType: !274, size: 128, offset: 18560)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3448, file: !1576, line: 1240, baseType: !4166, size: 64, offset: 18688)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1576, line: 62, flags: DIFlagFwdDecl)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3448, file: !1576, line: 1242, baseType: !4169, size: 64, offset: 18752)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !4171, line: 392, size: 96, elements: !4172)
!4171 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!4172 = !{!4173, !4179, !4181}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4170, file: !4171, line: 393, baseType: !4174, size: 32)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !4171, line: 388, size: 32, elements: !4175)
!4175 = !{!4176}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4174, file: !4171, line: 389, baseType: !4177, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !4178, line: 46, baseType: !387)
!4178 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !4170, file: !4171, line: 394, baseType: !4180, size: 32, offset: 32)
!4180 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !4178, line: 42, baseType: !784)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !4170, file: !4171, line: 395, baseType: !4177, size: 32, offset: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3448, file: !1576, line: 1244, baseType: !274, size: 128, offset: 18816)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3448, file: !1576, line: 1245, baseType: !4184, size: 64, offset: 18944)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1576, line: 51, flags: DIFlagFwdDecl)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3448, file: !1576, line: 1246, baseType: !218, size: 256, offset: 19008)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3448, file: !1576, line: 1247, baseType: !13, size: 32, offset: 19264)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3448, file: !1576, line: 1250, baseType: !4189, size: 64, offset: 19328)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1576, line: 57, flags: DIFlagFwdDecl)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3448, file: !1576, line: 1251, baseType: !218, size: 256, offset: 19392)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3448, file: !1576, line: 1252, baseType: !274, size: 128, offset: 19648)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3448, file: !1576, line: 1259, baseType: !1522, size: 64, offset: 19776)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3448, file: !1576, line: 1260, baseType: !827, size: 16, offset: 19840)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3448, file: !1576, line: 1261, baseType: !827, size: 16, offset: 19856)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3448, file: !1576, line: 1314, baseType: !4197, size: 64, offset: 19904)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4199, line: 62, size: 256, align: 256, elements: !4200)
!4199 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4200 = !{!4201, !4202, !4203, !4204, !4205, !4206, !4207}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4198, file: !4199, line: 75, baseType: !388, size: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4198, file: !4199, line: 90, baseType: !388, size: 32, offset: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4198, file: !4199, line: 112, baseType: !392, size: 64, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4198, file: !4199, line: 132, baseType: !388, size: 32, offset: 128)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4198, file: !4199, line: 140, baseType: !388, size: 32, offset: 160)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4198, file: !4199, line: 149, baseType: !388, size: 32, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4198, file: !4199, line: 154, baseType: !4208, offset: 224)
!4208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !742)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3448, file: !1576, line: 1315, baseType: !387, size: 32, offset: 19968)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3448, file: !1576, line: 1316, baseType: !387, size: 32, offset: 20000)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3448, file: !1576, line: 1321, baseType: !214, size: 64, offset: 20032)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3448, file: !1576, line: 1325, baseType: !113, size: 32, offset: 20096)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3448, file: !1576, line: 1326, baseType: !113, size: 32, offset: 20128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3448, file: !1576, line: 1327, baseType: !113, size: 32, offset: 20160)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3448, file: !1576, line: 1328, baseType: !113, size: 32, offset: 20192)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3448, file: !1576, line: 1329, baseType: !660, size: 128, align: 64, offset: 20224)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3448, file: !1576, line: 1332, baseType: !4218, size: 128, offset: 20352)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4219, line: 51, size: 128, elements: !4220)
!4219 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4220 = !{!4221, !4226, !4227}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4218, file: !4219, line: 60, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4223, line: 7, size: 64, elements: !4224)
!4223 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4224 = !{!4225}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4222, file: !4223, line: 12, baseType: !3607, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4218, file: !4219, line: 63, baseType: !858, size: 8, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4218, file: !4219, line: 70, baseType: !858, size: 8, offset: 72)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3448, file: !1576, line: 1335, baseType: !1574, size: 64, offset: 20480)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3448, file: !1576, line: 1337, baseType: !4230, size: 128, offset: 20544)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4219, line: 39, size: 128, elements: !4231)
!4231 = !{!4232, !4233, !4234}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4230, file: !4219, line: 40, baseType: !289, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4230, file: !4219, line: 42, baseType: !388, size: 32, offset: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4230, file: !4219, line: 43, baseType: !388, size: 32, offset: 96)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3448, file: !1576, line: 1340, baseType: !4236, size: 64, offset: 20672)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1576, line: 69, flags: DIFlagFwdDecl)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3448, file: !1576, line: 1351, baseType: !113, size: 32, offset: 20736)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3448, file: !1576, line: 1352, baseType: !113, size: 32, offset: 20768)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3448, file: !1576, line: 1354, baseType: !214, size: 64, offset: 20800)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3448, file: !1576, line: 1364, baseType: !391, size: 64, offset: 20864)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3448, file: !1576, line: 1365, baseType: !391, size: 64, offset: 20928)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3448, file: !1576, line: 1412, baseType: !214, size: 64, offset: 20992)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3448, file: !1576, line: 1453, baseType: !2478, size: 64, offset: 21056)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3448, file: !1576, line: 1457, baseType: !4246, size: 64, offset: 21120)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !173, line: 61, size: 576, elements: !4248)
!4248 = !{!4249, !4250, !4269, !4272, !4273, !4306, !4316}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4247, file: !173, line: 62, baseType: !172, size: 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, scope: !4247, file: !173, line: 64, baseType: !4251, size: 192, offset: 64)
!4251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4247, file: !173, line: 64, size: 192, elements: !4252)
!4252 = !{!4253, !4264}
!4253 = !DIDerivedType(tag: DW_TAG_member, scope: !4251, file: !173, line: 65, baseType: !4254, size: 192)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4251, file: !173, line: 65, size: 192, elements: !4255)
!4255 = !{!4256, !4263}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4254, file: !173, line: 66, baseType: !4257, size: 128)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4258, line: 50, size: 128, elements: !4259)
!4258 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4259 = !{!4260, !4261, !4262}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4257, file: !4258, line: 52, baseType: !214, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4257, file: !4258, line: 54, baseType: !13, size: 32, offset: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4257, file: !4258, line: 55, baseType: !13, size: 32, offset: 96)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4254, file: !173, line: 67, baseType: !214, size: 64, offset: 128)
!4264 = !DIDerivedType(tag: DW_TAG_member, scope: !4251, file: !173, line: 70, baseType: !4265, size: 192)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4251, file: !173, line: 70, size: 192, elements: !4266)
!4266 = !{!4267, !4268}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4265, file: !173, line: 71, baseType: !660, size: 128, align: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4265, file: !173, line: 72, baseType: !214, size: 64, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4247, file: !173, line: 76, baseType: !4270, size: 64, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !173, line: 76, flags: DIFlagFwdDecl)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4247, file: !173, line: 77, baseType: !214, size: 64, offset: 320)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4247, file: !173, line: 79, baseType: !4274, size: 64, offset: 384)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4258, line: 25, size: 256, elements: !4276)
!4276 = !{!4277, !4283, !4287}
!4277 = !DIDerivedType(tag: DW_TAG_member, scope: !4275, file: !4258, line: 26, baseType: !4278, size: 128)
!4278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4275, file: !4258, line: 26, size: 128, elements: !4279)
!4279 = !{!4280, !4282}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4278, file: !4258, line: 27, baseType: !4281, size: 128)
!4281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 128, elements: !3795)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4278, file: !4258, line: 28, baseType: !4281, size: 128)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4275, file: !4258, line: 31, baseType: !4284, size: 64, offset: 128)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4286)
!4286 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4258, line: 23, flags: DIFlagFwdDecl)
!4287 = !DIDerivedType(tag: DW_TAG_member, scope: !4275, file: !4258, line: 33, baseType: !4288, size: 64, offset: 192)
!4288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4275, file: !4258, line: 33, size: 64, elements: !4289)
!4289 = !{!4290, !4296, !4301}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4288, file: !4258, line: 38, baseType: !4291, size: 64)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4288, file: !4258, line: 34, size: 64, elements: !4292)
!4292 = !{!4293, !4294, !4295}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4291, file: !4258, line: 35, baseType: !784, size: 32)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4291, file: !4258, line: 36, baseType: !256, size: 8, offset: 32)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4291, file: !4258, line: 37, baseType: !256, size: 8, offset: 40)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4288, file: !4258, line: 42, baseType: !4297, size: 16)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4288, file: !4258, line: 39, size: 16, elements: !4298)
!4298 = !{!4299, !4300}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4297, file: !4258, line: 40, baseType: !256, size: 8)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4297, file: !4258, line: 41, baseType: !256, size: 8, offset: 8)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4288, file: !4258, line: 46, baseType: !4302, size: 16)
!4302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4288, file: !4258, line: 43, size: 16, elements: !4303)
!4303 = !{!4304, !4305}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4302, file: !4258, line: 44, baseType: !256, size: 8)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4302, file: !4258, line: 45, baseType: !256, size: 8, offset: 8)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4247, file: !173, line: 81, baseType: !4307, size: 64, offset: 448)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !173, line: 85, size: 384, elements: !4309)
!4309 = !{!4310, !4311, !4312, !4313, !4314, !4315}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4308, file: !173, line: 86, baseType: !4270, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4308, file: !173, line: 87, baseType: !214, size: 64, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4308, file: !173, line: 88, baseType: !214, size: 64, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4308, file: !173, line: 89, baseType: !214, size: 64, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4308, file: !173, line: 90, baseType: !858, size: 8, offset: 256)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4308, file: !173, line: 92, baseType: !4307, size: 64, offset: 320)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4247, file: !173, line: 82, baseType: !13, size: 32, offset: 512)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3448, file: !1576, line: 1463, baseType: !4318, offset: 21184)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1576, line: 739, elements: !1248)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3448, file: !1576, line: 1470, baseType: !660, size: 128, align: 64, offset: 21184)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3448, file: !1576, line: 1471, baseType: !705, size: 32, offset: 21312)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3448, file: !1576, line: 1472, baseType: !113, size: 32, offset: 21344)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3448, file: !1576, line: 1474, baseType: !3447, size: 64, offset: 21376)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3448, file: !1576, line: 1475, baseType: !2050, size: 320, offset: 21440)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3448, file: !1576, line: 1478, baseType: !4325, size: 64, offset: 21760)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1576, line: 1478, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3448, file: !1576, line: 1482, baseType: !705, size: 32, offset: 21824)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3448, file: !1576, line: 1489, baseType: !307, size: 64, offset: 21888)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3448, file: !1576, line: 1504, baseType: !307, size: 64, offset: 21952)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3448, file: !1576, line: 1505, baseType: !392, size: 64, offset: 22016)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3448, file: !1576, line: 1506, baseType: !391, size: 64, offset: 22080)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3448, file: !1576, line: 1507, baseType: !392, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3448, file: !1576, line: 1508, baseType: !392, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3448, file: !1576, line: 1509, baseType: !392, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3448, file: !1576, line: 1510, baseType: !660, size: 128, align: 64, offset: 22208)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3448, file: !1576, line: 1511, baseType: !113, size: 32, offset: 22336)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3448, file: !1576, line: 1515, baseType: !4338, size: 64, offset: 22400)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !655, line: 56, size: 64, elements: !4339)
!4339 = !{!4340}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4338, file: !655, line: 57, baseType: !658, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3448, file: !1576, line: 1518, baseType: !4338, size: 64, offset: 22464)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3448, file: !1576, line: 1528, baseType: !660, size: 128, align: 64, offset: 22528)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3448, file: !1576, line: 1552, baseType: !4344, size: 35328, offset: 23040)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4345, line: 430, size: 35328, elements: !4346)
!4345 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4346 = !{!4347, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4376, !4377, !4378, !4379, !4380, !4381, !4384, !4385, !4386, !4387}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4344, file: !4345, line: 432, baseType: !4348, size: 192)
!4348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4349, size: 192, elements: !571)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4350, line: 16, size: 64, elements: !4351)
!4350 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4351 = !{!4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4349, file: !4350, line: 17, baseType: !264, size: 16)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4349, file: !4350, line: 18, baseType: !264, size: 16, offset: 16)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4349, file: !4350, line: 19, baseType: !264, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4349, file: !4350, line: 19, baseType: !264, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4349, file: !4350, line: 19, baseType: !264, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4349, file: !4350, line: 19, baseType: !264, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4349, file: !4350, line: 19, baseType: !264, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4349, file: !4350, line: 20, baseType: !264, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4349, file: !4350, line: 20, baseType: !264, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4349, file: !4350, line: 20, baseType: !264, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4349, file: !4350, line: 20, baseType: !264, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4349, file: !4350, line: 20, baseType: !264, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4349, file: !4350, line: 20, baseType: !264, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4344, file: !4345, line: 436, baseType: !214, size: 64, offset: 192)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4344, file: !4345, line: 440, baseType: !266, size: 16, offset: 256)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4344, file: !4345, line: 441, baseType: !266, size: 16, offset: 272)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4344, file: !4345, line: 442, baseType: !266, size: 16, offset: 288)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4344, file: !4345, line: 443, baseType: !266, size: 16, offset: 304)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4344, file: !4345, line: 447, baseType: !214, size: 64, offset: 320)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4344, file: !4345, line: 448, baseType: !214, size: 64, offset: 384)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4344, file: !4345, line: 459, baseType: !4373, size: 256, offset: 448)
!4373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4374, size: 256, elements: !723)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4345, line: 428, flags: DIFlagFwdDecl)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4344, file: !4345, line: 461, baseType: !214, size: 64, offset: 704)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4344, file: !4345, line: 463, baseType: !214, size: 64, offset: 768)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4344, file: !4345, line: 465, baseType: !214, size: 64, offset: 832)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4344, file: !4345, line: 466, baseType: !214, size: 64, offset: 896)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4344, file: !4345, line: 467, baseType: !214, size: 64, offset: 960)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4344, file: !4345, line: 473, baseType: !4382, size: 64, offset: 1024)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4345, line: 10, flags: DIFlagFwdDecl)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4344, file: !4345, line: 480, baseType: !214, size: 64, offset: 1088)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4344, file: !4345, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4344, file: !4345, line: 491, baseType: !387, size: 32, offset: 1184)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4344, file: !4345, line: 501, baseType: !4388, size: 33792, offset: 1536)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4389, line: 448, size: 33792, elements: !4390)
!4389 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4390 = !{!4391, !4392, !4393, !4555, !4556, !4562, !4563}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4388, file: !4389, line: 461, baseType: !13, size: 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4388, file: !4389, line: 468, baseType: !214, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4388, file: !4389, line: 476, baseType: !4394, size: 64, offset: 128)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4389, line: 356, size: 33280, align: 512, elements: !4396)
!4396 = !{!4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4395, file: !4389, line: 358, baseType: !13, size: 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4395, file: !4389, line: 361, baseType: !13, size: 32, offset: 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4395, file: !4389, line: 364, baseType: !391, size: 64, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4395, file: !4389, line: 367, baseType: !391, size: 64, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4395, file: !4389, line: 370, baseType: !391, size: 64, offset: 192)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4395, file: !4389, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4395, file: !4389, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4395, file: !4389, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4395, file: !4389, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4395, file: !4389, line: 397, baseType: !4407, size: 32768, offset: 512)
!4407 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4389, line: 348, size: 32768, elements: !4408)
!4408 = !{!4409, !4424, !4461, !4538, !4551}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4407, file: !4389, line: 349, baseType: !4410, size: 896)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4389, line: 12, size: 896, elements: !4411)
!4411 = !{!4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4423}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4410, file: !4389, line: 13, baseType: !387, size: 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4410, file: !4389, line: 14, baseType: !387, size: 32, offset: 32)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4410, file: !4389, line: 15, baseType: !387, size: 32, offset: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4410, file: !4389, line: 16, baseType: !387, size: 32, offset: 96)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4410, file: !4389, line: 17, baseType: !387, size: 32, offset: 128)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4410, file: !4389, line: 18, baseType: !387, size: 32, offset: 160)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4410, file: !4389, line: 19, baseType: !387, size: 32, offset: 192)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4410, file: !4389, line: 22, baseType: !4420, size: 640, offset: 224)
!4420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 640, elements: !4421)
!4421 = !{!4422}
!4422 = !DISubrange(count: 20)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4410, file: !4389, line: 25, baseType: !387, size: 32, offset: 864)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4407, file: !4389, line: 350, baseType: !4425, size: 4096, align: 128)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4389, line: 34, size: 4096, align: 128, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4430, !4431, !4446, !4447, !4448, !4450, !4452, !4456}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4425, file: !4389, line: 35, baseType: !264, size: 16)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4425, file: !4389, line: 36, baseType: !264, size: 16, offset: 16)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4425, file: !4389, line: 37, baseType: !264, size: 16, offset: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4425, file: !4389, line: 38, baseType: !264, size: 16, offset: 48)
!4431 = !DIDerivedType(tag: DW_TAG_member, scope: !4425, file: !4389, line: 39, baseType: !4432, size: 128, offset: 64)
!4432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4425, file: !4389, line: 39, size: 128, elements: !4433)
!4433 = !{!4434, !4439}
!4434 = !DIDerivedType(tag: DW_TAG_member, scope: !4432, file: !4389, line: 40, baseType: !4435, size: 128)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4432, file: !4389, line: 40, size: 128, elements: !4436)
!4436 = !{!4437, !4438}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4435, file: !4389, line: 41, baseType: !391, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4435, file: !4389, line: 42, baseType: !391, size: 64, offset: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, scope: !4432, file: !4389, line: 44, baseType: !4440, size: 128)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4432, file: !4389, line: 44, size: 128, elements: !4441)
!4441 = !{!4442, !4443, !4444, !4445}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4440, file: !4389, line: 45, baseType: !387, size: 32)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4440, file: !4389, line: 46, baseType: !387, size: 32, offset: 32)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4440, file: !4389, line: 47, baseType: !387, size: 32, offset: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4440, file: !4389, line: 48, baseType: !387, size: 32, offset: 96)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4425, file: !4389, line: 51, baseType: !387, size: 32, offset: 192)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4425, file: !4389, line: 52, baseType: !387, size: 32, offset: 224)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4425, file: !4389, line: 55, baseType: !4449, size: 1024, offset: 256)
!4449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 1024, elements: !400)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4425, file: !4389, line: 58, baseType: !4451, size: 2048, offset: 1280)
!4451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 2048, elements: !575)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4425, file: !4389, line: 60, baseType: !4453, size: 384, offset: 3328)
!4453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 384, elements: !4454)
!4454 = !{!4455}
!4455 = !DISubrange(count: 12)
!4456 = !DIDerivedType(tag: DW_TAG_member, scope: !4425, file: !4389, line: 62, baseType: !4457, size: 384, offset: 3712)
!4457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4425, file: !4389, line: 62, size: 384, elements: !4458)
!4458 = !{!4459, !4460}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4457, file: !4389, line: 63, baseType: !4453, size: 384)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4457, file: !4389, line: 64, baseType: !4453, size: 384)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4407, file: !4389, line: 351, baseType: !4462, size: 1088)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4389, line: 79, size: 1088, elements: !4463)
!4463 = !{!4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4537}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4462, file: !4389, line: 80, baseType: !387, size: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4462, file: !4389, line: 81, baseType: !387, size: 32, offset: 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4462, file: !4389, line: 82, baseType: !387, size: 32, offset: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4462, file: !4389, line: 83, baseType: !387, size: 32, offset: 96)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4462, file: !4389, line: 84, baseType: !387, size: 32, offset: 128)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4462, file: !4389, line: 85, baseType: !387, size: 32, offset: 160)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4462, file: !4389, line: 86, baseType: !387, size: 32, offset: 192)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4462, file: !4389, line: 88, baseType: !4420, size: 640, offset: 224)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4462, file: !4389, line: 89, baseType: !256, size: 8, offset: 864)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4462, file: !4389, line: 90, baseType: !256, size: 8, offset: 872)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4462, file: !4389, line: 91, baseType: !256, size: 8, offset: 880)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4462, file: !4389, line: 92, baseType: !256, size: 8, offset: 888)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4462, file: !4389, line: 93, baseType: !256, size: 8, offset: 896)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4462, file: !4389, line: 94, baseType: !256, size: 8, offset: 904)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4462, file: !4389, line: 95, baseType: !4479, size: 64, offset: 960)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4481, line: 11, size: 128, elements: !4482)
!4481 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4482 = !{!4483, !4484}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4480, file: !4481, line: 12, baseType: !605, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4480, file: !4481, line: 13, baseType: !4485, size: 64, offset: 64)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4487, line: 103, size: 1344, elements: !4488)
!4487 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4488 = !{!4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4517, !4518, !4519}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4486, file: !4487, line: 109, baseType: !214, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4486, file: !4487, line: 110, baseType: !214, size: 64, offset: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4486, file: !4487, line: 111, baseType: !214, size: 64, offset: 128)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4486, file: !4487, line: 112, baseType: !214, size: 64, offset: 192)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4486, file: !4487, line: 113, baseType: !214, size: 64, offset: 256)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4486, file: !4487, line: 114, baseType: !214, size: 64, offset: 320)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4486, file: !4487, line: 117, baseType: !214, size: 64, offset: 384)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4486, file: !4487, line: 118, baseType: !214, size: 64, offset: 448)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4486, file: !4487, line: 119, baseType: !214, size: 64, offset: 512)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4486, file: !4487, line: 120, baseType: !214, size: 64, offset: 576)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4486, file: !4487, line: 121, baseType: !214, size: 64, offset: 640)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4486, file: !4487, line: 122, baseType: !214, size: 64, offset: 704)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4486, file: !4487, line: 123, baseType: !214, size: 64, offset: 768)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4486, file: !4487, line: 124, baseType: !214, size: 64, offset: 832)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4486, file: !4487, line: 125, baseType: !214, size: 64, offset: 896)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4486, file: !4487, line: 139, baseType: !214, size: 64, offset: 960)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4486, file: !4487, line: 142, baseType: !214, size: 64, offset: 1024)
!4506 = !DIDerivedType(tag: DW_TAG_member, scope: !4486, file: !4487, line: 144, baseType: !4507, size: 64, offset: 1088)
!4507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4486, file: !4487, line: 144, size: 64, elements: !4508)
!4508 = !{!4509, !4510, !4511}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4507, file: !4487, line: 146, baseType: !264, size: 16)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4507, file: !4487, line: 148, baseType: !391, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4507, file: !4487, line: 150, baseType: !4512, size: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4487, line: 59, size: 64, elements: !4513)
!4513 = !{!4514, !4515, !4516}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4512, file: !4487, line: 61, baseType: !391, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4512, file: !4487, line: 63, baseType: !391, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4512, file: !4487, line: 65, baseType: !391, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4486, file: !4487, line: 153, baseType: !214, size: 64, offset: 1152)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4486, file: !4487, line: 154, baseType: !214, size: 64, offset: 1216)
!4519 = !DIDerivedType(tag: DW_TAG_member, scope: !4486, file: !4487, line: 156, baseType: !4520, size: 64, offset: 1280)
!4520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4486, file: !4487, line: 156, size: 64, elements: !4521)
!4521 = !{!4522, !4523, !4524}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4520, file: !4487, line: 158, baseType: !264, size: 16)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4520, file: !4487, line: 160, baseType: !391, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4520, file: !4487, line: 162, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4487, line: 69, size: 64, elements: !4526)
!4526 = !{!4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4525, file: !4487, line: 71, baseType: !391, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4525, file: !4487, line: 73, baseType: !391, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4525, file: !4487, line: 75, baseType: !391, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4525, file: !4487, line: 77, baseType: !391, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4525, file: !4487, line: 80, baseType: !391, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4525, file: !4487, line: 83, baseType: !391, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4525, file: !4487, line: 86, baseType: !391, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4525, file: !4487, line: 88, baseType: !391, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4525, file: !4487, line: 93, baseType: !391, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4525, file: !4487, line: 100, baseType: !391, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4462, file: !4389, line: 96, baseType: !387, size: 32, offset: 1024)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4407, file: !4389, line: 352, baseType: !4539, size: 4608, align: 512)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4389, line: 333, size: 4608, align: 512, elements: !4540)
!4540 = !{!4541, !4542, !4549}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4539, file: !4389, line: 334, baseType: !4425, size: 4096, align: 128)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4539, file: !4389, line: 335, baseType: !4543, size: 512, offset: 4096)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4389, line: 312, size: 512, elements: !4544)
!4544 = !{!4545, !4546, !4547}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4543, file: !4389, line: 313, baseType: !391, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4543, file: !4389, line: 314, baseType: !391, size: 64, offset: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4543, file: !4389, line: 315, baseType: !4548, size: 384, offset: 128)
!4548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 384, elements: !845)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4539, file: !4389, line: 336, baseType: !4550, offset: 4608)
!4550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, elements: !742)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4407, file: !4389, line: 353, baseType: !4552, size: 32768)
!4552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 32768, elements: !4553)
!4553 = !{!4554}
!4554 = !DISubrange(count: 4096)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4388, file: !4389, line: 484, baseType: !4394, size: 64, offset: 192)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4388, file: !4389, line: 491, baseType: !4557, size: 128, offset: 256)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4389, line: 404, size: 128, elements: !4558)
!4558 = !{!4559, !4560, !4561}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4557, file: !4389, line: 424, baseType: !391, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4557, file: !4389, line: 432, baseType: !13, size: 32, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4557, file: !4389, line: 440, baseType: !13, size: 32, offset: 96)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4388, file: !4389, line: 498, baseType: !4557, size: 128, offset: 384)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4388, file: !4389, line: 508, baseType: !4395, size: 33280, align: 512, offset: 512)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3430, file: !3431, line: 16, baseType: !727, size: 192, offset: 512)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3430, file: !3431, line: 17, baseType: !248, size: 32, offset: 704)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !481, file: !70, line: 1240, baseType: !307, size: 64, offset: 6912)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !481, file: !70, line: 1243, baseType: !387, size: 32, offset: 6976)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !481, file: !70, line: 1245, baseType: !815, size: 64, offset: 7040)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !481, file: !70, line: 1246, baseType: !815, size: 64, offset: 7104)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !481, file: !70, line: 1248, baseType: !388, size: 32, offset: 7168)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !481, file: !70, line: 1249, baseType: !4572, size: 64, offset: 7232)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !70, line: 634, flags: DIFlagFwdDecl)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !481, file: !70, line: 1252, baseType: !2485, size: 256, offset: 7296)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !481, file: !70, line: 1253, baseType: !4576, size: 128, offset: 7552)
!4576 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4577, line: 21, baseType: !4578)
!4577 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4577, line: 19, size: 128, elements: !4579)
!4579 = !{!4580}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4578, file: !4577, line: 20, baseType: !4581, size: 128)
!4581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 128, elements: !3795)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !481, file: !70, line: 1255, baseType: !13, size: 32, offset: 7680)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !481, file: !70, line: 1261, baseType: !218, size: 256, offset: 7744)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !481, file: !70, line: 1267, baseType: !444, size: 64, offset: 8000)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !481, file: !70, line: 1269, baseType: !424, size: 64, offset: 8064)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !481, file: !70, line: 1271, baseType: !4587, size: 448, offset: 8128)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2311, line: 63, size: 448, elements: !4588)
!4588 = !{!4589, !4594, !4595, !4596, !4597, !4598, !4599}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4587, file: !2311, line: 64, baseType: !4590, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!214, !4593, !2309}
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4587, file: !2311, line: 66, baseType: !4590, size: 64, offset: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4587, file: !2311, line: 69, baseType: !605, size: 64, offset: 128)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4587, file: !2311, line: 70, baseType: !113, size: 32, offset: 192)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4587, file: !2311, line: 71, baseType: !13, size: 32, offset: 224)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4587, file: !2311, line: 74, baseType: !274, size: 128, offset: 256)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4587, file: !2311, line: 85, baseType: !4600, size: 64, offset: 384)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !481, file: !70, line: 1274, baseType: !222, size: 64, offset: 8576)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !481, file: !70, line: 1280, baseType: !222, size: 64, offset: 8640)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !481, file: !70, line: 1283, baseType: !113, size: 32, offset: 8704)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !481, file: !70, line: 1286, baseType: !1627, size: 32, offset: 8736)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !481, file: !70, line: 1289, baseType: !2112, size: 64, offset: 8768)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !481, file: !70, line: 1290, baseType: !714, size: 64, offset: 8832)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !481, file: !70, line: 1297, baseType: !941, size: 64, offset: 8896)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !481, file: !70, line: 1304, baseType: !4609, size: 64, offset: 8960)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4610, line: 49, size: 64, elements: !4611)
!4610 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4611 = !{!4612}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4609, file: !4610, line: 50, baseType: !4613, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4610, line: 41, size: 512, align: 512, elements: !4615)
!4615 = !{!4616, !4617, !4622}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4614, file: !4610, line: 43, baseType: !414, size: 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4614, file: !4610, line: 45, baseType: !4618, size: 192, offset: 64)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4610, line: 29, size: 192, elements: !4619)
!4619 = !{!4620, !4621}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4618, file: !4610, line: 30, baseType: !274, size: 128)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4618, file: !4610, line: 32, baseType: !605, size: 64, offset: 128)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4614, file: !4610, line: 46, baseType: !605, size: 64, offset: 256)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !481, file: !70, line: 1305, baseType: !4609, size: 64, offset: 9024)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !481, file: !70, line: 1306, baseType: !660, size: 128, align: 64, offset: 9088)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !481, file: !70, line: 1307, baseType: !1382, size: 256, offset: 9216)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !481, file: !70, line: 1309, baseType: !218, size: 256, offset: 9472)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !481, file: !70, line: 1314, baseType: !113, size: 32, offset: 9728)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !481, file: !70, line: 1317, baseType: !414, size: 32, align: 512, offset: 10240)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !481, file: !70, line: 1318, baseType: !274, size: 128, offset: 10304)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !481, file: !70, line: 1320, baseType: !414, size: 32, offset: 10432)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !481, file: !70, line: 1321, baseType: !274, size: 128, offset: 10496)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !475, file: !476, line: 73, baseType: !113, size: 32, offset: 128)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !475, file: !476, line: 74, baseType: !4634, size: 64, offset: 192)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !766, line: 42, flags: DIFlagFwdDecl)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !426, file: !355, line: 141, baseType: !4638, size: 64, offset: 704)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!113, !2371, !858}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !426, file: !355, line: 142, baseType: !4642, size: 64, offset: 768)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!353, !353, !4645}
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !354, file: !355, line: 96, baseType: !480, size: 64, offset: 832)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !354, file: !355, line: 97, baseType: !214, size: 64, offset: 896)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !354, file: !355, line: 98, baseType: !307, size: 64, offset: 960)
!4650 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !355, line: 100, baseType: !4651, size: 128, offset: 1024)
!4651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !355, line: 100, size: 128, elements: !4652)
!4652 = !{!4653, !4654}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4651, file: !355, line: 101, baseType: !274, size: 128)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4651, file: !355, line: 102, baseType: !4655, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !354, file: !355, line: 104, baseType: !274, size: 128, offset: 1152)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !354, file: !355, line: 105, baseType: !274, size: 128, offset: 1280)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !354, file: !355, line: 113, baseType: !4659, size: 128, offset: 1408)
!4659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !355, line: 109, size: 128, elements: !4660)
!4660 = !{!4661, !4662, !4663}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4659, file: !355, line: 110, baseType: !718, size: 128)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4659, file: !355, line: 111, baseType: !369, size: 128)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4659, file: !355, line: 112, baseType: !660, size: 128, align: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !347, file: !70, line: 1968, baseType: !4665, size: 64, offset: 64)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!444, !353, !316, !4668}
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4670, line: 10, size: 128, elements: !4671)
!4670 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4671 = !{!4672, !4673}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4669, file: !4670, line: 11, baseType: !1667, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4669, file: !4670, line: 12, baseType: !307, size: 64, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !347, file: !70, line: 1969, baseType: !4675, size: 64, offset: 128)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!113, !4634, !316, !113}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !347, file: !70, line: 1970, baseType: !4679, size: 64, offset: 192)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!341, !316, !113, !858}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !347, file: !70, line: 1972, baseType: !4683, size: 64, offset: 256)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!113, !353, !469, !113}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !347, file: !70, line: 1974, baseType: !4687, size: 64, offset: 320)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!113, !4634, !316, !353, !320, !858}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !347, file: !70, line: 1976, baseType: !4691, size: 64, offset: 384)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!113, !353, !316, !353}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !347, file: !70, line: 1977, baseType: !4695, size: 64, offset: 448)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!113, !316, !353}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !347, file: !70, line: 1978, baseType: !4699, size: 64, offset: 512)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DISubroutineType(types: !4701)
!4701 = !{!113, !4634, !316, !353, !444}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !347, file: !70, line: 1980, baseType: !4703, size: 64, offset: 576)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!113, !4634, !316, !353, !320}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !347, file: !70, line: 1982, baseType: !4695, size: 64, offset: 640)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !347, file: !70, line: 1983, baseType: !4708, size: 64, offset: 704)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!113, !4634, !316, !353, !320, !485}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !347, file: !70, line: 1985, baseType: !4712, size: 64, offset: 768)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!113, !4634, !316, !353, !316, !353, !13}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !347, file: !70, line: 1987, baseType: !4716, size: 64, offset: 832)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!113, !4634, !353, !4719}
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !70, line: 226, size: 640, elements: !4721)
!4721 = !{!4722, !4723, !4724, !4734, !4743, !4744, !4749, !4750, !4751}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4720, file: !70, line: 227, baseType: !13, size: 32)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4720, file: !70, line: 228, baseType: !320, size: 16, offset: 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, scope: !4720, file: !70, line: 241, baseType: !4725, size: 32, offset: 64)
!4725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4720, file: !70, line: 241, size: 32, elements: !4726)
!4726 = !{!4727, !4728}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4725, file: !70, line: 242, baseType: !323, size: 32)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4725, file: !70, line: 243, baseType: !4729, size: 32)
!4729 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4730, line: 16, baseType: !4731)
!4730 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4730, line: 14, size: 32, elements: !4732)
!4732 = !{!4733}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4731, file: !4730, line: 15, baseType: !328, size: 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, scope: !4720, file: !70, line: 245, baseType: !4735, size: 32, offset: 96)
!4735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4720, file: !70, line: 245, size: 32, elements: !4736)
!4736 = !{!4737, !4738}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4735, file: !70, line: 246, baseType: !333, size: 32)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4735, file: !70, line: 247, baseType: !4739, size: 32)
!4739 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4730, line: 20, baseType: !4740)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4730, line: 18, size: 32, elements: !4741)
!4741 = !{!4742}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4740, file: !4730, line: 19, baseType: !337, size: 32)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4720, file: !70, line: 249, baseType: !490, size: 64, offset: 128)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4720, file: !70, line: 250, baseType: !4745, size: 128, offset: 192)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !816, line: 13, size: 128, elements: !4746)
!4746 = !{!4747, !4748}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4745, file: !816, line: 14, baseType: !815, size: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4745, file: !816, line: 15, baseType: !605, size: 64, offset: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4720, file: !70, line: 251, baseType: !4745, size: 128, offset: 320)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4720, file: !70, line: 252, baseType: !4745, size: 128, offset: 448)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4720, file: !70, line: 259, baseType: !647, size: 64, offset: 576)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !347, file: !70, line: 1988, baseType: !4753, size: 64, offset: 896)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!113, !4634, !2371, !4756, !387, !13}
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4758, line: 22, size: 1280, elements: !4759)
!4758 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4759 = !{!4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4757, file: !4758, line: 23, baseType: !387, size: 32)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4757, file: !4758, line: 24, baseType: !320, size: 16, offset: 32)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4757, file: !4758, line: 25, baseType: !13, size: 32, offset: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4757, file: !4758, line: 26, baseType: !823, size: 32, offset: 96)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4757, file: !4758, line: 27, baseType: !391, size: 64, offset: 128)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4757, file: !4758, line: 28, baseType: !391, size: 64, offset: 192)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4757, file: !4758, line: 41, baseType: !391, size: 64, offset: 256)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4757, file: !4758, line: 42, baseType: !485, size: 32, offset: 320)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4757, file: !4758, line: 43, baseType: !485, size: 32, offset: 352)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4757, file: !4758, line: 44, baseType: !323, size: 32, offset: 384)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4757, file: !4758, line: 45, baseType: !333, size: 32, offset: 416)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4757, file: !4758, line: 46, baseType: !490, size: 64, offset: 448)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4757, file: !4758, line: 47, baseType: !4745, size: 128, offset: 512)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4757, file: !4758, line: 48, baseType: !4745, size: 128, offset: 640)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4757, file: !4758, line: 49, baseType: !4745, size: 128, offset: 768)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4757, file: !4758, line: 50, baseType: !4745, size: 128, offset: 896)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4757, file: !4758, line: 51, baseType: !391, size: 64, offset: 1024)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4757, file: !4758, line: 52, baseType: !391, size: 64, offset: 1088)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4757, file: !4758, line: 53, baseType: !387, size: 32, offset: 1152)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4757, file: !4758, line: 54, baseType: !387, size: 32, offset: 1184)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4757, file: !4758, line: 55, baseType: !391, size: 64, offset: 1216)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !347, file: !70, line: 1990, baseType: !4782, size: 64, offset: 960)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!602, !353, !469, !615}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !347, file: !70, line: 1991, baseType: !4786, size: 64, offset: 1024)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!113, !316, !4789, !391, !391}
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !4791, line: 8, size: 192, elements: !4792)
!4791 = !DIFile(filename: "./include/linux/fiemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3549901db5ed482defb65607c38335f0")
!4792 = !{!4793, !4794, !4795, !4796}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "fi_flags", scope: !4790, file: !4791, line: 9, baseType: !13, size: 32)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_mapped", scope: !4790, file: !4791, line: 10, baseType: !13, size: 32, offset: 32)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_max", scope: !4790, file: !4791, line: 11, baseType: !13, size: 32, offset: 64)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_start", scope: !4790, file: !4791, line: 12, baseType: !4797, size: 64, offset: 128)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent", file: !4799, line: 17, size: 448, elements: !4800)
!4799 = !DIFile(filename: "./include/uapi/linux/fiemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f949abda36490fd9e5a2006af40ce33c")
!4800 = !{!4801, !4802, !4803, !4804, !4806, !4807}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "fe_logical", scope: !4798, file: !4799, line: 18, baseType: !392, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "fe_physical", scope: !4798, file: !4799, line: 20, baseType: !392, size: 64, offset: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "fe_length", scope: !4798, file: !4799, line: 22, baseType: !392, size: 64, offset: 128)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "fe_reserved64", scope: !4798, file: !4799, line: 23, baseType: !4805, size: 128, offset: 192)
!4805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 128, elements: !1940)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "fe_flags", scope: !4798, file: !4799, line: 24, baseType: !388, size: 32, offset: 320)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "fe_reserved", scope: !4798, file: !4799, line: 25, baseType: !4808, size: 96, offset: 352)
!4808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 96, elements: !571)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !347, file: !70, line: 1993, baseType: !4810, size: 64, offset: 1088)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!113, !316, !113}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !347, file: !70, line: 1994, baseType: !4814, size: 64, offset: 1152)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!113, !316, !353, !647, !13, !320}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !347, file: !70, line: 1997, baseType: !4818, size: 64, offset: 1216)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!113, !4634, !316, !647, !320}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !347, file: !70, line: 1999, baseType: !4822, size: 64, offset: 1280)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!341, !4634, !353, !113}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !347, file: !70, line: 2001, baseType: !4826, size: 64, offset: 1344)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!113, !4634, !353, !341, !113}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !347, file: !70, line: 2003, baseType: !4830, size: 64, offset: 1408)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!113, !4634, !353, !4833}
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !70, line: 76, flags: DIFlagFwdDecl)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !347, file: !70, line: 2005, baseType: !4836, size: 64, offset: 1472)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!113, !353, !4833}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !347, file: !70, line: 2006, baseType: !4840, size: 64, offset: 1536)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!4843, !316}
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !70, line: 3192, size: 192, elements: !4845)
!4845 = !{!4846, !4847}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4844, file: !70, line: 3193, baseType: !1154, size: 128)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4844, file: !70, line: 3194, baseType: !387, size: 32, offset: 128)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !317, file: !70, line: 655, baseType: !480, size: 64, offset: 448)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !317, file: !70, line: 656, baseType: !312, size: 64, offset: 512)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !317, file: !70, line: 659, baseType: !307, size: 64, offset: 576)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !317, file: !70, line: 663, baseType: !214, size: 64, offset: 640)
!4852 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !70, line: 671, baseType: !4853, size: 32, offset: 704)
!4853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !70, line: 671, size: 32, elements: !4854)
!4854 = !{!4855, !4857}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4853, file: !70, line: 672, baseType: !4856, size: 32)
!4856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4853, file: !70, line: 673, baseType: !13, size: 32)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !317, file: !70, line: 675, baseType: !485, size: 32, offset: 736)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !317, file: !70, line: 676, baseType: !490, size: 64, offset: 768)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !317, file: !70, line: 677, baseType: !4745, size: 128, offset: 832)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !317, file: !70, line: 678, baseType: !4745, size: 128, offset: 960)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !317, file: !70, line: 679, baseType: !4745, size: 128, offset: 1088)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !317, file: !70, line: 680, baseType: !414, size: 32, offset: 1216)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !317, file: !70, line: 681, baseType: !266, size: 16, offset: 1248)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !317, file: !70, line: 682, baseType: !256, size: 8, offset: 1264)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !317, file: !70, line: 683, baseType: !256, size: 8, offset: 1272)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !317, file: !70, line: 684, baseType: !2444, size: 64, offset: 1280)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !317, file: !70, line: 691, baseType: !214, size: 64, offset: 1344)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !317, file: !70, line: 692, baseType: !799, size: 320, offset: 1408)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !317, file: !70, line: 694, baseType: !214, size: 64, offset: 1728)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !317, file: !70, line: 695, baseType: !214, size: 64, offset: 1792)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !317, file: !70, line: 697, baseType: !718, size: 128, offset: 1856)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !317, file: !70, line: 698, baseType: !274, size: 128, offset: 1984)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !317, file: !70, line: 707, baseType: !274, size: 128, offset: 2112)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !317, file: !70, line: 708, baseType: !274, size: 128, offset: 2240)
!4876 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !70, line: 709, baseType: !4877, size: 128, offset: 2368)
!4877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !70, line: 709, size: 128, elements: !4878)
!4878 = !{!4879, !4880}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4877, file: !70, line: 710, baseType: !714, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4877, file: !70, line: 711, baseType: !660, size: 128, align: 64)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !317, file: !70, line: 713, baseType: !224, size: 64, offset: 2496)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !317, file: !70, line: 714, baseType: !224, size: 64, offset: 2560)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !317, file: !70, line: 715, baseType: !248, size: 32, offset: 2624)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !317, file: !70, line: 716, baseType: !248, size: 32, offset: 2656)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !317, file: !70, line: 717, baseType: !248, size: 32, offset: 2688)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !317, file: !70, line: 719, baseType: !248, size: 32, offset: 2720)
!4887 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !70, line: 721, baseType: !4888, size: 64, offset: 2752)
!4888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !70, line: 721, size: 64, elements: !4889)
!4889 = !{!4890, !4891}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4888, file: !70, line: 722, baseType: !977, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4888, file: !70, line: 723, baseType: !2180, size: 64)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !317, file: !70, line: 725, baseType: !4893, size: 64, offset: 2816)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !70, line: 725, flags: DIFlagFwdDecl)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !317, file: !70, line: 726, baseType: !313, size: 1536, align: 64, offset: 2880)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !317, file: !70, line: 727, baseType: !274, size: 128, offset: 4416)
!4897 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !70, line: 728, baseType: !4898, size: 64, offset: 4544)
!4898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !70, line: 728, size: 64, elements: !4899)
!4899 = !{!4900, !4901, !4904, !4905}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4898, file: !70, line: 729, baseType: !1574, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4898, file: !70, line: 730, baseType: !4902, size: 64)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !70, line: 730, flags: DIFlagFwdDecl)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4898, file: !70, line: 731, baseType: !469, size: 64)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4898, file: !70, line: 732, baseType: !13, size: 32)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !317, file: !70, line: 735, baseType: !388, size: 32, offset: 4608)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !317, file: !70, line: 738, baseType: !388, size: 32, offset: 4640)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !317, file: !70, line: 739, baseType: !4572, size: 64, offset: 4672)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !317, file: !70, line: 750, baseType: !307, size: 64, offset: 4736)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !313, file: !70, line: 474, baseType: !1154, size: 128, offset: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !313, file: !70, line: 475, baseType: !799, size: 320, offset: 192)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !313, file: !70, line: 476, baseType: !1159, size: 32, offset: 512)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !313, file: !70, line: 477, baseType: !248, size: 32, offset: 544)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !313, file: !70, line: 482, baseType: !2977, size: 128, offset: 576)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !313, file: !70, line: 483, baseType: !214, size: 64, offset: 704)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !313, file: !70, line: 484, baseType: !214, size: 64, offset: 768)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !313, file: !70, line: 485, baseType: !4918, size: 64, offset: 832)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4920)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !70, line: 404, size: 1280, elements: !4921)
!4921 = !{!4922, !4926, !4930, !4934, !4938, !4954, !4959, !4963, !4967, !4971, !4975, !4979, !4980, !4984, !4988, !4992, !4997, !5001, !5007, !5008}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4920, file: !70, line: 405, baseType: !4923, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!113, !289, !2192}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4920, file: !70, line: 406, baseType: !4927, size: 64, offset: 64)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!113, !647, !1020}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4920, file: !70, line: 409, baseType: !4931, size: 64, offset: 128)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!113, !312, !2192}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4920, file: !70, line: 412, baseType: !4935, size: 64, offset: 192)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!858, !312, !1020}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4920, file: !70, line: 414, baseType: !4939, size: 64, offset: 256)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{null, !4942}
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1017, line: 1276, size: 448, elements: !4944)
!4944 = !{!4945, !4946, !4947, !4949, !4950, !4951, !4952, !4953}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4943, file: !1017, line: 1277, baseType: !647, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4943, file: !1017, line: 1278, baseType: !312, size: 64, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4943, file: !1017, line: 1279, baseType: !4948, size: 64, offset: 128)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4943, file: !1017, line: 1281, baseType: !214, size: 64, offset: 192)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4943, file: !1017, line: 1282, baseType: !13, size: 32, offset: 256)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4943, file: !1017, line: 1283, baseType: !13, size: 32, offset: 288)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4943, file: !1017, line: 1284, baseType: !858, size: 8, offset: 320)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4943, file: !1017, line: 1285, baseType: !214, size: 64, offset: 384)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4920, file: !70, line: 416, baseType: !4955, size: 64, offset: 320)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!113, !647, !312, !490, !13, !4958, !1590}
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4920, file: !70, line: 419, baseType: !4960, size: 64, offset: 384)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!113, !647, !312, !490, !13, !13, !289, !307}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4920, file: !70, line: 424, baseType: !4964, size: 64, offset: 448)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!2475, !312, !2475}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4920, file: !70, line: 425, baseType: !4968, size: 64, offset: 512)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{null, !1020, !615, !615}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4920, file: !70, line: 426, baseType: !4972, size: 64, offset: 576)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!858, !1020, !1159}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4920, file: !70, line: 427, baseType: !4976, size: 64, offset: 640)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{null, !1020}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4920, file: !70, line: 428, baseType: !996, size: 64, offset: 704)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4920, file: !70, line: 433, baseType: !4981, size: 64, offset: 768)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!113, !312, !1020, !1020, !56}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4920, file: !70, line: 435, baseType: !4985, size: 64, offset: 832)
!4985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!113, !1020}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4920, file: !70, line: 436, baseType: !4989, size: 64, offset: 896)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{!858, !1020, !615, !615}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4920, file: !70, line: 438, baseType: !4993, size: 64, offset: 960)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{null, !1020, !4996, !4996}
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4920, file: !70, line: 439, baseType: !4998, size: 64, offset: 1024)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!113, !312, !289}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4920, file: !70, line: 442, baseType: !5002, size: 64, offset: 1088)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!113, !5005, !647, !2669}
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !70, line: 66, flags: DIFlagFwdDecl)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4920, file: !70, line: 444, baseType: !1582, size: 64, offset: 1152)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4920, file: !70, line: 445, baseType: !5009, size: 64, offset: 1216)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!113, !999, !1104}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !70, line: 486, baseType: !214, size: 64, offset: 896)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !313, file: !70, line: 487, baseType: !799, size: 320, offset: 960)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !313, file: !70, line: 488, baseType: !1627, size: 32, offset: 1280)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !313, file: !70, line: 489, baseType: !414, size: 32, offset: 1312)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !313, file: !70, line: 490, baseType: !274, size: 128, offset: 1344)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !313, file: !70, line: 491, baseType: !307, size: 64, offset: 1472)
!5018 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !36, line: 107, baseType: !5019, size: 64, offset: 192)
!5019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !36, line: 107, size: 64, elements: !5020)
!5020 = !{!5021, !5022}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5019, file: !36, line: 108, baseType: !214, size: 64)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5019, file: !36, line: 109, baseType: !214, size: 64)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !297, file: !36, line: 117, baseType: !214, size: 64, offset: 256)
!5024 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !36, line: 119, baseType: !5025, size: 320)
!5025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !36, line: 119, size: 320, elements: !5026)
!5026 = !{!5027, !5028, !5031, !5032, !5033}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5025, file: !36, line: 124, baseType: !214, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5025, file: !36, line: 125, baseType: !5029, size: 64, offset: 64)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !36, line: 125, flags: DIFlagFwdDecl)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5025, file: !36, line: 126, baseType: !214, size: 64, offset: 128)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5025, file: !36, line: 127, baseType: !214, size: 64, offset: 192)
!5033 = !DIDerivedType(tag: DW_TAG_member, scope: !5025, file: !36, line: 128, baseType: !5034, size: 64, offset: 256)
!5034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5025, file: !36, line: 128, size: 64, elements: !5035)
!5035 = !{!5036, !5037}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5034, file: !36, line: 133, baseType: !214, size: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5034, file: !36, line: 138, baseType: !222, size: 64)
!5038 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !36, line: 141, baseType: !5039, size: 64)
!5039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !36, line: 141, size: 64, elements: !5040)
!5040 = !{!5041}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5039, file: !36, line: 142, baseType: !214, size: 64)
!5042 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !36, line: 144, baseType: !5043, size: 128)
!5043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !36, line: 144, size: 128, elements: !5044)
!5044 = !{!5045, !5096}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5043, file: !36, line: 146, baseType: !5046, size: 64)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !20, line: 126, size: 1216, elements: !5048)
!5048 = !{!5049, !5059, !5060, !5061, !5062, !5063, !5064, !5078, !5079, !5080}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5047, file: !20, line: 127, baseType: !5050, size: 384)
!5050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !20, line: 21, size: 384, elements: !5051)
!5051 = !{!5052, !5053, !5055, !5056, !5057, !5058}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5050, file: !20, line: 22, baseType: !214, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5050, file: !20, line: 23, baseType: !5054, size: 64, offset: 64)
!5054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5050, file: !20, line: 24, baseType: !5054, size: 64, offset: 128)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5050, file: !20, line: 25, baseType: !214, size: 64, offset: 192)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5050, file: !20, line: 26, baseType: !214, size: 64, offset: 256)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5050, file: !20, line: 27, baseType: !214, size: 64, offset: 320)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5047, file: !20, line: 128, baseType: !2679, size: 128, offset: 384)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5047, file: !20, line: 129, baseType: !1804, size: 256, offset: 512)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5047, file: !20, line: 130, baseType: !19, size: 32, offset: 768)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5047, file: !20, line: 131, baseType: !13, size: 32, offset: 800)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5047, file: !20, line: 132, baseType: !214, size: 64, offset: 832)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5047, file: !20, line: 133, baseType: !5065, size: 64, offset: 896)
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5067)
!5067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !20, line: 77, size: 192, elements: !5068)
!5068 = !{!5069, !5073, !5074}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5067, file: !20, line: 83, baseType: !5070, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{null, !289}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5067, file: !20, line: 89, baseType: !1448, size: 64, offset: 64)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5067, file: !20, line: 100, baseType: !5075, size: 64, offset: 128)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!113, !5046, !214, !214, !113}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5047, file: !20, line: 134, baseType: !307, size: 64, offset: 960)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5047, file: !20, line: 135, baseType: !113, size: 32, offset: 1024)
!5080 = !DIDerivedType(tag: DW_TAG_member, scope: !5047, file: !20, line: 136, baseType: !5081, size: 128, offset: 1088)
!5081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5047, file: !20, line: 136, size: 128, elements: !5082)
!5082 = !{!5083, !5089}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5081, file: !20, line: 137, baseType: !5084, size: 128)
!5084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5085, line: 6, size: 128, elements: !5086)
!5085 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5086 = !{!5087, !5088}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5084, file: !5085, line: 7, baseType: !391, size: 64)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5084, file: !5085, line: 8, baseType: !391, size: 64, offset: 64)
!5089 = !DIDerivedType(tag: DW_TAG_member, scope: !5081, file: !20, line: 138, baseType: !5090)
!5090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5081, file: !20, line: 138, elements: !5091)
!5091 = !{!5092, !5094}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5090, file: !20, line: 138, baseType: !5093)
!5093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5090, file: !20, line: 138, elements: !1248)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5090, file: !20, line: 138, baseType: !5095)
!5095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5084, elements: !742)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5043, file: !36, line: 147, baseType: !307, size: 64, offset: 64)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !294, file: !36, line: 161, baseType: !660, size: 128, align: 64)
!5098 = !DIDerivedType(tag: DW_TAG_member, scope: !290, file: !36, line: 164, baseType: !5099, size: 32, offset: 384)
!5099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !290, file: !36, line: 164, size: 32, elements: !5100)
!5100 = !{!5101, !5102}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5099, file: !36, line: 169, baseType: !248, size: 32)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5099, file: !36, line: 177, baseType: !13, size: 32)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !290, file: !36, line: 181, baseType: !248, size: 32, offset: 416)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "b_folio", scope: !286, file: !180, line: 64, baseType: !1020, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "b_blocknr", scope: !281, file: !180, line: 67, baseType: !2475, size: 64, offset: 192)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !281, file: !180, line: 68, baseType: !615, size: 64, offset: 256)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "b_data", scope: !281, file: !180, line: 69, baseType: !469, size: 64, offset: 320)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "b_bdev", scope: !281, file: !180, line: 71, baseType: !2470, size: 64, offset: 384)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "b_end_io", scope: !281, file: !180, line: 72, baseType: !5110, size: 64, offset: 448)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_typedef, name: "bh_end_io_t", file: !180, line: 48, baseType: !5112)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{null, !280, !113}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "b_private", scope: !281, file: !180, line: 73, baseType: !307, size: 64, offset: 512)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_buffers", scope: !281, file: !180, line: 74, baseType: !274, size: 128, offset: 576)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_map", scope: !281, file: !180, line: 75, baseType: !312, size: 64, offset: 704)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "b_count", scope: !281, file: !180, line: 77, baseType: !248, size: 32, offset: 768)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "b_uptodate_lock", scope: !281, file: !180, line: 78, baseType: !414, size: 32, offset: 800)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "j_superblock", scope: !211, file: !200, line: 784, baseType: !5120, size: 64, offset: 512)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_superblock_t", file: !200, line: 277, baseType: !5122)
!5122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_superblock_s", file: !200, line: 226, size: 8192, elements: !5123)
!5123 = !{!5124, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5149, !5150, !5151, !5155, !5156}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "s_header", scope: !5122, file: !200, line: 229, baseType: !5125, size: 96)
!5125 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_header_t", file: !200, line: 136, baseType: !5126)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_header_s", file: !200, line: 131, size: 96, elements: !5127)
!5127 = !{!5128, !5130, !5131}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "h_magic", scope: !5126, file: !200, line: 133, baseType: !5129, size: 32)
!5129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !1202, line: 39, baseType: !388)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "h_blocktype", scope: !5126, file: !200, line: 134, baseType: !5129, size: 32, offset: 32)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "h_sequence", scope: !5126, file: !200, line: 135, baseType: !5129, size: 32, offset: 64)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !5122, file: !200, line: 233, baseType: !5129, size: 32, offset: 96)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxlen", scope: !5122, file: !200, line: 234, baseType: !5129, size: 32, offset: 128)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "s_first", scope: !5122, file: !200, line: 235, baseType: !5129, size: 32, offset: 160)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "s_sequence", scope: !5122, file: !200, line: 239, baseType: !5129, size: 32, offset: 192)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "s_start", scope: !5122, file: !200, line: 240, baseType: !5129, size: 32, offset: 224)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "s_errno", scope: !5122, file: !200, line: 244, baseType: !5129, size: 32, offset: 256)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_compat", scope: !5122, file: !200, line: 248, baseType: !5129, size: 32, offset: 288)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_incompat", scope: !5122, file: !200, line: 249, baseType: !5129, size: 32, offset: 320)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_ro_compat", scope: !5122, file: !200, line: 250, baseType: !5129, size: 32, offset: 352)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !5122, file: !200, line: 252, baseType: !4581, size: 128, offset: 384)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "s_nr_users", scope: !5122, file: !200, line: 255, baseType: !5129, size: 32, offset: 512)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "s_dynsuper", scope: !5122, file: !200, line: 257, baseType: !5129, size: 32, offset: 544)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_transaction", scope: !5122, file: !200, line: 260, baseType: !5129, size: 32, offset: 576)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_trans_data", scope: !5122, file: !200, line: 261, baseType: !5129, size: 32, offset: 608)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum_type", scope: !5122, file: !200, line: 264, baseType: !257, size: 8, offset: 640)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "s_padding2", scope: !5122, file: !200, line: 265, baseType: !5148, size: 24, offset: 648)
!5148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 24, elements: !571)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "s_num_fc_blks", scope: !5122, file: !200, line: 267, baseType: !5129, size: 32, offset: 672)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "s_head", scope: !5122, file: !200, line: 268, baseType: !5129, size: 32, offset: 704)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "s_padding", scope: !5122, file: !200, line: 271, baseType: !5152, size: 1280, offset: 736)
!5152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 1280, elements: !5153)
!5153 = !{!5154}
!5154 = !DISubrange(count: 40)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum", scope: !5122, file: !200, line: 272, baseType: !5129, size: 32, offset: 2016)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "s_users", scope: !5122, file: !200, line: 275, baseType: !5157, size: 6144, offset: 2048)
!5157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 6144, elements: !5158)
!5158 = !{!5159}
!5159 = !DISubrange(count: 768)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "j_state_lock", scope: !211, file: !200, line: 789, baseType: !680, size: 64, offset: 576)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "j_barrier_count", scope: !211, file: !200, line: 797, baseType: !113, size: 32, offset: 640)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "j_barrier", scope: !211, file: !200, line: 802, baseType: !218, size: 256, offset: 704)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "j_running_transaction", scope: !211, file: !200, line: 811, baseType: !5164, size: 64, offset: 960)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = !DIDerivedType(tag: DW_TAG_typedef, name: "transaction_t", file: !5166, line: 17, baseType: !206)
!5166 = !DIFile(filename: "./include/linux/journal-head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a64d63ceb0222c76d889f081fb8fa94")
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "j_committing_transaction", scope: !211, file: !200, line: 819, baseType: !5164, size: 64, offset: 1024)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_transactions", scope: !211, file: !200, line: 827, baseType: !5164, size: 64, offset: 1088)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_transaction_locked", scope: !211, file: !200, line: 835, baseType: !727, size: 192, offset: 1152)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_done_commit", scope: !211, file: !200, line: 840, baseType: !727, size: 192, offset: 1344)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_commit", scope: !211, file: !200, line: 845, baseType: !727, size: 192, offset: 1536)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_updates", scope: !211, file: !200, line: 850, baseType: !727, size: 192, offset: 1728)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_reserved", scope: !211, file: !200, line: 857, baseType: !727, size: 192, offset: 1920)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wait", scope: !211, file: !200, line: 864, baseType: !727, size: 192, offset: 2112)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_mutex", scope: !211, file: !200, line: 871, baseType: !218, size: 256, offset: 2304)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "j_chkpt_bhs", scope: !211, file: !200, line: 881, baseType: !5177, size: 4096, offset: 2560)
!5177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 4096, elements: !575)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "j_shrinker", scope: !211, file: !200, line: 889, baseType: !4587, size: 448, offset: 6656)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_jh_count", scope: !211, file: !200, line: 896, baseType: !916, size: 320, offset: 7104)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "j_shrink_transaction", scope: !211, file: !200, line: 904, baseType: !5164, size: 64, offset: 7424)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "j_head", scope: !211, file: !200, line: 912, baseType: !214, size: 64, offset: 7488)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "j_tail", scope: !211, file: !200, line: 920, baseType: !214, size: 64, offset: 7552)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "j_free", scope: !211, file: !200, line: 928, baseType: !214, size: 64, offset: 7616)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "j_first", scope: !211, file: !200, line: 936, baseType: !214, size: 64, offset: 7680)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "j_last", scope: !211, file: !200, line: 944, baseType: !214, size: 64, offset: 7744)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_first", scope: !211, file: !200, line: 952, baseType: !214, size: 64, offset: 7808)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_off", scope: !211, file: !200, line: 961, baseType: !214, size: 64, offset: 7872)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_last", scope: !211, file: !200, line: 969, baseType: !214, size: 64, offset: 7936)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "j_dev", scope: !211, file: !200, line: 974, baseType: !2470, size: 64, offset: 8000)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "j_blocksize", scope: !211, file: !200, line: 979, baseType: !113, size: 32, offset: 8064)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "j_blk_offset", scope: !211, file: !200, line: 986, baseType: !393, size: 64, offset: 8128)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "j_devname", scope: !211, file: !200, line: 991, baseType: !523, size: 448, offset: 8192)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "j_fs_dev", scope: !211, file: !200, line: 999, baseType: !2470, size: 64, offset: 8640)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "j_total_len", scope: !211, file: !200, line: 1004, baseType: !13, size: 32, offset: 8704)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "j_reserved_credits", scope: !211, file: !200, line: 1011, baseType: !248, size: 32, offset: 8736)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "j_list_lock", scope: !211, file: !200, line: 1016, baseType: !414, size: 32, offset: 8768)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "j_inode", scope: !211, file: !200, line: 1024, baseType: !316, size: 64, offset: 8832)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "j_tail_sequence", scope: !211, file: !200, line: 1031, baseType: !5199, size: 32, offset: 8896)
!5199 = !DIDerivedType(tag: DW_TAG_typedef, name: "tid_t", file: !5166, line: 16, baseType: !13)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "j_transaction_sequence", scope: !211, file: !200, line: 1038, baseType: !5199, size: 32, offset: 8928)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_sequence", scope: !211, file: !200, line: 1046, baseType: !5199, size: 32, offset: 8960)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_request", scope: !211, file: !200, line: 1054, baseType: !5199, size: 32, offset: 8992)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "j_uuid", scope: !211, file: !200, line: 1064, baseType: !4581, size: 128, offset: 9024)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "j_task", scope: !211, file: !200, line: 1069, baseType: !3447, size: 64, offset: 9152)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "j_max_transaction_buffers", scope: !211, file: !200, line: 1077, baseType: !113, size: 32, offset: 9216)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_records_per_block", scope: !211, file: !200, line: 1084, baseType: !113, size: 32, offset: 9248)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "j_transaction_overhead_buffers", scope: !211, file: !200, line: 1091, baseType: !113, size: 32, offset: 9280)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_interval", scope: !211, file: !200, line: 1098, baseType: !214, size: 64, offset: 9344)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_timer", scope: !211, file: !200, line: 1103, baseType: !2050, size: 320, offset: 9408)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_lock", scope: !211, file: !200, line: 1108, baseType: !414, size: 32, offset: 9728)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke", scope: !211, file: !200, line: 1116, baseType: !5212, size: 64, offset: 9792)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_revoke_table_s", file: !200, line: 448, flags: DIFlagFwdDecl)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_table", scope: !211, file: !200, line: 1121, baseType: !5215, size: 128, offset: 9856)
!5215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5212, size: 128, elements: !1940)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "j_wbuf", scope: !211, file: !200, line: 1126, baseType: !5217, size: 64, offset: 9984)
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wbuf", scope: !211, file: !200, line: 1133, baseType: !5217, size: 64, offset: 10048)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "j_wbufsize", scope: !211, file: !200, line: 1140, baseType: !113, size: 32, offset: 10112)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wbufsize", scope: !211, file: !200, line: 1147, baseType: !113, size: 32, offset: 10144)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "j_last_sync_writer", scope: !211, file: !200, line: 1155, baseType: !3736, size: 32, offset: 10176)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "j_average_commit_time", scope: !211, file: !200, line: 1163, baseType: !391, size: 64, offset: 10240)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "j_min_batch_time", scope: !211, file: !200, line: 1171, baseType: !387, size: 32, offset: 10304)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "j_max_batch_time", scope: !211, file: !200, line: 1179, baseType: !387, size: 32, offset: 10336)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_callback", scope: !211, file: !200, line: 1186, baseType: !5226, size: 64, offset: 10368)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{null, !209, !5164}
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "j_submit_inode_data_buffers", scope: !211, file: !200, line: 1196, baseType: !5230, size: 64, offset: 10432)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!113, !5233}
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_inode", file: !200, line: 397, size: 512, elements: !5235)
!5235 = !{!5236, !5237, !5238, !5239, !5240, !5241, !5242}
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "i_transaction", scope: !5234, file: !200, line: 404, baseType: !5164, size: 64)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "i_next_transaction", scope: !5234, file: !200, line: 412, baseType: !5164, size: 64, offset: 64)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "i_list", scope: !5234, file: !200, line: 417, baseType: !274, size: 128, offset: 128)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "i_vfs_inode", scope: !5234, file: !200, line: 424, baseType: !316, size: 64, offset: 256)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !5234, file: !200, line: 429, baseType: !214, size: 64, offset: 320)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "i_dirty_start", scope: !5234, file: !200, line: 437, baseType: !490, size: 64, offset: 384)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "i_dirty_end", scope: !5234, file: !200, line: 445, baseType: !490, size: 64, offset: 448)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "j_finish_inode_data_buffers", scope: !211, file: !200, line: 1207, baseType: !5230, size: 64, offset: 10496)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "j_history_lock", scope: !211, file: !200, line: 1217, baseType: !414, size: 32, offset: 10560)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "j_proc_entry", scope: !211, file: !200, line: 1222, baseType: !5246, size: 64, offset: 10624)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !200, line: 1222, flags: DIFlagFwdDecl)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "j_stats", scope: !211, file: !200, line: 1227, baseType: !5249, size: 640, offset: 10688)
!5249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_stats_s", file: !200, line: 724, size: 640, elements: !5250)
!5250 = !{!5251, !5252, !5253}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "ts_tid", scope: !5249, file: !200, line: 725, baseType: !214, size: 64)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "ts_requested", scope: !5249, file: !200, line: 726, baseType: !214, size: 64, offset: 64)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !5249, file: !200, line: 727, baseType: !5254, size: 512, offset: 128)
!5254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_run_stats_s", file: !200, line: 711, size: 512, elements: !5255)
!5255 = !{!5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264}
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "rs_wait", scope: !5254, file: !200, line: 712, baseType: !214, size: 64)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "rs_request_delay", scope: !5254, file: !200, line: 713, baseType: !214, size: 64, offset: 64)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "rs_running", scope: !5254, file: !200, line: 714, baseType: !214, size: 64, offset: 128)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "rs_locked", scope: !5254, file: !200, line: 715, baseType: !214, size: 64, offset: 192)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "rs_flushing", scope: !5254, file: !200, line: 716, baseType: !214, size: 64, offset: 256)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "rs_logging", scope: !5254, file: !200, line: 717, baseType: !214, size: 64, offset: 320)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "rs_handle_count", scope: !5254, file: !200, line: 719, baseType: !388, size: 32, offset: 384)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "rs_blocks", scope: !5254, file: !200, line: 720, baseType: !388, size: 32, offset: 416)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "rs_blocks_logged", scope: !5254, file: !200, line: 721, baseType: !388, size: 32, offset: 448)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "j_failed_commit", scope: !211, file: !200, line: 1232, baseType: !13, size: 32, offset: 11328)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "j_private", scope: !211, file: !200, line: 1240, baseType: !307, size: 64, offset: 11392)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "j_chksum_driver", scope: !211, file: !200, line: 1247, baseType: !5268, size: 64, offset: 11456)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash", file: !5270, line: 268, size: 320, elements: !5271)
!5270 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!5271 = !{!5272, !5273}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !5269, file: !5270, line: 269, baseType: !13, size: 32)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5269, file: !5270, line: 270, baseType: !5274, size: 256, offset: 64)
!5274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !5275, line: 422, size: 256, elements: !5276)
!5275 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!5276 = !{!5277, !5278, !5279, !5280, !5285, !5343}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5274, file: !5275, line: 423, baseType: !705, size: 32)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !5274, file: !5275, line: 425, baseType: !387, size: 32, offset: 32)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5274, file: !5275, line: 427, baseType: !113, size: 32, offset: 64)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5274, file: !5275, line: 429, baseType: !5281, size: 64, offset: 128)
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5282, size: 64)
!5282 = !DISubroutineType(types: !5283)
!5283 = !{null, !5284}
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5274, size: 64)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !5274, file: !5275, line: 431, baseType: !5286, size: 64, offset: 192)
!5286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5287, size: 64)
!5287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !5275, line: 343, size: 3072, align: 64, elements: !5288)
!5288 = !{!5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5301, !5302, !5306, !5333, !5337, !5338, !5342}
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !5287, file: !5275, line: 344, baseType: !274, size: 128)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !5287, file: !5275, line: 345, baseType: !274, size: 128, offset: 128)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !5287, file: !5275, line: 347, baseType: !387, size: 32, offset: 256)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !5287, file: !5275, line: 348, baseType: !13, size: 32, offset: 288)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !5287, file: !5275, line: 349, baseType: !13, size: 32, offset: 320)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !5287, file: !5275, line: 350, baseType: !13, size: 32, offset: 352)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !5287, file: !5275, line: 352, baseType: !113, size: 32, offset: 384)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !5287, file: !5275, line: 353, baseType: !705, size: 32, offset: 416)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !5287, file: !5275, line: 355, baseType: !5298, size: 1024, offset: 448)
!5298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !5299)
!5299 = !{!5300}
!5300 = !DISubrange(count: 128)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !5287, file: !5275, line: 356, baseType: !5298, size: 1024, offset: 1472)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !5287, file: !5275, line: 358, baseType: !5303, size: 64, offset: 2496)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5305)
!5305 = !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !5275, line: 160, flags: DIFlagFwdDecl)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !5287, file: !5275, line: 363, baseType: !5307, size: 256, offset: 2560)
!5307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5287, file: !5275, line: 360, size: 256, elements: !5308)
!5308 = !{!5309, !5325}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !5307, file: !5275, line: 361, baseType: !5310, size: 256)
!5310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !5275, line: 235, size: 256, elements: !5311)
!5311 = !{!5312, !5313, !5314, !5320, !5324}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !5310, file: !5275, line: 236, baseType: !13, size: 32)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !5310, file: !5275, line: 237, baseType: !13, size: 32, offset: 32)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !5310, file: !5275, line: 238, baseType: !5315, size: 64, offset: 64)
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5316, size: 64)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{!113, !5284, !5318, !13}
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5319, size: 64)
!5319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !5310, file: !5275, line: 240, baseType: !5321, size: 64, offset: 128)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DISubroutineType(types: !5323)
!5323 = !{null, !5284, !2659, !5318}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !5310, file: !5275, line: 241, baseType: !5321, size: 64, offset: 192)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !5307, file: !5275, line: 362, baseType: !5326, size: 128)
!5326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !5275, line: 255, size: 128, elements: !5327)
!5327 = !{!5328, !5332}
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !5326, file: !5275, line: 256, baseType: !5329, size: 64)
!5329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5330, size: 64)
!5330 = !DISubroutineType(types: !5331)
!5331 = !{!113, !5284, !5318, !13, !2659, !1902}
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !5326, file: !5275, line: 258, baseType: !5329, size: 64, offset: 64)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !5287, file: !5275, line: 365, baseType: !5334, size: 64, offset: 2816)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!113, !5284}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !5287, file: !5275, line: 366, baseType: !5281, size: 64, offset: 2880)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !5287, file: !5275, line: 367, baseType: !5339, size: 64, offset: 2944)
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5340 = !DISubroutineType(types: !5341)
!5341 = !{null, !5286}
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !5287, file: !5275, line: 369, baseType: !517, size: 64, offset: 3008)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !5274, file: !5275, line: 433, baseType: !5344, align: 64, offset: 256)
!5344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, elements: !742)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "j_csum_seed", scope: !211, file: !200, line: 1254, baseType: !388, size: 32, offset: 11520)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_cleanup_callback", scope: !211, file: !200, line: 1276, baseType: !5347, size: 64, offset: 11584)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{null, !5350, !113, !5199}
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_replay_callback", scope: !211, file: !200, line: 1289, baseType: !5352, size: 64, offset: 11648)
!5352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5353, size: 64)
!5353 = !DISubroutineType(types: !5354)
!5354 = !{!113, !5350, !280, !199, !113, !5199}
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "j_bmap", scope: !211, file: !200, line: 1300, baseType: !5356, size: 64, offset: 11712)
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5357, size: 64)
!5357 = !DISubroutineType(types: !5358)
!5358 = !{!113, !5350, !2669}
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "t_tid", scope: !206, file: !200, line: 557, baseType: !5199, size: 32, offset: 64)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "t_state", scope: !206, file: !200, line: 577, baseType: !205, size: 32, offset: 96)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "t_log_start", scope: !206, file: !200, line: 582, baseType: !214, size: 64, offset: 128)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "t_nr_buffers", scope: !206, file: !200, line: 588, baseType: !113, size: 32, offset: 192)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "t_reserved_list", scope: !206, file: !200, line: 595, baseType: !5364, size: 64, offset: 256)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_head", file: !5166, line: 22, size: 896, elements: !5366)
!5366 = !{!5367, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5393}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "b_bh", scope: !5365, file: !5166, line: 26, baseType: !280, size: 64)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "b_state_lock", scope: !5365, file: !5166, line: 31, baseType: !414, size: 32, offset: 64)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "b_jcount", scope: !5365, file: !5166, line: 37, baseType: !113, size: 32, offset: 96)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "b_jlist", scope: !5365, file: !5166, line: 46, baseType: !13, size: 32, offset: 128)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "b_modified", scope: !5365, file: !5166, line: 53, baseType: !13, size: 32, offset: 160)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "b_frozen_data", scope: !5365, file: !5166, line: 59, baseType: !469, size: 64, offset: 192)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "b_committed_data", scope: !5365, file: !5166, line: 66, baseType: !469, size: 64, offset: 256)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "b_transaction", scope: !5365, file: !5166, line: 77, baseType: !5164, size: 64, offset: 320)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "b_next_transaction", scope: !5365, file: !5166, line: 85, baseType: !5164, size: 64, offset: 384)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "b_tnext", scope: !5365, file: !5166, line: 91, baseType: !5364, size: 64, offset: 448)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "b_tprev", scope: !5365, file: !5166, line: 91, baseType: !5364, size: 64, offset: 512)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "b_cp_transaction", scope: !5365, file: !5166, line: 98, baseType: !5164, size: 64, offset: 576)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "b_cpnext", scope: !5365, file: !5166, line: 105, baseType: !5364, size: 64, offset: 640)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "b_cpprev", scope: !5365, file: !5166, line: 105, baseType: !5364, size: 64, offset: 704)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "b_triggers", scope: !5365, file: !5166, line: 108, baseType: !5382, size: 64, offset: 768)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_buffer_trigger_type", file: !200, line: 1460, size: 128, elements: !5384)
!5384 = !{!5385, !5389}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "t_frozen", scope: !5383, file: !200, line: 1467, baseType: !5386, size: 64)
!5386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5387, size: 64)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{null, !5382, !280, !307, !615}
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "t_abort", scope: !5383, file: !200, line: 1475, baseType: !5390, size: 64, offset: 64)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{null, !5382, !280}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "b_frozen_triggers", scope: !5365, file: !5166, line: 111, baseType: !5382, size: 64, offset: 832)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "t_buffers", scope: !206, file: !200, line: 601, baseType: !5364, size: 64, offset: 320)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "t_forget", scope: !206, file: !200, line: 608, baseType: !5364, size: 64, offset: 384)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "t_checkpoint_list", scope: !206, file: !200, line: 614, baseType: !5364, size: 64, offset: 448)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "t_shadow_list", scope: !206, file: !200, line: 623, baseType: !5364, size: 64, offset: 512)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "t_inode_list", scope: !206, file: !200, line: 631, baseType: !274, size: 128, offset: 576)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "t_max_wait", scope: !206, file: !200, line: 636, baseType: !214, size: 64, offset: 704)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "t_start", scope: !206, file: !200, line: 641, baseType: !214, size: 64, offset: 768)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "t_requested", scope: !206, file: !200, line: 646, baseType: !214, size: 64, offset: 832)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "t_chp_stats", scope: !206, file: !200, line: 651, baseType: !5403, size: 192, offset: 896)
!5403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_chp_stats_s", file: !200, line: 510, size: 192, elements: !5404)
!5404 = !{!5405, !5406, !5407, !5408}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "cs_chp_time", scope: !5403, file: !200, line: 511, baseType: !214, size: 64)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "cs_forced_to_close", scope: !5403, file: !200, line: 512, baseType: !388, size: 32, offset: 64)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "cs_written", scope: !5403, file: !200, line: 513, baseType: !388, size: 32, offset: 96)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "cs_dropped", scope: !5403, file: !200, line: 514, baseType: !388, size: 32, offset: 128)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "t_updates", scope: !206, file: !200, line: 657, baseType: !248, size: 32, offset: 1088)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "t_outstanding_credits", scope: !206, file: !200, line: 665, baseType: !248, size: 32, offset: 1120)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "t_outstanding_revokes", scope: !206, file: !200, line: 671, baseType: !248, size: 32, offset: 1152)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "t_handle_count", scope: !206, file: !200, line: 676, baseType: !248, size: 32, offset: 1184)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "t_cpnext", scope: !206, file: !200, line: 682, baseType: !5164, size: 64, offset: 1216)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "t_cpprev", scope: !206, file: !200, line: 682, baseType: !5164, size: 64, offset: 1280)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "t_expires", scope: !206, file: !200, line: 688, baseType: !214, size: 64, offset: 1344)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "t_start_time", scope: !206, file: !200, line: 693, baseType: !2900, size: 64, offset: 1408)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "t_synchronous_commit", scope: !206, file: !200, line: 699, baseType: !13, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "t_need_data_flush", scope: !206, file: !200, line: 702, baseType: !113, size: 32, offset: 1504)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "t_private_list", scope: !206, file: !200, line: 708, baseType: !274, size: 128, offset: 1536)
!5420 = !{!5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429}
!5421 = !DIEnumerator(name: "T_RUNNING", value: 0)
!5422 = !DIEnumerator(name: "T_LOCKED", value: 1)
!5423 = !DIEnumerator(name: "T_SWITCH", value: 2)
!5424 = !DIEnumerator(name: "T_FLUSH", value: 3)
!5425 = !DIEnumerator(name: "T_COMMIT", value: 4)
!5426 = !DIEnumerator(name: "T_COMMIT_DFLUSH", value: 5)
!5427 = !DIEnumerator(name: "T_COMMIT_JFLUSH", value: 6)
!5428 = !DIEnumerator(name: "T_COMMIT_CALLBACK", value: 7)
!5429 = !DIEnumerator(name: "T_FINISHED", value: 8)
!5430 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_op", file: !2472, line: 371, baseType: !13, size: 32, elements: !5431)
!5431 = !{!5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5441, !5442, !5443, !5444, !5445, !5446}
!5432 = !DIEnumerator(name: "REQ_OP_READ", value: 0)
!5433 = !DIEnumerator(name: "REQ_OP_WRITE", value: 1)
!5434 = !DIEnumerator(name: "REQ_OP_FLUSH", value: 2)
!5435 = !DIEnumerator(name: "REQ_OP_DISCARD", value: 3)
!5436 = !DIEnumerator(name: "REQ_OP_SECURE_ERASE", value: 5)
!5437 = !DIEnumerator(name: "REQ_OP_WRITE_ZEROES", value: 9)
!5438 = !DIEnumerator(name: "REQ_OP_ZONE_OPEN", value: 10)
!5439 = !DIEnumerator(name: "REQ_OP_ZONE_CLOSE", value: 11)
!5440 = !DIEnumerator(name: "REQ_OP_ZONE_FINISH", value: 12)
!5441 = !DIEnumerator(name: "REQ_OP_ZONE_APPEND", value: 13)
!5442 = !DIEnumerator(name: "REQ_OP_ZONE_RESET", value: 15)
!5443 = !DIEnumerator(name: "REQ_OP_ZONE_RESET_ALL", value: 17)
!5444 = !DIEnumerator(name: "REQ_OP_DRV_IN", value: 34)
!5445 = !DIEnumerator(name: "REQ_OP_DRV_OUT", value: 35)
!5446 = !DIEnumerator(name: "REQ_OP_LAST", value: 36)
!5447 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_flag_bits", file: !2472, line: 404, baseType: !13, size: 32, elements: !5448)
!5448 = !{!5449, !5450, !5451, !5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469}
!5449 = !DIEnumerator(name: "__REQ_FAILFAST_DEV", value: 8)
!5450 = !DIEnumerator(name: "__REQ_FAILFAST_TRANSPORT", value: 9)
!5451 = !DIEnumerator(name: "__REQ_FAILFAST_DRIVER", value: 10)
!5452 = !DIEnumerator(name: "__REQ_SYNC", value: 11)
!5453 = !DIEnumerator(name: "__REQ_META", value: 12)
!5454 = !DIEnumerator(name: "__REQ_PRIO", value: 13)
!5455 = !DIEnumerator(name: "__REQ_NOMERGE", value: 14)
!5456 = !DIEnumerator(name: "__REQ_IDLE", value: 15)
!5457 = !DIEnumerator(name: "__REQ_INTEGRITY", value: 16)
!5458 = !DIEnumerator(name: "__REQ_FUA", value: 17)
!5459 = !DIEnumerator(name: "__REQ_PREFLUSH", value: 18)
!5460 = !DIEnumerator(name: "__REQ_RAHEAD", value: 19)
!5461 = !DIEnumerator(name: "__REQ_BACKGROUND", value: 20)
!5462 = !DIEnumerator(name: "__REQ_NOWAIT", value: 21)
!5463 = !DIEnumerator(name: "__REQ_POLLED", value: 22)
!5464 = !DIEnumerator(name: "__REQ_ALLOC_CACHE", value: 23)
!5465 = !DIEnumerator(name: "__REQ_SWAP", value: 24)
!5466 = !DIEnumerator(name: "__REQ_DRV", value: 25)
!5467 = !DIEnumerator(name: "__REQ_FS_PRIVATE", value: 26)
!5468 = !DIEnumerator(name: "__REQ_NOUNMAP", value: 27)
!5469 = !DIEnumerator(name: "__REQ_NR_BITS", value: 28)
!5470 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !5471, line: 100, baseType: !13, size: 32, elements: !5472)
!5471 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!5472 = !{!5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509}
!5473 = !DIEnumerator(name: "PG_locked", value: 0)
!5474 = !DIEnumerator(name: "PG_writeback", value: 1)
!5475 = !DIEnumerator(name: "PG_referenced", value: 2)
!5476 = !DIEnumerator(name: "PG_uptodate", value: 3)
!5477 = !DIEnumerator(name: "PG_dirty", value: 4)
!5478 = !DIEnumerator(name: "PG_lru", value: 5)
!5479 = !DIEnumerator(name: "PG_head", value: 6)
!5480 = !DIEnumerator(name: "PG_waiters", value: 7)
!5481 = !DIEnumerator(name: "PG_active", value: 8)
!5482 = !DIEnumerator(name: "PG_workingset", value: 9)
!5483 = !DIEnumerator(name: "PG_error", value: 10)
!5484 = !DIEnumerator(name: "PG_slab", value: 11)
!5485 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!5486 = !DIEnumerator(name: "PG_arch_1", value: 13)
!5487 = !DIEnumerator(name: "PG_reserved", value: 14)
!5488 = !DIEnumerator(name: "PG_private", value: 15)
!5489 = !DIEnumerator(name: "PG_private_2", value: 16)
!5490 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!5491 = !DIEnumerator(name: "PG_reclaim", value: 18)
!5492 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!5493 = !DIEnumerator(name: "PG_unevictable", value: 20)
!5494 = !DIEnumerator(name: "PG_mlocked", value: 21)
!5495 = !DIEnumerator(name: "PG_uncached", value: 22)
!5496 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!5497 = !DIEnumerator(name: "PG_readahead", value: 18)
!5498 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!5499 = !DIEnumerator(name: "PG_checked", value: 12)
!5500 = !DIEnumerator(name: "PG_swapcache", value: 12)
!5501 = !DIEnumerator(name: "PG_fscache", value: 16)
!5502 = !DIEnumerator(name: "PG_pinned", value: 12)
!5503 = !DIEnumerator(name: "PG_savepinned", value: 4)
!5504 = !DIEnumerator(name: "PG_foreign", value: 12)
!5505 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!5506 = !DIEnumerator(name: "PG_isolated", value: 18)
!5507 = !DIEnumerator(name: "PG_reported", value: 3)
!5508 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!5509 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!5510 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5511, line: 10, baseType: !13, size: 32, elements: !5512)
!5511 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5512 = !{!5513, !5514}
!5513 = !DIEnumerator(name: "false", value: 0)
!5514 = !DIEnumerator(name: "true", value: 1)
!5515 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bio_post_read_step", file: !2, line: 55, baseType: !13, size: 32, elements: !5516)
!5516 = !{!5517, !5518, !5519, !5520}
!5517 = !DIEnumerator(name: "STEP_INITIAL", value: 0)
!5518 = !DIEnumerator(name: "STEP_DECRYPT", value: 1)
!5519 = !DIEnumerator(name: "STEP_VERITY", value: 2)
!5520 = !DIEnumerator(name: "STEP_MAX", value: 3)
!5521 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1383, line: 30, baseType: !13, size: 32, elements: !5522)
!5522 = !{!5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545}
!5523 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!5524 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!5525 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!5526 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!5527 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!5528 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!5529 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!5530 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!5531 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!5532 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!5533 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!5534 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!5535 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!5536 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!5537 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!5538 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!5539 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!5540 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!5541 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!5542 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!5543 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!5544 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!5545 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!5546 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2472, line: 333, baseType: !13, size: 32, elements: !5547)
!5547 = !{!5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561}
!5548 = !DIEnumerator(name: "BIO_PAGE_PINNED", value: 0)
!5549 = !DIEnumerator(name: "BIO_CLONED", value: 1)
!5550 = !DIEnumerator(name: "BIO_BOUNCED", value: 2)
!5551 = !DIEnumerator(name: "BIO_QUIET", value: 3)
!5552 = !DIEnumerator(name: "BIO_CHAIN", value: 4)
!5553 = !DIEnumerator(name: "BIO_REFFED", value: 5)
!5554 = !DIEnumerator(name: "BIO_BPS_THROTTLED", value: 6)
!5555 = !DIEnumerator(name: "BIO_TRACE_COMPLETION", value: 7)
!5556 = !DIEnumerator(name: "BIO_CGROUP_ACCT", value: 8)
!5557 = !DIEnumerator(name: "BIO_QOS_THROTTLED", value: 9)
!5558 = !DIEnumerator(name: "BIO_QOS_MERGED", value: 10)
!5559 = !DIEnumerator(name: "BIO_REMAPPED", value: 11)
!5560 = !DIEnumerator(name: "BIO_ZONE_WRITE_LOCKED", value: 12)
!5561 = !DIEnumerator(name: "BIO_FLAG_LAST", value: 13)
!5562 = !{!2475, !307, !1159, !2505, !5563, !2141, !444, !214, !5564, !289, !1020, !5565, !5566, !5567, !5569, !5571, !5573, !5580, !5583}
!5563 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !225, line: 155, baseType: !13)
!5564 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !225, line: 159, baseType: !391)
!5565 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !225, line: 42, baseType: !214)
!5566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5568, size: 64)
!5568 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!5569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5570, size: 64)
!5570 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !605)
!5571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5572, size: 64)
!5572 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !277)
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_post_read_ctx", file: !2, line: 62, size: 384, elements: !5575)
!5575 = !{!5576, !5577, !5578, !5579}
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !5574, file: !2, line: 63, baseType: !2499, size: 64)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5574, file: !2, line: 64, baseType: !1382, size: 256, offset: 64)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "cur_step", scope: !5574, file: !2, line: 65, baseType: !13, size: 32, offset: 320)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_steps", scope: !5574, file: !2, line: 66, baseType: !13, size: 32, offset: 352)
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5581, size: 64)
!5581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5582)
!5582 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !214)
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5584, size: 64)
!5584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!5585 = !{!0, !7, !5586, !5589, !5592, !5595, !5601, !5608, !5610}
!5586 = !DIGlobalVariableExpression(var: !5587, expr: !DIExpression())
!5587 = distinct !DIGlobalVariable(name: "bio_post_read_ctx_pool", scope: !9, file: !2, line: 52, type: !5588, isLocal: true, isDefinition: true)
!5588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!5589 = !DIGlobalVariableExpression(var: !5590, expr: !DIExpression())
!5590 = distinct !DIGlobalVariable(scope: null, file: !1017, line: 1355, type: !5591, isLocal: true, isDefinition: true)
!5591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !2648)
!5592 = !DIGlobalVariableExpression(var: !5593, expr: !DIExpression())
!5593 = distinct !DIGlobalVariable(scope: null, file: !5594, line: 275, type: !5591, isLocal: true, isDefinition: true)
!5594 = !DIFile(filename: "./include/linux/highmem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "44cc22a6674afa1c65f9d65e2d0f07bb")
!5595 = !DIGlobalVariableExpression(var: !5596, expr: !DIExpression())
!5596 = distinct !DIGlobalVariable(scope: null, file: !5597, line: 240, type: !5598, isLocal: true, isDefinition: true)
!5597 = !DIFile(filename: "./include/linux/fsverity.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f06c265bb7914cb05233fa88afb73dd7")
!5598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !5599)
!5599 = !{!5600}
!5600 = !DISubrange(count: 25)
!5601 = !DIGlobalVariableExpression(var: !5602, expr: !DIExpression())
!5602 = distinct !DIGlobalVariable(name: "__key", scope: !5603, file: !2, line: 133, type: !2161, isLocal: true, isDefinition: true)
!5603 = distinct !DISubprogram(name: "bio_post_read_processing", scope: !2, file: !2, line: 123, type: !5604, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5606)
!5604 = !DISubroutineType(types: !5605)
!5605 = !{null, !5573}
!5606 = !{!5607}
!5607 = !DILocalVariable(name: "ctx", arg: 1, scope: !5603, file: !2, line: 123, type: !5573)
!5608 = !DIGlobalVariableExpression(var: !5609, expr: !DIExpression())
!5609 = distinct !DIGlobalVariable(name: "__key", scope: !5603, file: !2, line: 141, type: !2161, isLocal: true, isDefinition: true)
!5610 = !DIGlobalVariableExpression(var: !5611, expr: !DIExpression())
!5611 = distinct !DIGlobalVariable(scope: null, file: !2542, line: 247, type: !5612, isLocal: true, isDefinition: true)
!5612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !4421)
!5613 = !{i32 7, !"Dwarf Version", i32 5}
!5614 = !{i32 2, !"Debug Info Version", i32 3}
!5615 = !{i32 1, !"wchar_size", i32 2}
!5616 = !{i32 8, !"cf-protection-branch", i32 1}
!5617 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5618 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5619 = !{i32 1, !"Code Model", i32 2}
!5620 = !{i32 1, !"override-stack-alignment", i32 8}
!5621 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5622 = distinct !DISubprogram(name: "ext4_mpage_readpages", scope: !2, file: !2, line: 218, type: !5623, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5625)
!5623 = !DISubroutineType(types: !5624)
!5624 = !{!113, !316, !4942, !1020}
!5625 = !{!5626, !5627, !5628, !5629, !5630, !5631, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5640, !5641, !5642, !5643, !5644, !5654, !5655, !5659, !5660, !5663, !5664, !5670, !5673, !5674}
!5626 = !DILocalVariable(name: "inode", arg: 1, scope: !5622, file: !2, line: 218, type: !316)
!5627 = !DILocalVariable(name: "rac", arg: 2, scope: !5622, file: !2, line: 219, type: !4942)
!5628 = !DILocalVariable(name: "folio", arg: 3, scope: !5622, file: !2, line: 219, type: !1020)
!5629 = !DILocalVariable(name: "bio", scope: !5622, file: !2, line: 221, type: !2499)
!5630 = !DILocalVariable(name: "last_block_in_bio", scope: !5622, file: !2, line: 222, type: !2475)
!5631 = !DILocalVariable(name: "blkbits", scope: !5622, file: !2, line: 224, type: !4856)
!5632 = !DILocalVariable(name: "blocks_per_page", scope: !5622, file: !2, line: 225, type: !4856)
!5633 = !DILocalVariable(name: "blocksize", scope: !5622, file: !2, line: 226, type: !4856)
!5634 = !DILocalVariable(name: "next_block", scope: !5622, file: !2, line: 227, type: !2475)
!5635 = !DILocalVariable(name: "block_in_file", scope: !5622, file: !2, line: 228, type: !2475)
!5636 = !DILocalVariable(name: "last_block", scope: !5622, file: !2, line: 229, type: !2475)
!5637 = !DILocalVariable(name: "last_block_in_file", scope: !5622, file: !2, line: 230, type: !2475)
!5638 = !DILocalVariable(name: "blocks", scope: !5622, file: !2, line: 231, type: !5639)
!5639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2475, size: 512, elements: !2961)
!5640 = !DILocalVariable(name: "page_block", scope: !5622, file: !2, line: 232, type: !13)
!5641 = !DILocalVariable(name: "bdev", scope: !5622, file: !2, line: 233, type: !2470)
!5642 = !DILocalVariable(name: "length", scope: !5622, file: !2, line: 234, type: !113)
!5643 = !DILocalVariable(name: "relative_block", scope: !5622, file: !2, line: 235, type: !13)
!5644 = !DILocalVariable(name: "map", scope: !5622, file: !2, line: 236, type: !5645)
!5645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_map_blocks", file: !5646, line: 258, size: 192, elements: !5647)
!5646 = !DIFile(filename: "fs/ext4/ext4.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e5787aa1e5cfdc086e99d72d01ea51d")
!5647 = !{!5648, !5650, !5652, !5653}
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "m_pblk", scope: !5645, file: !5646, line: 259, baseType: !5649, size: 64)
!5649 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_fsblk_t", file: !5646, line: 117, baseType: !393)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "m_lblk", scope: !5645, file: !5646, line: 260, baseType: !5651, size: 32, offset: 64)
!5651 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_lblk_t", file: !5646, line: 120, baseType: !388)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "m_len", scope: !5645, file: !5646, line: 261, baseType: !13, size: 32, offset: 96)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "m_flags", scope: !5645, file: !5646, line: 262, baseType: !13, size: 32, offset: 128)
!5654 = !DILocalVariable(name: "nr_pages", scope: !5622, file: !2, line: 237, type: !13)
!5655 = !DILocalVariable(name: "fully_mapped", scope: !5656, file: !2, line: 245, type: !113)
!5656 = distinct !DILexicalBlock(scope: !5657, file: !2, line: 244, column: 31)
!5657 = distinct !DILexicalBlock(scope: !5658, file: !2, line: 244, column: 2)
!5658 = distinct !DILexicalBlock(scope: !5622, file: !2, line: 244, column: 2)
!5659 = !DILocalVariable(name: "first_hole", scope: !5656, file: !2, line: 246, type: !13)
!5660 = !DILocalVariable(name: "map_offset", scope: !5661, file: !2, line: 270, type: !13)
!5661 = distinct !DILexicalBlock(scope: !5662, file: !2, line: 269, column: 49)
!5662 = distinct !DILexicalBlock(scope: !5656, file: !2, line: 267, column: 7)
!5663 = !DILocalVariable(name: "last", scope: !5661, file: !2, line: 271, type: !13)
!5664 = !DILabel(scope: !5665, name: "set_error_page", file: !2, line: 298)
!5665 = distinct !DILexicalBlock(scope: !5666, file: !2, line: 297, column: 52)
!5666 = distinct !DILexicalBlock(scope: !5667, file: !2, line: 297, column: 9)
!5667 = distinct !DILexicalBlock(scope: !5668, file: !2, line: 293, column: 36)
!5668 = distinct !DILexicalBlock(scope: !5669, file: !2, line: 293, column: 8)
!5669 = distinct !DILexicalBlock(scope: !5656, file: !2, line: 292, column: 40)
!5670 = !DILabel(scope: !5671, name: "submit_and_realloc", file: !2, line: 352)
!5671 = distinct !DILexicalBlock(scope: !5672, file: !2, line: 351, column: 57)
!5672 = distinct !DILexicalBlock(scope: !5656, file: !2, line: 350, column: 7)
!5673 = !DILabel(scope: !5656, name: "confused", file: !2, line: 384)
!5674 = !DILabel(scope: !5656, name: "next_page", file: !2, line: 393)
!5675 = !DILocation(line: 218, column: 40, scope: !5622)
!5676 = !DILocation(line: 219, column: 29, scope: !5622)
!5677 = !DILocation(line: 219, column: 48, scope: !5622)
!5678 = !DILocation(line: 221, column: 2, scope: !5622)
!5679 = !DILocation(line: 221, column: 14, scope: !5622)
!5680 = !DILocation(line: 222, column: 2, scope: !5622)
!5681 = !DILocation(line: 222, column: 11, scope: !5622)
!5682 = !DILocation(line: 224, column: 2, scope: !5622)
!5683 = !DILocation(line: 224, column: 17, scope: !5622)
!5684 = !DILocation(line: 224, column: 27, scope: !5622)
!5685 = !DILocation(line: 224, column: 34, scope: !5622)
!5686 = !DILocation(line: 225, column: 2, scope: !5622)
!5687 = !DILocation(line: 225, column: 17, scope: !5622)
!5688 = !DILocation(line: 225, column: 48, scope: !5622)
!5689 = !DILocation(line: 225, column: 45, scope: !5622)
!5690 = !DILocation(line: 225, column: 35, scope: !5622)
!5691 = !DILocation(line: 226, column: 2, scope: !5622)
!5692 = !DILocation(line: 226, column: 17, scope: !5622)
!5693 = !DILocation(line: 226, column: 34, scope: !5622)
!5694 = !DILocation(line: 226, column: 31, scope: !5622)
!5695 = !DILocation(line: 227, column: 2, scope: !5622)
!5696 = !DILocation(line: 227, column: 11, scope: !5622)
!5697 = !DILocation(line: 228, column: 2, scope: !5622)
!5698 = !DILocation(line: 228, column: 11, scope: !5622)
!5699 = !DILocation(line: 229, column: 2, scope: !5622)
!5700 = !DILocation(line: 229, column: 11, scope: !5622)
!5701 = !DILocation(line: 230, column: 2, scope: !5622)
!5702 = !DILocation(line: 230, column: 11, scope: !5622)
!5703 = !DILocation(line: 231, column: 2, scope: !5622)
!5704 = !DILocation(line: 231, column: 11, scope: !5622)
!5705 = !DILocation(line: 232, column: 2, scope: !5622)
!5706 = !DILocation(line: 232, column: 11, scope: !5622)
!5707 = !DILocation(line: 233, column: 2, scope: !5622)
!5708 = !DILocation(line: 233, column: 23, scope: !5622)
!5709 = !DILocation(line: 233, column: 30, scope: !5622)
!5710 = !DILocation(line: 233, column: 37, scope: !5622)
!5711 = !DILocation(line: 233, column: 43, scope: !5622)
!5712 = !DILocation(line: 234, column: 2, scope: !5622)
!5713 = !DILocation(line: 234, column: 6, scope: !5622)
!5714 = !DILocation(line: 235, column: 2, scope: !5622)
!5715 = !DILocation(line: 235, column: 11, scope: !5622)
!5716 = !DILocation(line: 236, column: 2, scope: !5622)
!5717 = !DILocation(line: 236, column: 25, scope: !5622)
!5718 = !DILocation(line: 237, column: 2, scope: !5622)
!5719 = !DILocation(line: 237, column: 15, scope: !5622)
!5720 = !DILocation(line: 237, column: 26, scope: !5622)
!5721 = !DILocation(line: 237, column: 48, scope: !5622)
!5722 = !DILocation(line: 237, column: 32, scope: !5622)
!5723 = !DILocation(line: 239, column: 6, scope: !5622)
!5724 = !DILocation(line: 239, column: 13, scope: !5622)
!5725 = !DILocation(line: 240, column: 6, scope: !5622)
!5726 = !DILocation(line: 240, column: 13, scope: !5622)
!5727 = !DILocation(line: 241, column: 6, scope: !5622)
!5728 = !DILocation(line: 241, column: 12, scope: !5622)
!5729 = !DILocation(line: 242, column: 6, scope: !5622)
!5730 = !DILocation(line: 242, column: 14, scope: !5622)
!5731 = !DILocation(line: 244, column: 2, scope: !5622)
!5732 = !DILocation(line: 244, column: 9, scope: !5657)
!5733 = !DILocation(line: 244, column: 2, scope: !5658)
!5734 = !DILocation(line: 245, column: 3, scope: !5656)
!5735 = !DILocation(line: 245, column: 7, scope: !5656)
!5736 = !DILocation(line: 246, column: 3, scope: !5656)
!5737 = !DILocation(line: 246, column: 12, scope: !5656)
!5738 = !DILocation(line: 246, column: 25, scope: !5656)
!5739 = !DILocation(line: 248, column: 7, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5656, file: !2, line: 248, column: 7)
!5741 = !DILocation(line: 248, column: 7, scope: !5656)
!5742 = !DILocation(line: 249, column: 28, scope: !5740)
!5743 = !DILocation(line: 249, column: 12, scope: !5740)
!5744 = !DILocation(line: 249, column: 10, scope: !5740)
!5745 = !DILocation(line: 249, column: 4, scope: !5740)
!5746 = !DILocation(line: 250, column: 14, scope: !5656)
!5747 = !DILocation(line: 250, column: 21, scope: !5656)
!5748 = !DILocation(line: 250, column: 3, scope: !5656)
!5749 = !DILocation(line: 252, column: 7, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5656, file: !2, line: 252, column: 7)
!5751 = !DILocation(line: 252, column: 7, scope: !5656)
!5752 = !DILocation(line: 253, column: 4, scope: !5750)
!5753 = !DILocation(line: 256, column: 14, scope: !5656)
!5754 = !DILocation(line: 256, column: 21, scope: !5656)
!5755 = !DILocation(line: 256, column: 44, scope: !5656)
!5756 = !DILocation(line: 256, column: 42, scope: !5656)
!5757 = !DILocation(line: 256, column: 27, scope: !5656)
!5758 = !DILocation(line: 255, column: 30, scope: !5656)
!5759 = !DILocation(line: 255, column: 17, scope: !5656)
!5760 = !DILocation(line: 257, column: 16, scope: !5656)
!5761 = !DILocation(line: 257, column: 32, scope: !5656)
!5762 = !DILocation(line: 257, column: 43, scope: !5656)
!5763 = !DILocation(line: 257, column: 41, scope: !5656)
!5764 = !DILocation(line: 257, column: 30, scope: !5656)
!5765 = !DILocation(line: 257, column: 14, scope: !5656)
!5766 = !DILocation(line: 258, column: 45, scope: !5656)
!5767 = !DILocation(line: 258, column: 25, scope: !5656)
!5768 = !DILocation(line: 259, column: 11, scope: !5656)
!5769 = !DILocation(line: 258, column: 52, scope: !5656)
!5770 = !DILocation(line: 259, column: 21, scope: !5656)
!5771 = !DILocation(line: 259, column: 29, scope: !5656)
!5772 = !DILocation(line: 259, column: 26, scope: !5656)
!5773 = !DILocation(line: 258, column: 22, scope: !5656)
!5774 = !DILocation(line: 260, column: 7, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5656, file: !2, line: 260, column: 7)
!5776 = !DILocation(line: 260, column: 20, scope: !5775)
!5777 = !DILocation(line: 260, column: 18, scope: !5775)
!5778 = !DILocation(line: 260, column: 7, scope: !5656)
!5779 = !DILocation(line: 261, column: 17, scope: !5775)
!5780 = !DILocation(line: 261, column: 15, scope: !5775)
!5781 = !DILocation(line: 261, column: 4, scope: !5775)
!5782 = !DILocation(line: 262, column: 14, scope: !5656)
!5783 = !DILocation(line: 267, column: 12, scope: !5662)
!5784 = !DILocation(line: 267, column: 8, scope: !5662)
!5785 = !DILocation(line: 267, column: 20, scope: !5662)
!5786 = !DILocation(line: 267, column: 39, scope: !5662)
!5787 = !DILocation(line: 268, column: 7, scope: !5662)
!5788 = !DILocation(line: 268, column: 27, scope: !5662)
!5789 = !DILocation(line: 268, column: 23, scope: !5662)
!5790 = !DILocation(line: 268, column: 21, scope: !5662)
!5791 = !DILocation(line: 268, column: 34, scope: !5662)
!5792 = !DILocation(line: 269, column: 7, scope: !5662)
!5793 = !DILocation(line: 269, column: 28, scope: !5662)
!5794 = !DILocation(line: 269, column: 41, scope: !5662)
!5795 = !DILocation(line: 269, column: 35, scope: !5662)
!5796 = !DILocation(line: 269, column: 23, scope: !5662)
!5797 = !DILocation(line: 269, column: 21, scope: !5662)
!5798 = !DILocation(line: 267, column: 7, scope: !5656)
!5799 = !DILocation(line: 270, column: 4, scope: !5661)
!5800 = !DILocation(line: 270, column: 13, scope: !5661)
!5801 = !DILocation(line: 270, column: 26, scope: !5661)
!5802 = !DILocation(line: 270, column: 46, scope: !5661)
!5803 = !DILocation(line: 270, column: 42, scope: !5661)
!5804 = !DILocation(line: 270, column: 40, scope: !5661)
!5805 = !DILocation(line: 271, column: 4, scope: !5661)
!5806 = !DILocation(line: 271, column: 13, scope: !5661)
!5807 = !DILocation(line: 271, column: 24, scope: !5661)
!5808 = !DILocation(line: 271, column: 32, scope: !5661)
!5809 = !DILocation(line: 271, column: 30, scope: !5661)
!5810 = !DILocation(line: 273, column: 24, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5661, file: !2, line: 273, column: 4)
!5812 = !DILocation(line: 273, column: 9, scope: !5811)
!5813 = !DILocation(line: 274, column: 9, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5815, file: !2, line: 274, column: 9)
!5815 = distinct !DILexicalBlock(scope: !5816, file: !2, line: 273, column: 49)
!5816 = distinct !DILexicalBlock(scope: !5811, file: !2, line: 273, column: 4)
!5817 = !DILocation(line: 274, column: 27, scope: !5814)
!5818 = !DILocation(line: 274, column: 24, scope: !5814)
!5819 = !DILocation(line: 274, column: 9, scope: !5815)
!5820 = !DILocation(line: 276, column: 10, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5814, file: !2, line: 274, column: 33)
!5822 = !DILocation(line: 276, column: 18, scope: !5821)
!5823 = !DILocation(line: 277, column: 6, scope: !5821)
!5824 = !DILocation(line: 279, column: 9, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5815, file: !2, line: 279, column: 9)
!5826 = !DILocation(line: 279, column: 23, scope: !5825)
!5827 = !DILocation(line: 279, column: 20, scope: !5825)
!5828 = !DILocation(line: 279, column: 9, scope: !5815)
!5829 = !DILocation(line: 280, column: 6, scope: !5825)
!5830 = !DILocation(line: 281, column: 30, scope: !5815)
!5831 = !DILocation(line: 281, column: 39, scope: !5815)
!5832 = !DILocation(line: 281, column: 37, scope: !5815)
!5833 = !DILocation(line: 282, column: 6, scope: !5815)
!5834 = !DILocation(line: 281, column: 50, scope: !5815)
!5835 = !DILocation(line: 281, column: 12, scope: !5815)
!5836 = !DILocation(line: 281, column: 5, scope: !5815)
!5837 = !DILocation(line: 281, column: 24, scope: !5815)
!5838 = !DILocation(line: 283, column: 15, scope: !5815)
!5839 = !DILocation(line: 284, column: 18, scope: !5815)
!5840 = !DILocation(line: 285, column: 4, scope: !5815)
!5841 = !DILocation(line: 273, column: 45, scope: !5816)
!5842 = !DILocation(line: 273, column: 4, scope: !5816)
!5843 = distinct !{!5843, !5844, !5845, !5846}
!5844 = !DILocation(line: 273, column: 4, scope: !5811)
!5845 = !DILocation(line: 285, column: 4, scope: !5811)
!5846 = !{!"llvm.loop.unroll.disable"}
!5847 = !DILocation(line: 286, column: 3, scope: !5662)
!5848 = !DILocation(line: 286, column: 3, scope: !5661)
!5849 = !DILocation(line: 292, column: 3, scope: !5656)
!5850 = !DILocation(line: 292, column: 10, scope: !5656)
!5851 = !DILocation(line: 292, column: 23, scope: !5656)
!5852 = !DILocation(line: 292, column: 21, scope: !5656)
!5853 = !DILocation(line: 293, column: 8, scope: !5668)
!5854 = !DILocation(line: 293, column: 24, scope: !5668)
!5855 = !DILocation(line: 293, column: 22, scope: !5668)
!5856 = !DILocation(line: 293, column: 8, scope: !5669)
!5857 = !DILocation(line: 294, column: 18, scope: !5667)
!5858 = !DILocation(line: 294, column: 9, scope: !5667)
!5859 = !DILocation(line: 294, column: 16, scope: !5667)
!5860 = !DILocation(line: 295, column: 17, scope: !5667)
!5861 = !DILocation(line: 295, column: 30, scope: !5667)
!5862 = !DILocation(line: 295, column: 28, scope: !5667)
!5863 = !DILocation(line: 295, column: 9, scope: !5667)
!5864 = !DILocation(line: 295, column: 15, scope: !5667)
!5865 = !DILocation(line: 297, column: 31, scope: !5666)
!5866 = !DILocation(line: 297, column: 9, scope: !5666)
!5867 = !DILocation(line: 297, column: 47, scope: !5666)
!5868 = !DILocation(line: 297, column: 9, scope: !5667)
!5869 = !DILocation(line: 297, column: 52, scope: !5666)
!5870 = !DILocation(line: 298, column: 5, scope: !5665)
!5871 = !DILocation(line: 299, column: 25, scope: !5665)
!5872 = !DILocation(line: 300, column: 21, scope: !5665)
!5873 = !DILocation(line: 300, column: 10, scope: !5665)
!5874 = !DILocation(line: 299, column: 6, scope: !5665)
!5875 = !DILocation(line: 301, column: 19, scope: !5665)
!5876 = !DILocation(line: 301, column: 6, scope: !5665)
!5877 = !DILocation(line: 302, column: 6, scope: !5665)
!5878 = !DILocation(line: 304, column: 4, scope: !5667)
!5879 = !DILocation(line: 305, column: 13, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5669, file: !2, line: 305, column: 8)
!5881 = !DILocation(line: 305, column: 9, scope: !5880)
!5882 = !DILocation(line: 305, column: 21, scope: !5880)
!5883 = !DILocation(line: 305, column: 40, scope: !5880)
!5884 = !DILocation(line: 305, column: 8, scope: !5669)
!5885 = !DILocation(line: 306, column: 18, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5880, file: !2, line: 305, column: 46)
!5887 = !DILocation(line: 307, column: 9, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5886, file: !2, line: 307, column: 9)
!5889 = !DILocation(line: 307, column: 23, scope: !5888)
!5890 = !DILocation(line: 307, column: 20, scope: !5888)
!5891 = !DILocation(line: 307, column: 9, scope: !5886)
!5892 = !DILocation(line: 308, column: 19, scope: !5888)
!5893 = !DILocation(line: 308, column: 17, scope: !5888)
!5894 = !DILocation(line: 308, column: 6, scope: !5888)
!5895 = !DILocation(line: 309, column: 15, scope: !5886)
!5896 = !DILocation(line: 310, column: 18, scope: !5886)
!5897 = !DILocation(line: 311, column: 5, scope: !5886)
!5898 = distinct !{!5898, !5849, !5899, !5900, !5846}
!5899 = !DILocation(line: 330, column: 3, scope: !5656)
!5900 = !{!"llvm.loop.mustprogress"}
!5901 = !DILocation(line: 313, column: 8, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5669, file: !2, line: 313, column: 8)
!5903 = !DILocation(line: 313, column: 22, scope: !5902)
!5904 = !DILocation(line: 313, column: 19, scope: !5902)
!5905 = !DILocation(line: 313, column: 8, scope: !5669)
!5906 = !DILocation(line: 314, column: 5, scope: !5902)
!5907 = !DILocation(line: 317, column: 8, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5669, file: !2, line: 317, column: 8)
!5909 = !DILocation(line: 317, column: 19, scope: !5908)
!5910 = !DILocation(line: 317, column: 29, scope: !5908)
!5911 = !DILocation(line: 317, column: 39, scope: !5908)
!5912 = !DILocation(line: 317, column: 22, scope: !5908)
!5913 = !DILocation(line: 317, column: 50, scope: !5908)
!5914 = !DILocation(line: 317, column: 56, scope: !5908)
!5915 = !DILocation(line: 317, column: 43, scope: !5908)
!5916 = !DILocation(line: 317, column: 8, scope: !5669)
!5917 = !DILocation(line: 318, column: 5, scope: !5908)
!5918 = !DILocation(line: 319, column: 24, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5669, file: !2, line: 319, column: 4)
!5920 = !DILocation(line: 319, column: 9, scope: !5919)
!5921 = !DILocation(line: 320, column: 9, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5923, file: !2, line: 320, column: 9)
!5923 = distinct !DILexicalBlock(scope: !5924, file: !2, line: 319, column: 49)
!5924 = distinct !DILexicalBlock(scope: !5919, file: !2, line: 319, column: 4)
!5925 = !DILocation(line: 320, column: 31, scope: !5922)
!5926 = !DILocation(line: 320, column: 24, scope: !5922)
!5927 = !DILocation(line: 320, column: 9, scope: !5923)
!5928 = !DILocation(line: 322, column: 10, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5922, file: !2, line: 320, column: 38)
!5930 = !DILocation(line: 322, column: 18, scope: !5929)
!5931 = !DILocation(line: 323, column: 6, scope: !5929)
!5932 = !DILocation(line: 324, column: 16, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5922, file: !2, line: 324, column: 16)
!5934 = !DILocation(line: 324, column: 30, scope: !5933)
!5935 = !DILocation(line: 324, column: 27, scope: !5933)
!5936 = !DILocation(line: 324, column: 16, scope: !5922)
!5937 = !DILocation(line: 325, column: 6, scope: !5933)
!5938 = !DILocation(line: 326, column: 30, scope: !5923)
!5939 = !DILocation(line: 326, column: 37, scope: !5923)
!5940 = !DILocation(line: 326, column: 36, scope: !5923)
!5941 = !DILocation(line: 326, column: 12, scope: !5923)
!5942 = !DILocation(line: 326, column: 5, scope: !5923)
!5943 = !DILocation(line: 326, column: 24, scope: !5923)
!5944 = !DILocation(line: 327, column: 15, scope: !5923)
!5945 = !DILocation(line: 328, column: 18, scope: !5923)
!5946 = !DILocation(line: 329, column: 4, scope: !5923)
!5947 = !DILocation(line: 319, column: 45, scope: !5924)
!5948 = !DILocation(line: 319, column: 4, scope: !5924)
!5949 = distinct !{!5949, !5950, !5951, !5846}
!5950 = !DILocation(line: 319, column: 4, scope: !5919)
!5951 = !DILocation(line: 329, column: 4, scope: !5919)
!5952 = !DILocation(line: 331, column: 7, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5656, file: !2, line: 331, column: 7)
!5954 = !DILocation(line: 331, column: 21, scope: !5953)
!5955 = !DILocation(line: 331, column: 18, scope: !5953)
!5956 = !DILocation(line: 331, column: 7, scope: !5656)
!5957 = !DILocation(line: 332, column: 23, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5953, file: !2, line: 331, column: 38)
!5959 = !DILocation(line: 332, column: 30, scope: !5958)
!5960 = !DILocation(line: 332, column: 44, scope: !5958)
!5961 = !DILocation(line: 332, column: 41, scope: !5958)
!5962 = !DILocation(line: 333, column: 19, scope: !5958)
!5963 = !DILocation(line: 333, column: 8, scope: !5958)
!5964 = !DILocation(line: 332, column: 4, scope: !5958)
!5965 = !DILocation(line: 334, column: 8, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5958, file: !2, line: 334, column: 8)
!5967 = !DILocation(line: 334, column: 19, scope: !5966)
!5968 = !DILocation(line: 334, column: 8, scope: !5958)
!5969 = !DILocation(line: 335, column: 26, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5971, file: !2, line: 335, column: 9)
!5971 = distinct !DILexicalBlock(scope: !5966, file: !2, line: 334, column: 25)
!5972 = !DILocation(line: 335, column: 33, scope: !5970)
!5973 = !DILocation(line: 335, column: 40, scope: !5970)
!5974 = !DILocation(line: 335, column: 9, scope: !5970)
!5975 = !DILocation(line: 335, column: 47, scope: !5970)
!5976 = !DILocation(line: 336, column: 32, scope: !5970)
!5977 = !DILocation(line: 336, column: 10, scope: !5970)
!5978 = !DILocation(line: 335, column: 9, scope: !5971)
!5979 = !DILocation(line: 337, column: 6, scope: !5970)
!5980 = !DILocation(line: 338, column: 25, scope: !5971)
!5981 = !DILocation(line: 338, column: 5, scope: !5971)
!5982 = !DILocation(line: 339, column: 18, scope: !5971)
!5983 = !DILocation(line: 339, column: 5, scope: !5971)
!5984 = !DILocation(line: 340, column: 5, scope: !5971)
!5985 = !DILocation(line: 342, column: 3, scope: !5958)
!5986 = !DILocation(line: 342, column: 14, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5953, file: !2, line: 342, column: 14)
!5988 = !DILocation(line: 342, column: 14, scope: !5953)
!5989 = !DILocation(line: 343, column: 27, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5987, file: !2, line: 342, column: 28)
!5991 = !DILocation(line: 343, column: 4, scope: !5990)
!5992 = !DILocation(line: 344, column: 3, scope: !5990)
!5993 = !DILocation(line: 350, column: 7, scope: !5672)
!5994 = !DILocation(line: 350, column: 11, scope: !5672)
!5995 = !DILocation(line: 350, column: 15, scope: !5672)
!5996 = !DILocation(line: 350, column: 36, scope: !5672)
!5997 = !DILocation(line: 350, column: 46, scope: !5672)
!5998 = !DILocation(line: 350, column: 33, scope: !5672)
!5999 = !DILocation(line: 350, column: 50, scope: !5672)
!6000 = !DILocation(line: 351, column: 31, scope: !5672)
!6001 = !DILocation(line: 351, column: 36, scope: !5672)
!6002 = !DILocation(line: 351, column: 43, scope: !5672)
!6003 = !DILocation(line: 351, column: 9, scope: !5672)
!6004 = !DILocation(line: 350, column: 7, scope: !5656)
!6005 = !DILocation(line: 351, column: 57, scope: !5672)
!6006 = !DILocation(line: 352, column: 3, scope: !5671)
!6007 = !DILocation(line: 353, column: 15, scope: !5671)
!6008 = !DILocation(line: 353, column: 4, scope: !5671)
!6009 = !DILocation(line: 354, column: 8, scope: !5671)
!6010 = !DILocation(line: 355, column: 3, scope: !5671)
!6011 = !DILocation(line: 356, column: 7, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !5656, file: !2, line: 356, column: 7)
!6013 = !DILocation(line: 356, column: 11, scope: !6012)
!6014 = !DILocation(line: 356, column: 7, scope: !5656)
!6015 = !DILocation(line: 361, column: 20, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !6012, file: !2, line: 356, column: 20)
!6017 = !DILocation(line: 361, column: 39, scope: !6016)
!6018 = !DILocation(line: 361, column: 26, scope: !6016)
!6019 = !DILocation(line: 361, column: 10, scope: !6016)
!6020 = !DILocation(line: 361, column: 8, scope: !6016)
!6021 = !DILocation(line: 363, column: 30, scope: !6016)
!6022 = !DILocation(line: 363, column: 35, scope: !6016)
!6023 = !DILocation(line: 363, column: 42, scope: !6016)
!6024 = !DILocation(line: 363, column: 4, scope: !6016)
!6025 = !DILocation(line: 365, column: 31, scope: !6016)
!6026 = !DILocation(line: 365, column: 36, scope: !6016)
!6027 = !DILocation(line: 365, column: 43, scope: !6016)
!6028 = !DILocation(line: 365, column: 50, scope: !6016)
!6029 = !DILocation(line: 365, column: 4, scope: !6016)
!6030 = !DILocation(line: 366, column: 29, scope: !6016)
!6031 = !DILocation(line: 366, column: 43, scope: !6016)
!6032 = !DILocation(line: 366, column: 51, scope: !6016)
!6033 = !DILocation(line: 366, column: 39, scope: !6016)
!6034 = !DILocation(line: 366, column: 4, scope: !6016)
!6035 = !DILocation(line: 366, column: 9, scope: !6016)
!6036 = !DILocation(line: 366, column: 17, scope: !6016)
!6037 = !DILocation(line: 366, column: 27, scope: !6016)
!6038 = !DILocation(line: 367, column: 4, scope: !6016)
!6039 = !DILocation(line: 367, column: 9, scope: !6016)
!6040 = !DILocation(line: 367, column: 19, scope: !6016)
!6041 = !DILocation(line: 368, column: 8, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6016, file: !2, line: 368, column: 8)
!6043 = !DILocation(line: 368, column: 8, scope: !6016)
!6044 = !DILocation(line: 369, column: 5, scope: !6042)
!6045 = !DILocation(line: 369, column: 10, scope: !6042)
!6046 = !DILocation(line: 369, column: 17, scope: !6042)
!6047 = !DILocation(line: 370, column: 3, scope: !6016)
!6048 = !DILocation(line: 372, column: 12, scope: !5656)
!6049 = !DILocation(line: 372, column: 26, scope: !5656)
!6050 = !DILocation(line: 372, column: 23, scope: !5656)
!6051 = !DILocation(line: 372, column: 10, scope: !5656)
!6052 = !DILocation(line: 373, column: 22, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !5656, file: !2, line: 373, column: 7)
!6054 = !DILocation(line: 373, column: 27, scope: !6053)
!6055 = !DILocation(line: 373, column: 34, scope: !6053)
!6056 = !DILocation(line: 373, column: 8, scope: !6053)
!6057 = !DILocation(line: 373, column: 7, scope: !5656)
!6058 = !DILocation(line: 374, column: 4, scope: !6053)
!6059 = !DILocation(line: 376, column: 13, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !5656, file: !2, line: 376, column: 7)
!6061 = !DILocation(line: 376, column: 9, scope: !6060)
!6062 = !DILocation(line: 376, column: 21, scope: !6060)
!6063 = !DILocation(line: 376, column: 42, scope: !6060)
!6064 = !DILocation(line: 377, column: 9, scope: !6060)
!6065 = !DILocation(line: 377, column: 31, scope: !6060)
!6066 = !DILocation(line: 377, column: 24, scope: !6060)
!6067 = !DILocation(line: 377, column: 39, scope: !6060)
!6068 = !DILocation(line: 378, column: 8, scope: !6060)
!6069 = !DILocation(line: 378, column: 22, scope: !6060)
!6070 = !DILocation(line: 378, column: 19, scope: !6060)
!6071 = !DILocation(line: 376, column: 7, scope: !5656)
!6072 = !DILocation(line: 379, column: 15, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6060, file: !2, line: 378, column: 40)
!6074 = !DILocation(line: 379, column: 4, scope: !6073)
!6075 = !DILocation(line: 380, column: 8, scope: !6073)
!6076 = !DILocation(line: 381, column: 3, scope: !6073)
!6077 = !DILocation(line: 382, column: 31, scope: !6060)
!6078 = !DILocation(line: 382, column: 47, scope: !6060)
!6079 = !DILocation(line: 382, column: 24, scope: !6060)
!6080 = !DILocation(line: 382, column: 22, scope: !6060)
!6081 = !DILocation(line: 383, column: 3, scope: !5656)
!6082 = !DILocation(line: 384, column: 2, scope: !5656)
!6083 = !DILocation(line: 385, column: 7, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !5656, file: !2, line: 385, column: 7)
!6085 = !DILocation(line: 385, column: 7, scope: !5656)
!6086 = !DILocation(line: 386, column: 15, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6084, file: !2, line: 385, column: 12)
!6088 = !DILocation(line: 386, column: 4, scope: !6087)
!6089 = !DILocation(line: 387, column: 8, scope: !6087)
!6090 = !DILocation(line: 388, column: 3, scope: !6087)
!6091 = !DILocation(line: 389, column: 28, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !5656, file: !2, line: 389, column: 7)
!6093 = !DILocation(line: 389, column: 8, scope: !6092)
!6094 = !DILocation(line: 389, column: 7, scope: !5656)
!6095 = !DILocation(line: 390, column: 26, scope: !6092)
!6096 = !DILocation(line: 390, column: 4, scope: !6092)
!6097 = !DILocation(line: 392, column: 17, scope: !6092)
!6098 = !DILocation(line: 392, column: 4, scope: !6092)
!6099 = !DILocation(line: 389, column: 33, scope: !6092)
!6100 = !DILocation(line: 393, column: 1, scope: !5656)
!6101 = !DILocation(line: 395, column: 2, scope: !5657)
!6102 = !DILocation(line: 395, column: 2, scope: !5656)
!6103 = !DILocation(line: 244, column: 27, scope: !5657)
!6104 = !DILocation(line: 244, column: 2, scope: !5657)
!6105 = distinct !{!6105, !5733, !6106, !5900, !5846}
!6106 = !DILocation(line: 395, column: 2, scope: !5658)
!6107 = !DILocation(line: 396, column: 6, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !5622, file: !2, line: 396, column: 6)
!6109 = !DILocation(line: 396, column: 6, scope: !5622)
!6110 = !DILocation(line: 397, column: 14, scope: !6108)
!6111 = !DILocation(line: 397, column: 3, scope: !6108)
!6112 = !DILocation(line: 399, column: 1, scope: !5622)
!6113 = !DILocation(line: 398, column: 2, scope: !5622)
!6114 = distinct !DISubprogram(name: "readahead_count", scope: !1017, file: !1017, line: 1478, type: !6115, scopeLine: 1479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6117)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!13, !4942}
!6117 = !{!6118}
!6118 = !DILocalVariable(name: "rac", arg: 1, scope: !6114, file: !1017, line: 1478, type: !4942)
!6119 = !DILocation(line: 1478, column: 70, scope: !6114)
!6120 = !DILocation(line: 1480, column: 9, scope: !6114)
!6121 = !DILocation(line: 1480, column: 14, scope: !6114)
!6122 = !DILocation(line: 1480, column: 2, scope: !6114)
!6123 = distinct !DISubprogram(name: "readahead_folio", scope: !1017, file: !1017, line: 1395, type: !6124, scopeLine: 1396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6126)
!6124 = !DISubroutineType(types: !6125)
!6125 = !{!1020, !4942}
!6126 = !{!6127, !6128}
!6127 = !DILocalVariable(name: "ractl", arg: 1, scope: !6123, file: !1017, line: 1395, type: !4942)
!6128 = !DILocalVariable(name: "folio", scope: !6123, file: !1017, line: 1397, type: !1020)
!6129 = !DILocation(line: 1395, column: 71, scope: !6123)
!6130 = !DILocation(line: 1397, column: 2, scope: !6123)
!6131 = !DILocation(line: 1397, column: 16, scope: !6123)
!6132 = !DILocation(line: 1397, column: 42, scope: !6123)
!6133 = !DILocation(line: 1397, column: 24, scope: !6123)
!6134 = !DILocation(line: 1399, column: 6, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6123, file: !1017, line: 1399, column: 6)
!6136 = !DILocation(line: 1399, column: 6, scope: !6123)
!6137 = !DILocation(line: 1400, column: 13, scope: !6135)
!6138 = !DILocation(line: 1400, column: 3, scope: !6135)
!6139 = !DILocation(line: 1401, column: 9, scope: !6123)
!6140 = !DILocation(line: 1402, column: 1, scope: !6123)
!6141 = !DILocation(line: 1401, column: 2, scope: !6123)
!6142 = distinct !DISubprogram(name: "prefetchw", scope: !4345, file: !4345, line: 637, type: !6143, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6145)
!6143 = !DISubroutineType(types: !6144)
!6144 = !{null, !1343}
!6145 = !{!6146}
!6146 = !DILocalVariable(name: "x", arg: 1, scope: !6142, file: !4345, line: 637, type: !1343)
!6147 = !DILocation(line: 637, column: 51, scope: !6142)
!6148 = !DILocation(line: 639, column: 2, scope: !6142)
!6149 = !{i64 2149641143, i64 2149641171, i64 2149641177, i64 2149641193, i64 2149641209, i64 2149641236, i64 2149641564, i64 2149640886, i64 2149641570, i64 2149641618, i64 2149641682, i64 2149641746, i64 2149641803, i64 2149640967, i64 2149640992, i64 2149642010, i64 2149642139, i64 2149642071, i64 2149642153, i64 2149641084}
!6150 = !DILocation(line: 642, column: 1, scope: !6142)
!6151 = distinct !DISubprogram(name: "folio_get_private", scope: !36, file: !36, line: 522, type: !6152, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6154)
!6152 = !DISubroutineType(types: !6153)
!6153 = !{!307, !1020}
!6154 = !{!6155}
!6155 = !DILocalVariable(name: "folio", arg: 1, scope: !6151, file: !36, line: 522, type: !1020)
!6156 = !DILocation(line: 522, column: 53, scope: !6151)
!6157 = !DILocation(line: 524, column: 9, scope: !6151)
!6158 = !DILocation(line: 524, column: 16, scope: !6151)
!6159 = !DILocation(line: 524, column: 2, scope: !6151)
!6160 = distinct !DISubprogram(name: "ext4_readpage_limit", scope: !2, file: !2, line: 210, type: !6161, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6163)
!6161 = !DISubroutineType(types: !6162)
!6162 = !{!490, !316}
!6163 = !{!6164}
!6164 = !DILocalVariable(name: "inode", arg: 1, scope: !6160, file: !2, line: 210, type: !316)
!6165 = !DILocation(line: 210, column: 56, scope: !6160)
!6166 = !DILocation(line: 215, column: 21, scope: !6160)
!6167 = !DILocation(line: 215, column: 9, scope: !6160)
!6168 = !DILocation(line: 215, column: 2, scope: !6160)
!6169 = !DISubprogram(name: "ext4_map_blocks", scope: !5646, file: !5646, line: 3685, type: !6170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6170 = !DISubroutineType(types: !6171)
!6171 = !{!113, !6172, !316, !6196, !113}
!6172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6173, size: 64)
!6173 = !DIDerivedType(tag: DW_TAG_typedef, name: "handle_t", file: !200, line: 91, baseType: !6174)
!6174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_journal_handle", file: !200, line: 477, size: 448, elements: !6175)
!6175 = !{!6176, !6181, !6182, !6183, !6184, !6185, !6186, !6187, !6188, !6189, !6190, !6191, !6192, !6193, !6194, !6195}
!6176 = !DIDerivedType(tag: DW_TAG_member, scope: !6174, file: !200, line: 479, baseType: !6177, size: 64)
!6177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6174, file: !200, line: 479, size: 64, elements: !6178)
!6178 = !{!6179, !6180}
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "h_transaction", scope: !6177, file: !200, line: 480, baseType: !5164, size: 64)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "h_journal", scope: !6177, file: !200, line: 482, baseType: !209, size: 64)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "h_rsv_handle", scope: !6174, file: !200, line: 485, baseType: !6172, size: 64, offset: 64)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "h_total_credits", scope: !6174, file: !200, line: 486, baseType: !113, size: 32, offset: 128)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "h_revoke_credits", scope: !6174, file: !200, line: 487, baseType: !113, size: 32, offset: 160)
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "h_revoke_credits_requested", scope: !6174, file: !200, line: 488, baseType: !113, size: 32, offset: 192)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "h_ref", scope: !6174, file: !200, line: 489, baseType: !113, size: 32, offset: 224)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "h_err", scope: !6174, file: !200, line: 490, baseType: !113, size: 32, offset: 256)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "h_sync", scope: !6174, file: !200, line: 493, baseType: !13, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "h_jdata", scope: !6174, file: !200, line: 494, baseType: !13, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "h_reserved", scope: !6174, file: !200, line: 495, baseType: !13, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "h_aborted", scope: !6174, file: !200, line: 496, baseType: !13, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "h_type", scope: !6174, file: !200, line: 497, baseType: !13, size: 8, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "h_line_no", scope: !6174, file: !200, line: 498, baseType: !13, size: 16, offset: 300, flags: DIFlagBitField, extraData: i64 288)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "h_start_jiffies", scope: !6174, file: !200, line: 500, baseType: !214, size: 64, offset: 320)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "h_requested_credits", scope: !6174, file: !200, line: 501, baseType: !13, size: 32, offset: 384)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "saved_alloc_context", scope: !6174, file: !200, line: 503, baseType: !13, size: 32, offset: 416)
!6196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5645, size: 64)
!6197 = distinct !DISubprogram(name: "folio_zero_segment", scope: !5594, file: !5594, line: 536, type: !4969, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6198)
!6198 = !{!6199, !6200, !6201}
!6199 = !DILocalVariable(name: "folio", arg: 1, scope: !6197, file: !5594, line: 536, type: !1020)
!6200 = !DILocalVariable(name: "start", arg: 2, scope: !6197, file: !5594, line: 537, type: !615)
!6201 = !DILocalVariable(name: "xend", arg: 3, scope: !6197, file: !5594, line: 537, type: !615)
!6202 = !DILocation(line: 536, column: 53, scope: !6197)
!6203 = !DILocation(line: 537, column: 10, scope: !6197)
!6204 = !DILocation(line: 537, column: 24, scope: !6197)
!6205 = !DILocation(line: 539, column: 22, scope: !6197)
!6206 = !DILocation(line: 539, column: 29, scope: !6197)
!6207 = !DILocation(line: 539, column: 35, scope: !6197)
!6208 = !DILocation(line: 539, column: 42, scope: !6197)
!6209 = !DILocation(line: 539, column: 2, scope: !6197)
!6210 = !DILocation(line: 540, column: 1, scope: !6197)
!6211 = distinct !DISubprogram(name: "folio_size", scope: !1428, file: !1428, line: 2125, type: !6212, scopeLine: 2126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6214)
!6212 = !DISubroutineType(types: !6213)
!6213 = !{!615, !1020}
!6214 = !{!6215}
!6215 = !DILocalVariable(name: "folio", arg: 1, scope: !6211, file: !1428, line: 2125, type: !1020)
!6216 = !DILocation(line: 2125, column: 47, scope: !6211)
!6217 = !DILocation(line: 2127, column: 34, scope: !6211)
!6218 = !DILocation(line: 2127, column: 22, scope: !6211)
!6219 = !DILocation(line: 2127, column: 19, scope: !6211)
!6220 = !DILocation(line: 2127, column: 2, scope: !6211)
!6221 = !DISubprogram(name: "folio_unlock", scope: !1017, file: !1017, line: 1021, type: !4977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6222 = distinct !DISubprogram(name: "ext4_need_verity", scope: !2, file: !2, line: 181, type: !6223, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6225)
!6223 = !DISubroutineType(types: !6224)
!6224 = !{!858, !4645, !214}
!6225 = !{!6226, !6227}
!6226 = !DILocalVariable(name: "inode", arg: 1, scope: !6222, file: !2, line: 181, type: !4645)
!6227 = !DILocalVariable(name: "idx", arg: 2, scope: !6222, file: !2, line: 181, type: !214)
!6228 = !DILocation(line: 181, column: 57, scope: !6222)
!6229 = !DILocation(line: 181, column: 72, scope: !6222)
!6230 = !DILocation(line: 183, column: 25, scope: !6222)
!6231 = !DILocation(line: 183, column: 9, scope: !6222)
!6232 = !DILocation(line: 183, column: 32, scope: !6222)
!6233 = !DILocation(line: 184, column: 9, scope: !6222)
!6234 = !DILocation(line: 184, column: 15, scope: !6222)
!6235 = !DILocation(line: 184, column: 13, scope: !6222)
!6236 = !DILocation(line: 0, scope: !6222)
!6237 = !DILocation(line: 183, column: 2, scope: !6222)
!6238 = distinct !DISubprogram(name: "fsverity_verify_folio", scope: !5597, file: !5597, line: 256, type: !6239, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6241)
!6239 = !DISubroutineType(types: !6240)
!6240 = !{!858, !1020}
!6241 = !{!6242}
!6242 = !DILocalVariable(name: "folio", arg: 1, scope: !6238, file: !5597, line: 256, type: !1020)
!6243 = !DILocation(line: 256, column: 56, scope: !6238)
!6244 = !DILocation(line: 258, column: 32, scope: !6238)
!6245 = !DILocation(line: 258, column: 50, scope: !6238)
!6246 = !DILocation(line: 258, column: 39, scope: !6238)
!6247 = !DILocation(line: 258, column: 9, scope: !6238)
!6248 = !DILocation(line: 258, column: 2, scope: !6238)
!6249 = distinct !DISubprogram(name: "folio_mark_uptodate", scope: !5471, file: !5471, line: 753, type: !4977, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6250)
!6250 = !{!6251}
!6251 = !DILocalVariable(name: "folio", arg: 1, scope: !6249, file: !5471, line: 753, type: !1020)
!6252 = !DILocation(line: 753, column: 63, scope: !6249)
!6253 = !DILocation(line: 760, column: 2, scope: !6249)
!6254 = !DILocation(line: 760, column: 2, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6249, file: !5471, line: 760, column: 2)
!6256 = !DILocation(line: 760, column: 2, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6255, file: !5471, line: 760, column: 2)
!6258 = !{i64 2151079119}
!6259 = !DILocation(line: 761, column: 35, scope: !6249)
!6260 = !DILocation(line: 761, column: 23, scope: !6249)
!6261 = !DILocation(line: 761, column: 2, scope: !6249)
!6262 = !DILocation(line: 762, column: 1, scope: !6249)
!6263 = distinct !DISubprogram(name: "folio_set_mappedtodisk", scope: !5471, file: !5471, line: 535, type: !4977, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6264)
!6264 = !{!6265}
!6265 = !DILocalVariable(name: "folio", arg: 1, scope: !6263, file: !5471, line: 535, type: !1020)
!6266 = !DILocation(line: 535, column: 1, scope: !6263)
!6267 = distinct !DISubprogram(name: "fscrypt_mergeable_bio", scope: !6268, file: !6268, line: 805, type: !6269, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6271)
!6268 = !DIFile(filename: "./include/linux/fscrypt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65ccc03ddf43dd4b78f86896df8d37b6")
!6269 = !DISubroutineType(types: !6270)
!6270 = !{!858, !2499, !4645, !391}
!6271 = !{!6272, !6273, !6274}
!6272 = !DILocalVariable(name: "bio", arg: 1, scope: !6267, file: !6268, line: 805, type: !2499)
!6273 = !DILocalVariable(name: "inode", arg: 2, scope: !6267, file: !6268, line: 806, type: !4645)
!6274 = !DILocalVariable(name: "next_lblk", arg: 3, scope: !6267, file: !6268, line: 807, type: !391)
!6275 = !DILocation(line: 805, column: 54, scope: !6267)
!6276 = !DILocation(line: 806, column: 27, scope: !6267)
!6277 = !DILocation(line: 807, column: 11, scope: !6267)
!6278 = !DILocation(line: 809, column: 2, scope: !6267)
!6279 = !DISubprogram(name: "submit_bio", scope: !2542, file: !2542, line: 438, type: !2497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6280 = distinct !DISubprogram(name: "bio_alloc", scope: !2542, file: !2542, line: 432, type: !6281, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6283)
!6281 = !DISubroutineType(types: !6282)
!6282 = !{!2499, !2470, !266, !2505, !1159}
!6283 = !{!6284, !6285, !6286, !6287}
!6284 = !DILocalVariable(name: "bdev", arg: 1, scope: !6280, file: !2542, line: 432, type: !2470)
!6285 = !DILocalVariable(name: "nr_vecs", arg: 2, scope: !6280, file: !2542, line: 433, type: !266)
!6286 = !DILocalVariable(name: "opf", arg: 3, scope: !6280, file: !2542, line: 433, type: !2505)
!6287 = !DILocalVariable(name: "gfp_mask", arg: 4, scope: !6280, file: !2542, line: 433, type: !1159)
!6288 = !DILocation(line: 432, column: 58, scope: !6280)
!6289 = !DILocation(line: 433, column: 18, scope: !6280)
!6290 = !DILocation(line: 433, column: 37, scope: !6280)
!6291 = !DILocation(line: 433, column: 48, scope: !6280)
!6292 = !DILocation(line: 435, column: 26, scope: !6280)
!6293 = !DILocation(line: 435, column: 32, scope: !6280)
!6294 = !DILocation(line: 435, column: 41, scope: !6280)
!6295 = !DILocation(line: 435, column: 46, scope: !6280)
!6296 = !DILocation(line: 435, column: 9, scope: !6280)
!6297 = !DILocation(line: 435, column: 2, scope: !6280)
!6298 = distinct !DISubprogram(name: "bio_max_segs", scope: !2542, file: !2542, line: 17, type: !6299, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6301)
!6299 = !DISubroutineType(types: !6300)
!6300 = !{!13, !13}
!6301 = !{!6302, !6303, !6305}
!6302 = !DILocalVariable(name: "nr_segs", arg: 1, scope: !6298, file: !2542, line: 17, type: !13)
!6303 = !DILocalVariable(name: "__UNIQUE_ID___x317", scope: !6304, file: !2542, line: 19, type: !13)
!6304 = distinct !DILexicalBlock(scope: !6298, file: !2542, line: 19, column: 9)
!6305 = !DILocalVariable(name: "__UNIQUE_ID___y318", scope: !6304, file: !2542, line: 19, type: !13)
!6306 = !DILocation(line: 17, column: 54, scope: !6298)
!6307 = !DILocation(line: 19, column: 9, scope: !6304)
!6308 = !DILocation(line: 19, column: 9, scope: !6298)
!6309 = !DILocation(line: 19, column: 2, scope: !6298)
!6310 = distinct !DISubprogram(name: "fscrypt_set_bio_crypt_ctx", scope: !6268, file: !6268, line: 796, type: !6311, scopeLine: 798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6313)
!6311 = !DISubroutineType(types: !6312)
!6312 = !{null, !2499, !4645, !391, !1159}
!6313 = !{!6314, !6315, !6316, !6317}
!6314 = !DILocalVariable(name: "bio", arg: 1, scope: !6310, file: !6268, line: 796, type: !2499)
!6315 = !DILocalVariable(name: "inode", arg: 2, scope: !6310, file: !6268, line: 797, type: !4645)
!6316 = !DILocalVariable(name: "first_lblk", arg: 3, scope: !6310, file: !6268, line: 798, type: !391)
!6317 = !DILocalVariable(name: "gfp_mask", arg: 4, scope: !6310, file: !6268, line: 798, type: !1159)
!6318 = !DILocation(line: 796, column: 58, scope: !6310)
!6319 = !DILocation(line: 797, column: 31, scope: !6310)
!6320 = !DILocation(line: 798, column: 15, scope: !6310)
!6321 = !DILocation(line: 798, column: 33, scope: !6310)
!6322 = !DILocation(line: 798, column: 45, scope: !6310)
!6323 = distinct !DISubprogram(name: "ext4_set_bio_post_read_ctx", scope: !2, file: !2, line: 187, type: !6324, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6326)
!6324 = !DISubroutineType(types: !6325)
!6325 = !{null, !2499, !4645, !214}
!6326 = !{!6327, !6328, !6329, !6330, !6331}
!6327 = !DILocalVariable(name: "bio", arg: 1, scope: !6323, file: !2, line: 187, type: !2499)
!6328 = !DILocalVariable(name: "inode", arg: 2, scope: !6323, file: !2, line: 188, type: !4645)
!6329 = !DILocalVariable(name: "first_idx", arg: 3, scope: !6323, file: !2, line: 189, type: !214)
!6330 = !DILocalVariable(name: "post_read_steps", scope: !6323, file: !2, line: 191, type: !13)
!6331 = !DILocalVariable(name: "ctx", scope: !6332, file: !2, line: 201, type: !5573)
!6332 = distinct !DILexicalBlock(scope: !6333, file: !2, line: 199, column: 23)
!6333 = distinct !DILexicalBlock(scope: !6323, file: !2, line: 199, column: 6)
!6334 = !DILocation(line: 187, column: 52, scope: !6323)
!6335 = !DILocation(line: 188, column: 32, scope: !6323)
!6336 = !DILocation(line: 189, column: 20, scope: !6323)
!6337 = !DILocation(line: 191, column: 2, scope: !6323)
!6338 = !DILocation(line: 191, column: 15, scope: !6323)
!6339 = !DILocation(line: 193, column: 41, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6323, file: !2, line: 193, column: 6)
!6341 = !DILocation(line: 193, column: 6, scope: !6340)
!6342 = !DILocation(line: 193, column: 6, scope: !6323)
!6343 = !DILocation(line: 194, column: 19, scope: !6340)
!6344 = !DILocation(line: 194, column: 3, scope: !6340)
!6345 = !DILocation(line: 196, column: 23, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6323, file: !2, line: 196, column: 6)
!6347 = !DILocation(line: 196, column: 30, scope: !6346)
!6348 = !DILocation(line: 196, column: 6, scope: !6346)
!6349 = !DILocation(line: 196, column: 6, scope: !6323)
!6350 = !DILocation(line: 197, column: 19, scope: !6346)
!6351 = !DILocation(line: 197, column: 3, scope: !6346)
!6352 = !DILocation(line: 199, column: 6, scope: !6333)
!6353 = !DILocation(line: 199, column: 6, scope: !6323)
!6354 = !DILocation(line: 201, column: 3, scope: !6332)
!6355 = !DILocation(line: 201, column: 29, scope: !6332)
!6356 = !DILocation(line: 202, column: 18, scope: !6332)
!6357 = !DILocation(line: 202, column: 4, scope: !6332)
!6358 = !DILocation(line: 204, column: 14, scope: !6332)
!6359 = !DILocation(line: 204, column: 3, scope: !6332)
!6360 = !DILocation(line: 204, column: 8, scope: !6332)
!6361 = !DILocation(line: 204, column: 12, scope: !6332)
!6362 = !DILocation(line: 205, column: 24, scope: !6332)
!6363 = !DILocation(line: 205, column: 3, scope: !6332)
!6364 = !DILocation(line: 205, column: 8, scope: !6332)
!6365 = !DILocation(line: 205, column: 22, scope: !6332)
!6366 = !DILocation(line: 206, column: 21, scope: !6332)
!6367 = !DILocation(line: 206, column: 3, scope: !6332)
!6368 = !DILocation(line: 206, column: 8, scope: !6332)
!6369 = !DILocation(line: 206, column: 19, scope: !6332)
!6370 = !DILocation(line: 207, column: 2, scope: !6333)
!6371 = !DILocation(line: 207, column: 2, scope: !6332)
!6372 = !DILocation(line: 208, column: 1, scope: !6323)
!6373 = distinct !DISubprogram(name: "mpage_end_io", scope: !2, file: !2, line: 169, type: !2497, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6374)
!6374 = !{!6375, !6376}
!6375 = !DILocalVariable(name: "bio", arg: 1, scope: !6373, file: !2, line: 169, type: !2499)
!6376 = !DILocalVariable(name: "ctx", scope: !6377, file: !2, line: 172, type: !5573)
!6377 = distinct !DILexicalBlock(scope: !6378, file: !2, line: 171, column: 35)
!6378 = distinct !DILexicalBlock(scope: !6373, file: !2, line: 171, column: 6)
!6379 = !DILocation(line: 169, column: 38, scope: !6373)
!6380 = !DILocation(line: 171, column: 29, scope: !6378)
!6381 = !DILocation(line: 171, column: 6, scope: !6378)
!6382 = !DILocation(line: 171, column: 6, scope: !6373)
!6383 = !DILocation(line: 172, column: 3, scope: !6377)
!6384 = !DILocation(line: 172, column: 29, scope: !6377)
!6385 = !DILocation(line: 172, column: 35, scope: !6377)
!6386 = !DILocation(line: 172, column: 40, scope: !6377)
!6387 = !DILocation(line: 174, column: 3, scope: !6377)
!6388 = !DILocation(line: 174, column: 8, scope: !6377)
!6389 = !DILocation(line: 174, column: 17, scope: !6377)
!6390 = !DILocation(line: 175, column: 28, scope: !6377)
!6391 = !DILocation(line: 175, column: 3, scope: !6377)
!6392 = !DILocation(line: 177, column: 2, scope: !6378)
!6393 = !DILocation(line: 178, column: 16, scope: !6373)
!6394 = !DILocation(line: 178, column: 2, scope: !6373)
!6395 = !DILocation(line: 179, column: 1, scope: !6373)
!6396 = !DISubprogram(name: "bio_add_folio", scope: !2542, file: !2542, line: 478, type: !6397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6397 = !DISubroutineType(types: !6398)
!6398 = !{!858, !2499, !1020, !615, !615}
!6399 = distinct !DISubprogram(name: "folio_test_uptodate", scope: !5471, file: !5471, line: 725, type: !6239, scopeLine: 726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6400)
!6400 = !{!6401, !6402}
!6401 = !DILocalVariable(name: "folio", arg: 1, scope: !6399, file: !5471, line: 725, type: !1020)
!6402 = !DILocalVariable(name: "ret", scope: !6399, file: !5471, line: 727, type: !858)
!6403 = !DILocation(line: 725, column: 54, scope: !6399)
!6404 = !DILocation(line: 727, column: 2, scope: !6399)
!6405 = !DILocation(line: 727, column: 7, scope: !6399)
!6406 = !DILocation(line: 727, column: 13, scope: !6399)
!6407 = !DILocation(line: 736, column: 6, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6399, file: !5471, line: 736, column: 6)
!6409 = !{i8 0, i8 2}
!6410 = !DILocation(line: 736, column: 6, scope: !6399)
!6411 = !DILocation(line: 737, column: 3, scope: !6408)
!6412 = !DILocation(line: 737, column: 3, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6408, file: !5471, line: 737, column: 3)
!6414 = !DILocation(line: 737, column: 3, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6413, file: !5471, line: 737, column: 3)
!6416 = !DILocation(line: 737, column: 3, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6413, file: !5471, line: 737, column: 3)
!6418 = !DILocation(line: 737, column: 3, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6417, file: !5471, line: 737, column: 3)
!6420 = !{i64 2151077634}
!6421 = !DILocation(line: 739, column: 9, scope: !6399)
!6422 = !DILocation(line: 740, column: 1, scope: !6399)
!6423 = !DILocation(line: 739, column: 2, scope: !6399)
!6424 = !DISubprogram(name: "block_read_full_folio", scope: !180, file: !180, line: 262, type: !6425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6425 = !DISubroutineType(types: !6426)
!6426 = !{!113, !1020, !6427}
!6427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6428, size: 64)
!6428 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_block_t", file: !70, line: 90, baseType: !6429)
!6429 = !DISubroutineType(types: !6430)
!6430 = !{!113, !316, !2475, !280, !113}
!6431 = distinct !DISubprogram(name: "ext4_init_post_read_processing", scope: !2, file: !2, line: 401, type: !1922, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6432)
!6432 = !{!6433, !6434}
!6433 = !DILabel(scope: !6431, name: "fail_free_cache", file: !2, line: 414)
!6434 = !DILabel(scope: !6431, name: "fail", file: !2, line: 416)
!6435 = !DILocation(line: 403, column: 28, scope: !6431)
!6436 = !DILocation(line: 403, column: 26, scope: !6431)
!6437 = !DILocation(line: 405, column: 7, scope: !6438)
!6438 = distinct !DILexicalBlock(scope: !6431, file: !2, line: 405, column: 6)
!6439 = !DILocation(line: 405, column: 6, scope: !6431)
!6440 = !DILocation(line: 406, column: 3, scope: !6438)
!6441 = !DILocation(line: 409, column: 7, scope: !6431)
!6442 = !DILocation(line: 408, column: 3, scope: !6431)
!6443 = !DILocation(line: 407, column: 25, scope: !6431)
!6444 = !DILocation(line: 410, column: 7, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6431, file: !2, line: 410, column: 6)
!6446 = !DILocation(line: 410, column: 6, scope: !6431)
!6447 = !DILocation(line: 411, column: 3, scope: !6445)
!6448 = !DILocation(line: 412, column: 2, scope: !6431)
!6449 = !DILocation(line: 414, column: 1, scope: !6431)
!6450 = !DILocation(line: 415, column: 21, scope: !6431)
!6451 = !DILocation(line: 415, column: 2, scope: !6431)
!6452 = !DILocation(line: 416, column: 1, scope: !6431)
!6453 = !DILocation(line: 417, column: 2, scope: !6431)
!6454 = !DILocation(line: 418, column: 1, scope: !6431)
!6455 = !DISubprogram(name: "kmem_cache_create", scope: !6456, file: !6456, line: 189, type: !6457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6456 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!6457 = !DISubroutineType(types: !6458)
!6458 = !{!2545, !444, !13, !13, !5563, !1667}
!6459 = distinct !DISubprogram(name: "mempool_create_slab_pool", scope: !2554, file: !2554, line: 72, type: !6460, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6462)
!6460 = !DISubroutineType(types: !6461)
!6461 = !{!5588, !113, !2545}
!6462 = !{!6463, !6464}
!6463 = !DILocalVariable(name: "min_nr", arg: 1, scope: !6459, file: !2554, line: 72, type: !113)
!6464 = !DILocalVariable(name: "kc", arg: 2, scope: !6459, file: !2554, line: 72, type: !2545)
!6465 = !DILocation(line: 72, column: 30, scope: !6459)
!6466 = !DILocation(line: 72, column: 57, scope: !6459)
!6467 = !DILocation(line: 74, column: 24, scope: !6459)
!6468 = !DILocation(line: 75, column: 19, scope: !6459)
!6469 = !DILocation(line: 74, column: 9, scope: !6459)
!6470 = !DILocation(line: 74, column: 2, scope: !6459)
!6471 = !DISubprogram(name: "kmem_cache_destroy", scope: !6456, file: !6456, line: 197, type: !6472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6472 = !DISubroutineType(types: !6473)
!6473 = !{null, !2545}
!6474 = distinct !DISubprogram(name: "ext4_exit_post_read_processing", scope: !2, file: !2, line: 420, type: !2155, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6475 = !DILocation(line: 422, column: 18, scope: !6474)
!6476 = !DILocation(line: 422, column: 2, scope: !6474)
!6477 = !DILocation(line: 423, column: 21, scope: !6474)
!6478 = !DILocation(line: 423, column: 2, scope: !6474)
!6479 = !DILocation(line: 424, column: 1, scope: !6474)
!6480 = !DISubprogram(name: "mempool_destroy", scope: !2554, file: !2554, line: 52, type: !6481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6481 = !DISubroutineType(types: !6482)
!6482 = !{null, !5588}
!6483 = distinct !DISubprogram(name: "__readahead_folio", scope: !1017, file: !1017, line: 1351, type: !6124, scopeLine: 1352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6484)
!6484 = !{!6485, !6486}
!6485 = !DILocalVariable(name: "ractl", arg: 1, scope: !6483, file: !1017, line: 1351, type: !4942)
!6486 = !DILocalVariable(name: "folio", scope: !6483, file: !1017, line: 1353, type: !1020)
!6487 = !DILocation(line: 1351, column: 73, scope: !6483)
!6488 = !DILocation(line: 1353, column: 2, scope: !6483)
!6489 = !DILocation(line: 1353, column: 16, scope: !6483)
!6490 = !DILocation(line: 1355, column: 2, scope: !6483)
!6491 = !DILocation(line: 1355, column: 2, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6493, file: !1017, line: 1355, column: 2)
!6493 = distinct !DILexicalBlock(scope: !6483, file: !1017, line: 1355, column: 2)
!6494 = !DILocation(line: 1355, column: 2, scope: !6493)
!6495 = !DILocation(line: 1355, column: 2, scope: !6496)
!6496 = distinct !DILexicalBlock(scope: !6492, file: !1017, line: 1355, column: 2)
!6497 = !DILocation(line: 1355, column: 2, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6496, file: !1017, line: 1355, column: 2)
!6499 = !DILocation(line: 1355, column: 2, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6496, file: !1017, line: 1355, column: 2)
!6501 = !{i64 2155180708, i64 2155180737, i64 2155180783, i64 2155180841, i64 2155180895, i64 2155180949, i64 2155181004, i64 2155181035}
!6502 = !DILocation(line: 1356, column: 22, scope: !6483)
!6503 = !DILocation(line: 1356, column: 29, scope: !6483)
!6504 = !DILocation(line: 1356, column: 2, scope: !6483)
!6505 = !DILocation(line: 1356, column: 9, scope: !6483)
!6506 = !DILocation(line: 1356, column: 19, scope: !6483)
!6507 = !DILocation(line: 1357, column: 19, scope: !6483)
!6508 = !DILocation(line: 1357, column: 26, scope: !6483)
!6509 = !DILocation(line: 1357, column: 2, scope: !6483)
!6510 = !DILocation(line: 1357, column: 9, scope: !6483)
!6511 = !DILocation(line: 1357, column: 16, scope: !6483)
!6512 = !DILocation(line: 1359, column: 7, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6483, file: !1017, line: 1359, column: 6)
!6514 = !DILocation(line: 1359, column: 14, scope: !6513)
!6515 = !DILocation(line: 1359, column: 6, scope: !6483)
!6516 = !DILocation(line: 1360, column: 3, scope: !6517)
!6517 = distinct !DILexicalBlock(scope: !6513, file: !1017, line: 1359, column: 25)
!6518 = !DILocation(line: 1360, column: 10, scope: !6517)
!6519 = !DILocation(line: 1360, column: 23, scope: !6517)
!6520 = !DILocation(line: 1361, column: 3, scope: !6517)
!6521 = !DILocation(line: 1364, column: 19, scope: !6483)
!6522 = !DILocation(line: 1364, column: 26, scope: !6483)
!6523 = !DILocation(line: 1364, column: 35, scope: !6483)
!6524 = !DILocation(line: 1364, column: 44, scope: !6483)
!6525 = !DILocation(line: 1364, column: 51, scope: !6483)
!6526 = !DILocation(line: 1364, column: 10, scope: !6483)
!6527 = !DILocation(line: 1364, column: 8, scope: !6483)
!6528 = !DILocation(line: 1366, column: 39, scope: !6483)
!6529 = !DILocation(line: 1366, column: 24, scope: !6483)
!6530 = !DILocation(line: 1366, column: 2, scope: !6483)
!6531 = !DILocation(line: 1366, column: 9, scope: !6483)
!6532 = !DILocation(line: 1366, column: 22, scope: !6483)
!6533 = !DILocation(line: 1368, column: 9, scope: !6483)
!6534 = !DILocation(line: 1368, column: 2, scope: !6483)
!6535 = !DILocation(line: 1369, column: 1, scope: !6483)
!6536 = distinct !DISubprogram(name: "folio_put", scope: !1428, file: !1428, line: 1478, type: !4977, scopeLine: 1479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6537)
!6537 = !{!6538}
!6538 = !DILocalVariable(name: "folio", arg: 1, scope: !6536, file: !1428, line: 1478, type: !1020)
!6539 = !DILocation(line: 1478, column: 44, scope: !6536)
!6540 = !DILocation(line: 1480, column: 25, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6536, file: !1428, line: 1480, column: 6)
!6542 = !DILocation(line: 1480, column: 6, scope: !6541)
!6543 = !DILocation(line: 1480, column: 6, scope: !6536)
!6544 = !DILocation(line: 1481, column: 15, scope: !6541)
!6545 = !DILocation(line: 1481, column: 3, scope: !6541)
!6546 = !DILocation(line: 1482, column: 1, scope: !6536)
!6547 = !DISubprogram(name: "xa_load", scope: !1155, file: !1155, line: 351, type: !6548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6548 = !DISubroutineType(types: !6549)
!6549 = !{!307, !1153, !214}
!6550 = distinct !DISubprogram(name: "folio_nr_pages", scope: !1428, file: !1428, line: 2043, type: !6551, scopeLine: 2044, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6553)
!6551 = !DISubroutineType(types: !6552)
!6552 = !{!605, !1020}
!6553 = !{!6554}
!6554 = !DILocalVariable(name: "folio", arg: 1, scope: !6550, file: !1428, line: 2043, type: !1020)
!6555 = !DILocation(line: 2043, column: 49, scope: !6550)
!6556 = !DILocation(line: 2045, column: 24, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6550, file: !1428, line: 2045, column: 6)
!6558 = !DILocation(line: 2045, column: 7, scope: !6557)
!6559 = !DILocation(line: 2045, column: 6, scope: !6550)
!6560 = !DILocation(line: 2046, column: 3, scope: !6557)
!6561 = !DILocation(line: 2048, column: 9, scope: !6550)
!6562 = !DILocation(line: 2048, column: 16, scope: !6550)
!6563 = !DILocation(line: 2048, column: 2, scope: !6550)
!6564 = !DILocation(line: 2052, column: 1, scope: !6550)
!6565 = distinct !DISubprogram(name: "folio_test_large", scope: !5471, file: !5471, line: 810, type: !6239, scopeLine: 811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6566)
!6566 = !{!6567}
!6567 = !DILocalVariable(name: "folio", arg: 1, scope: !6565, file: !5471, line: 810, type: !1020)
!6568 = !DILocation(line: 810, column: 51, scope: !6565)
!6569 = !DILocation(line: 812, column: 25, scope: !6565)
!6570 = !DILocation(line: 812, column: 9, scope: !6565)
!6571 = !DILocation(line: 812, column: 2, scope: !6565)
!6572 = distinct !DISubprogram(name: "folio_test_head", scope: !5471, file: !5471, line: 789, type: !6239, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6573)
!6573 = !{!6574}
!6574 = !DILocalVariable(name: "folio", arg: 1, scope: !6572, file: !5471, line: 789, type: !1020)
!6575 = !DILocation(line: 789, column: 59, scope: !6572)
!6576 = !DILocation(line: 791, column: 9, scope: !6572)
!6577 = !DILocation(line: 791, column: 2, scope: !6572)
!6578 = distinct !DISubprogram(name: "_test_bit", scope: !6579, file: !6579, line: 139, type: !6580, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6582)
!6579 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6580 = !DISubroutineType(types: !6581)
!6581 = !{!858, !214, !5580}
!6582 = !{!6583, !6584}
!6583 = !DILocalVariable(name: "nr", arg: 1, scope: !6578, file: !6579, line: 139, type: !214)
!6584 = !DILocalVariable(name: "addr", arg: 2, scope: !6578, file: !6579, line: 139, type: !5580)
!6585 = !DILocation(line: 139, column: 25, scope: !6578)
!6586 = !DILocation(line: 139, column: 59, scope: !6578)
!6587 = !DILocation(line: 141, column: 25, scope: !6578)
!6588 = !DILocation(line: 141, column: 32, scope: !6578)
!6589 = !DILocation(line: 141, column: 30, scope: !6578)
!6590 = !DILocation(line: 141, column: 2, scope: !6578)
!6591 = !DILocation(line: 142, column: 23, scope: !6578)
!6592 = !DILocation(line: 142, column: 27, scope: !6578)
!6593 = !DILocation(line: 142, column: 9, scope: !6578)
!6594 = !DILocation(line: 142, column: 2, scope: !6578)
!6595 = distinct !DISubprogram(name: "folio_flags", scope: !5471, file: !5471, line: 308, type: !6596, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6598)
!6596 = !DISubroutineType(types: !6597)
!6597 = !{!2141, !1020, !13}
!6598 = !{!6599, !6600, !6601}
!6599 = !DILocalVariable(name: "folio", arg: 1, scope: !6595, file: !5471, line: 308, type: !1020)
!6600 = !DILocalVariable(name: "n", arg: 2, scope: !6595, file: !5471, line: 308, type: !13)
!6601 = !DILocalVariable(name: "page", scope: !6595, file: !5471, line: 310, type: !289)
!6602 = !DILocation(line: 308, column: 49, scope: !6595)
!6603 = !DILocation(line: 308, column: 65, scope: !6595)
!6604 = !DILocation(line: 310, column: 2, scope: !6595)
!6605 = !DILocation(line: 310, column: 15, scope: !6595)
!6606 = !DILocation(line: 310, column: 23, scope: !6595)
!6607 = !DILocation(line: 310, column: 30, scope: !6595)
!6608 = !DILocation(line: 314, column: 10, scope: !6595)
!6609 = !DILocation(line: 314, column: 15, scope: !6595)
!6610 = !DILocation(line: 314, column: 18, scope: !6595)
!6611 = !DILocation(line: 315, column: 1, scope: !6595)
!6612 = !DILocation(line: 314, column: 2, scope: !6595)
!6613 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6614, file: !6614, line: 66, type: !6615, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6620)
!6614 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6615 = !DISubroutineType(types: !6616)
!6616 = !{null, !6617, !615}
!6617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6618, size: 64)
!6618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6619)
!6619 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6620 = !{!6621, !6622}
!6621 = !DILocalVariable(name: "v", arg: 1, scope: !6613, file: !6614, line: 66, type: !6617)
!6622 = !DILocalVariable(name: "size", arg: 2, scope: !6613, file: !6614, line: 66, type: !615)
!6623 = !DILocation(line: 66, column: 73, scope: !6613)
!6624 = !DILocation(line: 66, column: 83, scope: !6613)
!6625 = !DILocation(line: 68, column: 19, scope: !6613)
!6626 = !DILocation(line: 68, column: 22, scope: !6613)
!6627 = !DILocation(line: 68, column: 2, scope: !6613)
!6628 = !DILocation(line: 69, column: 2, scope: !6613)
!6629 = !DILocation(line: 70, column: 1, scope: !6613)
!6630 = distinct !DISubprogram(name: "arch_test_bit", scope: !6631, file: !6631, line: 237, type: !6580, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6632)
!6631 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6632 = !{!6633, !6634}
!6633 = !DILocalVariable(name: "nr", arg: 1, scope: !6630, file: !6631, line: 237, type: !214)
!6634 = !DILocalVariable(name: "addr", arg: 2, scope: !6630, file: !6631, line: 237, type: !5580)
!6635 = !DILocation(line: 237, column: 29, scope: !6630)
!6636 = !DILocation(line: 237, column: 63, scope: !6630)
!6637 = !DILocation(line: 239, column: 30, scope: !6630)
!6638 = !DILocation(line: 239, column: 9, scope: !6630)
!6639 = !DILocation(line: 239, column: 54, scope: !6630)
!6640 = !DILocation(line: 239, column: 58, scope: !6630)
!6641 = !DILocation(line: 239, column: 36, scope: !6630)
!6642 = !DILocation(line: 240, column: 26, scope: !6630)
!6643 = !DILocation(line: 240, column: 30, scope: !6630)
!6644 = !DILocation(line: 240, column: 8, scope: !6630)
!6645 = !DILocation(line: 239, column: 2, scope: !6630)
!6646 = distinct !DISubprogram(name: "kasan_check_read", scope: !6647, file: !6647, line: 40, type: !6648, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6650)
!6647 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6648 = !DISubroutineType(types: !6649)
!6649 = !{!858, !6617, !13}
!6650 = !{!6651, !6652}
!6651 = !DILocalVariable(name: "p", arg: 1, scope: !6646, file: !6647, line: 40, type: !6617)
!6652 = !DILocalVariable(name: "size", arg: 2, scope: !6646, file: !6647, line: 40, type: !13)
!6653 = !DILocation(line: 40, column: 58, scope: !6646)
!6654 = !DILocation(line: 40, column: 74, scope: !6646)
!6655 = !DILocation(line: 42, column: 2, scope: !6646)
!6656 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6657, file: !6657, line: 229, type: !6658, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6660)
!6657 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6658 = !DISubroutineType(types: !6659)
!6659 = !{null, !6617, !615, !113}
!6660 = !{!6661, !6662, !6663}
!6661 = !DILocalVariable(name: "ptr", arg: 1, scope: !6656, file: !6657, line: 229, type: !6617)
!6662 = !DILocalVariable(name: "size", arg: 2, scope: !6656, file: !6657, line: 229, type: !615)
!6663 = !DILocalVariable(name: "type", arg: 3, scope: !6656, file: !6657, line: 230, type: !113)
!6664 = !DILocation(line: 229, column: 60, scope: !6656)
!6665 = !DILocation(line: 229, column: 72, scope: !6656)
!6666 = !DILocation(line: 230, column: 15, scope: !6656)
!6667 = !DILocation(line: 230, column: 23, scope: !6656)
!6668 = distinct !DISubprogram(name: "constant_test_bit", scope: !6631, file: !6631, line: 204, type: !6669, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6671)
!6669 = !DISubroutineType(types: !6670)
!6670 = !{!858, !605, !5580}
!6671 = !{!6672, !6673}
!6672 = !DILocalVariable(name: "nr", arg: 1, scope: !6668, file: !6631, line: 204, type: !605)
!6673 = !DILocalVariable(name: "addr", arg: 2, scope: !6668, file: !6631, line: 204, type: !5580)
!6674 = !DILocation(line: 204, column: 52, scope: !6668)
!6675 = !DILocation(line: 204, column: 86, scope: !6668)
!6676 = !DILocation(line: 206, column: 19, scope: !6668)
!6677 = !DILocation(line: 206, column: 22, scope: !6668)
!6678 = !DILocation(line: 206, column: 15, scope: !6668)
!6679 = !DILocation(line: 207, column: 4, scope: !6668)
!6680 = !DILocation(line: 207, column: 9, scope: !6668)
!6681 = !DILocation(line: 207, column: 12, scope: !6668)
!6682 = !DILocation(line: 206, column: 44, scope: !6668)
!6683 = !DILocation(line: 207, column: 37, scope: !6668)
!6684 = !DILocation(line: 206, column: 2, scope: !6668)
!6685 = distinct !DISubprogram(name: "variable_test_bit", scope: !6631, file: !6631, line: 224, type: !6669, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6686)
!6686 = !{!6687, !6688, !6689}
!6687 = !DILocalVariable(name: "nr", arg: 1, scope: !6685, file: !6631, line: 224, type: !605)
!6688 = !DILocalVariable(name: "addr", arg: 2, scope: !6685, file: !6631, line: 224, type: !5580)
!6689 = !DILocalVariable(name: "oldbit", scope: !6685, file: !6631, line: 226, type: !858)
!6690 = !DILocation(line: 224, column: 52, scope: !6685)
!6691 = !DILocation(line: 224, column: 86, scope: !6685)
!6692 = !DILocation(line: 226, column: 2, scope: !6685)
!6693 = !DILocation(line: 226, column: 7, scope: !6685)
!6694 = !DILocation(line: 231, column: 33, scope: !6685)
!6695 = !DILocation(line: 231, column: 46, scope: !6685)
!6696 = !DILocation(line: 228, column: 2, scope: !6685)
!6697 = !{i64 2147809054, i64 2147809128}
!6698 = !DILocation(line: 233, column: 9, scope: !6685)
!6699 = !DILocation(line: 234, column: 1, scope: !6685)
!6700 = !DILocation(line: 233, column: 2, scope: !6685)
!6701 = distinct !DISubprogram(name: "folio_put_testzero", scope: !1428, file: !1428, line: 1103, type: !4986, scopeLine: 1104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6702)
!6702 = !{!6703}
!6703 = !DILocalVariable(name: "folio", arg: 1, scope: !6701, file: !1428, line: 1103, type: !1020)
!6704 = !DILocation(line: 1103, column: 52, scope: !6701)
!6705 = !DILocation(line: 1105, column: 28, scope: !6701)
!6706 = !DILocation(line: 1105, column: 35, scope: !6701)
!6707 = !DILocation(line: 1105, column: 9, scope: !6701)
!6708 = !DILocation(line: 1105, column: 2, scope: !6701)
!6709 = !DISubprogram(name: "__folio_put", scope: !1428, file: !1428, line: 1283, type: !4977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6710 = distinct !DISubprogram(name: "put_page_testzero", scope: !1428, file: !1428, line: 1097, type: !6711, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6713)
!6711 = !DISubroutineType(types: !6712)
!6712 = !{!113, !289}
!6713 = !{!6714}
!6714 = !DILocalVariable(name: "page", arg: 1, scope: !6710, file: !1428, line: 1097, type: !289)
!6715 = !DILocation(line: 1097, column: 50, scope: !6710)
!6716 = !DILocation(line: 1100, column: 31, scope: !6710)
!6717 = !DILocation(line: 1100, column: 9, scope: !6710)
!6718 = !DILocation(line: 1100, column: 2, scope: !6710)
!6719 = distinct !DISubprogram(name: "page_ref_dec_and_test", scope: !6720, file: !6720, line: 208, type: !6711, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6721)
!6720 = !DIFile(filename: "./include/linux/page_ref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed1500ef964c39be8e0b4c715e2a9d4")
!6721 = !{!6722, !6723}
!6722 = !DILocalVariable(name: "page", arg: 1, scope: !6719, file: !6720, line: 208, type: !289)
!6723 = !DILocalVariable(name: "ret", scope: !6719, file: !6720, line: 210, type: !113)
!6724 = !DILocation(line: 208, column: 54, scope: !6719)
!6725 = !DILocation(line: 210, column: 2, scope: !6719)
!6726 = !DILocation(line: 210, column: 6, scope: !6719)
!6727 = !DILocation(line: 210, column: 33, scope: !6719)
!6728 = !DILocation(line: 210, column: 39, scope: !6719)
!6729 = !DILocation(line: 210, column: 12, scope: !6719)
!6730 = !DILocation(line: 214, column: 9, scope: !6719)
!6731 = !DILocation(line: 215, column: 1, scope: !6719)
!6732 = !DILocation(line: 214, column: 2, scope: !6719)
!6733 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !6734, file: !6734, line: 1372, type: !6735, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6738)
!6734 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6735 = !DISubroutineType(types: !6736)
!6736 = !{!858, !6737}
!6737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!6738 = !{!6739}
!6739 = !DILocalVariable(name: "v", arg: 1, scope: !6733, file: !6734, line: 1372, type: !6737)
!6740 = !DILocation(line: 1372, column: 31, scope: !6733)
!6741 = !DILocation(line: 1374, column: 2, scope: !6733)
!6742 = !DILocation(line: 1374, column: 2, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6733, file: !6734, line: 1374, column: 2)
!6744 = !DILocation(line: 1375, column: 31, scope: !6733)
!6745 = !DILocation(line: 1375, column: 2, scope: !6733)
!6746 = !DILocation(line: 1376, column: 33, scope: !6733)
!6747 = !DILocation(line: 1376, column: 9, scope: !6733)
!6748 = !DILocation(line: 1376, column: 2, scope: !6733)
!6749 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6614, file: !6614, line: 94, type: !6615, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6750)
!6750 = !{!6751, !6752}
!6751 = !DILocalVariable(name: "v", arg: 1, scope: !6749, file: !6614, line: 94, type: !6617)
!6752 = !DILocalVariable(name: "size", arg: 2, scope: !6749, file: !6614, line: 94, type: !615)
!6753 = !DILocation(line: 94, column: 79, scope: !6749)
!6754 = !DILocation(line: 94, column: 89, scope: !6749)
!6755 = !DILocation(line: 96, column: 20, scope: !6749)
!6756 = !DILocation(line: 96, column: 23, scope: !6749)
!6757 = !DILocation(line: 96, column: 2, scope: !6749)
!6758 = !DILocation(line: 97, column: 2, scope: !6749)
!6759 = !DILocation(line: 98, column: 1, scope: !6749)
!6760 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !6761, file: !6761, line: 2254, type: !6735, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6762)
!6761 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6762 = !{!6763}
!6763 = !DILocalVariable(name: "v", arg: 1, scope: !6760, file: !6761, line: 2254, type: !6737)
!6764 = !DILocation(line: 2254, column: 35, scope: !6760)
!6765 = !DILocation(line: 2257, column: 34, scope: !6760)
!6766 = !DILocation(line: 2257, column: 9, scope: !6760)
!6767 = !DILocation(line: 2257, column: 2, scope: !6760)
!6768 = distinct !DISubprogram(name: "kasan_check_write", scope: !6647, file: !6647, line: 44, type: !6648, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6769)
!6769 = !{!6770, !6771}
!6770 = !DILocalVariable(name: "p", arg: 1, scope: !6768, file: !6647, line: 44, type: !6617)
!6771 = !DILocalVariable(name: "size", arg: 2, scope: !6768, file: !6647, line: 44, type: !13)
!6772 = !DILocation(line: 44, column: 59, scope: !6768)
!6773 = !DILocation(line: 44, column: 75, scope: !6768)
!6774 = !DILocation(line: 46, column: 2, scope: !6768)
!6775 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !6776, file: !6776, line: 65, type: !6735, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6777)
!6776 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6777 = !{!6778, !6779}
!6778 = !DILocalVariable(name: "v", arg: 1, scope: !6775, file: !6776, line: 65, type: !6737)
!6779 = !DILocalVariable(name: "c", scope: !6780, file: !6776, line: 67, type: !858)
!6780 = distinct !DILexicalBlock(scope: !6775, file: !6776, line: 67, column: 9)
!6781 = !DILocation(line: 65, column: 64, scope: !6775)
!6782 = !DILocation(line: 67, column: 9, scope: !6780)
!6783 = !{i64 2149034366, i64 2149034405, i64 2149034426, i64 2149034463, i64 2149034486, i64 2149034495, i64 2149034569}
!6784 = !DILocation(line: 67, column: 9, scope: !6775)
!6785 = !DILocation(line: 67, column: 2, scope: !6775)
!6786 = distinct !DISubprogram(name: "i_size_read", scope: !70, file: !70, line: 893, type: !6787, scopeLine: 894, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6789)
!6787 = !DISubroutineType(types: !6788)
!6788 = !{!490, !4645}
!6789 = !{!6790}
!6790 = !DILocalVariable(name: "inode", arg: 1, scope: !6786, file: !70, line: 893, type: !4645)
!6791 = !DILocation(line: 893, column: 54, scope: !6786)
!6792 = !DILocation(line: 912, column: 9, scope: !6786)
!6793 = !DILocation(line: 912, column: 16, scope: !6786)
!6794 = !DILocation(line: 912, column: 2, scope: !6786)
!6795 = distinct !DISubprogram(name: "zero_user_segments", scope: !5594, file: !5594, line: 268, type: !6796, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6798)
!6796 = !DISubroutineType(types: !6797)
!6797 = !{null, !289, !13, !13, !13, !13}
!6798 = !{!6799, !6800, !6801, !6802, !6803, !6804, !6805}
!6799 = !DILocalVariable(name: "page", arg: 1, scope: !6795, file: !5594, line: 268, type: !289)
!6800 = !DILocalVariable(name: "start1", arg: 2, scope: !6795, file: !5594, line: 269, type: !13)
!6801 = !DILocalVariable(name: "end1", arg: 3, scope: !6795, file: !5594, line: 269, type: !13)
!6802 = !DILocalVariable(name: "start2", arg: 4, scope: !6795, file: !5594, line: 270, type: !13)
!6803 = !DILocalVariable(name: "end2", arg: 5, scope: !6795, file: !5594, line: 270, type: !13)
!6804 = !DILocalVariable(name: "kaddr", scope: !6795, file: !5594, line: 272, type: !307)
!6805 = !DILocalVariable(name: "i", scope: !6795, file: !5594, line: 273, type: !13)
!6806 = !DILocation(line: 268, column: 52, scope: !6795)
!6807 = !DILocation(line: 269, column: 12, scope: !6795)
!6808 = !DILocation(line: 269, column: 29, scope: !6795)
!6809 = !DILocation(line: 270, column: 12, scope: !6795)
!6810 = !DILocation(line: 270, column: 29, scope: !6795)
!6811 = !DILocation(line: 272, column: 2, scope: !6795)
!6812 = !DILocation(line: 272, column: 8, scope: !6795)
!6813 = !DILocation(line: 272, column: 32, scope: !6795)
!6814 = !DILocation(line: 272, column: 16, scope: !6795)
!6815 = !DILocation(line: 273, column: 2, scope: !6795)
!6816 = !DILocation(line: 273, column: 15, scope: !6795)
!6817 = !DILocation(line: 275, column: 2, scope: !6795)
!6818 = !DILocation(line: 275, column: 2, scope: !6819)
!6819 = distinct !DILexicalBlock(scope: !6820, file: !5594, line: 275, column: 2)
!6820 = distinct !DILexicalBlock(scope: !6795, file: !5594, line: 275, column: 2)
!6821 = !DILocation(line: 275, column: 2, scope: !6820)
!6822 = !DILocation(line: 275, column: 2, scope: !6823)
!6823 = distinct !DILexicalBlock(scope: !6819, file: !5594, line: 275, column: 2)
!6824 = !DILocation(line: 275, column: 2, scope: !6825)
!6825 = distinct !DILexicalBlock(scope: !6823, file: !5594, line: 275, column: 2)
!6826 = !DILocation(line: 275, column: 2, scope: !6827)
!6827 = distinct !DILexicalBlock(scope: !6823, file: !5594, line: 275, column: 2)
!6828 = !{i64 2154035725, i64 2154035754, i64 2154035800, i64 2154035858, i64 2154035912, i64 2154035966, i64 2154036021, i64 2154036052}
!6829 = !DILocation(line: 277, column: 6, scope: !6830)
!6830 = distinct !DILexicalBlock(scope: !6795, file: !5594, line: 277, column: 6)
!6831 = !DILocation(line: 277, column: 13, scope: !6830)
!6832 = !DILocation(line: 277, column: 11, scope: !6830)
!6833 = !DILocation(line: 277, column: 6, scope: !6795)
!6834 = !DILocation(line: 278, column: 10, scope: !6830)
!6835 = !DILocation(line: 278, column: 18, scope: !6830)
!6836 = !DILocation(line: 278, column: 16, scope: !6830)
!6837 = !DILocation(line: 278, column: 29, scope: !6830)
!6838 = !DILocation(line: 278, column: 36, scope: !6830)
!6839 = !DILocation(line: 278, column: 34, scope: !6830)
!6840 = !DILocation(line: 278, column: 3, scope: !6830)
!6841 = !DILocation(line: 280, column: 6, scope: !6842)
!6842 = distinct !DILexicalBlock(scope: !6795, file: !5594, line: 280, column: 6)
!6843 = !DILocation(line: 280, column: 13, scope: !6842)
!6844 = !DILocation(line: 280, column: 11, scope: !6842)
!6845 = !DILocation(line: 280, column: 6, scope: !6795)
!6846 = !DILocation(line: 281, column: 10, scope: !6842)
!6847 = !DILocation(line: 281, column: 18, scope: !6842)
!6848 = !DILocation(line: 281, column: 16, scope: !6842)
!6849 = !DILocation(line: 281, column: 29, scope: !6842)
!6850 = !DILocation(line: 281, column: 36, scope: !6842)
!6851 = !DILocation(line: 281, column: 34, scope: !6842)
!6852 = !DILocation(line: 281, column: 3, scope: !6842)
!6853 = !DILocation(line: 283, column: 2, scope: !6795)
!6854 = !DILocation(line: 283, column: 2, scope: !6855)
!6855 = distinct !DILexicalBlock(scope: !6795, file: !5594, line: 283, column: 2)
!6856 = !DILocation(line: 283, column: 2, scope: !6857)
!6857 = distinct !DILexicalBlock(scope: !6855, file: !5594, line: 283, column: 2)
!6858 = !DILocation(line: 284, column: 9, scope: !6859)
!6859 = distinct !DILexicalBlock(scope: !6795, file: !5594, line: 284, column: 2)
!6860 = !DILocation(line: 284, column: 7, scope: !6859)
!6861 = !DILocation(line: 284, column: 14, scope: !6862)
!6862 = distinct !DILexicalBlock(scope: !6859, file: !5594, line: 284, column: 2)
!6863 = !DILocation(line: 284, column: 30, scope: !6862)
!6864 = !DILocation(line: 284, column: 18, scope: !6862)
!6865 = !DILocation(line: 284, column: 16, scope: !6862)
!6866 = !DILocation(line: 284, column: 2, scope: !6859)
!6867 = !DILocation(line: 285, column: 21, scope: !6862)
!6868 = !DILocation(line: 285, column: 28, scope: !6862)
!6869 = !DILocation(line: 285, column: 26, scope: !6862)
!6870 = !DILocation(line: 285, column: 3, scope: !6862)
!6871 = !DILocation(line: 284, column: 38, scope: !6862)
!6872 = !DILocation(line: 284, column: 2, scope: !6862)
!6873 = distinct !{!6873, !6866, !6874, !5900, !5846}
!6874 = !DILocation(line: 285, column: 29, scope: !6859)
!6875 = !DILocation(line: 286, column: 1, scope: !6795)
!6876 = distinct !DISubprogram(name: "kmap_local_page", scope: !6877, file: !6877, line: 183, type: !6878, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6880)
!6877 = !DIFile(filename: "./include/linux/highmem-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ae7838583c7018843a11d0e374eeb3")
!6878 = !DISubroutineType(types: !6879)
!6879 = !{!307, !289}
!6880 = !{!6881}
!6881 = !DILocalVariable(name: "page", arg: 1, scope: !6876, file: !6877, line: 183, type: !289)
!6882 = !DILocation(line: 183, column: 50, scope: !6876)
!6883 = !DILocation(line: 185, column: 9, scope: !6876)
!6884 = !DILocation(line: 185, column: 2, scope: !6876)
!6885 = distinct !DISubprogram(name: "page_size", scope: !1428, file: !1428, line: 1295, type: !6886, scopeLine: 1296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6888)
!6886 = !DISubroutineType(types: !6887)
!6887 = !{!214, !289}
!6888 = !{!6889}
!6889 = !DILocalVariable(name: "page", arg: 1, scope: !6885, file: !1428, line: 1295, type: !289)
!6890 = !DILocation(line: 1295, column: 52, scope: !6885)
!6891 = !DILocation(line: 1297, column: 37, scope: !6885)
!6892 = !DILocation(line: 1297, column: 22, scope: !6885)
!6893 = !DILocation(line: 1297, column: 19, scope: !6885)
!6894 = !DILocation(line: 1297, column: 2, scope: !6885)
!6895 = distinct !DISubprogram(name: "__kunmap_local", scope: !6877, file: !6877, line: 203, type: !6143, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6896)
!6896 = !{!6897}
!6897 = !DILocalVariable(name: "addr", arg: 1, scope: !6895, file: !6877, line: 203, type: !1343)
!6898 = !DILocation(line: 203, column: 47, scope: !6895)
!6899 = !DILocation(line: 208, column: 1, scope: !6895)
!6900 = distinct !DISubprogram(name: "compound_nr", scope: !1428, file: !1428, line: 2059, type: !6886, scopeLine: 2060, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6901)
!6901 = !{!6902, !6903}
!6902 = !DILocalVariable(name: "page", arg: 1, scope: !6900, file: !1428, line: 2059, type: !289)
!6903 = !DILocalVariable(name: "folio", scope: !6900, file: !1428, line: 2061, type: !1020)
!6904 = !DILocation(line: 2059, column: 54, scope: !6900)
!6905 = !DILocation(line: 2061, column: 2, scope: !6900)
!6906 = !DILocation(line: 2061, column: 16, scope: !6900)
!6907 = !DILocation(line: 2061, column: 40, scope: !6900)
!6908 = !DILocation(line: 2063, column: 7, scope: !6909)
!6909 = distinct !DILexicalBlock(scope: !6900, file: !1428, line: 2063, column: 6)
!6910 = !DILocation(line: 2063, column: 6, scope: !6900)
!6911 = !DILocation(line: 2064, column: 3, scope: !6909)
!6912 = !DILocation(line: 2066, column: 9, scope: !6900)
!6913 = !DILocation(line: 2066, column: 16, scope: !6900)
!6914 = !DILocation(line: 2066, column: 2, scope: !6900)
!6915 = !DILocation(line: 2070, column: 1, scope: !6900)
!6916 = distinct !DISubprogram(name: "flush_dcache_page", scope: !6917, file: !6917, line: 51, type: !5071, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6918)
!6917 = !DIFile(filename: "./include/asm-generic/cacheflush.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "21f5dc5a8efda717141cd13596db7eb7")
!6918 = !{!6919}
!6919 = !DILocalVariable(name: "page", arg: 1, scope: !6916, file: !6917, line: 51, type: !289)
!6920 = !DILocation(line: 51, column: 51, scope: !6916)
!6921 = !DILocation(line: 53, column: 1, scope: !6916)
!6922 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1428, file: !1428, line: 2176, type: !6923, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6925)
!6923 = !DISubroutineType(types: !6924)
!6924 = !{!307, !5583}
!6925 = !{!6926}
!6926 = !DILocalVariable(name: "page", arg: 1, scope: !6922, file: !1428, line: 2176, type: !5583)
!6927 = !DILocation(line: 2176, column: 69, scope: !6922)
!6928 = !DILocation(line: 2178, column: 9, scope: !6922)
!6929 = !DILocation(line: 2178, column: 2, scope: !6922)
!6930 = distinct !DISubprogram(name: "compound_order", scope: !1428, file: !1428, line: 1054, type: !6931, scopeLine: 1055, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6933)
!6931 = !DISubroutineType(types: !6932)
!6932 = !{!13, !289}
!6933 = !{!6934, !6935}
!6934 = !DILocalVariable(name: "page", arg: 1, scope: !6930, file: !1428, line: 1054, type: !289)
!6935 = !DILocalVariable(name: "folio", scope: !6930, file: !1428, line: 1056, type: !1020)
!6936 = !DILocation(line: 1054, column: 56, scope: !6930)
!6937 = !DILocation(line: 1056, column: 2, scope: !6930)
!6938 = !DILocation(line: 1056, column: 16, scope: !6930)
!6939 = !DILocation(line: 1056, column: 40, scope: !6930)
!6940 = !DILocation(line: 1058, column: 7, scope: !6941)
!6941 = distinct !DILexicalBlock(scope: !6930, file: !1428, line: 1058, column: 6)
!6942 = !DILocation(line: 1058, column: 6, scope: !6930)
!6943 = !DILocation(line: 1059, column: 3, scope: !6941)
!6944 = !DILocation(line: 1060, column: 9, scope: !6930)
!6945 = !DILocation(line: 1060, column: 16, scope: !6930)
!6946 = !DILocation(line: 1060, column: 25, scope: !6930)
!6947 = !DILocation(line: 1060, column: 2, scope: !6930)
!6948 = !DILocation(line: 1061, column: 1, scope: !6930)
!6949 = distinct !DISubprogram(name: "const_test_bit", scope: !6950, file: !6950, line: 166, type: !6580, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6951)
!6950 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6951 = !{!6952, !6953, !6954, !6955, !6956}
!6952 = !DILocalVariable(name: "nr", arg: 1, scope: !6949, file: !6950, line: 166, type: !214)
!6953 = !DILocalVariable(name: "addr", arg: 2, scope: !6949, file: !6950, line: 166, type: !5580)
!6954 = !DILocalVariable(name: "p", scope: !6949, file: !6950, line: 168, type: !5566)
!6955 = !DILocalVariable(name: "mask", scope: !6949, file: !6950, line: 169, type: !214)
!6956 = !DILocalVariable(name: "val", scope: !6949, file: !6950, line: 170, type: !214)
!6957 = !DILocation(line: 166, column: 30, scope: !6949)
!6958 = !DILocation(line: 166, column: 64, scope: !6949)
!6959 = !DILocation(line: 168, column: 2, scope: !6949)
!6960 = !DILocation(line: 168, column: 23, scope: !6949)
!6961 = !DILocation(line: 168, column: 50, scope: !6949)
!6962 = !DILocation(line: 168, column: 57, scope: !6949)
!6963 = !DILocation(line: 168, column: 55, scope: !6949)
!6964 = !DILocation(line: 169, column: 2, scope: !6949)
!6965 = !DILocation(line: 169, column: 16, scope: !6949)
!6966 = !DILocation(line: 169, column: 23, scope: !6949)
!6967 = !DILocation(line: 170, column: 2, scope: !6949)
!6968 = !DILocation(line: 170, column: 16, scope: !6949)
!6969 = !DILocation(line: 170, column: 23, scope: !6949)
!6970 = !DILocation(line: 170, column: 22, scope: !6949)
!6971 = !DILocation(line: 172, column: 12, scope: !6949)
!6972 = !DILocation(line: 172, column: 18, scope: !6949)
!6973 = !DILocation(line: 172, column: 16, scope: !6949)
!6974 = !DILocation(line: 172, column: 10, scope: !6949)
!6975 = !DILocation(line: 172, column: 9, scope: !6949)
!6976 = !DILocation(line: 173, column: 1, scope: !6949)
!6977 = !DILocation(line: 172, column: 2, scope: !6949)
!6978 = distinct !DISubprogram(name: "folio_order", scope: !1428, file: !1428, line: 1072, type: !6979, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6981)
!6979 = !DISubroutineType(types: !6980)
!6980 = !{!13, !1020}
!6981 = !{!6982}
!6982 = !DILocalVariable(name: "folio", arg: 1, scope: !6978, file: !1428, line: 1072, type: !1020)
!6983 = !DILocation(line: 1072, column: 54, scope: !6978)
!6984 = !DILocation(line: 1074, column: 24, scope: !6985)
!6985 = distinct !DILexicalBlock(scope: !6978, file: !1428, line: 1074, column: 6)
!6986 = !DILocation(line: 1074, column: 7, scope: !6985)
!6987 = !DILocation(line: 1074, column: 6, scope: !6978)
!6988 = !DILocation(line: 1075, column: 3, scope: !6985)
!6989 = !DILocation(line: 1076, column: 9, scope: !6978)
!6990 = !DILocation(line: 1076, column: 16, scope: !6978)
!6991 = !DILocation(line: 1076, column: 25, scope: !6978)
!6992 = !DILocation(line: 1076, column: 2, scope: !6978)
!6993 = !DILocation(line: 1077, column: 1, scope: !6978)
!6994 = distinct !DISubprogram(name: "fsverity_active", scope: !5597, file: !5597, line: 279, type: !6995, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6997)
!6995 = !DISubroutineType(types: !6996)
!6996 = !{!858, !4645}
!6997 = !{!6998}
!6998 = !DILocalVariable(name: "inode", arg: 1, scope: !6994, file: !5597, line: 279, type: !4645)
!6999 = !DILocation(line: 279, column: 56, scope: !6994)
!7000 = !DILocation(line: 281, column: 27, scope: !6994)
!7001 = !DILocation(line: 281, column: 9, scope: !6994)
!7002 = !DILocation(line: 281, column: 34, scope: !6994)
!7003 = !DILocation(line: 281, column: 2, scope: !6994)
!7004 = distinct !DISubprogram(name: "fsverity_get_info", scope: !5597, file: !5597, line: 179, type: !7005, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7009)
!7005 = !DISubroutineType(types: !7006)
!7006 = !{!7007, !4645}
!7007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7008, size: 64)
!7008 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsverity_info", file: !70, line: 72, flags: DIFlagFwdDecl)
!7009 = !{!7010}
!7010 = !DILocalVariable(name: "inode", arg: 1, scope: !7004, file: !5597, line: 179, type: !4645)
!7011 = !DILocation(line: 179, column: 75, scope: !7004)
!7012 = !DILocation(line: 181, column: 2, scope: !7004)
!7013 = distinct !DISubprogram(name: "fsverity_verify_blocks", scope: !5597, file: !5597, line: 237, type: !4990, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7014)
!7014 = !{!7015, !7016, !7017, !7018, !7020}
!7015 = !DILocalVariable(name: "folio", arg: 1, scope: !7013, file: !5597, line: 237, type: !1020)
!7016 = !DILocalVariable(name: "len", arg: 2, scope: !7013, file: !5597, line: 237, type: !615)
!7017 = !DILocalVariable(name: "offset", arg: 3, scope: !7013, file: !5597, line: 238, type: !615)
!7018 = !DILocalVariable(name: "__ret_warn_on", scope: !7019, file: !5597, line: 240, type: !113)
!7019 = distinct !DILexicalBlock(scope: !7013, file: !5597, line: 240, column: 2)
!7020 = !DILocalVariable(name: "__flags", scope: !7021, file: !5597, line: 240, type: !113)
!7021 = distinct !DILexicalBlock(scope: !7022, file: !5597, line: 240, column: 2)
!7022 = distinct !DILexicalBlock(scope: !7019, file: !5597, line: 240, column: 2)
!7023 = !DILocation(line: 237, column: 57, scope: !7013)
!7024 = !DILocation(line: 237, column: 71, scope: !7013)
!7025 = !DILocation(line: 238, column: 15, scope: !7013)
!7026 = !DILocation(line: 240, column: 2, scope: !7019)
!7027 = !DILocation(line: 240, column: 2, scope: !7022)
!7028 = !DILocation(line: 240, column: 2, scope: !7021)
!7029 = !DILocation(line: 240, column: 2, scope: !7030)
!7030 = distinct !DILexicalBlock(scope: !7021, file: !5597, line: 240, column: 2)
!7031 = !DILocation(line: 240, column: 2, scope: !7032)
!7032 = distinct !DILexicalBlock(scope: !7021, file: !5597, line: 240, column: 2)
!7033 = !{i64 2155952145, i64 2155952174, i64 2155952220, i64 2155952278, i64 2155952332, i64 2155952386, i64 2155952441, i64 2155952472, i64 2155952780, i64 2155952786, i64 2155952833, i64 2155952856, i64 2155952882}
!7034 = !DILocation(line: 240, column: 2, scope: !7035)
!7035 = distinct !DILexicalBlock(scope: !7021, file: !5597, line: 240, column: 2)
!7036 = !DILocation(line: 240, column: 2, scope: !7013)
!7037 = !DILocation(line: 241, column: 2, scope: !7013)
!7038 = distinct !DISubprogram(name: "set_bit", scope: !7039, file: !7039, line: 26, type: !7040, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7043)
!7039 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!7040 = !DISubroutineType(types: !7041)
!7041 = !{null, !605, !7042}
!7042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5582, size: 64)
!7043 = !{!7044, !7045}
!7044 = !DILocalVariable(name: "nr", arg: 1, scope: !7038, file: !7039, line: 26, type: !605)
!7045 = !DILocalVariable(name: "addr", arg: 2, scope: !7038, file: !7039, line: 26, type: !7042)
!7046 = !DILocation(line: 26, column: 42, scope: !7038)
!7047 = !DILocation(line: 26, column: 70, scope: !7038)
!7048 = !DILocation(line: 28, column: 26, scope: !7038)
!7049 = !DILocation(line: 28, column: 33, scope: !7038)
!7050 = !DILocation(line: 28, column: 31, scope: !7038)
!7051 = !DILocation(line: 28, column: 2, scope: !7038)
!7052 = !DILocation(line: 29, column: 15, scope: !7038)
!7053 = !DILocation(line: 29, column: 19, scope: !7038)
!7054 = !DILocation(line: 29, column: 2, scope: !7038)
!7055 = !DILocation(line: 30, column: 1, scope: !7038)
!7056 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6614, file: !6614, line: 80, type: !6615, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7057)
!7057 = !{!7058, !7059}
!7058 = !DILocalVariable(name: "v", arg: 1, scope: !7056, file: !6614, line: 80, type: !6617)
!7059 = !DILocalVariable(name: "size", arg: 2, scope: !7056, file: !6614, line: 80, type: !615)
!7060 = !DILocation(line: 80, column: 74, scope: !7056)
!7061 = !DILocation(line: 80, column: 84, scope: !7056)
!7062 = !DILocation(line: 82, column: 20, scope: !7056)
!7063 = !DILocation(line: 82, column: 23, scope: !7056)
!7064 = !DILocation(line: 82, column: 2, scope: !7056)
!7065 = !DILocation(line: 83, column: 2, scope: !7056)
!7066 = !DILocation(line: 84, column: 1, scope: !7056)
!7067 = distinct !DISubprogram(name: "arch_set_bit", scope: !6631, file: !6631, line: 52, type: !7040, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7068)
!7068 = !{!7069, !7070}
!7069 = !DILocalVariable(name: "nr", arg: 1, scope: !7067, file: !6631, line: 52, type: !605)
!7070 = !DILocalVariable(name: "addr", arg: 2, scope: !7067, file: !6631, line: 52, type: !7042)
!7071 = !DILocation(line: 52, column: 19, scope: !7067)
!7072 = !DILocation(line: 52, column: 47, scope: !7067)
!7073 = !DILocation(line: 54, column: 27, scope: !7074)
!7074 = distinct !DILexicalBlock(scope: !7067, file: !6631, line: 54, column: 6)
!7075 = !DILocation(line: 54, column: 6, scope: !7074)
!7076 = !DILocation(line: 54, column: 6, scope: !7067)
!7077 = !DILocation(line: 56, column: 6, scope: !7078)
!7078 = distinct !DILexicalBlock(scope: !7074, file: !6631, line: 54, column: 32)
!7079 = !DILocation(line: 57, column: 12, scope: !7078)
!7080 = !DILocation(line: 55, column: 3, scope: !7078)
!7081 = !{i64 2147795442, i64 2147795481, i64 2147795502, i64 2147795539, i64 2147795562, i64 2147795432}
!7082 = !DILocation(line: 59, column: 2, scope: !7078)
!7083 = !DILocation(line: 61, column: 8, scope: !7084)
!7084 = distinct !DILexicalBlock(scope: !7074, file: !6631, line: 59, column: 9)
!7085 = !DILocation(line: 61, column: 32, scope: !7084)
!7086 = !DILocation(line: 60, column: 3, scope: !7084)
!7087 = !{i64 2147795727, i64 2147795766, i64 2147795787, i64 2147795824, i64 2147795847, i64 2147795717}
!7088 = !DILocation(line: 63, column: 1, scope: !7067)
!7089 = !DISubprogram(name: "bio_alloc_bioset", scope: !2542, file: !2542, line: 419, type: !7090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7090 = !DISubroutineType(types: !7091)
!7091 = !{!2499, !2470, !266, !2505, !1159, !2540}
!7092 = distinct !DISubprogram(name: "fscrypt_inode_uses_fs_layer_crypto", scope: !6268, file: !6268, line: 854, type: !6995, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7093)
!7093 = !{!7094}
!7094 = !DILocalVariable(name: "inode", arg: 1, scope: !7092, file: !6268, line: 854, type: !4645)
!7095 = !DILocation(line: 854, column: 75, scope: !7092)
!7096 = !DILocation(line: 856, column: 43, scope: !7092)
!7097 = !DILocation(line: 856, column: 9, scope: !7092)
!7098 = !DILocation(line: 856, column: 50, scope: !7092)
!7099 = !DILocation(line: 857, column: 45, scope: !7092)
!7100 = !DILocation(line: 857, column: 10, scope: !7092)
!7101 = !DILocation(line: 857, column: 9, scope: !7092)
!7102 = !DILocation(line: 0, scope: !7092)
!7103 = !DILocation(line: 856, column: 2, scope: !7092)
!7104 = !DISubprogram(name: "mempool_alloc", scope: !2554, file: !2554, line: 53, type: !7105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7105 = !DISubroutineType(types: !7106)
!7106 = !{!307, !5588, !1159}
!7107 = distinct !DISubprogram(name: "fscrypt_needs_contents_encryption", scope: !6268, file: !6268, line: 398, type: !6995, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7108)
!7108 = !{!7109}
!7109 = !DILocalVariable(name: "inode", arg: 1, scope: !7107, file: !6268, line: 398, type: !4645)
!7110 = !DILocation(line: 398, column: 74, scope: !7107)
!7111 = !DILocation(line: 400, column: 2, scope: !7107)
!7112 = distinct !DISubprogram(name: "__fscrypt_inode_uses_inline_crypto", scope: !6268, file: !6268, line: 791, type: !6995, scopeLine: 792, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7113)
!7113 = !{!7114}
!7114 = !DILocalVariable(name: "inode", arg: 1, scope: !7112, file: !6268, line: 791, type: !4645)
!7115 = !DILocation(line: 791, column: 75, scope: !7112)
!7116 = !DILocation(line: 793, column: 2, scope: !7112)
!7117 = distinct !DISubprogram(name: "bio_post_read_required", scope: !2, file: !2, line: 152, type: !7118, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7120)
!7118 = !DISubroutineType(types: !7119)
!7119 = !{!858, !2499}
!7120 = !{!7121}
!7121 = !DILocalVariable(name: "bio", arg: 1, scope: !7117, file: !2, line: 152, type: !2499)
!7122 = !DILocation(line: 152, column: 48, scope: !7117)
!7123 = !DILocation(line: 154, column: 9, scope: !7117)
!7124 = !DILocation(line: 154, column: 14, scope: !7117)
!7125 = !DILocation(line: 154, column: 25, scope: !7117)
!7126 = !DILocation(line: 154, column: 29, scope: !7117)
!7127 = !DILocation(line: 154, column: 34, scope: !7117)
!7128 = !DILocation(line: 154, column: 28, scope: !7117)
!7129 = !DILocation(line: 0, scope: !7117)
!7130 = !DILocation(line: 154, column: 2, scope: !7117)
!7131 = !DILocation(line: 123, column: 64, scope: !5603)
!7132 = !DILocation(line: 130, column: 12, scope: !5603)
!7133 = !DILocation(line: 130, column: 17, scope: !5603)
!7134 = !DILocation(line: 130, column: 10, scope: !5603)
!7135 = !DILocation(line: 130, column: 2, scope: !5603)
!7136 = !DILocation(line: 132, column: 7, scope: !7137)
!7137 = distinct !DILexicalBlock(scope: !7138, file: !2, line: 132, column: 7)
!7138 = distinct !DILexicalBlock(scope: !5603, file: !2, line: 130, column: 27)
!7139 = !DILocation(line: 132, column: 12, scope: !7137)
!7140 = !DILocation(line: 132, column: 26, scope: !7137)
!7141 = !DILocation(line: 132, column: 7, scope: !7138)
!7142 = !DILocation(line: 133, column: 4, scope: !7143)
!7143 = distinct !DILexicalBlock(scope: !7137, file: !2, line: 132, column: 49)
!7144 = !DILocation(line: 133, column: 4, scope: !7145)
!7145 = distinct !DILexicalBlock(scope: !7143, file: !2, line: 133, column: 4)
!7146 = !DILocation(line: 133, column: 4, scope: !7147)
!7147 = distinct !DILexicalBlock(scope: !7145, file: !2, line: 133, column: 4)
!7148 = !DILocation(line: 134, column: 34, scope: !7143)
!7149 = !DILocation(line: 134, column: 39, scope: !7143)
!7150 = !DILocation(line: 134, column: 4, scope: !7143)
!7151 = !DILocation(line: 135, column: 4, scope: !7143)
!7152 = !DILocation(line: 137, column: 3, scope: !7138)
!7153 = !DILocation(line: 137, column: 8, scope: !7138)
!7154 = !DILocation(line: 137, column: 16, scope: !7138)
!7155 = !DILocation(line: 140, column: 7, scope: !7156)
!7156 = distinct !DILexicalBlock(scope: !7138, file: !2, line: 140, column: 7)
!7157 = !DILocation(line: 140, column: 12, scope: !7156)
!7158 = !DILocation(line: 140, column: 26, scope: !7156)
!7159 = !DILocation(line: 140, column: 7, scope: !7138)
!7160 = !DILocation(line: 141, column: 4, scope: !7161)
!7161 = distinct !DILexicalBlock(scope: !7156, file: !2, line: 140, column: 48)
!7162 = !DILocation(line: 141, column: 4, scope: !7163)
!7163 = distinct !DILexicalBlock(scope: !7161, file: !2, line: 141, column: 4)
!7164 = !DILocation(line: 141, column: 4, scope: !7165)
!7165 = distinct !DILexicalBlock(scope: !7163, file: !2, line: 141, column: 4)
!7166 = !DILocation(line: 142, column: 34, scope: !7161)
!7167 = !DILocation(line: 142, column: 39, scope: !7161)
!7168 = !DILocation(line: 142, column: 4, scope: !7161)
!7169 = !DILocation(line: 143, column: 4, scope: !7161)
!7170 = !DILocation(line: 145, column: 3, scope: !7138)
!7171 = !DILocation(line: 145, column: 8, scope: !7138)
!7172 = !DILocation(line: 145, column: 16, scope: !7138)
!7173 = !DILocation(line: 148, column: 17, scope: !7138)
!7174 = !DILocation(line: 148, column: 22, scope: !7138)
!7175 = !DILocation(line: 148, column: 3, scope: !7138)
!7176 = !DILocation(line: 149, column: 2, scope: !7138)
!7177 = !DILocation(line: 150, column: 1, scope: !5603)
!7178 = distinct !DISubprogram(name: "__read_end_io", scope: !2, file: !2, line: 69, type: !2497, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7179)
!7179 = !{!7180, !7181, !7190}
!7180 = !DILocalVariable(name: "bio", arg: 1, scope: !7178, file: !2, line: 69, type: !2499)
!7181 = !DILocalVariable(name: "fi", scope: !7178, file: !2, line: 71, type: !7182)
!7182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio_iter", file: !2542, line: 274, size: 384, elements: !7183)
!7183 = !{!7184, !7185, !7186, !7187, !7188, !7189}
!7184 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !7182, file: !2542, line: 275, baseType: !1020, size: 64)
!7185 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !7182, file: !2542, line: 276, baseType: !615, size: 64, offset: 64)
!7186 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !7182, file: !2542, line: 277, baseType: !615, size: 64, offset: 128)
!7187 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !7182, file: !2542, line: 279, baseType: !1020, size: 64, offset: 192)
!7188 = !DIDerivedType(tag: DW_TAG_member, name: "_seg_count", scope: !7182, file: !2542, line: 280, baseType: !615, size: 64, offset: 256)
!7189 = !DIDerivedType(tag: DW_TAG_member, name: "_i", scope: !7182, file: !2542, line: 281, baseType: !113, size: 32, offset: 320)
!7190 = !DILocalVariable(name: "folio", scope: !7191, file: !2, line: 74, type: !1020)
!7191 = distinct !DILexicalBlock(scope: !7192, file: !2, line: 73, column: 34)
!7192 = distinct !DILexicalBlock(scope: !7193, file: !2, line: 73, column: 2)
!7193 = distinct !DILexicalBlock(scope: !7178, file: !2, line: 73, column: 2)
!7194 = !DILocation(line: 69, column: 39, scope: !7178)
!7195 = !DILocation(line: 71, column: 2, scope: !7178)
!7196 = !DILocation(line: 71, column: 20, scope: !7178)
!7197 = !DILocation(line: 73, column: 2, scope: !7193)
!7198 = !DILocation(line: 73, column: 2, scope: !7192)
!7199 = !DILocation(line: 74, column: 3, scope: !7191)
!7200 = !DILocation(line: 74, column: 17, scope: !7191)
!7201 = !DILocation(line: 74, column: 28, scope: !7191)
!7202 = !DILocation(line: 76, column: 7, scope: !7203)
!7203 = distinct !DILexicalBlock(scope: !7191, file: !2, line: 76, column: 7)
!7204 = !DILocation(line: 76, column: 12, scope: !7203)
!7205 = !DILocation(line: 76, column: 7, scope: !7191)
!7206 = !DILocation(line: 77, column: 25, scope: !7203)
!7207 = !DILocation(line: 77, column: 4, scope: !7203)
!7208 = !DILocation(line: 79, column: 24, scope: !7203)
!7209 = !DILocation(line: 79, column: 4, scope: !7203)
!7210 = !DILocation(line: 80, column: 16, scope: !7191)
!7211 = !DILocation(line: 80, column: 3, scope: !7191)
!7212 = !DILocation(line: 81, column: 2, scope: !7192)
!7213 = !DILocation(line: 81, column: 2, scope: !7191)
!7214 = distinct !{!7214, !7197, !7215, !5900, !5846}
!7215 = !DILocation(line: 81, column: 2, scope: !7193)
!7216 = !DILocation(line: 82, column: 6, scope: !7217)
!7217 = distinct !DILexicalBlock(scope: !7178, file: !2, line: 82, column: 6)
!7218 = !DILocation(line: 82, column: 11, scope: !7217)
!7219 = !DILocation(line: 82, column: 6, scope: !7178)
!7220 = !DILocation(line: 83, column: 16, scope: !7217)
!7221 = !DILocation(line: 83, column: 21, scope: !7217)
!7222 = !DILocation(line: 83, column: 33, scope: !7217)
!7223 = !DILocation(line: 83, column: 3, scope: !7217)
!7224 = !DILocation(line: 84, column: 10, scope: !7178)
!7225 = !DILocation(line: 84, column: 2, scope: !7178)
!7226 = !DILocation(line: 85, column: 1, scope: !7178)
!7227 = distinct !DISubprogram(name: "__init_work", scope: !1383, file: !1383, line: 263, type: !7228, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7230)
!7228 = !DISubroutineType(types: !7229)
!7229 = !{null, !1392, !113}
!7230 = !{!7231, !7232}
!7231 = !DILocalVariable(name: "work", arg: 1, scope: !7227, file: !1383, line: 263, type: !1392)
!7232 = !DILocalVariable(name: "onstack", arg: 2, scope: !7227, file: !1383, line: 263, type: !113)
!7233 = !DILocation(line: 263, column: 52, scope: !7227)
!7234 = !DILocation(line: 263, column: 62, scope: !7227)
!7235 = !DILocation(line: 263, column: 73, scope: !7227)
!7236 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !7237, file: !7237, line: 35, type: !7238, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7240)
!7237 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!7238 = !DISubroutineType(types: !7239)
!7239 = !{null, !277}
!7240 = !{!7241}
!7241 = !DILocalVariable(name: "list", arg: 1, scope: !7236, file: !7237, line: 35, type: !277)
!7242 = !DILocation(line: 35, column: 53, scope: !7236)
!7243 = !DILocation(line: 37, column: 2, scope: !7236)
!7244 = !DILocation(line: 37, column: 2, scope: !7245)
!7245 = distinct !DILexicalBlock(scope: !7236, file: !7237, line: 37, column: 2)
!7246 = !DILocation(line: 37, column: 2, scope: !7247)
!7247 = distinct !DILexicalBlock(scope: !7245, file: !7237, line: 37, column: 2)
!7248 = !DILocation(line: 37, column: 2, scope: !7249)
!7249 = distinct !DILexicalBlock(scope: !7245, file: !7237, line: 37, column: 2)
!7250 = !DILocation(line: 38, column: 2, scope: !7236)
!7251 = !DILocation(line: 38, column: 2, scope: !7252)
!7252 = distinct !DILexicalBlock(scope: !7236, file: !7237, line: 38, column: 2)
!7253 = !DILocation(line: 38, column: 2, scope: !7254)
!7254 = distinct !DILexicalBlock(scope: !7252, file: !7237, line: 38, column: 2)
!7255 = !DILocation(line: 38, column: 2, scope: !7256)
!7256 = distinct !DILexicalBlock(scope: !7252, file: !7237, line: 38, column: 2)
!7257 = !DILocation(line: 39, column: 1, scope: !7236)
!7258 = distinct !DISubprogram(name: "decrypt_work", scope: !2, file: !2, line: 89, type: !1390, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7259)
!7259 = !{!7260, !7261, !7262, !7264}
!7260 = !DILocalVariable(name: "work", arg: 1, scope: !7258, file: !2, line: 89, type: !1392)
!7261 = !DILocalVariable(name: "ctx", scope: !7258, file: !2, line: 91, type: !5573)
!7262 = !DILocalVariable(name: "__mptr", scope: !7263, file: !2, line: 92, type: !307)
!7263 = distinct !DILexicalBlock(scope: !7258, file: !2, line: 92, column: 3)
!7264 = !DILocalVariable(name: "bio", scope: !7258, file: !2, line: 93, type: !2499)
!7265 = !DILocation(line: 89, column: 46, scope: !7258)
!7266 = !DILocation(line: 91, column: 2, scope: !7258)
!7267 = !DILocation(line: 91, column: 28, scope: !7258)
!7268 = !DILocation(line: 92, column: 3, scope: !7263)
!7269 = !DILocation(line: 92, column: 3, scope: !7258)
!7270 = !DILocation(line: 93, column: 2, scope: !7258)
!7271 = !DILocation(line: 93, column: 14, scope: !7258)
!7272 = !DILocation(line: 93, column: 20, scope: !7258)
!7273 = !DILocation(line: 93, column: 25, scope: !7258)
!7274 = !DILocation(line: 95, column: 26, scope: !7275)
!7275 = distinct !DILexicalBlock(scope: !7258, file: !2, line: 95, column: 6)
!7276 = !DILocation(line: 95, column: 6, scope: !7275)
!7277 = !DILocation(line: 95, column: 6, scope: !7258)
!7278 = !DILocation(line: 96, column: 28, scope: !7275)
!7279 = !DILocation(line: 96, column: 3, scope: !7275)
!7280 = !DILocation(line: 98, column: 17, scope: !7275)
!7281 = !DILocation(line: 98, column: 3, scope: !7275)
!7282 = !DILocation(line: 99, column: 1, scope: !7258)
!7283 = distinct !DISubprogram(name: "fscrypt_enqueue_decrypt_work", scope: !6268, file: !6268, line: 413, type: !1390, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7284)
!7284 = !{!7285}
!7285 = !DILocalVariable(name: "work", arg: 1, scope: !7283, file: !6268, line: 413, type: !1392)
!7286 = !DILocation(line: 413, column: 69, scope: !7283)
!7287 = !DILocation(line: 415, column: 1, scope: !7283)
!7288 = distinct !DISubprogram(name: "verity_work", scope: !2, file: !2, line: 101, type: !1390, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7289)
!7289 = !{!7290, !7291, !7292, !7294}
!7290 = !DILocalVariable(name: "work", arg: 1, scope: !7288, file: !2, line: 101, type: !1392)
!7291 = !DILocalVariable(name: "ctx", scope: !7288, file: !2, line: 103, type: !5573)
!7292 = !DILocalVariable(name: "__mptr", scope: !7293, file: !2, line: 104, type: !307)
!7293 = distinct !DILexicalBlock(scope: !7288, file: !2, line: 104, column: 3)
!7294 = !DILocalVariable(name: "bio", scope: !7288, file: !2, line: 105, type: !2499)
!7295 = !DILocation(line: 101, column: 45, scope: !7288)
!7296 = !DILocation(line: 103, column: 2, scope: !7288)
!7297 = !DILocation(line: 103, column: 28, scope: !7288)
!7298 = !DILocation(line: 104, column: 3, scope: !7293)
!7299 = !DILocation(line: 104, column: 3, scope: !7288)
!7300 = !DILocation(line: 105, column: 2, scope: !7288)
!7301 = !DILocation(line: 105, column: 14, scope: !7288)
!7302 = !DILocation(line: 105, column: 20, scope: !7288)
!7303 = !DILocation(line: 105, column: 25, scope: !7288)
!7304 = !DILocation(line: 114, column: 2, scope: !7288)
!7305 = !DILocation(line: 114, column: 2, scope: !7306)
!7306 = distinct !DILexicalBlock(scope: !7288, file: !2, line: 114, column: 2)
!7307 = !DILocation(line: 115, column: 15, scope: !7288)
!7308 = !DILocation(line: 115, column: 20, scope: !7288)
!7309 = !DILocation(line: 115, column: 2, scope: !7288)
!7310 = !DILocation(line: 116, column: 2, scope: !7288)
!7311 = !DILocation(line: 116, column: 7, scope: !7288)
!7312 = !DILocation(line: 116, column: 18, scope: !7288)
!7313 = !DILocation(line: 118, column: 22, scope: !7288)
!7314 = !DILocation(line: 118, column: 2, scope: !7288)
!7315 = !DILocation(line: 120, column: 16, scope: !7288)
!7316 = !DILocation(line: 120, column: 2, scope: !7288)
!7317 = !DILocation(line: 121, column: 1, scope: !7288)
!7318 = distinct !DISubprogram(name: "fsverity_enqueue_verify_work", scope: !5597, file: !5597, line: 249, type: !1390, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7319)
!7319 = !{!7320, !7321, !7323}
!7320 = !DILocalVariable(name: "work", arg: 1, scope: !7318, file: !5597, line: 249, type: !1392)
!7321 = !DILocalVariable(name: "__ret_warn_on", scope: !7322, file: !5597, line: 251, type: !113)
!7322 = distinct !DILexicalBlock(scope: !7318, file: !5597, line: 251, column: 2)
!7323 = !DILocalVariable(name: "__flags", scope: !7324, file: !5597, line: 251, type: !113)
!7324 = distinct !DILexicalBlock(scope: !7325, file: !5597, line: 251, column: 2)
!7325 = distinct !DILexicalBlock(scope: !7322, file: !5597, line: 251, column: 2)
!7326 = !DILocation(line: 249, column: 69, scope: !7318)
!7327 = !DILocation(line: 251, column: 2, scope: !7322)
!7328 = !DILocation(line: 251, column: 2, scope: !7325)
!7329 = !DILocation(line: 251, column: 2, scope: !7324)
!7330 = !DILocation(line: 251, column: 2, scope: !7331)
!7331 = distinct !DILexicalBlock(scope: !7324, file: !5597, line: 251, column: 2)
!7332 = !DILocation(line: 251, column: 2, scope: !7333)
!7333 = distinct !DILexicalBlock(scope: !7324, file: !5597, line: 251, column: 2)
!7334 = !{i64 2155955509, i64 2155955538, i64 2155955584, i64 2155955642, i64 2155955696, i64 2155955750, i64 2155955805, i64 2155955836, i64 2155956144, i64 2155956150, i64 2155956197, i64 2155956220, i64 2155956246}
!7335 = !DILocation(line: 251, column: 2, scope: !7336)
!7336 = distinct !DILexicalBlock(scope: !7324, file: !5597, line: 251, column: 2)
!7337 = !DILocation(line: 251, column: 2, scope: !7318)
!7338 = !DILocation(line: 252, column: 1, scope: !7318)
!7339 = distinct !DISubprogram(name: "fscrypt_decrypt_bio", scope: !6268, file: !6268, line: 656, type: !7118, scopeLine: 657, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7340)
!7340 = !{!7341}
!7341 = !DILocalVariable(name: "bio", arg: 1, scope: !7339, file: !6268, line: 656, type: !2499)
!7342 = !DILocation(line: 656, column: 52, scope: !7339)
!7343 = !DILocation(line: 658, column: 2, scope: !7339)
!7344 = !DISubprogram(name: "mempool_free", scope: !2554, file: !2554, line: 54, type: !7345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7345 = !DISubroutineType(types: !7346)
!7346 = !{null, !307, !5588}
!7347 = distinct !DISubprogram(name: "fsverity_verify_bio", scope: !5597, file: !5597, line: 244, type: !2497, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7348)
!7348 = !{!7349, !7350, !7352}
!7349 = !DILocalVariable(name: "bio", arg: 1, scope: !7347, file: !5597, line: 244, type: !2499)
!7350 = !DILocalVariable(name: "__ret_warn_on", scope: !7351, file: !5597, line: 246, type: !113)
!7351 = distinct !DILexicalBlock(scope: !7347, file: !5597, line: 246, column: 2)
!7352 = !DILocalVariable(name: "__flags", scope: !7353, file: !5597, line: 246, type: !113)
!7353 = distinct !DILexicalBlock(scope: !7354, file: !5597, line: 246, column: 2)
!7354 = distinct !DILexicalBlock(scope: !7351, file: !5597, line: 246, column: 2)
!7355 = !DILocation(line: 244, column: 52, scope: !7347)
!7356 = !DILocation(line: 246, column: 2, scope: !7351)
!7357 = !DILocation(line: 246, column: 2, scope: !7354)
!7358 = !DILocation(line: 246, column: 2, scope: !7353)
!7359 = !DILocation(line: 246, column: 2, scope: !7360)
!7360 = distinct !DILexicalBlock(scope: !7353, file: !5597, line: 246, column: 2)
!7361 = !DILocation(line: 246, column: 2, scope: !7362)
!7362 = distinct !DILexicalBlock(scope: !7353, file: !5597, line: 246, column: 2)
!7363 = !{i64 2155953827, i64 2155953856, i64 2155953902, i64 2155953960, i64 2155954014, i64 2155954068, i64 2155954123, i64 2155954154, i64 2155954462, i64 2155954468, i64 2155954515, i64 2155954538, i64 2155954564}
!7364 = !DILocation(line: 246, column: 2, scope: !7365)
!7365 = distinct !DILexicalBlock(scope: !7353, file: !5597, line: 246, column: 2)
!7366 = !DILocation(line: 246, column: 2, scope: !7347)
!7367 = !DILocation(line: 247, column: 1, scope: !7347)
!7368 = distinct !DISubprogram(name: "bio_first_folio", scope: !2542, file: !2542, line: 284, type: !7369, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7372)
!7369 = !DISubroutineType(types: !7370)
!7370 = !{null, !7371, !2499, !113}
!7371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7182, size: 64)
!7372 = !{!7373, !7374, !7375, !7376, !7377, !7379}
!7373 = !DILocalVariable(name: "fi", arg: 1, scope: !7368, file: !2542, line: 284, type: !7371)
!7374 = !DILocalVariable(name: "bio", arg: 2, scope: !7368, file: !2542, line: 284, type: !2499)
!7375 = !DILocalVariable(name: "i", arg: 3, scope: !7368, file: !2542, line: 285, type: !113)
!7376 = !DILocalVariable(name: "bvec", scope: !7368, file: !2542, line: 287, type: !2538)
!7377 = !DILocalVariable(name: "__UNIQUE_ID___x323", scope: !7378, file: !2542, line: 298, type: !615)
!7378 = distinct !DILexicalBlock(scope: !7368, file: !2542, line: 298, column: 15)
!7379 = !DILocalVariable(name: "__UNIQUE_ID___y324", scope: !7378, file: !2542, line: 298, type: !615)
!7380 = !DILocation(line: 284, column: 55, scope: !7368)
!7381 = !DILocation(line: 284, column: 71, scope: !7368)
!7382 = !DILocation(line: 285, column: 12, scope: !7368)
!7383 = !DILocation(line: 287, column: 2, scope: !7368)
!7384 = !DILocation(line: 287, column: 18, scope: !7368)
!7385 = !DILocation(line: 287, column: 44, scope: !7368)
!7386 = !DILocation(line: 287, column: 25, scope: !7368)
!7387 = !DILocation(line: 287, column: 51, scope: !7368)
!7388 = !DILocation(line: 287, column: 49, scope: !7368)
!7389 = !DILocation(line: 289, column: 6, scope: !7390)
!7390 = distinct !DILexicalBlock(scope: !7368, file: !2542, line: 289, column: 6)
!7391 = !DILocation(line: 289, column: 6, scope: !7368)
!7392 = !DILocation(line: 290, column: 3, scope: !7393)
!7393 = distinct !DILexicalBlock(scope: !7390, file: !2542, line: 289, column: 35)
!7394 = !DILocation(line: 290, column: 7, scope: !7393)
!7395 = !DILocation(line: 290, column: 13, scope: !7393)
!7396 = !DILocation(line: 291, column: 3, scope: !7393)
!7397 = !DILocation(line: 294, column: 14, scope: !7368)
!7398 = !DILocation(line: 294, column: 2, scope: !7368)
!7399 = !DILocation(line: 294, column: 6, scope: !7368)
!7400 = !DILocation(line: 294, column: 12, scope: !7368)
!7401 = !DILocation(line: 295, column: 15, scope: !7368)
!7402 = !DILocation(line: 295, column: 21, scope: !7368)
!7403 = !DILocation(line: 296, column: 17, scope: !7368)
!7404 = !DILocation(line: 296, column: 23, scope: !7368)
!7405 = !DILocation(line: 296, column: 34, scope: !7368)
!7406 = !DILocation(line: 296, column: 38, scope: !7368)
!7407 = !DILocation(line: 296, column: 45, scope: !7368)
!7408 = !DILocation(line: 296, column: 31, scope: !7368)
!7409 = !DILocation(line: 296, column: 14, scope: !7368)
!7410 = !DILocation(line: 295, column: 31, scope: !7368)
!7411 = !DILocation(line: 295, column: 2, scope: !7368)
!7412 = !DILocation(line: 295, column: 6, scope: !7368)
!7413 = !DILocation(line: 295, column: 13, scope: !7368)
!7414 = !DILocation(line: 297, column: 19, scope: !7368)
!7415 = !DILocation(line: 297, column: 25, scope: !7368)
!7416 = !DILocation(line: 297, column: 2, scope: !7368)
!7417 = !DILocation(line: 297, column: 6, scope: !7368)
!7418 = !DILocation(line: 297, column: 17, scope: !7368)
!7419 = !DILocation(line: 298, column: 15, scope: !7378)
!7420 = !DILocation(line: 298, column: 15, scope: !7368)
!7421 = !DILocation(line: 298, column: 2, scope: !7368)
!7422 = !DILocation(line: 298, column: 6, scope: !7368)
!7423 = !DILocation(line: 298, column: 13, scope: !7368)
!7424 = !DILocation(line: 299, column: 25, scope: !7368)
!7425 = !DILocation(line: 299, column: 29, scope: !7368)
!7426 = !DILocation(line: 299, column: 14, scope: !7368)
!7427 = !DILocation(line: 299, column: 2, scope: !7368)
!7428 = !DILocation(line: 299, column: 6, scope: !7368)
!7429 = !DILocation(line: 299, column: 12, scope: !7368)
!7430 = !DILocation(line: 300, column: 11, scope: !7368)
!7431 = !DILocation(line: 300, column: 2, scope: !7368)
!7432 = !DILocation(line: 300, column: 6, scope: !7368)
!7433 = !DILocation(line: 300, column: 9, scope: !7368)
!7434 = !DILocation(line: 301, column: 1, scope: !7368)
!7435 = distinct !DISubprogram(name: "folio_clear_uptodate", scope: !5471, file: !5471, line: 774, type: !4977, scopeLine: 774, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7436)
!7436 = !{!7437}
!7437 = !DILocalVariable(name: "folio", arg: 1, scope: !7435, file: !5471, line: 774, type: !1020)
!7438 = !DILocation(line: 774, column: 1, scope: !7435)
!7439 = distinct !DISubprogram(name: "bio_next_folio", scope: !2542, file: !2542, line: 303, type: !7440, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7442)
!7440 = !DISubroutineType(types: !7441)
!7441 = !{null, !7371, !2499}
!7442 = !{!7443, !7444, !7445, !7449}
!7443 = !DILocalVariable(name: "fi", arg: 1, scope: !7439, file: !2542, line: 303, type: !7371)
!7444 = !DILocalVariable(name: "bio", arg: 2, scope: !7439, file: !2542, line: 303, type: !2499)
!7445 = !DILocalVariable(name: "__UNIQUE_ID___x325", scope: !7446, file: !2542, line: 309, type: !615)
!7446 = distinct !DILexicalBlock(scope: !7447, file: !2542, line: 309, column: 16)
!7447 = distinct !DILexicalBlock(scope: !7448, file: !2542, line: 306, column: 22)
!7448 = distinct !DILexicalBlock(scope: !7439, file: !2542, line: 306, column: 6)
!7449 = !DILocalVariable(name: "__UNIQUE_ID___y326", scope: !7446, file: !2542, line: 309, type: !615)
!7450 = !DILocation(line: 303, column: 54, scope: !7439)
!7451 = !DILocation(line: 303, column: 70, scope: !7439)
!7452 = !DILocation(line: 305, column: 20, scope: !7439)
!7453 = !DILocation(line: 305, column: 24, scope: !7439)
!7454 = !DILocation(line: 305, column: 2, scope: !7439)
!7455 = !DILocation(line: 305, column: 6, scope: !7439)
!7456 = !DILocation(line: 305, column: 17, scope: !7439)
!7457 = !DILocation(line: 306, column: 6, scope: !7448)
!7458 = !DILocation(line: 306, column: 10, scope: !7448)
!7459 = !DILocation(line: 306, column: 6, scope: !7439)
!7460 = !DILocation(line: 307, column: 15, scope: !7447)
!7461 = !DILocation(line: 307, column: 19, scope: !7447)
!7462 = !DILocation(line: 307, column: 3, scope: !7447)
!7463 = !DILocation(line: 307, column: 7, scope: !7447)
!7464 = !DILocation(line: 307, column: 13, scope: !7447)
!7465 = !DILocation(line: 308, column: 3, scope: !7447)
!7466 = !DILocation(line: 308, column: 7, scope: !7447)
!7467 = !DILocation(line: 308, column: 14, scope: !7447)
!7468 = !DILocation(line: 309, column: 16, scope: !7446)
!7469 = !DILocation(line: 309, column: 16, scope: !7447)
!7470 = !DILocation(line: 309, column: 3, scope: !7447)
!7471 = !DILocation(line: 309, column: 7, scope: !7447)
!7472 = !DILocation(line: 309, column: 14, scope: !7447)
!7473 = !DILocation(line: 310, column: 26, scope: !7447)
!7474 = !DILocation(line: 310, column: 30, scope: !7447)
!7475 = !DILocation(line: 310, column: 15, scope: !7447)
!7476 = !DILocation(line: 310, column: 3, scope: !7447)
!7477 = !DILocation(line: 310, column: 7, scope: !7447)
!7478 = !DILocation(line: 310, column: 13, scope: !7447)
!7479 = !DILocation(line: 311, column: 2, scope: !7447)
!7480 = !DILocation(line: 312, column: 19, scope: !7481)
!7481 = distinct !DILexicalBlock(scope: !7448, file: !2542, line: 311, column: 9)
!7482 = !DILocation(line: 312, column: 23, scope: !7481)
!7483 = !DILocation(line: 312, column: 28, scope: !7481)
!7484 = !DILocation(line: 312, column: 32, scope: !7481)
!7485 = !DILocation(line: 312, column: 35, scope: !7481)
!7486 = !DILocation(line: 312, column: 3, scope: !7481)
!7487 = !DILocation(line: 314, column: 1, scope: !7439)
!7488 = !DISubprogram(name: "bio_put", scope: !2542, file: !2542, line: 423, type: !2497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7489 = distinct !DISubprogram(name: "bio_first_bvec_all", scope: !2542, file: !2542, line: 245, type: !7490, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7492)
!7490 = !DISubroutineType(types: !7491)
!7491 = !{!2538, !2499}
!7492 = !{!7493, !7494, !7496}
!7493 = !DILocalVariable(name: "bio", arg: 1, scope: !7489, file: !2542, line: 245, type: !2499)
!7494 = !DILocalVariable(name: "__ret_warn_on", scope: !7495, file: !2542, line: 247, type: !113)
!7495 = distinct !DILexicalBlock(scope: !7489, file: !2542, line: 247, column: 2)
!7496 = !DILocalVariable(name: "__flags", scope: !7497, file: !2542, line: 247, type: !113)
!7497 = distinct !DILexicalBlock(scope: !7498, file: !2542, line: 247, column: 2)
!7498 = distinct !DILexicalBlock(scope: !7495, file: !2542, line: 247, column: 2)
!7499 = !DILocation(line: 245, column: 62, scope: !7489)
!7500 = !DILocation(line: 247, column: 2, scope: !7495)
!7501 = !DILocation(line: 247, column: 2, scope: !7498)
!7502 = !DILocation(line: 247, column: 2, scope: !7497)
!7503 = !DILocation(line: 247, column: 2, scope: !7504)
!7504 = distinct !DILexicalBlock(scope: !7497, file: !2542, line: 247, column: 2)
!7505 = !DILocation(line: 247, column: 2, scope: !7506)
!7506 = distinct !DILexicalBlock(scope: !7497, file: !2542, line: 247, column: 2)
!7507 = !{i64 2155045508, i64 2155045537, i64 2155045583, i64 2155045641, i64 2155045695, i64 2155045749, i64 2155045804, i64 2155045835, i64 2155046143, i64 2155046149, i64 2155046196, i64 2155046219, i64 2155046245}
!7508 = !DILocation(line: 247, column: 2, scope: !7509)
!7509 = distinct !DILexicalBlock(scope: !7497, file: !2542, line: 247, column: 2)
!7510 = !DILocation(line: 247, column: 2, scope: !7489)
!7511 = !DILocation(line: 248, column: 9, scope: !7489)
!7512 = !DILocation(line: 248, column: 14, scope: !7489)
!7513 = !DILocation(line: 248, column: 2, scope: !7489)
!7514 = distinct !DISubprogram(name: "_compound_head", scope: !5471, file: !5471, line: 244, type: !7515, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7517)
!7515 = !DISubroutineType(types: !7516)
!7516 = !{!214, !5583}
!7517 = !{!7518, !7519}
!7518 = !DILocalVariable(name: "page", arg: 1, scope: !7514, file: !5471, line: 244, type: !5583)
!7519 = !DILocalVariable(name: "head", scope: !7514, file: !5471, line: 246, type: !214)
!7520 = !DILocation(line: 244, column: 63, scope: !7514)
!7521 = !DILocation(line: 246, column: 2, scope: !7514)
!7522 = !DILocation(line: 246, column: 16, scope: !7514)
!7523 = !DILocation(line: 246, column: 23, scope: !7524)
!7524 = distinct !DILexicalBlock(scope: !7514, file: !5471, line: 246, column: 23)
!7525 = !DILocation(line: 246, column: 23, scope: !7526)
!7526 = distinct !DILexicalBlock(scope: !7524, file: !5471, line: 246, column: 23)
!7527 = !DILocation(line: 248, column: 6, scope: !7528)
!7528 = distinct !DILexicalBlock(scope: !7514, file: !5471, line: 248, column: 6)
!7529 = !DILocation(line: 248, column: 6, scope: !7514)
!7530 = !DILocation(line: 249, column: 10, scope: !7528)
!7531 = !DILocation(line: 249, column: 15, scope: !7528)
!7532 = !DILocation(line: 249, column: 3, scope: !7528)
!7533 = !DILocation(line: 250, column: 45, scope: !7514)
!7534 = !DILocation(line: 250, column: 24, scope: !7514)
!7535 = !DILocation(line: 250, column: 9, scope: !7514)
!7536 = !DILocation(line: 250, column: 2, scope: !7514)
!7537 = !DILocation(line: 251, column: 1, scope: !7514)
!7538 = distinct !DISubprogram(name: "folio_next", scope: !1428, file: !1428, line: 2095, type: !7539, scopeLine: 2096, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7541)
!7539 = !DISubroutineType(types: !7540)
!7540 = !{!1020, !1020}
!7541 = !{!7542}
!7542 = !DILocalVariable(name: "folio", arg: 1, scope: !7538, file: !1428, line: 2095, type: !1020)
!7543 = !DILocation(line: 2095, column: 54, scope: !7538)
!7544 = !DILocation(line: 2097, column: 25, scope: !7538)
!7545 = !DILocation(line: 2097, column: 2, scope: !7538)
!7546 = distinct !DISubprogram(name: "bio_flagged", scope: !2542, file: !2542, line: 230, type: !7547, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7549)
!7547 = !DISubroutineType(types: !7548)
!7548 = !{!858, !2499, !13}
!7549 = !{!7550, !7551}
!7550 = !DILocalVariable(name: "bio", arg: 1, scope: !7546, file: !2542, line: 230, type: !2499)
!7551 = !DILocalVariable(name: "bit", arg: 2, scope: !7546, file: !2542, line: 230, type: !13)
!7552 = !DILocation(line: 230, column: 44, scope: !7546)
!7553 = !DILocation(line: 230, column: 62, scope: !7546)
!7554 = !DILocation(line: 232, column: 9, scope: !7546)
!7555 = !DILocation(line: 232, column: 14, scope: !7546)
!7556 = !DILocation(line: 232, column: 32, scope: !7546)
!7557 = !DILocation(line: 232, column: 29, scope: !7546)
!7558 = !DILocation(line: 232, column: 23, scope: !7546)
!7559 = !DILocation(line: 232, column: 2, scope: !7546)
!7560 = distinct !DISubprogram(name: "page_fixed_fake_head", scope: !5471, file: !5471, line: 207, type: !7561, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7563)
!7561 = !DISubroutineType(types: !7562)
!7562 = !{!5583, !5583}
!7563 = !{!7564, !7565, !7568}
!7564 = !DILocalVariable(name: "page", arg: 1, scope: !7560, file: !5471, line: 207, type: !5583)
!7565 = !DILocalVariable(name: "branch", scope: !7566, file: !5471, line: 209, type: !858)
!7566 = distinct !DILexicalBlock(scope: !7567, file: !5471, line: 209, column: 7)
!7567 = distinct !DILexicalBlock(scope: !7560, file: !5471, line: 209, column: 6)
!7568 = !DILocalVariable(name: "head", scope: !7569, file: !5471, line: 225, type: !214)
!7569 = distinct !DILexicalBlock(scope: !7570, file: !5471, line: 219, column: 39)
!7570 = distinct !DILexicalBlock(scope: !7560, file: !5471, line: 218, column: 6)
!7571 = !DILocation(line: 207, column: 83, scope: !7560)
!7572 = !DILocation(line: 209, column: 7, scope: !7566)
!7573 = !DILocation(line: 209, column: 7, scope: !7574)
!7574 = distinct !DILexicalBlock(scope: !7575, file: !5471, line: 209, column: 7)
!7575 = distinct !DILexicalBlock(scope: !7566, file: !5471, line: 209, column: 7)
!7576 = !DILocation(line: 209, column: 7, scope: !7575)
!7577 = !DILocation(line: 209, column: 7, scope: !7567)
!7578 = !DILocation(line: 209, column: 6, scope: !7560)
!7579 = !DILocation(line: 210, column: 10, scope: !7567)
!7580 = !DILocation(line: 210, column: 3, scope: !7567)
!7581 = !DILocation(line: 218, column: 6, scope: !7570)
!7582 = !DILocation(line: 218, column: 49, scope: !7570)
!7583 = !DILocation(line: 219, column: 6, scope: !7570)
!7584 = !DILocation(line: 218, column: 6, scope: !7560)
!7585 = !DILocation(line: 225, column: 3, scope: !7569)
!7586 = !DILocation(line: 225, column: 17, scope: !7569)
!7587 = !DILocation(line: 225, column: 24, scope: !7588)
!7588 = distinct !DILexicalBlock(scope: !7569, file: !5471, line: 225, column: 24)
!7589 = !DILocation(line: 225, column: 24, scope: !7590)
!7590 = distinct !DILexicalBlock(scope: !7588, file: !5471, line: 225, column: 24)
!7591 = !DILocation(line: 227, column: 7, scope: !7592)
!7592 = distinct !DILexicalBlock(scope: !7569, file: !5471, line: 227, column: 7)
!7593 = !DILocation(line: 227, column: 7, scope: !7569)
!7594 = !DILocation(line: 228, column: 33, scope: !7592)
!7595 = !DILocation(line: 228, column: 38, scope: !7592)
!7596 = !DILocation(line: 228, column: 11, scope: !7592)
!7597 = !DILocation(line: 228, column: 4, scope: !7592)
!7598 = !DILocation(line: 229, column: 2, scope: !7570)
!7599 = !DILocation(line: 229, column: 2, scope: !7569)
!7600 = !DILocation(line: 230, column: 9, scope: !7560)
!7601 = !DILocation(line: 230, column: 2, scope: !7560)
!7602 = !DILocation(line: 231, column: 1, scope: !7560)
!7603 = distinct !DISubprogram(name: "arch_static_branch", scope: !7604, file: !7604, line: 25, type: !7605, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7619)
!7604 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!7605 = !DISubroutineType(types: !7606)
!7606 = !{!858, !7607, !858}
!7607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7608, size: 64)
!7608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2119, line: 85, size: 128, elements: !7609)
!7609 = !{!7610, !7611}
!7610 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !7608, file: !2119, line: 86, baseType: !248, size: 32)
!7611 = !DIDerivedType(tag: DW_TAG_member, scope: !7608, file: !2119, line: 101, baseType: !7612, size: 64, offset: 64)
!7612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7608, file: !2119, line: 101, size: 64, elements: !7613)
!7613 = !{!7614, !7615, !7616}
!7614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7612, file: !2119, line: 102, baseType: !214, size: 64)
!7615 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !7612, file: !2119, line: 103, baseType: !2117, size: 64)
!7616 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7612, file: !2119, line: 104, baseType: !7617, size: 64)
!7617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7618, size: 64)
!7618 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2119, line: 104, flags: DIFlagFwdDecl)
!7619 = !{!7620, !7621, !7622}
!7620 = !DILocalVariable(name: "key", arg: 1, scope: !7603, file: !7604, line: 25, type: !7607)
!7621 = !DILocalVariable(name: "branch", arg: 2, scope: !7603, file: !7604, line: 25, type: !858)
!7622 = !DILabel(scope: !7603, name: "l_yes", file: !7604, line: 33)
!7623 = !DILocation(line: 25, column: 67, scope: !7603)
!7624 = !DILocation(line: 25, column: 77, scope: !7603)
!7625 = !DILocation(line: 30, column: 13, scope: !7603)
!7626 = !DILocation(line: 30, column: 28, scope: !7603)
!7627 = !DILocation(line: 30, column: 26, scope: !7603)
!7628 = !DILocation(line: 27, column: 2, scope: !7603)
!7629 = !{i64 1273378, i64 1273422, i64 2148758105, i64 2148758126, i64 2148758152, i64 2148758185, i64 2148758219, i64 2148758243}
!7630 = !DILocation(line: 32, column: 2, scope: !7603)
!7631 = !DILocation(line: 33, column: 1, scope: !7603)
!7632 = !DILocation(line: 34, column: 2, scope: !7603)
!7633 = !DILocation(line: 35, column: 1, scope: !7603)
!7634 = distinct !DISubprogram(name: "clear_bit", scope: !7039, file: !7039, line: 39, type: !7040, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7635)
!7635 = !{!7636, !7637}
!7636 = !DILocalVariable(name: "nr", arg: 1, scope: !7634, file: !7039, line: 39, type: !605)
!7637 = !DILocalVariable(name: "addr", arg: 2, scope: !7634, file: !7039, line: 39, type: !7042)
!7638 = !DILocation(line: 39, column: 44, scope: !7634)
!7639 = !DILocation(line: 39, column: 72, scope: !7634)
!7640 = !DILocation(line: 41, column: 26, scope: !7634)
!7641 = !DILocation(line: 41, column: 33, scope: !7634)
!7642 = !DILocation(line: 41, column: 31, scope: !7634)
!7643 = !DILocation(line: 41, column: 2, scope: !7634)
!7644 = !DILocation(line: 42, column: 17, scope: !7634)
!7645 = !DILocation(line: 42, column: 21, scope: !7634)
!7646 = !DILocation(line: 42, column: 2, scope: !7634)
!7647 = !DILocation(line: 43, column: 1, scope: !7634)
!7648 = distinct !DISubprogram(name: "arch_clear_bit", scope: !6631, file: !6631, line: 72, type: !7040, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7649)
!7649 = !{!7650, !7651}
!7650 = !DILocalVariable(name: "nr", arg: 1, scope: !7648, file: !6631, line: 72, type: !605)
!7651 = !DILocalVariable(name: "addr", arg: 2, scope: !7648, file: !6631, line: 72, type: !7042)
!7652 = !DILocation(line: 72, column: 21, scope: !7648)
!7653 = !DILocation(line: 72, column: 49, scope: !7648)
!7654 = !DILocation(line: 74, column: 27, scope: !7655)
!7655 = distinct !DILexicalBlock(scope: !7648, file: !6631, line: 74, column: 6)
!7656 = !DILocation(line: 74, column: 6, scope: !7655)
!7657 = !DILocation(line: 74, column: 6, scope: !7648)
!7658 = !DILocation(line: 76, column: 6, scope: !7659)
!7659 = distinct !DILexicalBlock(scope: !7655, file: !6631, line: 74, column: 32)
!7660 = !DILocation(line: 77, column: 13, scope: !7659)
!7661 = !DILocation(line: 77, column: 12, scope: !7659)
!7662 = !DILocation(line: 75, column: 3, scope: !7659)
!7663 = !{i64 2147796730, i64 2147796769, i64 2147796790, i64 2147796827, i64 2147796850, i64 2147796720}
!7664 = !DILocation(line: 78, column: 2, scope: !7659)
!7665 = !DILocation(line: 80, column: 8, scope: !7666)
!7666 = distinct !DILexicalBlock(scope: !7655, file: !6631, line: 78, column: 9)
!7667 = !DILocation(line: 80, column: 32, scope: !7666)
!7668 = !DILocation(line: 79, column: 3, scope: !7666)
!7669 = !{i64 2147797015, i64 2147797054, i64 2147797075, i64 2147797112, i64 2147797135, i64 2147797005}
!7670 = !DILocation(line: 82, column: 1, scope: !7648)
!7671 = !DISubprogram(name: "mempool_create", scope: !2554, file: !2554, line: 45, type: !7672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7672 = !DISubroutineType(types: !7673)
!7673 = !{!5588, !113, !2563, !2568, !307}
